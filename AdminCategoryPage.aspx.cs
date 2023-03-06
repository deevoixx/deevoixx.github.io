using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.Security;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI.WebControls.WebParts;
using System.Net;
using System.Text;
using HOME.Models;

namespace HOME
{
    public partial class AdminCategoryPage : System.Web.UI.Page
    {
        public string makehtml = "";
        public string newLessons = "";


        public static string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            var DBCon = Handlers.SqlInstance.Instance;

            List<Lesson> lessons = new List<Lesson>();
            string query = "SELECT lessonId, name, category, content FROM new_lessons";

            using (MySqlCommand command = new MySqlCommand(query, DBCon))
            {
                using (MySqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        int lessonId = 0;
                        string name = "";
                        string category = "";
                        string content = "";
                        try
                        {
                            lessonId = reader.GetInt32("lessonId");

                            name = reader.GetString("name");
                            category = reader.GetString("category");
                            content = reader.GetString("content");
                        }
                        catch
                        {
                        }

                        Lesson lesson = new Lesson
                        {
                            LessonId = lessonId,
                            Name = name,
                            Category = category,
                            Content = content
                        };

                        lessons.Add(lesson);
                    }
                }
            }

            // new lessons
            var categorized = lessons.GroupBy(x => x.Category);

            foreach (IEnumerable<Lesson> row in categorized)
            {
                newLessons += "<div class = 'category'>" + row.FirstOrDefault().Category + "<hr><div class ='lessonTopicSec'>";

                foreach (Lesson row2 in row)
                {
                    newLessons +=
                        "<input type = 'hidden'runat='server' class='topicContainer' ID='hdnfld' ClientIDMode='Static' value = '" +
                        row2.Name.ToString() + "'> </input>" +
                        "<div class='lessonTopicCont' title='"+ row2.Name.ToString() + "' onclick='setModal(\"" + Base64Encode(row2.Name) + "\", \"" +
                        Base64Encode(row2.Content) +
                        $"\", {row2.LessonId}, {0})' data-bs-toggle='modal' data-bs-target='#lesson-modal'><div class = 'lessonTopic' id= '" +
                        row2.Name.ToString() +
                        "'>"+ row2.Name.ToString() +$"</div><div class='LID'>ID: {row2.LessonId}</div><div class='buttondiv'><a href='NewLesson?action=deleteLesson&lessonId={row2.LessonId}'><i class = 'fa-solid fa-trash-can' onClick='Delete_Click' id ='" +
                        row2.LessonId.ToString() +
                        $"tc'></i></a><a href='/NewLesson?lessonId={row2.LessonId}'><i runat='server' class = 'fa-solid fa-pen-to-square' id ='" +
                        row2.LessonId.ToString() + "et'></i></a>" +
                        "</div></div>";
                }

                newLessons += "</div></div>";
            }

           
        }
    }
}