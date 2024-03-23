import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController textEditingController = TextEditingController();

  List<Map<String, String>> searchImages = [
    {
      "url":
          "https://media.istockphoto.com/id/690000918/photo/dog-with-human-expression.jpg?s=612x612&w=0&k=20&c=SaS3KdRYN9e1qWa2pQxmcTCrzfgQDv17X4qXNIHf_6M=",
      "category": "Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1508305006/photo/beautiful-chihuahua-female-domestic-dog-playing-close-up.jpg?s=612x612&w=0&k=20&c=B0D-X6D_fj1-hjFtMjCjpCayCuL6KT13EH1ai4DzVyE=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1508306070/photo/beautiful-chihuahua-female-dog-in-the-forest.jpg?s=612x612&w=0&k=20&c=Wn4c85i11y9RML4Z3X4Bp0vSvr_5S_sTMqYsPMG_-eA=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/175498455/photo/an-english-bulldog-relaxing-on-a-white-background.jpg?s=612x612&w=0&k=20&c=KOg5pTouWDix2-M-xFaNiLyapTgz5TvB0D_IGV6bNq0=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1516111363/photo/a-black-dog-lying-at-poor-house.jpg?s=612x612&w=0&k=20&c=i7ngzRHykdriHPteYwbRR42K9ZAGFqY4dUbpu-BH7Cc=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/697946430/photo/pitbull-dog-portrait-with-human-expression.jpg?s=612x612&w=0&k=20&c=uWT9vBoCZPPyg9xkJ0cQI-HqWd5slf7_QsdiwYvazSY=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1489918269/photo/beautiful-dog-setter-in-summer-glitters-in-the-sun-closeup.jpg?s=612x612&w=0&k=20&c=YNAs8J1R49Ul85pyEEpygrXlbqH1H7PnpFgqpwpWdQg=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1489918247/photo/healthy-happy-cute-dog-retriever-running-outdoors.jpg?s=612x612&w=0&k=20&c=XZkR5dWmcfSIo9P4AhrIbJD5DS8-JB38QZ4tUloTWrY=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/155382230/photo/black-and-white-dog-sitting-with-one-paw-raised.jpg?s=612x612&w=0&k=20&c=ntTzj7FtrtyGj1u5leLXGHXWhjL7gUZh78vkhf_o4bA=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/2005787883/photo/small-schnauzer-dog-portrait-at-home.jpg?s=612x612&w=0&k=20&c=hxF3EWbIXCIjF0V0mudPcFLgMRrHMgUjSr_fYaNvvF0=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1489918271/photo/brown-labrador-in-a-grassy-filed-at-sunset-enjoying-the-park.jpg?s=612x612&w=0&k=20&c=8oZX_wQISVsFGGRL4ae75Aby4CXknPjWYLVL54fqqRU=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1488623650/photo/2-black-puppies.jpg?s=612x612&w=0&k=20&c=3qxkl9H4AKIlxc2opmrVV3S8oUs0CmvOcPUWp4xihkw=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1479737081/photo/dog-in-boat.jpg?s=612x612&w=0&k=20&c=L9cCMLeS3LY2nY_LnVG0CWPLUD_9mJAa8xBnBf38kyY=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1769447997/photo/westie-dog-ready-to-go-on-a-week-end-in-vintage-camper-van.jpg?s=612x612&w=0&k=20&c=yNiDSZCLt1WXdAAEasRU3KEjnj3a55esviJYuStgcz0=",
      "category": ""
    },
    {
      "url":
          "https://media.istockphoto.com/id/1471952914/photo/westie-dog-portrait-on-a-bed-at-home.jpg?s=612x612&w=0&k=20&c=JrA_kqyhILEx9mO7TEEsJEesDe_2DSBtnEvtQtBQ9GY=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1265386605/photo/cute-puppy.jpg?s=612x612&w=0&k=20&c=YTMZR5ZwfbbbPymwXDqhUKYlPCdDHkfyiz_sHfUNm7s=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1329235550/photo/baby-pomeranian-spitz-playing-in-winter-day.jpg?s=612x612&w=0&k=20&c=tm_O9sHR6lLsMCNu6-6cSJwlr4tFRqulIK_UMyG7b3g=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1187321190/photo/the-dog-in-black-and-white.jpg?s=612x612&w=0&k=20&c=1sH6lt_pssOLoRqL0u_yqbxsHAT2SC7Mi96gylomrqs=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1178275100/photo/my-morning-routine-in-a-single-pic.jpg?s=612x612&w=0&k=20&c=Crxwg0-mABsehrSZ2pTHuxZokQmluDPKy_0C62IIOdk=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/538530365/photo/puppy-in-bathtub.jpg?s=612x612&w=0&k=20&c=jr3IzlUa7qvN7Da2F9PVISRKKzwWw1IN2cenHGpA6lw=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/886511848/photo/white-pet.jpg?s=612x612&w=0&k=20&c=EA2R1GoHgKpytB0FLj1vF1lpaWKEaaMec0ZcB7vta7c=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1439707265/photo/shepherds-dog.jpg?s=612x612&w=0&k=20&c=7xjuZalcrJzO0i3IOPjfYEu7Tt5EwkmXopijAeEXv5k=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1248586688/photo/cute-dog.jpg?s=612x612&w=0&k=20&c=6nB6msd-GGwpsLuX8dC-Dch8XmdtLQRa3iNmHJC4FdE=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1205916646/photo/dachshund-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=gYN3eeVCrqUt56dYeDCALbEwq8yHY-IIV2y9jHjrkL8=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1364769313/photo/street-dog.jpg?s=612x612&w=0&k=20&c=NQ_fnw-uE6C1hIA6XdUi_2LpQ79TZEVmM8H-S3YW_0o=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/170006002/photo/jack-russell-puppy-portrait.jpg?s=612x612&w=0&k=20&c=67Ax3qu1T3xlZYChA-GM5vV8Q0700lF5rUIHfEul_eI=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1906900207/photo/toy-poodle-on-white-background.jpg?s=612x612&w=0&k=20&c=BnX2I_l3lEOSMkYi300jnSOrf5S8cu8SXrS9WPhNUZ4=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1362756058/photo/flying-dog-stock-photos.jpg?s=612x612&w=0&k=20&c=TQAYVtSRzy8h5Supk_UCRQ-SR6gPy3_L-7MvHF_erS4=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/699832572/photo/pit-bull-dog-listening-studio-portrait.jpg?s=612x612&w=0&k=20&c=BkHFxTNTXsHamcv_LfQdjo9WlU7JUb251w1oWN73-bA=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/698703904/photo/big-pit-bull-dog-sitting-portrait.jpg?s=612x612&w=0&k=20&c=zjHsUlcOFfoPv222IdBlER_ogE1YJWWwtZ4f9H_ksCQ=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1059115822/photo/german-shepherd-pup.jpg?s=612x612&w=0&k=20&c=L2u8wowTSc-Oqgj5-CgehvGnCeHnTuLDtJzi7edb2Uk=",
      "category": "Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1493194122/photo/a-cute-7-week-old-golden-retriever-puppy-against-a-pink-background.jpg?s=612x612&w=0&k=20&c=30mw4KaSVeFRkhnjVU6CxueLZhYW7RZHrOplsLC7VUw=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1338041406/photo/professor-pogo.jpg?s=612x612&w=0&k=20&c=ZqN3ebN5E3W17Sei5IHk6i_ga0mbhAHYGxVBhiayXWQ=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1306057317/photo/black-dog-in-the-road.jpg?s=612x612&w=0&k=20&c=QOKSdDgRTo1HfLEVgWUf1DImL0kw-I0xwuXw9b6EMKk=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/468608710/photo/dog-shaking-off-water.jpg?s=612x612&w=0&k=20&c=S8n_36bw9eQQ0dSdxqnyY4V_ScvYjfTKkpmzhg_Nrk0=",
      "category": " Dog"
    },
    {
      "url":
          "https://www.cnet.com/a/img/resize/20d6844768bd3f5f0df41deee97897423bcaf3c5/hub/2021/11/03/3c2a7d79-770e-4cfa-9847-66b3901fb5d7/c09.jpg?auto=webp&fit=crop&height=1200&width=1200",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/2059014523/photo/portrait-of-a-french-bulldog.jpg?s=612x612&w=0&k=20&c=riKCMDXVT6F9XhdnJhPRcC8dABZ-NG31WfmCho4onZc=",
      "category": " Dog"
    },
    {
      "url":
          "https://media.istockphoto.com/id/1415305669/photo/a-cute-brown-dog.jpg?s=612x612&w=0&k=20&c=kzqTjxmtmgPkgg92_67t3BYslgb82nZl0J5SKHRrMGw=",
      "category": " Dog"
    },
    {
      "url":
          "https://plus.unsplash.com/premium_photo-1682125845754-9a4b0d77a66a?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "category": "Car"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1524600811065-a9f0b8d6aa1e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
      "category": "Car"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1532751203793-812308a10d8e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D",
      "category": "Car"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1513918573039-35f42ae13895?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fHw%3D",
      "category": "Car"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1566082544614-23fbacd0322a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fHw%3D",
      "category": "Car"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1606942790567-5783bab8d944?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fHw%3D",
      "category": "Car"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1536667839216-c4ce20e9772e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHx8",
      "category": "Car"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1446889727648-8c23e3039b24?q=80&w=1898&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "category": "Tree"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1455278996551-747adfa0f7cb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
      "category": "Tree"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1467296581482-7cc27c2500ba?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fHw%3D",
      "category": "Tree"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1597602089848-7497228bfd53?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fHw%3D",
      "category": "Tree"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1579811004376-7c5d8bb766e8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHx8",
      "category": "Tree"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1611915458524-e79e11828001?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHx8",
      "category": "Tree"
    },
  ];

  late List<Map<String, String>> tempSearchList;

  @override
  void initState() {
    tempSearchList = searchImages;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 76.0, right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search",
              style: GoogleFonts.comfortaa(fontSize: 36),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 10),
              child: TextField(
                controller: textEditingController,
                onChanged: (v) {
                  tempSearchList = searchImages
                      .where((element) => element["category"]
                          .toString()
                          .toLowerCase()
                          .contains(v.toLowerCase()))
                      .toList();
                  setState(() {});
                },
                decoration: const InputDecoration(
                  hintText: "Search...",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
            ),
            Expanded(
              child: MasonryGridView.count(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                itemCount: tempSearchList.length,
                itemBuilder: (context, index) {
                  return Image.network(
                    tempSearchList[index]["url"]!,
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
