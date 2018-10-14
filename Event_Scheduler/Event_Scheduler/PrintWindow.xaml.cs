using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Event_Scheduler
{
    /// <summary>
    /// Interaction logic for PrintWindow.xaml
    /// </summary>
    public partial class PrintWindow : Window
    {
        public PrintWindow()
        {
            InitializeComponent();
        }

        private void btnPrint_Click(object sender, RoutedEventArgs e)
        {
            switch(cbPrintType.SelectedIndex)
            {
                case 0:
                    showMessage("Error", "You must select a Print Type before trying to print.");
                    break;
                case 1:
                    if (dpStartDate.Text == null || dpStartDate.Text.Equals(""))
                    {
                        showMessage("Error", "You must select a Start Date before trying to print.");
                        return;
                    }
                    if (dpEndDate.Text == null || dpEndDate.Text.Equals(""))
                    {
                        showMessage("Error", "You must select a End Date before trying to print.");
                        return;
                    }

                    DateTime startDate = DateTime.Parse(dpStartDate.Text);
                    DateTime endDate = DateTime.Parse(dpEndDate.Text);
                    printRangeEvents(startDate, endDate);
                    break;
                case 2:
                    printAllEvents();
                    break;

            }
        }

        private void printAllEvents()
        {
            es_K04000766Entities Con = new es_K04000766Entities();
            printEvents("ALL_EVENTS", Con.Events.OrderBy(e => e.startdate).ToList());
        }

        private void printRangeEvents(DateTime startDate, DateTime endDate)
        {
            es_K04000766Entities Con = new es_K04000766Entities();
            List<Event> tableData = Con.Events.Where(e => EntityFunctions.TruncateTime(e.startdate) >= startDate && EntityFunctions.TruncateTime(e.enddate) <= endDate)
                .OrderBy(e => e.startdate)
                .ToList();
            printEvents("RANGE_EVENTS", tableData);
        }

        private void printEvents(String title, List<Event> events)
        {
            // Write the string array to a new file named "WriteLines.txt".
            String projectDir = Directory.GetParent(Directory.GetCurrentDirectory()).Parent.FullName;
            String filepath = projectDir + "/Print/" + title + ".html";
            using (StreamWriter outputFile = new StreamWriter(filepath))
            {
                StringBuilder builder = new StringBuilder();

                //print HTML and table headers
                outputFile.WriteLine("<html><body><table>");
                outputFile.WriteLine("<th>ID</th>");
                outputFile.WriteLine("<th>Title</th>");
                outputFile.WriteLine("<th>Start Date</th>");
                outputFile.WriteLine("<th>End Date</th>");
                outputFile.WriteLine("<th>Notes</th>");
                foreach (Event e in events)
                {
                    builder.Clear();
                    //Id
                    builder.Append("<tr><td>");
                    builder.Append(e.id);
                    builder.Append("</td>");

                    //Title
                    builder.Append("<td>");
                    builder.Append(e.title);
                    builder.Append("</td>");

                    //Start Date
                    builder.Append("<td>");
                    builder.Append(e.startdate.ToString());
                    builder.Append("</td>");

                    //End Date
                    builder.Append("<td>");
                    builder.Append(e.enddate.ToString());
                    builder.Append("</td>");

                    //Notes
                    builder.Append("<td>");
                    builder.Append(e.notes);
                    builder.Append("</td></tr>");
                    outputFile.WriteLine(builder.ToString());
                }
                outputFile.WriteLine("</table></body></html>");

                showMessage("Info", "Events have been printed to the following file: " + filepath);
            }
        }

        private void showMessage(String title, String message)
        {
            MessageBoxResult result = MessageBox.Show(message,
                                         title,
                                         MessageBoxButton.OK,
                                         MessageBoxImage.Information);
        }

        private void showMessage(String title)
        {
            MessageBoxResult result = MessageBox.Show(title + " Not Implemented Yet",
                                          title,
                                          MessageBoxButton.OK,
                                          MessageBoxImage.Information);
        }
    }
}
