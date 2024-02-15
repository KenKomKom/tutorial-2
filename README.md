Sekarang coba gerakkan objek landasan ke atas sehingga objek pesawatnya hampir menyentuh batas atas area permainan/window. Kemudian jawablah pertanyaan-pertanyaan berikut:

Apa saja pesan log yang dicetak pada panel Output?

Pesan log yg keluar adalah :

    Platform initialized
    Reached objective!

Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?

Setelah dua output diatas, setelah platform bergerak kebawah kemudian bergerak lagi ke atas hingga mengenai batas atas, keluar output:
    
    Reached objective!

Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

Ada, karena pada scene ObjectiveArea, terdapat kode yang akan tereksekusi ketika ada object, dalam hal ini pesawat masuk ke dalam areanya. Ketika itu terjadi, ObjectiveArea akan mengeluarkan output "Reached objective!"

- ```Scene BlueShip``` dan ```StonePlatform``` sama-sama memiliki sebuah child node bertipe ```Sprite```. Apa fungsi dari node bertipe ```Sprite```?

```Sprite``` memiliki fungsi untuk menampilkan teksture dua dimensi pada viewport game pada godot.

- Root node dari scene ```BlueShip``` dan ```StonePlatform``` menggunakan tipe yang berbeda. ```BlueShip``` menggunakan tipe ```RigidBody2D```, sedangkan ```StonePlatform``` menggunakan tipe ```StaticBody2D```. Apa perbedaan dari masing-masing tipe node?

  Perbedaan dari ```RigidBody2D``` dan ```StaticBody2D``` adalah object yang bertipe RigidBidy2D akan terpengaruh dengan physics engine pada godot, seperti tertarik gravitasi, memantul, dan adanya gesekan. RigidBody2D juga memiliki properti lain seperti kecepatan linier, kecepatan angular, dsb.

  Sedangkan untuk object ```StaticBody2D```, objek tidak terpengaruh terhadap physics engine godot tetapi dapat memengaruhi object lain, seperti kolisi. 

- Ubah nilai atribut Mass dan Weight pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

  Setelah perubahan Mass dan Weight pada BlueShip, pesawat menjadi jatuh dengan lebih cepat. Hal ini dikarenakan object tersebut dipengaruhi oleh physics engine pada godot yang mengkalkulasi gaya gravitasi sehingga dengan berat yang lebih tinggi, BlueShip jatuh lebih cepat. 

- Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

  Jika properti disabled pada CollusuionShape2D adalah true, maka object StonePlatform menjadi tidak memiliki area kolisi sehingga object object lain bisa melewatinya dan tidak tertabrak.

- Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

Pengaruh dari perubahan-perubahan tersebut adalah object BlueShip akan ikut berubah sesuai dengan angka yang ada pada properti Position, Rotation dan Scale. Pengaruh ini juga akan berdampak terhadap semua child node yang ada pada BlueShip sehingga CollisionShape2D, dan spritenya juga akan berubah tampilannya di viewport, tetapi atribut dari children nodesnya tidak berubah karena mereka tidak mengalami perubahan secara langsung

- Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

- Hal ini dikarenakan position yang dituliskan oleh StonePlatform dan StonePlatform2 adalah posisinya terhadap parent node nya, seperti yang telah saya jelaskan pada pertanyaan sebelumnya. Dengan demikian, cara mengartikan nilai dari position mereka adalah StonePlatform berada pada pusat dari PlatformBlue dan StonePlatform2 berada 70 pixel dikanan pusat PlatformBlue
