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
    /// Логика взаимодействия для MenuAdressPage.xaml
    /// </summary>
    public partial class MenuAdressPage : Page
    {
        public MenuAdressPage()
        {
            InitializeComponent();
        }

        private void MAQCBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ListAdreesMAQCPage());
        }

        private void PackerBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ListPackerPage());
        }

        private void OACBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ListOACPage());
        }

        private void CountryBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ListCountryPage());
        }

        private void CityBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ListCityPage());
        }

        private void StreetBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ListStreetPage());
        }
    }
}
