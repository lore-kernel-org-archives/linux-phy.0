Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52252CCF9E3
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 21:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESAzKc8wQ2n9danbuKqnN2FJboZlZYxCLAs/SRxMGV0=; b=NNZY+hEW0T9Sw1
	nfwz9KN4pryYjSED+NwV/xOIVz2ODCxNXMr0mZ4YQep5Xjv1/dGhVPgAmsuWuyu7t9cwTM0gbrjIe
	SEzOhKThIbyQGH17g7umCGRmwyLsZa5Tni6zZbUaS1M7JlhbNbntR425NgKbHGm4F6pxEbm/qwun7
	dfxLsJ845YFcvNuWmJyqIb7ztgJ54Cz2iHn21yWyl77RlYbJcQAU7nC7PeL79g6m0aKO8NUVZafKf
	MkFV5aUAYvOCO3o9c0t8llRnH4qlSB+/I6EdCg/SstDO7ylt9q/iU4tVQfMNGdRSB6vrklZtnpwQu
	+Hv2g6j0c8bMtdF1s5ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEaAW-00000004t5w-1KnC;
	Thu, 30 Oct 2025 21:26:54 +0000
Received: from sender4-op-o15.zoho.com ([136.143.188.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEaAA-00000004t4e-391E;
	Thu, 30 Oct 2025 21:26:42 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1761859574; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=AMHNToO9uyH2UOzZxFbb68jVb8fRSxPJkx2uGcVBs/9gdG16OTxWSqbRDtjo45Z/FlXyS/FV+J25HRLJ6eE0mwzhoQpGPt8aSSAi4kt0fH/jZQCCxK7BQgcUefeohbYXnHcKtgTmArbRM/+KYIPB10Vi91lWfVPR0oE7a0Tgd88=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1761859574; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ixRLpty5QKDOE0ulxvqD55Wb9bzwJbHlOe5KFSOLS1E=; 
	b=C87w96dCEC6ElqmbmEvGOSTnDEU0vYB9JwkPlW+pp3+V/xALKyuPcmjyx712KT7yM4Yys2ExWU7CSClHlyTQ3hojI79O+7j1ufpxDUUgtjl8GcQp9VlndlyKTulH4INak4h+0reqYs9iVQrstaEVzyH089qEufBmTQ5g+eC7R0w=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sjoerd@collabora.com;
	dmarc=pass header.from=<sjoerd@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1761859574;
	s=zohomail; d=collabora.com; i=sjoerd@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=ixRLpty5QKDOE0ulxvqD55Wb9bzwJbHlOe5KFSOLS1E=;
	b=g3yElmKq8LU2i4TbafpRnAEbkB1BmNCRln05g6k8WHT1ZVYQGKWV23fb3FJSpnWi
	9Hx5p5E79qn3bFI5Npy3N0kbsz9U6rX3ggbLg03vvs5D9YK8cdErhhhtfzjfFgkdU8r
	9MNcrZ/v/23ECwSTe6xbuIllyt+ePSWN22sOQvNU=
Received: by mx.zohomail.com with SMTPS id 1761859569654684.60417196483;
	Thu, 30 Oct 2025 14:26:09 -0700 (PDT)
Message-ID: <7d7595a0a33b4e56828beea86f6037bd9ecc8f8d.camel@collabora.com>
Subject: Re: [PATCH 11/15] arm64: dts: mediatek: mt7981b-openwrt-one: Enable
 SPI NOR
From: Sjoerd Simons <sjoerd@collabora.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,  Matthias Brugger
 <matthias.bgg@gmail.com>, Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang	
 <jianjun.wang@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo
 Pieralisi <lpieralisi@kernel.org>, Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>,  Manivannan Sadhasivam	 <mani@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul	 <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones	 <lee@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"	
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski	
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Lorenzo Bianconi	
 <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, netdev@vger.kernel.org, Daniel Golle
	 <daniel@makrotopia.org>, Bryan Hinton <bryan@bryanhinton.com>
Date: Thu, 30 Oct 2025 22:26:00 +0100
In-Reply-To: <c9865ab0-cbc2-47b5-b7cf-acb8b9c52695@collabora.com>
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
	 <20251016-openwrt-one-network-v1-11-de259719b6f2@collabora.com>
	 <c9865ab0-cbc2-47b5-b7cf-acb8b9c52695@collabora.com>
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_142630_869597_EDF1A16E 
X-CRM114-Status: GOOD (  19.91  )
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

T24gVGh1LCAyMDI1LTEwLTE2IGF0IDEzOjI4ICswMjAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToKPiBJbCAxNi8xMC8yNSAxMjowOCwgU2pvZXJkIFNpbW9ucyBoYSBzY3JpdHRv
Ogo+ID4gVGhlIG9wZW53cnQgb25lIGhhcyBhIFNQSSBOT1IgZmxhc2ggd2hpY2ggZnJvbSBmYWN0
b3J5IGlzIHVzZWQgZm9yOgo+ID4gKiBSZWNvdmVyeSBzeXN0ZW0KPiA+ICogV2lGaSBlZXByb20g
ZGF0YQo+ID4gKiBldGhlcm5ldCBNYWMgYWRkcmVzc2VzCj4gPiAKPiA+IERlc2NyaWJlIHRoaXMg
Zm9sbG93aW5nIHRoZSBzYW1lIHBhcnRpdGlvbnMgYXMgdGhlIG9wZW53cnQgY29uZmlndXJhdGlv
bgo+ID4gdXNlcy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogU2pvZXJkIFNpbW9ucyA8c2pvZXJk
QGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+IMKgIC4uLi9ib290L2R0cy9tZWRpYXRlay9tdDc5
ODFiLW9wZW53cnQtb25lLmR0c8KgwqDCoMKgwqAgfCA4MyArKysrKysrKysrKysrKysrKysrKysr
Cj4gPiDCoCAxIGZpbGUgY2hhbmdlZCwgODMgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc5ODFiLW9wZW53cnQtb25lLmR0
cwo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210Nzk4MWItb3BlbndydC1vbmUu
ZHRzCj4gPiBpbmRleCBiNmNhNjI4ZWU3MmZkLi45ODc4MDA5Mzg1Y2M2IDEwMDY0NAo+ID4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc5ODFiLW9wZW53cnQtb25lLmR0cwo+
ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc5ODFiLW9wZW53cnQtb25l
LmR0cwo+ID4gQEAgLTMsNiArMyw3IEBACj4gPiDCoCAvZHRzLXYxLzsKPiA+IMKgIAo+ID4gwqAg
I2luY2x1ZGUgIm10Nzk4MWIuZHRzaSIKPiA+ICsjaW5jbHVkZSAiZHQtYmluZGluZ3MvcGluY3Ry
bC9tdDY1eHguaCIKPiA+IMKgIAo+ID4gwqAgLyB7Cj4gPiDCoMKgCWNvbXBhdGlibGUgPSAib3Bl
bndydCxvbmUiLCAibWVkaWF0ZWssbXQ3OTgxYiI7Cj4gPiBAQCAtNTQsNiArNTUsMjUgQEAgbXV4
IHsKPiA+IMKgwqAJCX07Cj4gPiDCoMKgCX07Cj4gPiDCoCAKPiA+ICsJc3BpMl9mbGFzaF9waW5z
OiBzcGkyLXBpbnMgewo+ID4gKwkJbXV4IHsKPiA+ICsJCQlmdW5jdGlvbiA9ICJzcGkiOwo+ID4g
KwkJCWdyb3VwcyA9ICJzcGkyIjsKPiA+ICsJCX07Cj4gPiArCj4gPiArCQljb25mLXB1IHsKPiA+
ICsJCQliaWFzLXB1bGwtdXAgPSA8TVRLX1BVUERfU0VUX1IxUjBfMTE+Owo+ID4gKwkJCWRyaXZl
LXN0cmVuZ3RoID0gPE1US19EUklWRV84bUE+Owo+IAo+IGRyaXZlLXN0cmVuZ3RoID0gPDg+Owo+
IAo+ID4gKwkJCXBpbnMgPSAiU1BJMl9DUyIsICJTUEkyX1dQIjsKPiA+ICsJCX07Cj4gPiArCj4g
PiArCQljb25mLXBkIHsKPiA+ICsJCQliaWFzLXB1bGwtZG93biA9IDxNVEtfUFVQRF9TRVRfUjFS
MF8xMT47Cj4gPiArCQkJZHJpdmUtc3RyZW5ndGggPSA8TVRLX0RSSVZFXzhtQT47Cj4gCj4gZGl0
dG8KPiAKPiA+ICsJCQlwaW5zID0gIlNQSTJfQ0xLIiwgIlNQSTJfTU9TSSIsICJTUEkyX01JU08i
Owo+ID4gKwkJfTsKPiA+ICsJfTsKPiA+ICsKPiA+IMKgwqAJdWFydDBfcGluczogdWFydDAtcGlu
cyB7Cj4gPiDCoMKgCQltdXggewo+ID4gwqDCoAkJCWZ1bmN0aW9uID0gInVhcnQiOwo+ID4gQEAg
LTYyLDYgKzgyLDY5IEBAIG11eCB7Cj4gPiDCoMKgCX07Cj4gPiDCoCB9Owo+ID4gwqAgCj4gPiAr
JnNwaTIgewo+ID4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gKwlwaW5jdHJsLTAg
PSA8JnNwaTJfZmxhc2hfcGlucz47Cj4gPiArCXN0YXR1cyA9ICJva2F5IjsKPiA+ICsKPiA+ICsJ
Zmxhc2hAMCB7Cj4gPiArCQljb21wYXRpYmxlID0gImplZGVjLHNwaS1ub3IiOwo+ID4gKwkJcmVn
ID0gPDA+Owo+ID4gKwkJc3BpLW1heC1mcmVxdWVuY3kgPSA8NDAwMDAwMDA+Owo+ID4gKwkJI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47Cj4gPiArCQkjc2l6ZS1jZWxscyA9IDwxPjsKPiA+ICsKPiA+ICsJ
CXBhcnRpdGlvbnMgewo+ID4gKwkJCWNvbXBhdGlibGUgPSAiZml4ZWQtcGFydGl0aW9ucyI7Cj4g
PiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gPiArCQkJI3NpemUtY2VsbHMgPSA8MT47Cj4g
PiArCj4gPiArCQkJcGFydGl0aW9uQDAgewo+ID4gKwkJCQlyZWcgPSA8MHgwMDAwMCAweDQwMDAw
PjsKPiA+ICsJCQkJbGFiZWwgPSAiYmwyLW5vciI7Cj4gPiArCQkJfTsKPiA+ICsKPiA+ICsJCQlw
YXJ0aXRpb25ANDAwMDAgewo+ID4gKwkJCQlyZWcgPSA8MHg0MDAwMCAweGMwMDAwPjsKPiA+ICsJ
CQkJbGFiZWwgPSAiZmFjdG9yeSI7Cj4gPiArCQkJCXJlYWQtb25seTsKPiA+ICsKPiA+ICsJCQkJ
bnZtZW0tbGF5b3V0IHsKPiA+ICsJCQkJCWNvbXBhdGlibGUgPSAiZml4ZWQtbGF5b3V0IjsKPiA+
ICsJCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gKwkJCQkJI3NpemUtY2VsbHMgPSA8MT47
Cj4gPiArCj4gPiArCQkJCQllZXByb21fZmFjdG9yeV8wOiBlZXByb21AMCB7Cj4gCj4gd2lmaV9j
YWxpYnJhdGlvbjoKPiAKPiA+ICsJCQkJCQlyZWcgPSA8MHgwIDB4MTAwMD47Cj4gPiArCQkJCQl9
Owo+ID4gKwo+ID4gKwkJCQkJbWFjYWRkcl9mYWN0b3J5XzQ6IG1hY2FkZHJANCB7Cj4gCj4gbWFj
YWRkcl9mYWN0b3J5X2dtYWMxPwo+IAo+IFlvdSdyZSBub3QgdXNpbmcgdGhpcyBpbiB0aGUgbGF0
ZXIgY29tbWl0IHdoZXJlIHlvdSBlbmFibGUgZXRoZXJuZXQgbm9kZXMsCj4gZGlkIHlvdSBtaXNz
IGFkZGluZyB0aGF0IHRvIGdtYWMxIG9yIHdoYXQgaXMgdGhpcyB1c2VkIGZvcj8KCmdtYWMxIGdl
dHMgaXRzIG1hYyBmcm9tIHUtYm9vdCwgcGFzc2VkIGluIHRocm91Z2ggZGV2aWNlLXRyZWU7IEhh
dmVuJ3QgY2hlY2tlZCB3aGVyZSB1LWJvb3QgZ2V0cyBpdApmcm9tIHlldC4gSSBkaWQgc3BvdCBp
dCBhdCBvZmZzZXQgMHgyYSBpbiB0aGlzIGZhY3RvcnkgZGF0YSwgc28gdGhhdCBzZWVtcyBsaWtl
bHkgY2FuZGlkYXRlLgoKSG93ZXZlciB0aGlzIHBhcnRpY3VsYXIgbWFjIGlzIHVzZWQgYnkgdGhl
IHdpZmkgcGh5LiBJIGRpc2NvdmVyZWQgYWZ0ZXIgc2VuZGluZyB0aGlzIHBhdGNoIHRoZSBrZXJu
ZWwKZHJpdmVyIGxvYWRzIGl0IGRpcmVjdGx5IGZyb20gdGhlICJlZXByb20iIGFyZWEsIHNvIHdl
IGNvdWxkIHBvdGVudGlhbGx5IGRyb3AgdGhpcyBub2RlLiAKCkFzIG1lbnRpb25lZCBpbiB0aGUg
Y29tbWl0IG1lc3NhZ2UsIEkga2VwdCB0aGUgc2FtZSBsYXlvdXRzIGFzIG9wZW53cnQgdXNlcy4g
VGhvdWdoIGknZCBiZSBmaW5lIHRvCm1pbmltaXplIHRoZSBudm1lbSBjZWxscyBqdXN0IHRvIHdo
YXQncyByZWZlcmVuY2VkIGluIHRoZSBkdGIuCgo+ID4gKwkJCQkJCXJlZyA9IDwweDQgMHg2PjsK
PiA+ICsJCQkJCQljb21wYXRpYmxlID0gIm1hYy1iYXNlIjsKPiA+ICsJCQkJCQkjbnZtZW0tY2Vs
bC1jZWxscyA9IDwxPjsKPiA+ICsJCQkJCX07Cj4gPiArCj4gPiArCQkJCQltYWNhZGRyX2ZhY3Rv
cnlfMjQ6IG1hY2FkZHJAMjQgewo+IAo+IG1hY2FkZHJfZmFjdG9yeV9nbWFjMCA/CgoKVGhhdCBz
ZWVtcyBuaWNlciwgd2lsbCBhZGQgdGhhdCBpbiBWMiAoc2FtZSBmb3IgdGhlIHByZXZpb3VzIG5h
bWluZyBzdWdnZXN0aW9uKQoKCgotLSAKU2pvZXJkIFNpbW9ucwpDb2xsYWJvcmEgTHRkLgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
