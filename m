Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68D9BC5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQHT/Qk0pe9hqlG7w7RqYLnpiSOao0+BTMBCno2rvYU=; b=3wqA5sPfOgX5+z
	qII/Ou59So6YzK+LzJEF/phK8nMsD2PuZUXgYQaxC+SAIDuufBOJ5NmuJZ2HH8fzIB6GzZAhqcrq6
	/5RYyPQ7PgiyvqcR4N4CRlMvasufkRTMoBnzWcEY2+4rBso6gi2yjLr+k95UEO/03F3AbphMWLAfw
	hHj5sUB2eCLx/fKCge2lk8lIRmx9ldoGdWCjjZx4nZCSf+rr7EinXK3Hi/rNEqO/ZE5cMky9H9Fep
	uX0jiqXAJCOQtSrCCF03wNuI/8B6ctK1hOO42b9JtQtG/eE+CNVDwJITq8Iglz6r44tIrR3l1m+/g
	QPRrQvViiXDflRf+Xa1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOJj-0000000Bdmu-0U3R;
	Mon, 10 Aug 2026 11:37:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOJi-0000000Bdmc-05ql
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:37:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8D723435D4;
	Mon, 10 Aug 2026 11:37:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 035C71F00A3A;
	Mon, 10 Aug 2026 11:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786361837;
	bh=ekalUsvr0ivp/k6TmzRdPzIekaPKxripUgwWNufhniY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HCCkybaLXLGUVL6roR4ZPKA7VWIW8JpSHaZjoziiV5NhOBhd6xWMf1q9+GfHzFnVC
	 RiCcndBGbN6DpmuVr7kxQAkQtuRdKa3d3qbUx/5uchXB0lKRhuyyMG3PYHiORUqjpI
	 /xV61gc3DBtmDdLWQnXnlEoRfUBQ/ATc5BZ83NeZ9izN3b+ovh6oTG4wZ3aDle+m8q
	 Uz/WykzEaM7s1+KxRJBkc9o0aSXRPRSmG0I8T+8IRw0wDnnUrmP+GoF+EClzizKE/h
	 s3l325Pi4ztCNH8ocKVr1VIq3tLU25/I9+72lg26RH8mvBeA2ocgD2BpZN2319Zw/+
	 2p8QgS+QnDUXg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 2/4] phy: qcom: qmp-pcie: Add qref and refgen
 regulator vote for QCS8300 and SA8775p PHY
To: "Ziyue Zhang" <ziyue.zhang@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org
In-Reply-To: <20260810112735.1326807-3-ziyue.zhang@oss.qualcomm.com>
References: <20260810112735.1326807-1-ziyue.zhang@oss.qualcomm.com>
 <20260810112735.1326807-3-ziyue.zhang@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 11:37:16 +0000
Message-Id: <20260810113717.035C71F00A3A@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBwYXRjaCBtaXN0
YWtlbmx5IG1vZGlmaWVzIGBzbTg0NTBfcW1wX2dlbjR4Ml9wY2llcGh5X2NmZ2AgaW5zdGVhZCBv
ZiBgcWNzODMwMF9xbXBfZ2VuNHgyX3BjaWVwaHlfY2ZnYCwgd2hpY2ggYnJlYWtzIFBDSWUgUEhZ
IHByb2JlIG9uIFNNODQ1MCBhbmQgZmFpbHMgdG8gYXBwbHkgdGhlIGludGVuZGVkIGZpeCBmb3Ig
UUNTODMwMC4KLSBbTWVkaXVtXSBUaGUgZHJpdmVyIHVuY29uZGl0aW9uYWxseSByZXF1aXJlcyBg
cmVmZ2VuLXN1cHBseWAgZm9yIFNBODc3NVAsIGJ1dCB0aGUgRFQgYmluZGluZyBzY2hlbWEgZXhw
bGljaXRseSBvbWl0cyBpdCBmcm9tIHRoZSByZXF1aXJlZCBwcm9wZXJ0aWVzIGZvciBTQTg3NzVQ
LgotLQoKLS0tIFBhdGNoIFsyXTogW1BBVENIIHYxIDIvNF0gcGh5OiBxY29tOiBxbXAtcGNpZTog
QWRkIHFyZWYgYW5kIHJlZmdlbiByZWd1bGF0b3Igdm90ZSBmb3IgUUNTODMwMCBhbmQgU0E4Nzc1
cCBQSFkgLS0tCmNvbW1pdCBjNWMzM2M4ZjE5NzQ3MzJmMDQ5ZTk2NjZiZmY3YWE2OGJhOTg0MDcz
CkF1dGhvcjogWml5dWUgWmhhbmcgPHppeXVlLnpoYW5nQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6
IHFjb206IHFtcC1wY2llOiBBZGQgcXJlZiBhbmQgcmVmZ2VuIHJlZ3VsYXRvciB2b3RlIGZvciBR
Q1M4MzAwIGFuZCBTQTg3NzVwIFBIWQoKVGhpcyBjb21taXQgYWRkcyBhIG5ldyBzYTg3NzVwX3Ft
cF9waHlfdnJlZ19sIHJlZ3VsYXRvciBsaXN0IGNvbnRhaW5pbmcgCmFkZGl0aW9uYWwgc3VwcGxp
ZXMgdG8gc3VwcG9ydCBRQ1M4MzAwIGFuZCBTQTg3NzVwIFBDSWUgUEhZIGNvbmZpZ3VyYXRpb25z
LiAKSXQgdXBkYXRlcyB0aGUgcmVndWxhdG9yIGxpc3RzIGZvciB0aGUgcmVsZXZhbnQgUEhZIGNv
bmZpZ3VyYXRpb25zIHRvIGFwcGx5IAphIGhhcmR3YXJlIHdvcmthcm91bmQgd2l0aG91dCBhZmZl
Y3RpbmcgU004NTUwLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLXBjaWUuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMK
PiBpbmRleCBkM2VmZmFkN2EwNzRiLi5iNjBmZWU3NjJkYWJlIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPiArKysgYi9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jClsgLi4uIF0KPiBAQCAtNDM5NCw4ICs0Mzk4LDgg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBzbTg0NTBfcW1wX2dlbjR4Ml9wY2ll
cGh5X2NmZyA9IHsKPiAgCj4gIAkucmVzZXRfbGlzdAkJPSBzZG04NDVfcGNpZXBoeV9yZXNldF9s
LAo+ICAJLm51bV9yZXNldHMJCT0gQVJSQVlfU0laRShzZG04NDVfcGNpZXBoeV9yZXNldF9sKSwK
PiAtCS52cmVnX2xpc3QJCT0gcW1wX3BoeV92cmVnX2wsCj4gLQkubnVtX3ZyZWdzCQk9IEFSUkFZ
X1NJWkUocW1wX3BoeV92cmVnX2wpLAo+ICsJLnZyZWdfbGlzdAkJPSBzYTg3NzVwX3FtcF9waHlf
dnJlZ19sLAo+ICsJLm51bV92cmVncwkJPSBBUlJBWV9TSVpFKHNhODc3NXBfcW1wX3BoeV92cmVn
X2wpLAo+ICAJLnJlZ3MJCQk9IHBjaWVwaHlfdjVfcmVnc19sYXlvdXQsCgpbU2V2ZXJpdHk6IEhp
Z2hdClRoZSBjb21taXQgbWVzc2FnZSBtZW50aW9ucyB1cGRhdGluZyB0aGUgUUNTODMwMCBjb25m
aWd1cmF0aW9uLCBidXQgdGhpcwptb2RpZmllcyBzbTg0NTBfcW1wX2dlbjR4Ml9wY2llcGh5X2Nm
ZyBpbnN0ZWFkLiAKCldpbGwgdGhpcyBjYXVzZSBTTTg0NTAgcGxhdGZvcm1zIHRvIGZhaWwgcHJv
YmUgc2luY2UgdGhleSB3aWxsIG5vdyByZXF1ZXN0CjUgcmVndWxhdG9ycyBpbnN0ZWFkIG9mIHRo
ZSAyIG5vcm1hbGx5IHByb3ZpZGVkIGJ5IHRoZSBEVD8gCgpBbHNvLCBkb2VzIHRoaXMgbWVhbiBx
Y3M4MzAwX3FtcF9nZW40eDJfcGNpZXBoeV9jZmcgcmVtYWlucyB1bm1vZGlmaWVkIGFuZAptaXNz
ZXMgdGhlIGludGVuZGVkIGhhcmR3YXJlIHdvcmthcm91bmQ/CgpbIC4uLiBdCj4gQEAgLTQ1NjMs
OCArNDU2Nyw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgc2E4Nzc1cF9xbXBf
Z2VuNHgyX3BjaWVwaHlfY2ZnID0gewo+ICAKPiAgCS5yZXNldF9saXN0CQk9IHNkbTg0NV9wY2ll
cGh5X3Jlc2V0X2wsCj4gIAkubnVtX3Jlc2V0cwkJPSBBUlJBWV9TSVpFKHNkbTg0NV9wY2llcGh5
X3Jlc2V0X2wpLAo+IC0JLnZyZWdfbGlzdAkJPSBxbXBfcGh5X3ZyZWdfbCwKPiAtCS5udW1fdnJl
Z3MJCT0gQVJSQVlfU0laRShxbXBfcGh5X3ZyZWdfbCksCj4gKwkudnJlZ19saXN0CQk9IHNhODc3
NXBfcW1wX3BoeV92cmVnX2wsCj4gKwkubnVtX3ZyZWdzCQk9IEFSUkFZX1NJWkUoc2E4Nzc1cF9x
bXBfcGh5X3ZyZWdfbCksCj4gIAkucmVncwkJCT0gcGNpZXBoeV92NV9yZWdzX2xheW91dCwKCltT
ZXZlcml0eTogTWVkaXVtXQpUaGlzIHVuY29uZGl0aW9uYWxseSByZXF1aXJlcyB0aGUgcmVmZ2Vu
IHN1cHBseSBmb3IgdGhlIFNBODc3NVAgUEhZLCBidXQKdGhlIERUIGJpbmRpbmcgc2NoZW1hIGV4
cGxpY2l0bHkgb21pdHMgcmVmZ2VuLXN1cHBseSBmcm9tIHRoZSByZXF1aXJlZApwcm9wZXJ0aWVz
IGZvciBTQTg3NzVQLgoKSWYgYW4gU0E4Nzc1UCBwbGF0Zm9ybSBib290cyB3aXRoIGEgY29tcGxp
YW50IGRldmljZSB0cmVlIHRoYXQgb21pdHMgdGhlCm9wdGlvbmFsIHJlZmdlbi1zdXBwbHksIHdp
bGwgdGhlIGRyaXZlciBmYWlsIHRvIHByb2JlIGhlcmUgd2hlbiBmZXRjaGluZwp0aGUgYnVsayBy
ZWd1bGF0b3JzPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDgxMDExMjczNS4xMzI2ODA3LTEteml5dWUuemhhbmdAb3NzLnF1YWxj
b21tLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
