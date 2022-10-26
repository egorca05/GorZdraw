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
    /// Логика взаимодействия для ListStreetPage.xaml
    /// </summary>
    public partial class ListStreetPage : Page
    {
        public ListStreetPage()
        {
            InitializeComponent();
            CountryDG.ItemsSource = DBEntities.Getcontext().Street.ToList()
                .OrderBy(c => c.IdStreet);
        }

        private void Ref()
        {
            CountryDG.ItemsSource = DBEntities.Getcontext().Street.ToList()
                .OrderBy(c => c.IdStreet);
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
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
                    Street street = CountryDG.SelectedItem as Street;
                    if (MBClass.QestionMB($"Удалить выбраную улицу?"))
                    {
                        DBEntities.Getcontext().Street.Remove(street);
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
            NavigationService.Navigate(new AddStreetPage());
        }
    }
}
