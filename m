Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60276E7717F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 15:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrlFVuKwoxfOBeuKnGdoFzz2j4V27RRRwyEVJ7sV6DY=; b=z5gVq+ivZeNnUS
	r3wo7NlE5z1CA0F+hrf4Kt568itZlBscVOZmk4WXPYCLI/01d1zVgh2Pf6Y5lR7X9TyTK/IY408zG
	jH2JKH3CsptyPaMbCP5AmiaejsaPdP3cEYnxIU97wCVuUt8skKB0m1giD5o06v+o3peI9iIspukG2
	FA2nT7C+OEZDEAQFq1EbgqINnk3jLjIno0Uapt9PBPGT3T7YJbYBjzZUKf4bAgbCB0TxdpqRs5xO2
	9Ys3wOuGru+fPS88gXFtccTAGKVbSWTs8HSpslM5igexLcLFYO/3kWGm2Y2MgizIsjbho69DCX3zh
	0E6v8OIfX9YHu7l6rDRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL2Jv-0000000By5R-29w6;
	Tue, 10 Dec 2024 15:38:43 +0000
Received: from mail-vs1-f48.google.com ([209.85.217.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL2Js-0000000By3S-36xP
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 15:38:42 +0000
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-4afefc876c6so774999137.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:38:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733845118; x=1734449918;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/GImrkH7NuRSGRl0vXAqD2NdnlmWdF/l9MF9PYKs5Ok=;
        b=QmePaQqPbK75SiTm+RXbTtlk3Uds2c+xr6lVj1mlvTsPKLKaBiHHqARDbUbodKCHnx
         rcOE8cPjdkqZNFgLUbfvTDDhPSojZj6Tg3usXdHBZsKUtWC23oGFSPPkcp5d6mx86W89
         w3H6d++erspIgraMVboWZdI97rJO3n7YBwjeqGsPJCzYDym6MvhzDLGpAon1ag5lIRI1
         /S6nUcPGENI+4n+XCe6yFhlEK7GDK273Ki4zADcPBYEDihNzks2du59lxCWz2aWVrFLP
         XXrnM8/H3QZS3cpoOadH/jhPSYVbNDBav/4MifuhK0Vf4I8ZBHNiKIoxlOXucFwkQY4Q
         gcXg==
X-Forwarded-Encrypted: i=1; AJvYcCV8Bb5xCHQdINucx1Q0MLC+o5ib/jrQsojx8epBKMlKEDulE4vppeeW5B74bT4qqXD4efaMzNJorXc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzpAARJmvxyyNGizYXccyF7MxqbDMPAVAZuEAdmoVVIKwrYJ7QY
	dt0O+a5EZKID391HUPJQENvXw/7/+Golb/DfyZI+/uO5Rvd4i6SJ+zM8bgid
X-Gm-Gg: ASbGnctkgynl8PAmXonmFGLQDVLcxgWohK2z2fjsp/gRwpxBhtu5n668NcpBNO7ZYZy
	DuHbA4WaQpBEAgSZW2WMqEcslwO80Fey4MTNlqXMuqj2Mh5XMDRwf8FGRX3tIZ777pxkvHdiO3a
	rDuCCwAaGnZPPRWot5SScyOQNoS+Wo0ok3hDW95ljTAv62+PXPT/Hoph75GfPnUvuVv+ujHI+K9
	dSz72SQq5hMWEwF3Y3AQsiJE/X0LVuSEblhCQXlmz8PYtpANhkR+aMzL11dSGv+PQSZ4HcD/wU8
	88bDdRlL7b7ieXPa+xx8
X-Google-Smtp-Source: AGHT+IGKz+KVgM1Ei0qDd7IXfNBvtlCOQwjbVOTg7Ug2MGvFEs8kzJ2ulj60sTH4DdvSpMjhE+R6ew==
X-Received: by 2002:a05:6102:5092:b0:4af:c58f:4550 with SMTP id ada2fe7eead31-4b11608da9emr5753257137.7.1733845117756;
        Tue, 10 Dec 2024 07:38:37 -0800 (PST)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4afd48d5b09sm1065299137.21.2024.12.10.07.38.36
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 07:38:36 -0800 (PST)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-518808ef4a1so612937e0c.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:38:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWCxHesWQcmD0gvnO+67/MlYgkXM+QU7aXYAEb1RIrpii7usO6FsqXuLCO9Fo6K83HK2hXOWokhk5Y=@lists.infradead.org
X-Received: by 2002:a05:6122:322c:b0:516:1bda:b364 with SMTP id
 71dfb90a1353d-51888329b57mr5198364e0c.3.1733845116411; Tue, 10 Dec 2024
 07:38:36 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-15-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-15-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2024 16:38:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXxo1YShE1MNTPDvmZKSYv_YvUvO3yaFM4ypdmSfF00uw@mail.gmail.com>
Message-ID: <CAMuHMdXxo1YShE1MNTPDvmZKSYv_YvUvO3yaFM4ypdmSfF00uw@mail.gmail.com>
Subject: Re: [PATCH v2 14/15] arm64: dts: renesas: r9a08g045: Add USB support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, 
	yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_073840_783590_E1555B01 
X-CRM114-Status: GOOD (  19.69  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgQ2xhdWRpdSwKCk9uIFR1ZSwgTm92IDI2LCAyMDI0IGF0IDEwOjIx4oCvQU0gQ2xhdWRpdSA8
Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2PiB3cm90ZToKPiBGcm9tOiBDbGF1ZGl1IEJlem5lYSA8
Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4KPiBBZGQgVVNCIG5vZGVzIGZvciB0
aGUgUmVuZXNhcyBSWi9HM1MgU29DLiBUaGlzIGNvbnNpc3RzIG9mIFBIWSByZXNldCwKPiBob3N0
IGFuZCBkZXZpY2Ugc3VwcG9ydC4KPgo+IFJldmlld2VkLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4g
PGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+IFNpZ25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVh
IDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPiAtLS0KPgo+IENoYW5nZXMgaW4g
djI6Cj4gLSB0aGlzIHdhcyBwYXRjaCAxNC8xNiBpbiB2MQo+IC0gYWRkZWQgcmVuZXNhcyxzeXNj
LXNpZ25hbCBwcm9wZXJ0aWVzIHRvIFVTQiBQSFlzCj4gLSBjb2xsZWN0ZWQgdGFncwo+IC0gR2Vl
cnQ6IEkga2VwdCB5b3VyIHRhZzsgcGxlYXNlIGxldCBtZSBrbm93IGlmIHlvdSBjb25zaWRlciBv
dGhlcndpc2UKClRoYW5rcyBmb3IgeW91ciBwYXRjaCEKCj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yZW5lc2FzL3I5YTA4ZzA0NS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
ZW5lc2FzL3I5YTA4ZzA0NS5kdHNpCj4gQEAgLTQxNyw2ICs0MTcsMTI1IEBAIGV0aDE6IGV0aGVy
bmV0QDExYzQwMDAwIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gKyAgICAgICAgICAgICAgIHBoeXJzdDogdXNi
cGh5LWN0cmxAMTFlMDAwMDAgewpbLi4uXQo+ICsgICAgICAgICAgICAgICBvaGNpMDogdXNiQDEx
ZTEwMDAwIHsKWy4uLl0KPiArICAgICAgICAgICAgICAgZWhjaTA6IHVzYkAxMWUxMDEwMCB7Clsu
Li5dCj4gKyAgICAgICAgICAgICAgIHVzYjJfcGh5MDogdXNiLXBoeUAxMWUxMDIwMCB7ClsuLi5d
Cj4gKyAgICAgICAgICAgICAgIGhzdXNiOiB1c2JAMTFlMjAwMDAgewpbLi4uXQo+ICsgICAgICAg
ICAgICAgICBvaGNpMTogdXNiQDExZTMwMDAwIHsKWy4uLl0KPiArICAgICAgICAgICAgICAgZWhj
aTE6IHVzYkAxMWUzMDEwMCB7ClsuLi5dCj4gKyAgICAgICAgICAgICAgIHVzYjJfcGh5MTogdXNi
LXBoeUAxMWUzMDIwMCB7CgpQbGVhc2Uga2VlcCBzaW1pbGFyIG5vZGVzIHRvZ2V0aGVyLCBpLmUu
CgogICAgcGh5cnN0OiB1c2JwaHktY3RybEAxMWUwMDAwMCB7CiAgICBvaGNpMDogdXNiQDExZTEw
MDAwIHsKICAgIG9oY2kxOiB1c2JAMTFlMzAwMDAgewogICAgZWhjaTA6IHVzYkAxMWUxMDEwMCB7
CiAgICBlaGNpMTogdXNiQDExZTMwMTAwIHsKICAgIHVzYjJfcGh5MDogdXNiLXBoeUAxMWUxMDIw
MCB7CiAgICB1c2IyX3BoeTE6IHVzYi1waHlAMTFlMzAyMDAgewogICAgaHN1c2I6IHVzYkAxMWUy
MDAwMCB7CgpBZnRlciB0aGF0LCB5b3UgY2FuIGVhc2lseSBjb21wYXJlIHdpdGggc2ltaWxhciBT
b0NzOgoKICAgIHNvYy1kdHMtZGlmZiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjlhMHs3
ZzA0NCw4ZzA0NX0uZHRzaQoKaHR0cHM6Ly9naXRodWIuY29tL2dlZXJ0dS9saW51eC1zY3JpcHRz
L2Jsb2IvbWFzdGVyL3NvYy1kdHMtZGlmZgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAg
ICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxv
dHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNv
bmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEg
aGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJw
cm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
