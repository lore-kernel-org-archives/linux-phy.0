Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10171CCF9E3
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 20:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9D82j8eXJfbsM4LvNzBVWkFpLzk8x5ZcPUCb7kXTw8=; b=IjBHx9PTH0pwaO
	yARQeLKCFl8NGh3TrqLJGfwlvM+CGArmkV564yDwQL6cQC4GwYVzD9K/sjUNbJ4yXFN1/xkLafoNZ
	kytFUE9Rxky5pKLhds51dizJEbc/tc9tOxUQn4B52B97Xe+HOfGqu6cP/BYrQvun0Ajyc0Fb6e5LP
	TlKS12YC9kBB5wo1rupgRM8dvvlgsTPYnYJSaI/q8HbTvk5AcGYS3nQ9aNmOw68M43zMSQg34Aj7W
	Bfj7vGWicSZzdi0+BdpRCAKgxO+oFvIKHtLW3iHJ0iNFBj/oJ3YvL3PsnCqJQbZawJL8/CDgEvvyv
	YencVpmFFpUEWuYZFqkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEZMW-00000004qNh-2f32;
	Thu, 30 Oct 2025 20:35:12 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEZMS-00000004qMj-3hHD;
	Thu, 30 Oct 2025 20:35:10 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1761856485; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=gkFbZ213okCftKgeKgIIwNoz8BwA4nDP6MzCr0YARnjslWbS8bf914DjEU26RKsesu0i7gZx4BTfyz1xxAgNbQMZ+hOgVrrgyBtWW8VMvkD1hskA7r5/OPkLeophqY65m9j/4O4l1Y9P6SwMdoSy8qMjWiwQU/R+tvzDuY+qM+k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1761856485; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=+Wkm4p/uQ+Vqh1gCohypGhEVZ1/dwpzLDQlD8Bjlil8=; 
	b=Gnr8xIhUAPzV2qfRb1oLqyxVo5sYZWiNHe+DDVUg/CHGOPZtjMxE9wPQmju6dCohAzktipJKP2YWvL5u9mW/WZSFsCaUWNk3l1EeVNWUSTxJB/E4oPJwqb0FZwBiY+h8vUyCgRnA6upcsdDuS10nEcP/oYKeYkbfFBQxcXmxQAc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sjoerd@collabora.com;
	dmarc=pass header.from=<sjoerd@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1761856485;
	s=zohomail; d=collabora.com; i=sjoerd@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=+Wkm4p/uQ+Vqh1gCohypGhEVZ1/dwpzLDQlD8Bjlil8=;
	b=eE9lQAyjvcD+VsAFUGr3EGVzq1lb8anctgxPOFZUE+IyjqTE06JyDOHlv1dZWFZ+
	GJu62lcDIBD5F/Za7yXXSFfmLJl7bfrpDY2VhzDNK66M909P75cdhk3qdwz/uSfrpMY
	nlZLfK3BN7dj33lt0OVX5CDVbVQpWIkm0m886a44=
Received: by mx.zohomail.com with SMTPS id 1761856481126419.9479106165559;
	Thu, 30 Oct 2025 13:34:41 -0700 (PDT)
Message-ID: <f2c3e18fe22284c4a5ab0ce085e2d17be844a0a8.camel@collabora.com>
Subject: Re: [PATCH 10/15] arm64: dts: mediatek: mt7981b: Add Ethernet and
 WiFi offload support
From: Sjoerd Simons <sjoerd@collabora.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, Ryder Lee
 <ryder.lee@mediatek.com>,  Jianjun Wang <jianjun.wang@mediatek.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi	 <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?=	 <kwilczynski@kernel.org>, Manivannan
 Sadhasivam <mani@kernel.org>, Chunfeng Yun	 <chunfeng.yun@mediatek.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Lee Jones <lee@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,  "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Lorenzo
 Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>, 
	kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, 	linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,  Bryan Hinton
 <bryan@bryanhinton.com>
Date: Thu, 30 Oct 2025 21:34:28 +0100
In-Reply-To: <aPEhiVdgkVLvF9Et@makrotopia.org>
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
	 <20251016-openwrt-one-network-v1-10-de259719b6f2@collabora.com>
	 <aPEhiVdgkVLvF9Et@makrotopia.org>
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_133508_974225_88E77D84 
X-CRM114-Status: GOOD (  17.38  )
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

T24gVGh1LCAyMDI1LTEwLTE2IGF0IDE3OjQ3ICswMTAwLCBEYW5pZWwgR29sbGUgd3JvdGU6Cj4g
T24gVGh1LCBPY3QgMTYsIDIwMjUgYXQgMTI6MDg6NDZQTSArMDIwMCwgU2pvZXJkIFNpbW9ucyB3
cm90ZToKPiA+IEFkZCBkZXZpY2UgdHJlZSBub2RlcyBmb3IgdGhlIEV0aGVybmV0IHN1YnN5c3Rl
bSBvbiBNVDc5ODFCIFNvQywKPiA+IGluY2x1ZGluZzoKPiA+IC0gRXRoZXJuZXQgTUFDIGNvbnRy
b2xsZXIgd2l0aCBkdWFsIEdNQUMgc3VwcG9ydAo+ID4gLSBXaXJlbGVzcyBFdGhlcm5ldCBEaXNw
YXRjaCAoV0VEKQo+ID4gLSBTR01JSSBQSFkgY29udHJvbGxlcnMgZm9yIGhpZ2gtc3BlZWQgRXRo
ZXJuZXQgaW50ZXJmYWNlcwo+ID4gLSBSZXNlcnZlZCBtZW1vcnkgcmVnaW9ucyBmb3IgV2lGaSBv
ZmZsb2FkIHByb2Nlc3Nvcgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBTam9lcmQgU2ltb25zIDxz
am9lcmRAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL21l
ZGlhdGVrL210Nzk4MWIuZHRzaSB8IDEzMyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
PiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEzMyBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210Nzk4MWIuZHRzaQo+ID4gYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210Nzk4MWIuZHRzaQo+ID4gaW5kZXggMTM5NTBmZTZl
ODc2Ni4uYzg1ZmEwZGRmMmRhOCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
bWVkaWF0ZWsvbXQ3OTgxYi5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlh
dGVrL210Nzk4MWIuZHRzaQoKW3NuaXBdCj4gPiAJCQltZGlvX2J1czogbWRpby1idXMgewo+ID4g
KwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiA+ICsJCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4g
PiArCj4gPiArCQkJCWludF9nYmVfcGh5OiBldGhlcm5ldC1waHlAMCB7Cj4gPiArCQkJCQljb21w
YXRpYmxlID0gImV0aGVybmV0LXBoeS1pZWVlODAyLjMtYzIyIjsKPiA+ICsJCQkJCXJlZyA9IDww
PjsKPiA+ICsJCQkJCXBoeS1tb2RlID0gImdtaWkiOwo+ID4gKwkJCQkJcGh5LWlzLWludGVncmF0
ZWQ7Cj4gPiArCQkJCQludm1lbS1jZWxscyA9IDwmcGh5X2NhbGlicmF0aW9uPjsKPiA+ICsJCQkJ
CW52bWVtLWNlbGwtbmFtZXMgPSAicGh5LWNhbC1kYXRhIjsKPiAKPiBQbGVhc2UgYWxzbyBkZWZp
bmUgdGhlIHR3byBMRURzIGhlcmUgd2l0aCB0aGVpciBjb3JyZXNwb25kaW5nIChvbmx5KQo+IHBp
bmN0cmwgb3B0aW9ucyBmb3IgZWFjaCBvZiB0aGVtLCB3aXRoICdzdGF0dXMgPSAiZGlzYWJsZWQi
OycuIFRoaXMKPiBtYWtlcyBpdCBlYXNpZXIgZm9yIGJvYXJkcyB0byBtYWtlIHVzZSBvZiB0aGUg
RXRoZXJuZXQgUEhZIGxlZHMgYnkganVzdAo+IHJlZmVyZW5jaW5nIHRoZSBMRUQgYW5kIHNldHRp
bmcgdGhlIHN0YXR1cyB0byAnb2theScuCgpJIGxlZnQgdGhvc2Ugb3V0IG9uIHB1cnBvc2UgYXMg
aSBjYW4ndCBlYXNpbHkgdmFsaWRhdGUgdGhlbS4gVGhleSdyZSBwcm9iYWJseSBiZXR0ZXIgdG8g
YmUgYWRkZWQgb25jZQpzb21lb25lIGFkZHMgYSBib2FyZCB1c2luZyB0aGUgaHcgbGVkIGNvbnRy
b2wuCgo+IAotLSAKU2pvZXJkIFNpbW9ucwpDb2xsYWJvcmEgTHRkLgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
