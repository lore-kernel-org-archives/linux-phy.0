Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59706CCD183
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 16:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1yG3Az3ibkyZrhJs+FfmgkGG9hE2tOQaOBdqKR0x7E=; b=ybDF4q/YGDwnZC
	OAOrh4xLgLH7SaKoAOdF49VPIFMMD/vRclrGHnF3dODcfNgeF3ymizq7ucBj8wPqwRHdkFpXETsEm
	opziSvd6u+BjX+UFL5ZXIcHn8V4TV0kShx0gwBhtY21IwEWdW8Sg15fLmP0yen2/8r+0U0gb1cgHx
	sArRdRNHwnGIh5ZW/aI0xFyugIt5EcXWsh0hNPDdQurxP1w1hYeEccGqDiS5dwgLkFQEYW5bg7wI8
	YZtQILmQ0li+AWCxXWq435E2OQq7qR/QSEcwTOnTJl3IxDO7rilPMnwUYxDOaLx7Fl+4c9bwZNXpn
	Os0uDDoeynVisRTTXI6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9QVW-00000005MNI-0WyM;
	Thu, 16 Oct 2025 16:07:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9QVU-00000005MLs-0VqL
	for linux-phy@lists.infradead.org;
	Thu, 16 Oct 2025 16:07:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C78CA48E45
	for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 16:07:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7C7CC116D0
	for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 16:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760630831;
	bh=Vjr9YRqSTqtgmJiKQ524agy+ATb2FxOdcZqgwssjAqI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=BnUKw1BsIgKNfgjiQKOCCdP7+2sAITiVggeYA4bvzkmo9/dnOfQRX8i28JjI7nkXq
	 RMVQvw5oHEex4GknBxHrcvo76GRBOF75qnA762q8AcKfifzqH2N8rsY8CzlyFx3ukd
	 WLL7Z29LnYU5WpFV0tvRZ+eVq94WlEspx4JpStQMp42ejREk0LdvaK1AthG6ImDve/
	 H2ceQQfLOMEw2/bOT3CREXPKc45UAGHEVMWOJ1k+4PkB+DF0sudp0lq73xHACcdDMg
	 uxadb1Dx9xPL5SC8diIOTtrW6LsVsgDeuYQmfqeAAtq1uwn39xEu2ohGbpYtmK5aVg
	 x/MPmQ4DkDSeg==
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b457d93c155so129076166b.1
        for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 09:07:11 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUj3CZb2uDzW+e1SK8Rha6rXg8CUlkrPjDIj+5XBfIJrcEpL8HNctMm/PHONmEKRcdIUuItO0TLvdo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgTsjeW8nAg6lnlRMRbxcyX2kMWA7paHiqfvi+ALyHGzFcIV2g
	tSUwc08NOW2J8V5optTL9YxYiQTjAv8L52wLTORzeB9ZLSOgII9N2zE3UCr6qGsR3c4xaSCkeg6
	XOeqxZ/EknFne7lawDxCeaimdWSKEPw==
X-Google-Smtp-Source: AGHT+IEwUNFtjfemC+H8YbxetDx+/1UO/8iQ2gyCTnZPC0wHrc6i2JvE1D+ajYJoJm5ZfKz4z3qtGvXJ7TTBCQJq2aU=
X-Received: by 2002:a17:907:1c85:b0:b3e:5f20:888d with SMTP id
 a640c23a62f3a-b647304516amr61378866b.27.1760630830062; Thu, 16 Oct 2025
 09:07:10 -0700 (PDT)
MIME-Version: 1.0
References: <20251015232015.846282-1-robh@kernel.org> <aPERZ/IpjAhD2sen@lizhi-Precision-Tower-5810>
In-Reply-To: <aPERZ/IpjAhD2sen@lizhi-Precision-Tower-5810>
From: Rob Herring <robh@kernel.org>
Date: Thu, 16 Oct 2025 11:06:58 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJCCBHp6vMvXdh39hpdiMg-3Kr3uB7KMFauCfYM7rYSWQ@mail.gmail.com>
X-Gm-Features: AS18NWCmaqStDDMgrLFaOkte03G1gDmgUst_qjRWdTXsAn_QVmilmfjOPWrs-c4
Message-ID: <CAL_JsqJCCBHp6vMvXdh39hpdiMg-3Kr3uB7KMFauCfYM7rYSWQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Fix inconsistent quoting
To: Frank Li <Frank.li@nxp.com>
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
X-CRM114-CacheID: sfid-20251016_090712_211317_778605E3 
X-CRM114-Status: GOOD (  13.22  )
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

T24gVGh1LCBPY3QgMTYsIDIwMjUgYXQgMTA6MzjigK9BTSBGcmFuayBMaSA8RnJhbmsubGlAbnhw
LmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE9jdCAxNSwgMjAyNSBhdCAwNjoxNjoyNFBNIC0wNTAw
LCBSb2IgSGVycmluZyAoQXJtKSB3cm90ZToKPiA+IHlhbWxsaW50IGhhcyBnYWluZWQgYSBuZXcg
Y2hlY2sgd2hpY2ggY2hlY2tzIGZvciBpbmNvbnNpc3RlbnQgcXVvdGluZwo+ID4gKG1peGVkICIg
YW5kICcgcXVvdGVzIHdpdGhpbiBhIGZpbGUpLiBGaXggYWxsIHRoZSBjYXNlcyB5YW1sbGludCBm
b3VuZAo+ID4gc28gd2UgY2FuIGVuYWJsZSB0aGUgY2hlY2sgKG9uY2UgdGhlIGNoZWNrIGlzIGlu
IGEgcmVsZWFzZSkuIFVzZQo+ID4gd2hpY2hldmVyIHF1b3RpbmcgaXMgZG9taW5hdGUgaW4gdGhl
IGZpbGUuCj4KPiBDYW4gd2Ugc2ltcGxlIHJlcXVpcmUgb25seSB1c2Ugb25lIG9mICIgb3IgJyB0
byBsZXQgZXZlcnlvbmUgZm9sbG93IGVhc2lseT8KPiBzdXBwb3J0IGJvdGggIiBvciAnIGlzIHVu
bmVjY2Vzc2FyeSBvcHRpb25zLgoKSSBkb24ndCByZWFsbHkgY2FyZSB0byBmaXggOTE1IGZpbGVz
LiBBbmQgZG9uJ3Qgc2VuZCAxMDBzIG9mIHBhdGNoZXMKZm9yIG1lIHRvIHJldmlldyBlaXRoZXIu
IEdpdmVuIHdlJ3ZlIGdvdCA1MjAwIHRvdGFsLCBpdCdzIGEgZ29vZApjaGFuY2UgZm9sa3Mgd2ls
bCBjb3B5IHRoZSBwcmVmZXJyZWQgc3R5bGUuCgpSb2IKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
