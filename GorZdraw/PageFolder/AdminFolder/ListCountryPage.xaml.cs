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
    /// Логика взаимодействия для ListCountryPage.xaml
    /// </summary>
    public partial class ListCountryPage : Page
    {
        public ListCountryPage()
        {
            InitializeComponent();
            CountryDG.ItemsSource = DBEntities.Getcontext().Country.ToList()
                .OrderBy(c => c.IdCountry);
        }
        private void Ref()
        {
            CountryDG.ItemsSource = DBEntities.Getcontext().Country.ToList()
                .OrderBy(c => c.IdCountry);
        }

        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {
            if (CountryDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите адресс для удаления");
            }
            else
            {
                try
                {
                    Country country = CountryDG.SelectedItem as Country;
                    if (MBClass.QestionMB($"Удалить выбраную страну?"))
                    {
                        DBEntities.Getcontext().Country.Remove(country);
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
            NavigationService.Navigate(new CountryPage());
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
