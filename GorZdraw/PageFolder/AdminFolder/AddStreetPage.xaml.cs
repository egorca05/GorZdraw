using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
using System;
using System.Collections.Generic;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GorZdraw.PageFolder.AdminFolder
{
    /// <summary>
    /// Логика взаимодействия для AddStreetPage.xaml
    /// </summary>
    public partial class AddStreetPage : Page
    {
        public AddStreetPage()
        {
            InitializeComponent();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();

        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            DBEntities.Getcontext().Street.Add(new Street()
            {
                NameStreet = StreetTb.Text
            });
            DBEntities.Getcontext().SaveChanges();
            MBClass.InformationMB("Успешно");
            NavigationService.Navigate(new ListStreetPage());
        }
    }
}
