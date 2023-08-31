--
-- Class Sight as table sight
--

CREATE TABLE "sight" (
  "id" serial,
  "name" text NOT NULL,
  "description" text NOT NULL,
  "address" text NOT NULL,
  "lat" double precision NOT NULL,
  "lng" double precision NOT NULL,
  "rating" integer NOT NULL
);

ALTER TABLE ONLY "sight"
  ADD CONSTRAINT sight_pkey PRIMARY KEY (id);

INSERT INTO sight (name, description, address, lat, lng, rating)
VALUES (
  'Upper Town', 
  'The upper town is full of charm and it gathers a lot of Zagreb interest points such as the Dolac market, St Mark Church, the museum of broken relationships, Kamenita Vrata (Stone gate), and the cathedral (Kaptol).',
  '10 000, Zagreb',
  45.8147423,
  15.9716824,
  3
);

INSERT INTO sight (name, description, address, lat, lng, rating)
VALUES (
  'Ribnjak Park', 
  'The park got its name after the fishponds in the area. Unfortunately, the park has been reduced due to urbanisation and its ponds where removed. The last pond was dried up in 1870 to make way for Josip Lang Square.',
  'Ribnjak street, 10 000, Zagreb',
  45.8144992,
  15.9792677,
  4
);

INSERT INTO sight (name, description, address, lat, lng, rating)
VALUES (
  'Kaptol',
  'Kaptol is a part of Zagreb, Croatia in the Upper Town and it is the seat of the Roman Catholic archbishop of Zagreb. Due to its historical associations, in Croatian "Kaptol" is also used as a metonym for the leadership of the Roman Catholic Church in Croatia.',
  '31st Kaptol street, 10 000, Zagreb',
  45.8147476,
  15.9761665,
  2
);

INSERT INTO sight (name, description, address, lat, lng, rating)
VALUES (
  'Zrinjevac Park',
  'Zrinjevac Park is a part of Zagreb Lenuci horseshoe. In the park, you may relive Zagreb’s rich history. The centerpiece of the park is the 19th century Music pavilion which serves as an open-air concert stage surrounded by Zagreb institutions.',
  'Zrinjevac 6, 10 000, Zagreb',
  45.8105675,
  15.9780972,
  5
);

INSERT INTO sight (name, description, address, lat, lng, rating)
VALUES (
  'Croatian National Theater',
  'The Croatian National Theatre in Zagreb, commonly referred to as HNK Zagreb, is a theatre, opera and ballet house located in Zagreb. At the entrance of the theatre is located the wall fountain The Source of Life, designed by Croatian artist and sculptor Ivan Meštrović in 1905.',
  'Trg Republike Hrvatske 15, 10 000, Zagreb',
  45.8093983,
  15.9700411,
  3
);