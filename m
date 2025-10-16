Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 779ECCCD194
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 12:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3aq/lVNEZlMNLroFdqAt3ifsKu/psAGRnwz3jTwJSE=; b=G1E1vHCxSRB/ct
	qpR9ud2Kn8qGQaZ5Ri38lL+E89a2DXWlLzOmDmw4fyF2A8d2QI3jO+osf7UVehA3UZvT9hGAYh7YV
	J9raeqtL0wJVWBT9pdE+qA30ziwPxeeGwDL/NEiRFYcJphSGvCKLCH8Qc3DkJ9RKZwvre8U0s/46J
	aPRoM75m+TZwD1bGwkAYTrvTMOkhmKhAHBqKnff6k9StB4bE0BxqfF7YeA/aSqUSaU5DhsZrEeywx
	/H7q/HtTkA6gCxgE4MtuB3eNHAjpczD7DOlpO6dxELTa/bkaYW3Vg+7lgvbn3fgdduvS6SGAabaPi
	qJece0ePKU8gyPZoz9cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9MsA-00000004iZF-14RH;
	Thu, 16 Oct 2025 12:14:22 +0000
Received: from mail-qk1-f177.google.com ([209.85.222.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Ms7-00000004iYZ-31ur
	for linux-phy@lists.infradead.org;
	Thu, 16 Oct 2025 12:14:20 +0000
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-88e68c0a7bfso136547885a.0
        for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 05:14:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760616858; x=1761221658;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e3GThzLUFjGbl3VuQITKYi7/BLSw+ups+ZHEY60Y/84=;
        b=iNDk1sAH+veh8+i8uUuR+WS97PdtmY+Dd8t44qh8lJKwVDK0+VWLckzlJWdBis8dSq
         C3bEm9YLh34KD9zkC6T9xNwFOwjdKA9lLvpucc93zH8hVR2ZnpOLXCRmGEusVnqYZ+DY
         5KSrOPsl3jTORdwQkpJn8zJJ9ZdGO5Grh8s/kcsz/EcSSkupp1nes0r3q+6ToBc8eQVL
         UkrnTC0QOxyWDKMtZjMv4ZeAlkmOhlsqDQaDz/Y/50SH0xQIEXheSACsm50E46Sa52Va
         fIUvRsbV5UXzR8a5PHN15iarxSRtq2hVX5uD+UhiGqhdXt4yKcOdJhgvCnHPs+jp2pJF
         IDmg==
X-Forwarded-Encrypted: i=1; AJvYcCUVlD6WczXfqgbO5ddgyeCQvHedO/ipx4ZDzOAovuSN3xO5Qq+beKMbGqoyC/UTAXjiMRhThW51J4Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXysj+CHDfzRARwQmJGEwGewmGCSc3jDQsYpp4ykSHRIvx2evG
	KPdWidAh+pdM030nuES5ykQUwjiu8WnK16loUyjZ9ufKDhPpans1AYP7e2xBdudY
X-Gm-Gg: ASbGncupKGg0Xk5FJaSfME85w29a6xIDWIhjrYtUtg9RDVYyGDpsdGg2g3ah/tKtirH
	eBgRdz2yP+xV+plsoAJJpcBDumDicF9/vRsxgmOAlJ7cJHVwMXHfXulO89GGmUadZpKJnkAKYhY
	USrzVPsQURnUW/4//JU2AAP8p1HHtsRvWjz3Y9UIyPew5lbGyLLhYaHhzJLqNuEpOV+soyVLRao
	rCYa8QrgzdpSL+jtt9kUaElcGFi2nxABcf7l9IoSWZ2s2E3NLqplTkHT+vUxHn4UxYq6/1C+QZB
	oxLBliEoUHYffPu9s5cdkPSIzSVqhO83Fp+9TdgxGCllXeSyaESrOrUk8e3/6btK9NI5s2hAhcq
	RtdfwyVmQVNQVanGsVycNbW3tFzVuBEXuwBachXXVHMX4ELHhfwxmjKxXqTPJqDPYzQfM2kNEZ4
	59ccsjuSuegrC2hJzGDS4yMNEdCON/iChLMQHyUeduXQ==
X-Google-Smtp-Source: AGHT+IEjC/ZvC+i/iVKz9xULVMawFj+fcvrS1RaNowMmSavO9nBbe1vCUG5DZ6lwweAaZOEVA1Rm7Q==
X-Received: by 2002:a05:620a:4046:b0:864:ed9b:d4c6 with SMTP id af79cd13be357-8835410fff0mr4121052685a.68.1760616858028;
        Thu, 16 Oct 2025 05:14:18 -0700 (PDT)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com. [209.85.222.169])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-88f35c63ca6sm188940085a.18.2025.10.16.05.14.17
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 05:14:17 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-863fa984ef5so141565985a.3
        for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 05:14:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX/YBjAlr7GrDLq1rTuu0ynGvFp3b9Ca6JHZcL4sojB+qsqWwbZiwFTjVMXUGWxASFg+brMRJ1FFt8=@lists.infradead.org
X-Received: by 2002:a05:6102:6c2:b0:4fb:ebe1:7db1 with SMTP id
 ada2fe7eead31-5d5e220448dmr12281536137.12.1760616407229; Thu, 16 Oct 2025
 05:06:47 -0700 (PDT)
MIME-Version: 1.0
References: <20251015232015.846282-1-robh@kernel.org> <CAMuHMdVBDN8-gWVs1f=1E2NgD6Dp4=ZFUnyzqHaQj9JWPpZepw@mail.gmail.com>
 <CAL_JsqL1KL4CvnxF5eQG2kN2VOxJ2Fh1yBx9=tqJEWOeg0DdzQ@mail.gmail.com>
In-Reply-To: <CAL_JsqL1KL4CvnxF5eQG2kN2VOxJ2Fh1yBx9=tqJEWOeg0DdzQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Oct 2025 14:06:36 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUUZaL6qyuTZPoRc11WSuqcoRUFNksXZNJoijTeL+vfKQ@mail.gmail.com>
X-Gm-Features: AS18NWBH0cbPp0cJrT4sY267e4E8JBEuMEr4tkAtjK9DVXEqfelKr3ZBbd1AYGI
Message-ID: <CAMuHMdUUZaL6qyuTZPoRc11WSuqcoRUFNksXZNJoijTeL+vfKQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Fix inconsistent quoting
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Lee Jones <lee@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-iio@vger.kernel.org, linux-media@vger.kernel.org, 
	netdev@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_051419_782674_BAC3182E 
X-CRM114-Status: GOOD (  25.08  )
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

SGkgUm9iLAoKT24gVGh1LCAxNiBPY3QgMjAyNSBhdCAxMzo0NiwgUm9iIEhlcnJpbmcgPHJvYmhA
a2VybmVsLm9yZz4gd3JvdGU6Cj4gT24gVGh1LCBPY3QgMTYsIDIwMjUgYXQgMjo1N+KAr0FNIEdl
ZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+ID4gT24gVGh1
LCAxNiBPY3QgMjAyNSBhdCAwMToyMCwgUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4gPiA+IHlhbWxsaW50IGhhcyBnYWluZWQgYSBuZXcgY2hlY2sgd2hpY2ggY2hl
Y2tzIGZvciBpbmNvbnNpc3RlbnQgcXVvdGluZwo+ID4gPiAobWl4ZWQgIiBhbmQgJyBxdW90ZXMg
d2l0aGluIGEgZmlsZSkuIEZpeCBhbGwgdGhlIGNhc2VzIHlhbWxsaW50IGZvdW5kCj4gPiA+IHNv
IHdlIGNhbiBlbmFibGUgdGhlIGNoZWNrIChvbmNlIHRoZSBjaGVjayBpcyBpbiBhIHJlbGVhc2Up
LiBVc2UKPiA+ID4gd2hpY2hldmVyIHF1b3RpbmcgaXMgZG9taW5hdGUgaW4gdGhlIGZpbGUuCj4g
PiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5v
cmc+Cj4gPgo+ID4gVGhhbmtzIGZvciB5b3VyIHBhdGNoIQo+ID4KPiA+IFNpbmNlIHlvdSBhcmUg
bWVudGlvbmluZyBtaXhlZCBxdW90ZXMsIGlzIG9uZSBvciB0aGUgb3RoZXIgcHJlZmVycmVkPwo+
Cj4gSSBoYXZlIGEgc2xpZ2h0IHByZWZlcmVuY2UgZm9yIHNpbmdsZSBxdW90ZXMuCgpPSywgc28g
b3V0c2lkZSBodW1hbi1yZWFkYWJsZSBkZXNjcmlwdGlvbnMsIHRoZXJlIHNob3VsZCBvbmx5IGJl
IGRvdWJsZQpxdW90ZXMgaW4gcHJvcGVydHkgdmFsdWVzLCBpLmUuIG9uIGxpbmVzIGVuZGluZyB3
aXRoIGEgY29tbWEgb3IgYQpzZW1pY29sb24uICBTb3VuZHMgbGlrZSB0aGF0IGNhbiBiZSBzY3Jp
cHRlZCwgb3IgdmFsaWRhdGVkIGJ5IHNjcmlwdGluZy4KCj4gPiBTaG91bGRuJ3Qgd2UgdHJ5IHRv
IGJlIGNvbnNpc3RlbnQgYWNyb3NzIGFsbCBmaWxlcz8KPgo+IEkgZG9uJ3QgcGFydGljdWxhcmx5
IGNhcmUgdG8gY2hhbmdlIDkxNSBmaWxlcy4gQW5kIGlmIHRoZSB0b29scyBkb24ndAo+IGVuZm9y
Y2UgaXQsIEknbSBub3QgZ29pbmcgdG8gZG8gc28gaW4gcmV2aWV3cy4KCkZhaXIgZW5vdWdoLgoK
R3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdl
ZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0g
Z2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNo
bmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2lu
ZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlr
ZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRz
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
