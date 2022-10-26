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
    /// Логика взаимодействия для AddCityPage.xaml
    /// </summary>
    public partial class AddCityPage : Page
    {
        public AddCityPage()
        {
            InitializeComponent();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();

        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            DBEntities.Getcontext().City.Add(new City()
            {
                NameCity = CityTb.Text
            });
            DBEntities.Getcontext().SaveChanges();
            MBClass.InformationMB("Успешно");
            NavigationService.Navigate(new ListCityPage());
        }
    }
}
