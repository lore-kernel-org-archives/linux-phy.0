Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4BEFD3B98F
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 13:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wn71KzyVsTn4GY6nLAcwNCwVJn86+taXY+tVoGGmtQ=; b=KUhpIBqXOVPhli
	NOXO7PekKXFvaRYBtexzJnMA9RY0FCqsqUDkDx5KH4uCHvWlvE2GGPyWFNO7BtiLXOIOvFejDBS56
	42cGORd5fZTKHtdd7Mk90LjlUqevqB5pNnWcN4XybSd09Efb3hLeDYkimE7KjxaxPW598JTdBU6bW
	i+waCPg45ONw7PXTEltSs+Kyh5oyl1TrOWA1xFrI6NcsZNC6samaMpNGoZEIDW5cGFmoZ3UOlPV3M
	tJ4e93s68nFrztngPrmdkcUozhVl5Wm7+B1gdXNlpN8M72VxTdrxt25ILmjuSgDPblQ8baTQvteep
	SeVUs6xYAbrLzfLtZukw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFvpg-0000000AlUF-25zn;
	Tue, 26 Nov 2024 13:42:24 +0000
Received: from mail-yw1-f182.google.com ([209.85.128.182])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFvpe-0000000AlTg-1bRh
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 13:42:23 +0000
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6ef0cee54daso22594377b3.3
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 05:42:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732628537; x=1733233337;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vwzB/qcs+FEe5xmAoaiq0XfbUwF5QZEVDjPtTScGPCA=;
        b=sLnw/stNlNfEqTI00dBGDi3iTIGr56wScaUFauoeQUVmVl15NaYznHF/LiNe5S6Nu+
         lnsF6N4Y/1kwu1nuh599xWXqyRkQawMgpTN2KqjHcdCEMYkm97y6au8znSH3UmBrnACv
         E+5rotoHstB8ncBwikLGN1mGmSlrYf7HFLB/oFCfW+fXWagmc8RJRPBNewmdSijOKhKs
         34Afy/f0Kp0nEoav9quuLJ4eA4B4lyXU523ykxWzuIC78UFmZ7dMWTKhurZh1OlOr5+B
         SzG2sroCZ85wA8SnE2Nu98wzZUA46E7MWBaNBD+Mqq7GAYoYiMcsZEB8W+wTjtO86+Yy
         EKKA==
X-Forwarded-Encrypted: i=1; AJvYcCXwaDXOgkAL5hbjd/WtN7FYkrC/uwbJezWETQyI09Y3J35zLX9bSuiMolkCvpgY8RhtxTYrUmf62Pw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDbeU7bwnLOTbPyIrUFe8UsQqvWX5zAEspAeZFxX6Mibec75v8
	HB1FsZb1mbdUmSIXEzf9dCqk2cAwmHuYDCERRabdkm11cvgoiH9kXkKxe/Bc
X-Gm-Gg: ASbGncvuT75bvo1IN3dRHbTskr0cOE1KUjyP0A2M1PmN7UqXW9uRg7knEDaBWwkDx9x
	nxafhk7Dmh3LH3RQFSkWnWcuJIywDjrZt8Z/e4+5XPriXxLv8FTsCKGSeb0f9g/rYAW3xcQtyc2
	xnIrtGJnBoLhSeu1W/o5iYpOQx3p9KkkKe0Xx8oIML1LY3GleMV2KGmy9joSfkUb7O+xL73RUc3
	ZwGXZh4ZhsjKN23AjruvmB790UUcdZxAdj7FrUL5B4fbsWzwJ2RW3QpeIwiT3jXe+azvq0G3YMx
	U4DKUuxRh9iMmGzW
X-Google-Smtp-Source: AGHT+IFQzci/Pxy5sSoL+vQxOZ6nNmXfTCCgcaJhCE8FwnYRYzDf4LRTkK+G1mxEHzmwvy4UYGLZDQ==
X-Received: by 2002:a05:690c:7441:b0:6e3:b6c:d114 with SMTP id 00721157ae682-6eee0a61d11mr158844627b3.38.1732628536732;
        Tue, 26 Nov 2024 05:42:16 -0800 (PST)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6eedfe2a815sm22643787b3.43.2024.11.26.05.42.14
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 05:42:15 -0800 (PST)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-6e9f8dec3daso43948067b3.0
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 05:42:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUfiud5CjNXNrNkAgHZZutzFyUwr1hesMRRvhcHCY65OT7qMFK3wzLjNtbNEHSK0AoQ2isWMtSV8Pc=@lists.infradead.org
X-Received: by 2002:a05:690c:67c1:b0:6ea:95f5:2607 with SMTP id
 00721157ae682-6eee08a90a2mr143879177b3.5.1732628534112; Tue, 26 Nov 2024
 05:42:14 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-3-claudiu.beznea.uj@bp.renesas.com> <TY3PR01MB11346C9A56B483666575EB23A862F2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346C9A56B483666575EB23A862F2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 26 Nov 2024 14:42:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVkXo=HSqoF2hur8Nvder6yOg_Aqgzq=aFvfti+9=PnJA@mail.gmail.com>
Message-ID: <CAMuHMdVkXo=HSqoF2hur8Nvder6yOg_Aqgzq=aFvfti+9=PnJA@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] soc: renesas: Add SYSC driver for Renesas RZ family
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "Claudiu.Beznea" <claudiu.beznea@tuxon.dev>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	"kishon@kernel.org" <kishon@kernel.org>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, 
	"geert+renesas@glider.be" <geert+renesas@glider.be>, "magnus.damm@gmail.com" <magnus.damm@gmail.com>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	"christophe.jaillet@wanadoo.fr" <christophe.jaillet@wanadoo.fr>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_054222_421990_BE1135B8 
X-CRM114-Status: GOOD (  29.33  )
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

SGkgQmlqdSwKCk9uIFR1ZSwgTm92IDI2LCAyMDI0IGF0IDEwOjI44oCvQU0gQmlqdSBEYXMgPGJp
anUuZGFzLmp6QGJwLnJlbmVzYXMuY29tPiB3cm90ZToKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4gPiBGcm9tOiBDbGF1ZGl1IDxjbGF1ZGl1LmJlem5lYUB0dXhvbi5kZXY+Cj4gPiBT
ZW50OiAyNiBOb3ZlbWJlciAyMDI0IDA5OjIxCj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDIvMTVd
IHNvYzogcmVuZXNhczogQWRkIFNZU0MgZHJpdmVyIGZvciBSZW5lc2FzIFJaIGZhbWlseQo+ID4K
PiA+IEZyb206IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNv
bT4KPiA+Cj4gPiBUaGUgUlovRzNTIHN5c3RlbSBjb250cm9sbGVyIChTWVNDKSBoYXMgdmFyaW91
cyByZWdpc3RlcnMgdGhhdCBjb250cm9sIHNpZ25hbHMgc3BlY2lmaWMgdG8gaW5kaXZpZHVhbAo+
ID4gSVBzLiBJUCBkcml2ZXJzIG11c3QgY29udHJvbCB0aGVzZSBzaWduYWxzIGF0IGRpZmZlcmVu
dCBjb25maWd1cmF0aW9uIHBoYXNlcy4KPiA+Cj4gPiBBZGQgU1lTQyBkcml2ZXIgdGhhdCBhbGxv
d3MgaW5kaXZpZHVhbCBTWVNDIGNvbnN1bWVycyB0byBjb250cm9sIHRoZXNlIHNpZ25hbHMuIFRo
ZSBTWVNDIGRyaXZlcgo+ID4gZXhwb3J0cyBhIHN5c2NvbiByZWdtYXAgZW5hYmxpbmcgSVAgZHJp
dmVycyB0byB1c2UgYSBzcGVjaWZpYyBTWVNDIG9mZnNldCBhbmQgbWFzayBmcm9tIHRoZSBkZXZp
Y2UKPiA+IHRyZWUsIHdoaWNoIGNhbiB0aGVuIGJlIGFjY2Vzc2VkIHRocm91Z2ggcmVnbWFwX3Vw
ZGF0ZV9iaXRzKCkuCj4gPgo+ID4gQ3VycmVudGx5LCB0aGUgU1lTQyBkcml2ZXIgcHJvdmlkZXMg
Y29udHJvbCB0byB0aGUgVVNCIFBXUlJEWSBzaWduYWwsIHdoaWNoIGlzIHJvdXRlZCB0byB0aGUg
VVNCIFBIWS4KPiA+IFRoaXMgc2lnbmFsIG5lZWRzIHRvIGJlIG1hbmFnZWQgYmVmb3JlIG9yIGFm
dGVyIHBvd2VyaW5nIHRoZSBVU0IgUEhZIG9mZiBvciBvbi4KPiA+Cj4gPiBPdGhlciBTWVNDIHNp
Z25hbHMgY2FuZGlkYXRlcyAoYXMgZXhwb3NlZCBpbiB0aGUgdGhlIGhhcmR3YXJlIG1hbnVhbCBv
ZiB0aGUgUlovRzNTIFNvQykgaW5jbHVkZToKPiA+Cj4gPiAqIFBDSWU6Cj4gPiAtIEFMTE9XX0VO
VEVSX0wxIHNpZ25hbCBjb250cm9sbGVkIHRocm91Z2ggdGhlIFNZU19QQ0lFX0NGRyByZWdpc3Rl
cgo+ID4gLSBQQ0lFX1JTVF9SU01fQiBzaWduYWwgY29udHJvbGxlZCB0aHJvdWdoIHRoZSBTWVNf
UENJRV9SU1RfUlNNX0IKPiA+ICAgcmVnaXN0ZXIKPiA+IC0gTU9ERV9SWFRFUk1JTkFUSU9OIHNp
Z25hbCBjb250cm9sbGVkIHRocm91Z2ggU1lTX1BDSUVfUEhZIHJlZ2lzdGVyCj4gPgo+ID4gKiBT
UEk6Cj4gPiAtIFNFTF9TUElfT0NUQSBzaWduYWwgY29udHJvbGxlZCB0aHJvdWdoIFNZU19JUENP
TlRfU0VMX1NQSV9PQ1RBCj4gPiAgIHJlZ2lzdGVyCj4gPgo+ID4gKiBJMkMvSTNDOgo+ID4gLSBh
Zl9ieXBhc3MgSTJDIHNpZ25hbHMgY29udHJvbGxlZCB0aHJvdWdoIFNZU19JMkN4X0NGRyByZWdp
c3RlcnMKPiA+ICAgKHg9MC4uMykKPiA+IC0gYWZfYnlwYXNzIEkzQyBzaWduYWwgY29udHJvbGxl
ZCB0aHJvdWdoIFNZU19JM0NfQ0ZHIHJlZ2lzdGVyCj4gPgo+ID4gKiBFdGhlcm5ldDoKPiA+IC0g
RkVDX0dJR0FfRU5BQkxFIEV0aGVybmV0IHNpZ25hbHMgY29udHJvbGxlZCB0aHJvdWdoIFNZU19H
RVRIeF9DRkcKPiA+ICAgcmVnaXN0ZXJzICh4PTAuLjEpCj4gPgo+ID4gQXMgZGlmZmVyZW50IFJl
bmVzYXMgUlogU29DIHNoYXJlcyBtb3N0IG9mIHRoZSBTWVNDIGZ1bmN0aW9uYWxpdGllcyBhdmFp
bGFibGUgb24gdGhlIFJaL0czUyBTb0MsIHRoZQo+ID4gZHJpdmVyIGlmIGZvcm1lZCBvZiBhIFNZ
U0MgY29yZSBwYXJ0IGFuZCBhIFNvQyBzcGVjaWZpYyBwYXJ0IGFsbG93aW5nIGluZGl2aWR1YWwg
U1lTQyBTb0MgdG8gcHJvdmlkZQo+ID4gZnVuY3Rpb25hbGl0aWVzIHRvIHRoZSBTWVNDIGNvcmUu
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVq
QGJwLnJlbmVzYXMuY29tPgo+Cj4gUmV2aWV3ZWQtYnk6IEJpanUgRGFzIDxiaWp1LmRhcy5qekBi
cC5yZW5lc2FzLmNvbT4KClRoYW5rcyBmb3IgeW91ciByZXZpZXchCgo+ID4gLS0tCj4gPgo+ID4g
Q2hhbmdlIGluIHYyOgo+ID4gLSB0aGlzIHdhcyBwYXRjaCAwNC8xNiBpbiB2MQo+ID4gLSBkcm9w
cGVkIHRoZSBpbml0aWFsIGFwcHJvYWNoIHByb3Bvc2VkIGluIHYxIHdoZXJlIGEgd2l0aCBhIHJl
c2V0Cj4gPiAgIGNvbnRyb2xsZXIgZHJpdmVyIHdhcyBwcm9wb3NlZCB0byBoYW5kbGUgdGhlIFVT
QiBQV1JSRFkgc2lnbmFsCj4gPiAtIGltcGxlbWVudGVkIGl0IHdpdGggc3lzY29uIHJlZ21hcCBh
bmQgdGhlIFNZU0Mgc2lnbmFsIGNvbmNlcHQKPiA+ICAgKGludHJvZHVjZWQgaW4gdGhpcyBwYXRj
aCkKClsuLi5dCgpXaGVuIHJldmlld2luZywgcGxlYXNlIHRyaW0geW91ciByZXNwb25zZSwgc28g
b3RoZXIgcGVvcGxlIGRvbid0IGhhdmUKdG8gc2Nyb2xsIHRocm91Z2ggaHVuZHJlZHMgb2YgbGlu
ZXMgb2YgcXVvdGVkIHRleHQsIHRvIGZpbmQgYW55IG90aGVyCmNvbW1lbnRzIChpZiBhbnkpLgoK
VGhhbmtzIQoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVy
dAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25k
IGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMg
d2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJ
J20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21l
dGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVz
IFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
