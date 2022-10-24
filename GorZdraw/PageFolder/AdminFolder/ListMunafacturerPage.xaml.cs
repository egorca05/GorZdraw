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
    /// Логика взаимодействия для ListMunafacturerPage.xaml
    /// </summary>
    public partial class ListMunafacturerPage : Page
    {
        public ListMunafacturerPage()
        {
            InitializeComponent();
            ManufacturerDG.ItemsSource = DBEntities.Getcontext().Manufacturer
                .ToList().OrderBy(c => c.IdManufacturer);
        }

        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddMunafacturerPage());
        }
    }
}
