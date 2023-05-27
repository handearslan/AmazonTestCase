# Amazon Çalışması 
Projenin içine virtual environment(venv) kurulur.Virtual environment bir pyhton interpreter seçilerek oluşturulabilir.

Projeyi çalıştırabilmek için bazı framework/kütüphanelere ihtiyacımız vardır.venv içine bunları eklememiz gerekir.
Bu gereksinimleri yükleyebilmek için terminale gidip aşağıdaki komut satırları yazılır.

pip install robotframework
pip install robotframework-seleniumlibrary
pip install robotframework-debuglibrary

# ChromeDriver(WebDriver)

Localinizde bulunan google chrome versionuna uygun chrome driver zip dosyası olarak indirilir.
Daha sonra indirilen klasörde zip dosyasından çıkartılır.Bir terminal açılarak aşağıdaki komutlar yazılır.
Driverın indirildiği dosya path'i Downloads varsayalım.

cd Downloads 

mv chromedriver /usr/local/bin

Böylece chromedriver robotframework tarafından bulunabilecektir.

# Test Run

robot  resources/test/amazonCaseTest.robot
robot -d reports -v BROWSER:chrome resources/test/amazonCaseTest.robot

# Proje Yapısı

## po package
amazonCase.robot =>Kullanılan kütüphaneler ve eklenmek istenen kaynakların settings kısmında,locatorları variables kısmında, 
test adımlarının da keywords kısmında tanımlandığı dosyadır.

utils.robot => Selenium Driver methodlarının tanımlandığı dosyadır. 
## app package
amazonCaseApp.robot =>amazonCase.robot dosyasında yazılan adımların test senaryo başlıklarına ayrıldığı dosyadır.

utilsApp.robot =>Driverın ayağa kaldırılması ve kapatılması için bu robot dosyası kullanılır.
Ayrıca bu dosya içerisinde browser da tanımlanmıştır.
##  test package
amazonCaseTest ->Yazılan senaryoların runlandığı dosyadır.

# Test Adımları
	
* Amazon anasayfası açılır.
* Çerezler kabul edilir.
* Anasayfada bulunan "giriş yap" yazısının üzerine gelinir..
* Açılan pencerede giriş yap butonuna tıklanır.
* E-Posta alanına "E-Posta" değeri yazılır.
* Devam et tıklanır.
* Şifre alanına "Şifre" değeri yazılır.
* Giriş yap'a tıklanır.
* Ev ve Yaşam'a tıklanır.
* Phlips tıklanır.
* İlk ürüne tıklanır.
* Sepete eklenir.
* Tekrar Ev ve Yaşama tıklanır.
* Karaca Home tıklanır.
* İlk ürüne tıklanır.
* Sepete eklenir.
* Sepete gidilir.
* İki ürün göründüğü kontrol edilir.
* Bir ürün silinir.
* Bir ürün kaldığı kontrol edilir.
* Driver kapanır.





 



