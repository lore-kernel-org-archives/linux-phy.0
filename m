Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F28EC0218A
	for <linux-phy@archiver.kernel.org>; Sat,  1 Feb 2025 16:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jpEZAoAu55uU3C+n0n5r1we9gPbHwBjOUgQ94kmjB4=; b=ja6+e5AbL0o051
	dcGcxVe8iVsVcR9cSBdJ4lTrMr36k1hZR3DK0p6WhnM955eXxpDbn6PoyB1n7Uo0fVMNnRVjGOs9R
	U5OW3vl5vIDKljXX+uybt1HN6t9wR3ld64h8CnJsRiBDRqSG9cLpWQlyvr6kvHmpWMDea2rBVc+V5
	ysu5T+G7IGM980XefJkGGizepF8bmzk+bsX+XtoGIS2dS2kGUgdNbiQ/JHvpt76koINzUZIV8hM+Y
	SLPuQamLXmvRdP0c+NZQjwS1A0aOwahdJPhV6O9iyBZWq4STuDliJo3IxtIEOw3jGqgZ5Rh5EZeFD
	NwcYoCugL6mV1LhsFZxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teGH1-0000000Cr4j-1N8x;
	Sat, 01 Feb 2025 16:23:11 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teGGD-0000000CqyO-2wwO
	for linux-phy@lists.infradead.org;
	Sat, 01 Feb 2025 16:22:22 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-543e47e93a3so3177719e87.2
        for <linux-phy@lists.infradead.org>; Sat, 01 Feb 2025 08:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1738426940; x=1739031740; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gc2yB9uwC+CfjzlaXN3vOgLBSMdhCziTLFTpp/igtbI=;
        b=gG5QJVWyhsNDK+H5l+8JczvJAy/3pwMjuwYits4g4/1RMGFdiYo4kBOaznwEecFKge
         Vs3lZSnL14z37CjREQOiiQLz1kvN/sfR34v16Q5Enaqa06XXgM7BHmw+SR6Hojbng7IW
         NewL9ZfDmq+Cm/EA7SYBKQ10rwyLgOU1kv2W4ter2eUoyXMOUCT6FKemFQ+3Evs07o2l
         P47FD+vRBqC/ztyLE27mirjT1tGL7jNGlYN84lIsDCeXda3pCjs5N7MbEduhTiC3BiPC
         eM3etyAaQuRZbljg1tk53VpHp2m+72HCpghIzanEqkIkE04PgSU7t7z2xjNjC8+2J4gf
         OAwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738426940; x=1739031740;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gc2yB9uwC+CfjzlaXN3vOgLBSMdhCziTLFTpp/igtbI=;
        b=KzB0ZEHquDfwpoHxojwJPnWf3ZjFMPoiuPXCWOF1FOtkgA+LbGu5AroCP5ilOC0bCi
         qgkXlQvEJjXesanwm2v4T//raWWFgWMLlQmDshxGjY9+0441s/QRABLHdrRj9RSsORDD
         6S6yqvPEPcDRKC2yM1YUKPpsIUVPpx4nSlC8W4XhIshDzoWCZc/Wstqi5how+Eb4XOYK
         vGFWDanVPZu34Cc4Sj5i6hyEThBnRlT6T4UoejWc1eJVGWw7mdX8/axqPAHz6DON7MuA
         yu9tZ86n5CCR5BbsJvJ4L2YZ5GvH4aXh3WZCflgTd3EyDt9hyvinYL629tcvgu3wur7B
         deQw==
X-Forwarded-Encrypted: i=1; AJvYcCVYBmmGrXs/hF2ria6kgmKx38AhawL1V9La8EA8SXszdcYn1whGb5JeOKM33S/8dhMbrL7PyC0+RFY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTtxLbLSQZkraaaaj5+3HV/8OzNVa7sUVLcyBY02UbieKBgKf5
	HoazlIqPPaenPHoL7R41DCUXuKiLv4elGolH9BGhudlRiUEtY6nYRtEhr5mm8KNQgrDxBCbMxH/
	wvkXJUseUhI6E3aWCGMGj7UX9OOpMbP7jDeLliQ==
X-Gm-Gg: ASbGncvIMn7y9BPgxPTdxwb14dKewcW/eod4oyhoQs5QznIu8a8flHZqqwPFO9G7rnc
	CPMA27z2Cgbuk7Q35HwKSgQWDVtFgqer/KTfvClQu0wF+23TPP5lhbAQG5zOeaKzGnLSJ3z7w
X-Google-Smtp-Source: AGHT+IEMrH29lOkWTlWC69aY0dD2xb+wCJlnehQsFFcBgOS7bovj0ZbCV4vzNowRaHEyenGDcRs81QzQOyPr/8xF7gY=
X-Received: by 2002:a05:6512:12c7:b0:53e:239b:6097 with SMTP id
 2adb3069b0e04-543e4c3fd4cmr5485244e87.50.1738426939852; Sat, 01 Feb 2025
 08:22:19 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
 <CAMRc=MdwQL8dWU5zF5fp+KUbC2RA2Q264by8HGXMg2k1rxhsTA@mail.gmail.com>
 <9931433b-5cde-4819-ac96-eea4f1f0f1f2@baylibre.com> <CAMRc=McEdcDs01BAKN5vg9POg_xxJBY1k8bfgiDN60C1-e_jow@mail.gmail.com>
 <072be5a9-e0fb-4073-85b3-4a8efcafae09@baylibre.com>
In-Reply-To: <072be5a9-e0fb-4073-85b3-4a8efcafae09@baylibre.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 1 Feb 2025 17:22:08 +0100
X-Gm-Features: AWEUYZndtirbEg_aYtJ6wt5WMFYJObSWPO3NsWCnNmAFKxLlbxMM9F8rxlAsWp4
Message-ID: <CAMRc=Meq_Gfhcjzx0vCL0JPzfnOcijFgB6AuqtsqgGn1eOTMVg@mail.gmail.com>
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
To: David Lechner <dlechner@baylibre.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, 
	Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250201_082221_742528_C79CC5D5 
X-CRM114-Status: GOOD (  18.50  )
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

T24gU2F0LCBGZWIgMSwgMjAyNSBhdCA1OjE34oCvUE0gRGF2aWQgTGVjaG5lciA8ZGxlY2huZXJA
YmF5bGlicmUuY29tPiB3cm90ZToKPgo+IE9uIDIvMS8yNSAxMDoxNCBBTSwgQmFydG9zeiBHb2xh
c3pld3NraSB3cm90ZToKPiA+IE9uIFNhdCwgRmViIDEsIDIwMjUgYXQgNTowOeKAr1BNIERhdmlk
IExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAyLzEv
MjUgNDozNiBBTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiA+Pj4KPiA+Pj4gVGhpcyBs
b29rcyBnb29kIHRvIG1lIGV4Y2VwdCBmb3Igb25lIHRoaW5nOiB0aGUgZnVuY3Rpb24gcHJlZml4
LiBJIHdvdWxkCj4gPj4+IHJlYWxseSBhcHByZWNpYXRlIGl0IGlmIHdlIGNvdWxkIHN0YXkgd2l0
aGluIHRoZSBleGlzdGluZyBncGlvZF8gbmFtZXNwYWNlIGFuZAo+ID4+PiBub3QgYWRkIGEgbmV3
IG9uZSBpbiB0aGUgZm9ybSBvZiBncGlvZHNfLgo+ID4+Pgo+ID4+PiBNYXliZTogZ3Bpb2RfbXVs
dGlwbGVfc2V0XyBvciBncGlvZF9jb2xsZWN0ZWRfc2V0Li4uPwo+ID4+Pgo+ID4+PiBCYXJ0b3N6
Cj4gPj4KPiA+PiBJIHdhcyB3YWl0aW5nIGZvciBzb21lb25lIHRvIGNvbXBsYWluIGFib3V0IHRo
ZSBuYW1pbmcuIDstKQo+ID4+Cj4gPj4gSSB3YXMgZ29pbmcgZm9yIGFzIHNob3J0IGFzIHBvc3Np
YmxlLCBidXQgT0ssIHRoZSBtb3N0IG9idmlvdXMgcHJlZml4IHRvIG1lCj4gPj4gd291bGQgYmUg
YGdwaW9fZGVzY3NfLi4uYCAodG8gbWF0Y2ggdGhlIGZpcnN0IHBhcmFtZXRlcikuIEFueSBvYmpl
Y3Rpb25zIHRvCj4gPj4gdGhhdD8KPiA+Pgo+ID4KPiA+IFllcywgb2JqZWN0aW9uISBBcyBmYXIg
YXMgYW55IGV4cG9ydGVkIGludGVyZmFjZXMgZ286IGluIG15IGJvb2sKPiA+ICJncGlvXyIgaXMg
dGhlIHByZWZpeCBmb3IgbGVnYWN5IHN5bWJvbHMgd2Ugd2FudCB0byBnbyBhd2F5IGFuZAo+ID4g
ImdwaW9kXyIgaXMgdGhlIHByZWZpeCBmb3IgY3VycmVudCwgZGVzY3JpcHRvci1iYXNlZCBBUEku
IEFueXRoaW5nCj4gPiBlbHNlIGlzIGEgbm8tZ28uIEkgcHJlZmVyIGEgbG9uZ2VyIG5hbWUgdGhh
dCBzdGFydHMgd2l0aCBncGlvZF8gb3Zlcgo+ID4gYW55dGhpbmcgdGhhdCdzIHNob3J0ZXIgYnV0
IGRvZXNuJ3QuCj4gPgo+ID4gQmFydG9zego+Cj4gT29wcywgdGhhdCB3YXMgYSB0eXBvLiBJIG1l
YW50IHRvIHdyaXRlIGdwaW9kX2Rlc2NzXy4KCkVoLi4uIHRoZSBEIGluIGdwaW9EIGFscmVhZHkg
c3RhbmRzIGZvciAiR1BJTyBEZXNjcmlwdG9yIiBidXQgaWYKdGhlcmUncyBubyBiZXR0ZXIgb3B0
aW9uIGluIHlvdXIgb3BpbmlvbiB0aGFuIEkgZ3Vlc3MgSSBjYW4gbGl2ZSB3aXRoCnRoYXQuCgpC
YXJ0CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
