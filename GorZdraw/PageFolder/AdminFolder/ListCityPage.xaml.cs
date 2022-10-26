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
    /// Логика взаимодействия для ListCityPage.xaml
    /// </summary>
    public partial class ListCityPage : Page
    {
        public ListCityPage()
        {
            InitializeComponent();
            CityDG.ItemsSource = DBEntities.Getcontext().City.ToList()
                .OrderBy(c => c.IdCity);
        }

        private void Ref()
        {
            CityDG.ItemsSource = DBEntities.Getcontext().City.ToList()
                .OrderBy(c => c.IdCity);
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {
            if (CityDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите адресс для удаления");
            }
            else
            {
                try
                {
                    City city = CityDG.SelectedItem as City;
                    if (MBClass.QestionMB($"Удалить выбраную страну?"))
                    {
                        DBEntities.Getcontext().City.Remove(city);
                        DBEntities.Getcontext().SaveChanges();
                        Ref();
                    }
                }
                catch (Exception ex)
                {
                    MBClass.ErrorMB(ex);
                }
            }
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddCityPage());
        }
    }
}
