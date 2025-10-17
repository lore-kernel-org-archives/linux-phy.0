Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 371F0CCD195
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 06:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXLI6sL+pmjKm6ZvPGjwGSJ2L5uQhJkMbccFBoPiKV8=; b=F8kO5yhvLDJaUB
	VS/SqjkyV1Rh48hMY/yiOZCF4FErvyX6zv6Rl0Ue8hgT7KmdKSVmTusuBqCCKIWzWbOdzfSbvnSV6
	0oelw6bawIWitcfH5h8sSzA3EBnMm/VcKCwwmjGymsZ68t2lhL3x2hRDtguKhXmu5I+e2iRymR9kk
	dtAauiMEWBgY7VRKcI3F8UFdDVi7OUvOCZ+Hpu1NMJJK8HyaBxHlrWBwr68785zm3i/ftXaRAixAk
	8U5408UqP/UHhbiAS7wQaHgrO5T1ebM37m3OdjFV55NGeEmxGm08/KloPRnHBqePoGmLbqpVjHHaK
	NbOjEwhkJHBYMB4e9J9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9dv3-00000006lxi-3Vic;
	Fri, 17 Oct 2025 06:26:29 +0000
Received: from pi.codeconstruct.com.au ([203.29.241.158] helo=codeconstruct.com.au)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9dv1-00000006lvy-1eAM;
	Fri, 17 Oct 2025 06:26:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1760682385;
	bh=Xim6qWFGZ+WXmsN/CH8emkwIniPHErnqJeZArc8D40Q=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=k15RyFdyVoJeYb08mMxu9adUujB7QSVw0G8fEYvyrO1hC267ta5tTk7xCiorfMzFY
	 dcaqex8C4Z/PhhZbi/JLLMBLfbHE4sg+dE8wShuqba2NgcTLaL/LisqwJ4qBj84rYP
	 ILfzVe5i4ngO6+IFyR6aj+1FiHo2d1OVgetdauhjzGJZj60QekvzgKyD8T/0X6yqFA
	 ciQK0hoEQTN3K3XPo02a5DmhUlAhRcpoR2xO2CUGfUQszFmaWu8tV3NdoCFO8xah4l
	 XJsNP2GCSaOrHjLJwB8oNVjnU6+k5yO5U52I/inTnecgBf7vDqohqdobpbimsbuRh5
	 eaq60xEt/THHw==
Received: from [192.168.68.113] (unknown [180.150.112.213])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 539D56477A;
	Fri, 17 Oct 2025 14:26:20 +0800 (AWST)
Message-ID: <23813eab1406130dfdb6b63615fe1c1b4b634e29.camel@codeconstruct.com.au>
Subject: Re: [PATCH] dt-bindings: Fix inconsistent quoting
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: "Rob Herring (Arm)" <robh@kernel.org>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stephen Boyd	
 <sboyd@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Linus
 Walleij	 <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Shawn Guo	 <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, Nuno
 =?ISO-8859-1?Q?S=E1?=	 <nuno.sa@analog.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Michael Hennerich	 <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Lee Jones <lee@kernel.org>, Joel Stanley
 <joel@jms.id.au>,  Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean
 <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>,  Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>,  Daire McNamara <daire.mcnamara@microchip.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof
 =?UTF-8?Q?Wilczy=C5=84ski?=	 <kwilczynski@kernel.org>, Manivannan
 Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod
 Koul <vkoul@kernel.org>, Kishon Vijay Abraham I	 <kishon@kernel.org>, Bjorn
 Andersson <andersson@kernel.org>, Geert Uytterhoeven	
 <geert+renesas@glider.be>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea
 <claudiu.beznea@tuxon.dev>, Florian Fainelli	 <f.fainelli@gmail.com>, Tony
 Lindgren <tony@atomide.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org, 
	linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, 	linux-phy@lists.infradead.org
Date: Fri, 17 Oct 2025 16:56:19 +1030
In-Reply-To: <20251015232015.846282-1-robh@kernel.org>
References: <20251015232015.846282-1-robh@kernel.org>
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_232627_624933_706A0DE5 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDE4OjE2IC0wNTAwLCBSb2IgSGVycmluZyAoQXJtKSB3cm90
ZToKPiB5YW1sbGludCBoYXMgZ2FpbmVkIGEgbmV3IGNoZWNrIHdoaWNoIGNoZWNrcyBmb3IgaW5j
b25zaXN0ZW50IHF1b3RpbmcKPiAobWl4ZWQgIiBhbmQgJyBxdW90ZXMgd2l0aGluIGEgZmlsZSku
IEZpeCBhbGwgdGhlIGNhc2VzIHlhbWxsaW50IGZvdW5kCj4gc28gd2UgY2FuIGVuYWJsZSB0aGUg
Y2hlY2sgKG9uY2UgdGhlIGNoZWNrIGlzIGluIGEgcmVsZWFzZSkuIFVzZQo+IHdoaWNoZXZlciBx
dW90aW5nIGlzIGRvbWluYXRlIGluIHRoZSBmaWxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJvYiBI
ZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gwqAuLi4vYXJtL2FsdGVyYS9z
b2NmcGdhLWNsay1tYW5hZ2VyLnlhbWzCoMKgwqDCoMKgwqAgfMKgIDQgKystLQo+IMKgLi4uL2Jp
bmRpbmdzL2Nsb2NrL252aWRpYSx0ZWdyYTEyNC1jYXIueWFtbMKgwqAgfMKgIDggKysrKy0tLS0K
PiDCoC4uLi9iaW5kaW5ncy9jbG9jay9udmlkaWEsdGVncmEyMC1jYXIueWFtbMKgwqDCoCB8wqAg
NiArKystLS0KPiDCoC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby1teHMueWFtbMKg
wqDCoCB8wqAgOSArKysrKy0tLS0KPiDCoC4uLi9iaW5kaW5ncy9ncGlvL3NucHMsZHctYXBiLWdw
aW8ueWFtbMKgwqDCoMKgwqDCoCB8wqAgNCArKy0tCj4gwqAuLi4vYmluZGluZ3MvaWlvL3RlbXBl
cmF0dXJlL2FkaSxsdGMyOTgzLnlhbWwgfCAyMCArKysrKysrKystLS0tLS0tLS0tCj4gwqAuLi4v
bWFpbGJveC9xY29tLGFwY3Mta3Bzcy1nbG9iYWwueWFtbMKgwqDCoMKgwqDCoMKgIHwgMTYgKysr
KysrKy0tLS0tLS0tCj4gwqAuLi4vbWFpbGJveC94bG54LHp5bnFtcC1pcGktbWFpbGJveC55YW1s
wqDCoMKgwqDCoCB8wqAgMiArLQo+IMKgLi4uL2JpbmRpbmdzL21lZGlhL2ZzbCxpbXg2cS12ZG9h
LnlhbWzCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQo+IMKgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
bWZkL2FzcGVlZC1scGMueWFtbMKgwqAgfMKgIDQgKystLQoKRm9yIGFzcGVlZC1scGMueWFtbDoK
CkFja2VkLWJ5OiBBbmRyZXcgSmVmZmVyeSA8YW5kcmV3QGNvZGVjb25zdHJ1Y3QuY29tLmF1PgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
