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
    /// Логика взаимодействия для ListPackerPage.xaml
    /// </summary>
    public partial class ListPackerPage : Page
    {
        public ListPackerPage()
        {
            InitializeComponent();
            AdressParcerDG.ItemsSource = DBEntities.Getcontext().LegalAddressPacker.ToList()
                .OrderBy(c => c.IdLegalAddressPacker);
        }

        private void Ref()
        {
            AdressParcerDG.ItemsSource = DBEntities.Getcontext().LegalAddressPacker.ToList()
                .OrderBy(c => c.IdLegalAddressPacker);
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();

        }

        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {
            if (AdressParcerDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите поставщика для удаления");
            }
            else
            {
                try
                {
                    LegalAddressPacker legalAddressPacker = AdressParcerDG.SelectedItem as LegalAddressPacker;
                    if (MBClass.QestionMB($"Удалить выбранного поставщика?"))
                    {
                        DBEntities.Getcontext().LegalAddressPacker.Remove(legalAddressPacker);
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

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            LegalAddressPacker legalAddressPacker = AdressParcerDG.SelectedItem as LegalAddressPacker;
            VariableClass.IdAddresParcer = legalAddressPacker.IdLegalAddressPacker;
            this.NavigationService.Navigate(new EditPackerPage(AdressParcerDG.SelectedItem as LegalAddressPacker));
            Ref();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddPackerPage());

        }
    }
}
