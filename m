Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5466CD5BBF
	for <linux-phy@archiver.kernel.org>; Mon, 25 May 2026 06:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWPCfZHXFjmsZZ87fzoqheTh6fbDBOoQdEA6592AXJI=; b=b28qeqhfIpnKwl
	O4Vuy3n0lmldVnqmMHZc7Tzhau5IK9QYCLFaURapXjTXfZ8HOoPrA7lxig2mnkolfBNMECGWrHR5A
	Bjc0S4vHIReXJCwGsdaHeWu878mkydRzKgjt46b72B4037jZAaE4cAkwF4GzBVnpsL8imK7UdPp0j
	TWHuJiz2yuuwhcNXqevShY1EP1DS86VhaLElqaDtqxiewEJESnrA5Eaeb5Ir4Fc9sg8k9N9VxAkwZ
	BSM1OOrLfcI6Blj4TlRL9WKsXDxZ1SpSQEBmcy07+Bpmnl7tx6RAjBI47Zrh/O4KOAwXGVUDDGqsX
	s4dvH7JQMdMsGu5xZHug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wROXp-0000000GODJ-1Ckr;
	Mon, 25 May 2026 06:12:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wROXo-0000000GOD9-0Lqn
	for linux-phy@lists.infradead.org;
	Mon, 25 May 2026 06:12:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1EE1F601E3;
	Mon, 25 May 2026 06:12:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B44801F000E9;
	Mon, 25 May 2026 06:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779689526;
	bh=G8bK9DHL3yrRtTJDYvR/fM9TPKsL9n1FAheSMDdVqw8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YxoqceW7J1kdqpjLfbnjUze6Pxw2Dh4sJiTMMxNwPzefSv2kqYsVkKDEeYt9AAItt
	 rPTflhH22yns/Q2Jw83ykeM98Bl5iJ7VtaNNciGPTq9wX9B+xr5gr19pOjgNwpu5aZ
	 1ZfzFIFAYgn7RbhyJsteZ+bycjlOwg1t9rEFpqT5m8HyavyVl/Cs9/dawK4MENhYo/
	 3e3B6Tdz05j+3S4hpj8aAUmgbLGcATbvYUntmmxu+GQ07SQDgCgBNzvNGP1wVbA02T
	 1XdzC4V+P5Z7hyd16DJldtNz1V17rAVu/uYbC+yKQa9q3g8JxhFI2FZzMRnyQWVte+
	 O+akx4EznKF8g==
Date: Mon, 25 May 2026 11:41:57 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 3/4] PCI: qcom: Add Support for Eliza
Message-ID: <k7sncylpd4qg2x3qhqjho6ml2d64vpvbo6nrpyqzwloeyckzvd@d6v3s6avedzt>
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
 <20260521-eliza-v1-3-97cdbe88389d@oss.qualcomm.com>
 <20260522-discerning-sympathetic-moth-daa9e7@quoll>
 <5593d136-569e-4ba9-9a2f-e635125899aa@oss.qualcomm.com>
 <c751f5f9-f9c2-4575-a029-0be4148e1aee@kernel.org>
 <t6wljnlnz77dvthbohlr7v4qlhsqzvykhcm6evmtnvkgtqk34w@o7sl6nq5lkbi>
 <fecce3a2-5c45-4e30-ad1b-2173b697960d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fecce3a2-5c45-4e30-ad1b-2173b697960d@kernel.org>
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

T24gRnJpLCBNYXkgMjIsIDIwMjYgYXQgMDE6MDM6MDlQTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAyMi8wNS8yMDI2IDEyOjQ4LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBGcmksIE1heSAyMiwgMjAyNiBhdCAxMTozNDozMEFNICswMjAwLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4+IE9uIDIyLzA1LzIwMjYgMTE6MzEsIEtyaXNobmEg
Q2hhaXRhbnlhIENodW5kcnUgd3JvdGU6Cj4gPj4+Cj4gPj4+Cj4gPj4+IE9uIDUvMjIvMjAyNiAx
MjoyMSBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+Pj4+IE9uIFRodSwgTWF5IDIx
LCAyMDI2IGF0IDA3OjM1OjMxUE0gKzA1MzAsIEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgd3Jv
dGU6Cj4gPj4+Pj4gQWRkIHN1cHBvcnQgZm9yIEVsaXphIHNvYywgd2hpY2ggaGFzIHR3byBQQ0ll
IGNvbnRyb2xsZXJzIGNhcGFibGUKPiA+Pj4+PiBvZiA4R1QvcyBYMSBhbmQgOEdUL3MgWDIsIHVz
aW5nIHRoZSBjZmdfMV85XzAgY29uZmlndXJhdGlvbi4KPiA+Pj4+Pgo+ID4+Pj4+IFNpZ25lZC1v
ZmYtYnk6IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVh
bGNvbW0uY29tPgo+ID4+Pj4+IC0tLQo+ID4+Pj4+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLXFjb20uYyB8IDEgKwo+ID4+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKPiA+Pj4+Pgo+ID4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4g
Pj4+Pj4gaW5kZXggYWY2YmY1Y2NlNjViLi40MGYwYTVmMjQ3ZWIgMTAwNjQ0Cj4gPj4+Pj4gLS0t
IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiA+Pj4+PiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ID4+Pj4+IEBAIC0yMTIzLDYg
KzIxMjMsNyBAQCBzdGF0aWMgaW50IHFjb21fcGNpZV9yZXN1bWVfbm9pcnEoc3RydWN0IGRldmlj
ZSAqZGV2KQo+ID4+Pj4+ICBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBxY29tX3Bj
aWVfbWF0Y2hbXSA9IHsKPiA+Pj4+PiAgCXsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLWFwcTgw
NjQiLCAuZGF0YSA9ICZjZmdfMl8xXzAgfSwKPiA+Pj4+PiAgCXsgLmNvbXBhdGlibGUgPSAicWNv
bSxwY2llLWFwcTgwODQiLCAuZGF0YSA9ICZjZmdfMV8wXzAgfSwKPiA+Pj4+PiArCXsgLmNvbXBh
dGlibGUgPSAicWNvbSxwY2llLWVsaXphIiwgLmRhdGEgPSAmY2ZnXzFfOV8wIH0sCj4gPj4+PiBT
byBjb21wYXRpYmxlIHdpdGggc204NTUwLiBXaHkgaXNuJ3QgdGhpcyBleHBsYWluZWQgaW4gY29t
bWl0IG1zZyBvZgo+ID4+Pj4gdGhlIGJpbmRpbmc/Cj4gPj4+IE5vLCBQQ0llIGNvbnRyb2xsZXIg
aXMgbm90IGNvbXBhdGlibGUgd2l0aCBzbTg1NTAsIHdlIGFyZSBqdXN0IHJlIHVzaW5nIHRoZSBi
b290Cj4gPj4+IHNlcXVlbmNlIHVzZWQgYnkgdGhlIHNtODU1MC4KPiA+Pgo+ID4+IFRoZW4gd2l0
aCB3aGF0IGl0IGlzIGNvbXBhdGlibGU/IFlvdSBjYW5ub3QgdXNlIHNvbWVvbmUgZWxzZSdzIG1h
dGNoCj4gPj4gZGF0YSBhbmQgY2xhaW0gdGhleSBhcmUgbm90IGNvbXBhdGlibGUuIFRoaXMgaXMg
Y29udHJhZGljdG9yeSB0byBpdHNlbGYuCj4gPj4KPiA+IAo+ID4gJ2NmZ18xXzlfMCcgaXMgdGhl
IG1hdGNoIGRhdGEgb2YgYmFzZSBQQ0llIElQIHYxLjkuMCwgbm90IGp1c3QgU004NTUwLiBUaGUg
J29wcycKPiA+IGNhbGxiYWNrcyBmb3IgJ2NmZ18xXzlfMCcgYXJlIGNvbXBhdGlibGUgd2l0aCBQ
Q0llIElQcyB1c2VkIGluIG1hbnkgU29DcyBzdWNoIGFzCj4gPiBTTTg1NTAsIFNNODQ1MCwgU004
MzUwLCBTTTgyNTAsIFNNODE1MCwgU0RYNTUsIFNDODE4MFgsIGFuZCBTQzcyODAuIEFuZCBFbGl6
YSBpcwo+ID4gYWxzbyBmYWxsaW5nIGludG8gdGhlIHNhbWUgY2F0ZWdvcnkuCj4gPiAKPiBBbmQg
aWYgYWxsIGltcGxlbWVudGF0aW9ucyB1c2VzIHRoZSBzYW1lIFNXIGludGVyZmFjZSwgd2h5IGFy
ZSB5b3UKPiBjbGFpbWluZyB0aGVzZSBhcmUgbm90IGNvbXBhdGlibGU/Cj4gCgpJIGRpZG4ndCAn
Y2xhaW0nIHRoZXNlIFNvQ3MgYXJlIG5vdCBjb21wYXRpYmxlLiBJbiBmYWN0LCBJIGV4cGxpY2l0
bHkgc2FpZCB0aGF0CkVsaXphIGlzIGNvbXBhdGlibGUgd2l0aCB0aGUgYmFzZSBJUCB2MS45LjAu
IEJ1dCB0aGUgcmVzb3VyY2VzIHN1Y2ggYXMgY2xvY2tzLApyZWd1bGF0b3JzIG1pZ2h0IGJlIGRp
ZmZlcmVudCBiZXR3ZWVuIHRoZW0sIHRob3VnaCB0aGUgU1dJIGlzIGNvbXBhdGlibGUuIFNvCkVs
aXphIGRlc2VydmVzIGEgbmV3IGNvbXBhdGlibGUuCgpBbHNvLCB0aGUgZGlyZWN0IGJhc2VsaW5l
IG9mIEVsaXphIGlzIG5vdCBzdXBwb3J0ZWQgaW4gdXBzdHJlYW0uIFNvIGJ5Cidjb21wYXRpYmxl
JywgaWYgeW91IGFyZSByZWZlcnJpbmcgdG8gJ2ZhbGxiYWNrJyBpbiBEVCwgdGhlbiB1c2luZyBT
TTg3NTAgd291bGQKYmUgYXBwcm9wcmlhdGUuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
