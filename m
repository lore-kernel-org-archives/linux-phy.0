Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AE85CCD1BE
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 06:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KVEZylakG1+El8lZA9AZQ/n18BIOEQESv4CIoxRZac=; b=rA9VwAE1Ij6KUg
	TLenxgVo6FoVuogeNDpTIO/XMrggxEwXnhBw+ZHZXh5SoUjTdsrTnoM7ZBCR0iatd2YGqiLnQfrRq
	UzK0PXyuit5oiE/bcHabd9paKr5eejcjtBTDl7erkkKRMbi+vOo/dBA5VdHoPgkLbxnQ2HZk4jYGx
	DeKLYIsRenI+0NWeOyPD/M6O2+GvGeZ4wRT8rBAUg8BGM0Cwc+g2YNZXn5iUTpD7FFAEWS8UlTs1G
	cqD7R2C+IBO3rtoIEKX7s5iCqpEXvbCRpzTSaNcA2tupVnWwS8Fa5WAngfq/HcK48US3vl7kOoaWE
	6bcrEyEU5koL0VN0P6VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSlw-00000001kVV-3vlZ;
	Wed, 22 Oct 2025 06:56:36 +0000
Received: from sender4-op-o15.zoho.com ([136.143.188.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSlt-00000001kTP-1Y2g;
	Wed, 22 Oct 2025 06:56:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1761116176; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=YSmM6fHht8tI+Hs+g3L2P7wAvCYMuoBQzlDwjFWZUc/615269p6rktPjsz9WB8gsEUaznRxJERQb24bpRaDKzrdYcYK/BCP1fRoIYIkHbZNCFroSJYoM4xkKGX8PfngiOOsW0lddLPUDC1+owWVcPmBpreXcSajaAPpWDQig0LU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1761116176; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=VrTdEMBjb9J8SLRrC3vLxTtsIJrVCIippWcA6vJQ+Sc=; 
	b=YfK9QluAXmmxX9kSbNdrBDhfxEV3S7KtbwKeNmyucgOl6EReqAb680Mf1fsYYidgwmbXUaJa/snr9j3FJNMtpJ6W7cHRjv0HL6imBTobge1AE1HrufuX0SxByyu2DIYaZ8AbqYWpBNeNuuGnJ/OhK2oHeTPzGZcLBH8xvMlJ22A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sjoerd@collabora.com;
	dmarc=pass header.from=<sjoerd@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1761116176;
	s=zohomail; d=collabora.com; i=sjoerd@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=VrTdEMBjb9J8SLRrC3vLxTtsIJrVCIippWcA6vJQ+Sc=;
	b=ab3jiVYYnku8HtA+3wdNILGqr/Nsdqmzhy2eGZ8glKkkzc7JF7u3I+5iDVjER+Bb
	1DdPzxEQm91Xm/GFKyO5TQc1PulKRvfSCTQEK6kd9ql9kv13uKykLZYEgcU187WjO36
	MjOUNnri8IEPm+Eg119HPZMSnnqIwv1mH6NjzZ8A=
Received: by mx.zohomail.com with SMTPS id 17611161732831018.5532421915162;
	Tue, 21 Oct 2025 23:56:13 -0700 (PDT)
Message-ID: <9280864d0eba182d06d1e191fdc0aad1fb4ce5b3.camel@collabora.com>
Subject: Re: [PATCH 12/15] arm64: dts: mediatek: mt7981b-openwrt-one: Enable
 Ethernet
From: Sjoerd Simons <sjoerd@collabora.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Eric Woudstra <ericwouds@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger	 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno	 <angelogioacchino.delregno@collabora.com>,
 Ryder Lee <ryder.lee@mediatek.com>,  Jianjun Wang
 <jianjun.wang@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo
 Pieralisi	 <lpieralisi@kernel.org>, Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?=	
 <kwilczynski@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, Chunfeng
 Yun	 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Lee Jones <lee@kernel.org>, Andrew
 Lunn <andrew+netdev@lunn.ch>,  "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, Felix
 Fietkau <nbd@nbd.name>, 	kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, 	linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,  Daniel Golle
 <daniel@makrotopia.org>, Bryan Hinton <bryan@bryanhinton.com>
Date: Wed, 22 Oct 2025 08:56:06 +0200
In-Reply-To: <fd52be11-ccff-4f34-b86b-9c2f9f485756@lunn.ch>
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
	 <20251016-openwrt-one-network-v1-12-de259719b6f2@collabora.com>
	 <4f82aa17-1bf8-4d72-bc1f-b32f364e1cf6@lunn.ch>
	 <8f5335a703905dea9d8d0c1840862a3478da1ca7.camel@collabora.com>
	 <fd52be11-ccff-4f34-b86b-9c2f9f485756@lunn.ch>
Organization: Collabora
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_235633_488153_A41B8835 
X-CRM114-Status: GOOD (  16.45  )
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

T24gVHVlLCAyMDI1LTEwLTIxIGF0IDIyOjQwICswMjAwLCBBbmRyZXcgTHVubiB3cm90ZToKPiBP
biBUdWUsIE9jdCAyMSwgMjAyNSBhdCAxMDoyMTozMVBNICswMjAwLCBTam9lcmQgU2ltb25zIHdy
b3RlOgo+ID4gT24gRnJpLCAyMDI1LTEwLTE3IGF0IDE5OjMxICswMjAwLCBBbmRyZXcgTHVubiB3
cm90ZToKPiA+ID4gPiArJm1kaW9fYnVzIHsKPiA+ID4gPiArCXBoeTE1OiBldGhlcm5ldC1waHlA
ZiB7Cj4gPiA+ID4gKwkJY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWQwM2EyLmE0MTEiOwo+
ID4gPiA+ICsJCXJlZyA9IDwweGY+Owo+ID4gPiA+ICsJCWludGVycnVwdC1wYXJlbnQgPSA8JnBp
bz47Cj4gPiA+ID4gKwkJaW50ZXJydXB0cyA9IDwzOCBJUlFfVFlQRV9FREdFX0ZBTExJTkc+Owo+
ID4gPiAKPiA+ID4gVGhpcyBpcyBwcm9iYWJseSB3cm9uZy4gUEhZIGludGVycnVwdHMgYXJlIGdl
bmVyYWxseSBsZXZlbCwgbm90IGVkZ2UuCj4gPiAKPiA+IFNhZGx5IGkgY2FuJ3QgZmluZCBhIGRh
dGFzaGVldCBmb3IgdGhlIFBIWSwgc28gY2FuJ3QgcmVhbGx5IHZhbGlkYXRlIHRoYXQKPiA+IGVh
c2lseS4KPiAKPiBXaGF0IFBIWSBpcyBpdD8gTG9vayBhdCB0aGUgLmhhbmRsZV9pbnRlcnJ1cHQg
ZnVuY3Rpb24gaW4gdGhlCj4gZHJpdmVyLiBJZiB0aGUgaGFyZHdhcmUgc3VwcG9ydHMgYSBzaW5n
bGUgaW50ZXJydXB0IGJpdCwgaXQgY291bGQgaW4KPiB0aGVvcnkgc3VwcG9ydCBlZGdlLiBIb3dl
dmVyLCBhcyBzb29uIGFzIHlvdSBoYXZlIG11bHRpcGxlIGJpdHMsIHlvdQo+IG5lZWQgbGV2ZWws
IHRvIGF2b2lkIHJhY2VzIHdoZXJlIGFuIGludGVycnVwdCBoYXBwZW5zIHdoaWxlIHlvdSBhcmUK
PiBjbGVhcmluZyBvdGhlciBpbnRlcnJ1cHRzLgoKZXRoZXJuZXQtcGh5LWlkMDNhMi5hNDExIGlz
IEFpcm9oYSBFTjg4MTFIIChhaXJfZW44ODExaCBkcml2ZXIpLiBIYW5kbGUKaW50ZXJydXB0IHRo
ZXJlIHNlZW1zIHRvIGp1c3QgYmUgYSBnZW5lcmFsIGludGVycnVwdCBjbGVhciBmb2xsb3dlZCBi
eSBhCmBwaHlfdHJpZ2dlcl9tYWNoaW5lYC4gSXQgZG9lc24ndCBzZWVtIHRvIHJlYWQgc3BlY2lm
aWMgaW50ZXJydXB0IHN0YXR1cy4gCgpUZXN0aW5nIHdpdGggSVJRX1RZUEVfTEVWRUxfTE9XIGRv
ZXMgc2VlbSB0byB3b3JrIGFzIGV4cGVjdGVkIGFuZCByZXN1bHRzIGluCmRldGVjdGluZyA0IGlu
dGVycnVwdHMgcmF0aGVyIHRoZW4ganVzdCAxIHdpdGggZWRnZXMgd2hlbiBlbmFibGluZyB0aGUK
aW50ZXJmYWNlLiBIb3dldmVyIEknbSBub3Qgc3VyZSB3aGF0IGNhbiBiZSBjb25jbHVkZWQgZnJv
bSB0aGF0IGlmIGFueXRoaW5nIDopLi4KwqAKSSBjYW4gc3RpY2sgYSBzY29wZSBvbiB0aGUgbGlu
ZSBpbiB0aGUgY29taW5nIGRheXMgdG8gc2VlIGhvdyB0aGUgaW50ZXJydXB0IGxpbmUKYmVoYXZl
cyBpZiBpbnRlcnJ1cHRzIGFyZW4ndCBjbGVhcmVkLCB3aGljaCBtYXkgY2xhcmlmeSB0aGluZ3Mu
CiAKCi0tIApTam9lcmQgU2ltb25zCkNvbGxhYm9yYQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
