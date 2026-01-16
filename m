Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09316C982D4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rP4UTnuvRC64jr/dnJdFSOPtAfcgNVs5b8eqQwFw/0=; b=MOcu8CU/ZHlqvM
	zOBD+74IG7ZJTPgOdH49p7WBwfjPzmI5PBaz1nvI1wOLhe3UqBjK0y1bOQnTTnzzuAc06gKENFXST
	TymvZNPH9lGtTLtjTzNoQCe3VQNAms0c+Nfwb2OCsgym083Beb/2WKgb9UrcTlp2shH965AHQMo+H
	yjQdfIyTpFqtYsE5WdRonwBm5t8kn6nU2CKDBp5ApWYEQ2u32VJB8K8UA3oxvr3JEltdD/+l9+/Kr
	u4ElvYgonoGjQhIIvXOcZqOVa+F8Fyy4bKGq/LFlJwNQuK0d6+PeuSXIsk5Dl7d9RIFglChIgBoyo
	Mqc9I13FMxnhaOvc5Uiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmI0-0000000EPYj-2GwS;
	Fri, 16 Jan 2026 16:03:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmHx-0000000EPXs-34EV
	for linux-phy@lists.infradead.org;
	Fri, 16 Jan 2026 16:03:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DFF2544498
	for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 16:03:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3B76C2BC87
	for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 16:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768579384;
	bh=BhtIab84IdoeMyJM4092ElaZLaK1ny/rkG7xxvHmUy0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Jhg57+BpwlfJq7DAf/hE0hauQhuzTlnzjm9KKDmIs7MQ/gkLh9uzvSmfR0lwlRX1c
	 vk3xYGbhZGQCVZnORSOvI/QxqYkBJH87xqavj+hEBzcav5TXEn2Hzr8biRLjwF6+Xr
	 ZB2CrGKTbibDcqAE1iW4f8LWSPwbEe9UITM2ho18hNC+foVhd3hDIyl4XnF8zr2GIH
	 YVV1nSz60gXjaYKONdfkLZbpqP8YAk05FflzGofLqoYhPUZ2dSdG4KZBt7OdGn/kYb
	 FZyDkhmVl3EJeEJjNguwqhWqMjDiwg/kpzAJ7Z/y3hvjchJSeJQdZqwhXV6IluZW67
	 b68idQ1c1iVpQ==
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b876c0d5318so319904166b.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 08:03:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXCXYbCIffghhZuWshD7KX8iaWjMBmDOnjhTe3s/mf3qbpxJ3W7qzT8vIGAVaiWAO7g4X4Qjvno/ys=@lists.infradead.org
X-Gm-Message-State: AOJu0YyuWus8ccsrAJM/ullSI6OZGrnsgH4u3HtdWUoMfYQbvZma6Wu0
	uRjPAmwxIkRwi8roZmDhkCX/wv2N01s8+4u2vVQOeYzz5leHuOBB4mBx6QQKuNgJTcu+xF5GULM
	jGIoUD3qcbeYP7cfh0Q369ZZtdlLf9g==
X-Received: by 2002:a17:906:fe0a:b0:b87:693:31 with SMTP id
 a640c23a62f3a-b8792feb242mr308189566b.52.1768579383254; Fri, 16 Jan 2026
 08:03:03 -0800 (PST)
MIME-Version: 1.0
References: <20251223-openwrt-one-network-v5-0-7d1864ea3ad5@collabora.com> <20251223-openwrt-one-network-v5-2-7d1864ea3ad5@collabora.com>
In-Reply-To: <20251223-openwrt-one-network-v5-2-7d1864ea3ad5@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 16 Jan 2026 10:02:51 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLffH-MY+6frA_kxwifUPskLY8eNqtBoOP0O7Dxs=XHLQ@mail.gmail.com>
X-Gm-Features: AZwV_QilotzZl5lJNLcliW_LfwPmw5qv0NdDfcdZ6pytb6giOF_8l_TtUZnUaC4
Message-ID: <CAL_JsqLffH-MY+6frA_kxwifUPskLY8eNqtBoOP0O7Dxs=XHLQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] arm64: dts: mediatek: mt7981b: Add PCIe and USB support
To: Sjoerd Simons <sjoerd@collabora.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang <jianjun.wang@mediatek.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones <lee@kernel.org>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>, kernel@collabora.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	netdev@vger.kernel.org, Daniel Golle <daniel@makrotopia.org>, 
	Bryan Hinton <bryan@bryanhinton.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_080305_841789_B00EC5BF 
X-CRM114-Status: GOOD (  17.23  )
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

T24gVHVlLCBEZWMgMjMsIDIwMjUgYXQgNjozOOKAr0FNIFNqb2VyZCBTaW1vbnMgPHNqb2VyZEBj
b2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEFkZCBkZXZpY2UgdHJlZSBub2RlcyBmb3IgUENJZSBj
b250cm9sbGVyIGFuZCBVU0IzIFhIQ0kgaG9zdAo+IGNvbnRyb2xsZXIgb24gTVQ3OTgxQiBTb0Mu
IEJvdGggY29udHJvbGxlcnMgc2hhcmUgdGhlIFVTQjMgUEhZCj4gd2hpY2ggY2FuIGJlIGNvbmZp
Z3VyZWQgZm9yIGVpdGhlciBVU0IzIG9yIFBDSWUgb3BlcmF0aW9uLgo+Cj4gVGhlIFVTQjMgWEhD
SSBjb250cm9sbGVyIHN1cHBvcnRzIFVTQiAyLjAgYW5kIFVTQiAzLjAgU3VwZXJTcGVlZAo+IG9w
ZXJhdGlvbi4gVGhlIFBDSWUgY29udHJvbGxlciBpcyBjb21wYXRpYmxlIHdpdGggUENJZSBHZW4y
Cj4gc3BlY2lmaWNhdGlvbnMuCj4KPiBBbHNvIGFkZCB0aGUgdG9wbWlzYyBzeXNjb24gbm9kZSBy
ZXF1aXJlZCBmb3IgVVNCL1BDSWUgUEhZCj4gbXVsdGlwbGV4aW5nLgo+Cj4gUmV2aWV3ZWQtYnk6
IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNv
bGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU2pvZXJkIFNpbW9ucyA8c2pvZXJkQGNvbGxh
Ym9yYS5jb20+Cj4gLS0tCj4gVjEgLT4gVjI6IEtlZXAgeGhjaSByZWcgYW5kIHBoeXMgcHJvcGVy
dGllcyBpbiBzaW5nbGUgbGluZXMKPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRl
ay9tdDc5ODFiLmR0c2kgfCA4MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA4MCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9tZWRpYXRlay9tdDc5ODFiLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21l
ZGlhdGVrL210Nzk4MWIuZHRzaQo+IGluZGV4IDQxNjA5NmI4MDc3MC4uZDNmMzc0MTM0MTNlIDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3OTgxYi5kdHNpCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc5ODFiLmR0c2kKPiBAQCAtMiw2
ICsyLDcgQEAKPgo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svbWVkaWF0ZWssbXQ3OTgx
LWNsay5oPgo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJt
LWdpYy5oPgo+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGh5L3BoeS5oPgo+ICAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvcmVzZXQvbXQ3OTg2LXJlc2V0cy5oPgo+Cj4gIC8gewo+IEBAIC0yMjMsNiAr
MjI0LDU1IEBAIGF1eGFkYzogYWRjQDExMDBkMDAwIHsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gKyAgICAgICAg
ICAgICAgIHhoY2k6IHVzYkAxMTIwMDAwMCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29t
cGF0aWJsZSA9ICJtZWRpYXRlayxtdDc5ODYteGhjaSIsICJtZWRpYXRlayxtdGsteGhjaSI7Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHgxMTIwMDAwMCAwIDB4MmUwMD4sIDww
IDB4MTEyMDNlMDAgMCAweDAxMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlZy1uYW1l
cyA9ICJtYWMiLCAiaXBwYyI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZp
bmZyYWNmZyBDTEtfSU5GUkFfSVVTQl9TWVNfQ0s+LAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwmaW5mcmFjZmcgQ0xLX0lORlJBX0lVU0JfQ0s+LAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDwmaW5mcmFjZmcgQ0xLX0lORlJBX0lVU0JfMTMzX0NLPiwKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmluZnJhY2ZnIENMS19JTkZSQV9JVVNC
XzY2TV9DSz4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZ0b3Bja2dlbiBD
TEtfVE9QX1UyVTNfWEhDSV9TRUw+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrLW5h
bWVzID0gInN5c19jayIsICJyZWZfY2siLCAibWN1X2NrIiwgImRtYV9jayIsICJ4aGNpX2NrIjsK
PiArICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTczIElSUV9U
WVBFX0xFVkVMX0hJR0g+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBoeXMgPSA8JnUycG9y
dDAgUEhZX1RZUEVfVVNCMj4sIDwmdTNwb3J0MCBQSFlfVFlQRV9VU0IzPjsKPiArICAgICAgICAg
ICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsgICAgICAgICAgICAgICB9Owo+
ICsKPiArICAgICAgICAgICAgICAgcGNpZTogcGNpZUAxMTI4MDAwMCB7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDc5ODEtcGNpZSIsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJtZWRpYXRlayxtdDgxOTItcGNpZSI7Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHgxMTI4MDAwMCAwIDB4NDAwMD47Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgcmVnLW5hbWVzID0gInBjaWUtbWFjIjsKPiArICAgICAg
ICAgICAgICAgICAgICAgICByYW5nZXMgPSA8MHg4MjAwMDAwMCAwIDB4MjAwMDAwMDAKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMHgwIDB4MjAwMDAwMDAgMCAweDEwMDAwMDAw
PjsKPiArICAgICAgICAgICAgICAgICAgICAgICBidXMtcmFuZ2UgPSA8MHgwMCAweGZmPjsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmluZnJhY2ZnIENMS19JTkZSQV9JUENJ
RV9DSz4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZpbmZyYWNmZyBDTEtf
SU5GUkFfSVBDSUVfUElQRV9DSz4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
PCZpbmZyYWNmZyBDTEtfSU5GUkFfSVBDSUVSX0NLPiwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8JmluZnJhY2ZnIENMS19JTkZSQV9JUENJRUJfQ0s+Owo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gInBsXzI1MG0iLCAidGxfMjZtIiwgInBlcmlfMjZt
IiwgInRvcF8xMzNtIjsKPiArICAgICAgICAgICAgICAgICAgICAgICBkZXZpY2VfdHlwZSA9ICJw
Y2kiOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBoeXMgPSA8JnUzcG9ydDAgUEhZX1RZUEVf
UENJRT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcGh5LW5hbWVzID0gInBjaWUtcGh5IjsK
PiArICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTY4IElSUV9U
WVBFX0xFVkVMX0hJR0g+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdC1tYXAt
bWFzayA9IDwwIDAgMCA3PjsKPiArICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHQtbWFw
ID0gPDAgMCAwIDEgJnBjaWVfaW50YyAwPiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPDAgMCAwIDIgJnBjaWVfaW50YyAxPiwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgPDAgMCAwIDMgJnBjaWVfaW50YyAyPiwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDAgMCAwIDQgJnBjaWVfaW50YyAzPjsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwzPjsKPiArICAgICAgICAg
ICAgICAgICAgICAgICAjaW50ZXJydXB0LWNlbGxzID0gPDE+Owo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICNzaXplLWNlbGxzID0gPDI+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1
cyA9ICJkaXNhYmxlZCI7Cj4gKwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBjaWVfaW50Yzog
aW50ZXJydXB0LWNvbnRyb2xsZXIgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aW50ZXJydXB0LWNvbnRyb2xsZXI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAj
YWRkcmVzcy1jZWxscyA9IDwwPjsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNp
bnRlcnJ1cHQtY2VsbHMgPSA8MT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAg
ICAgICAgICAgICAgfTsKPiArCj4gICAgICAgICAgICAgICAgIHBpbzogcGluY3RybEAxMWQwMDAw
MCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDc5
ODEtcGluY3RybCI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHgxMWQwMDAw
MCAwIDB4MTAwMD4sCj4gQEAgLTI1Miw2ICszMDIsMzYgQEAgbXV4IHsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICB9Owo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gKyAgICAgICAgICAgICAgIHRv
cG1pc2M6IHRvcG1pc2NAMTFkMTAwMDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAibWVkaWF0ZWssbXQ3OTgxLXRvcG1pc2MiLCAic3lzY29uIjsKPiArICAgICAgICAg
ICAgICAgICAgICAgICByZWcgPSA8MCAweDExZDEwMDAwIDAgMHgxMDAwMD47Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgI2Nsb2NrLWNlbGxzID0gPDE+OwoKVGhpcyBpcyBub3cgYSB3YXJuaW5n
IGFzIHRoZSBzeXNjb24ueWFtbCBiaW5kaW5nIHRoaXMgY29tcGF0aWJsZSBpcwpkZWZpbmVkIGlu
IGRvZXNuJ3QgYWxsb3cgI2Nsb2NrLWNlbGxzLgoKUm9iCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
