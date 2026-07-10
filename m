Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71038C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChfPlu5acrF6dz7uKmg15pq6hoAZrl1HjN1z1EgXdC4=; b=UWWMk5DC2zeWz8
	0v8fj7jM8A06ltPxxyfOZ9psaNPqAb3bH3k9CS5nNtNiKcnxDYtbIGVHCNgY959ES/XysrgeFDlYx
	Rha8E1KnrE5Z3+N5DoNGZo0WXdbb3EpGoP8laIGK4tv7jUxTxxwwtZsylhCawlOh8QngehJhQ+Ylb
	mAu15+r3IzWx1rgOZoI37MQbJv/YfYtnTj2RUXZ+tUf3NFs2xYYCN8a4Dz0ZlvcN87B3S2nYY3HP9
	i+v2UC0ngx+t1WI8R31pV44XI8dSdrJDY1HJzt6V3a/doc5Bd2w2pcRVe1SaYDncR7bPdzTjos6R+
	ubJb0n4plGCxYgzW9iQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIaN-00000005mtF-08k4;
	Fri, 10 Jul 2026 21:16:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIaL-00000005msx-2qCF
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:16:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3B58643BE2;
	Fri, 10 Jul 2026 21:16:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB1931F000E9;
	Fri, 10 Jul 2026 21:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718197;
	bh=12icJYmwYDzIIrN4/eccRU07QaJ0TSWVnjPP+v/7N/4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F+Zcr5tqmLObUI+tOj9IVzy5c0yeHCo/GRsXXOKcE1MMLECSrx2iL/FzaUthe+t2/
	 eYi7TEzjRNrx2IhI1YWyGKwCCMAWwtSKe3ru+1GLILdOHVMGRbrHNjHQr6H5LL78eb
	 LWtZhzjiYQzAq5NaZc/NMmSmyQSSFWKSXFQEGhpxrzeyf3IfNTG3jLCwTTfQlgBpgR
	 UOAkLEKJAMTXCpgZa+aCL1+eKlsU6HqlOhUZro3vxr/tRJKfvvNR4uqE3aGtgaHLjF
	 QrredE7ThSURttJt6KQoZBCJXAHsxmP0S00uXf2BWpFkNt7/yAzTfCUGxIYZ97vwoY
	 dMPcKRDClSbMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 20/36] phy: rockchip: usbdp: Factor out lane_mux_sel
 setup
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-20-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-20-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:16:36 +0000
Message-Id: <20260710211636.AB1931F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUeXBlLUMgc3RhdGVzIFRZUEVDX1NUQVRFX1NBRkUgYW5kIFRZUEVDX1NUQVRFX1VT
QiBpbmNvcnJlY3RseSBmYWxsIHRocm91Z2ggdG8gVFlQRUNfRFBfU1RBVEVfRCBjb25maWd1cmF0
aW9uLCBsZWF2aW5nIHRoZSBQSFkgaW4gVURQSFlfTU9ERV9EUF9VU0IgbW9kZS4KLSBbSGlnaF0g
VGhlIGBya191ZHBoeV9kcF9waHlfY29uZmlndXJlKClgIGNhbGxiYWNrIGFjY2Vzc2VzIGFuZCBt
b2RpZmllcyBzaGFyZWQgUEhZIHN0YXRlIHdpdGhvdXQgaG9sZGluZyB0aGUgYHVkcGh5LT5tdXRl
eGAsIGxlYWRpbmcgdG8gYSByYWNlIGNvbmRpdGlvbiB3aXRoIGNvbmN1cnJlbnQgVHlwZS1DIGV2
ZW50cy4KLS0KCi0tLSBQYXRjaCBbMjBdOiBbUEFUQ0ggdjEyIDIwLzM2XSBwaHk6IHJvY2tjaGlw
OiB1c2JkcDogRmFjdG9yIG91dCBsYW5lX211eF9zZWwgc2V0dXAgLS0tCmNvbW1pdCAzNzI3Yzk2
ODQ5MzdlMmM2YzI1ZWE2NTQ4YWRhNzA0ZmVjZWZhOTlhCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNo
ZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2Jk
cDogRmFjdG9yIG91dCBsYW5lX211eF9zZWwgc2V0dXAKICAgIApBdm9pZCBkZXNjcmliaW5nIHRo
ZSBVU0IrRFAgbGFuZV9tdXhfc2VsIGxvZ2ljIHR3aWNlIGJ5IGludHJvZHVjaW5nCmEgaGVscGVy
IGZ1bmN0aW9uIHRvIHJlZHVjZSBjb2RlIGR1cGxpY2F0aW9uLgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IDRiNDU0Nzk4YzRlZDQuLjRlNTQwMjBk
MTc1NTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVz
YmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+
IEBAIC01ODIsNiArNTgyLDQyIEBAIHN0YXRpYyB2b2lkIHJrX3VkcGh5X21vZGVfc2V0KHN0cnVj
dCBya191ZHBoeSAqdWRwaHksIHU4IG1vZGUpCj4gIAl1ZHBoeS0+bW9kZSA9IG1vZGU7Cj4gIH0K
PiAgCj4gK3N0YXRpYyB2b2lkIHJrX3VkcGh5X3NldF90eXBlY19zdGF0ZShzdHJ1Y3QgcmtfdWRw
aHkgKnVkcGh5LCB1bnNpZ25lZCBsb25nIHN0YXRlKQo+ICt7Cj4gKwl1OCBtb2RlOwo+ICsKPiAr
CXN3aXRjaCAoc3RhdGUpIHsKPiArCWNhc2UgVFlQRUNfRFBfU1RBVEVfQzoKPiArCWNhc2UgVFlQ
RUNfRFBfU1RBVEVfRToKPiArCQl1ZHBoeS0+bGFuZV9tdXhfc2VsWzBdID0gUEhZX0xBTkVfTVVY
X0RQOwo+ICsJCXVkcGh5LT5sYW5lX211eF9zZWxbMV0gPSBQSFlfTEFORV9NVVhfRFA7Cj4gKwkJ
dWRwaHktPmxhbmVfbXV4X3NlbFsyXSA9IFBIWV9MQU5FX01VWF9EUDsKPiArCQl1ZHBoeS0+bGFu
ZV9tdXhfc2VsWzNdID0gUEhZX0xBTkVfTVVYX0RQOwo+ICsJCW1vZGUgPSBVRFBIWV9NT0RFX0RQ
Owo+ICsJCXVkcGh5LT5kcF9sYW5lcyA9IDQ7Cj4gKwkJYnJlYWs7Cj4gKwo+ICsJY2FzZSBUWVBF
Q19EUF9TVEFURV9EOgo+ICsJZGVmYXVsdDoKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHBy
ZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMgdGhpcyBkZWZhdWx0IGNhc2UgY29ycmVjdGx5IGhh
bmRsZQpUWVBFQ19TVEFURV9TQUZFIGFuZCBUWVBFQ19TVEFURV9VU0I/CgpXaGVuIHRoZSBUeXBl
LUMgc3Vic3lzdGVtIGV4aXRzIERQIEFsdE1vZGUgb3IgdHJhbnNpdGlvbnMgdG8gYSBzYWZlIHN0
YXRlLAp0aGUgbXV4IGNhbGxiYWNrIHJrX3VkcGh5X3R5cGVjX211eF9zZXQoKSByZWNlaXZlcyBz
dGF0ZS0+bW9kZSBzZXQgdG8KVFlQRUNfU1RBVEVfU0FGRSAoMCkuCgpCZWNhdXNlIHJrX3VkcGh5
X3NldF90eXBlY19zdGF0ZSgpIGRvZXMgbm90IGV4cGxpY2l0bHkgaGFuZGxlIDAsIGl0IGZhbGxz
CmludG8gdGhlIGRlZmF1bHQgY2FzZSBoZXJlLCBpbmNvcnJlY3RseSBzZXR0aW5nIHVkcGh5LT5k
cF9sYW5lcyA9IDIgYW5kCm1vZGUgPSBVRFBIWV9NT0RFX0RQX1VTQi4KClNob3VsZCBUWVBFQ19T
VEFURV9TQUZFIGFuZCBUWVBFQ19TVEFURV9VU0IgZXhwbGljaXRseSBkaXNhYmxlIHRoZSBEUCBs
YW5lcwppbnN0ZWFkIG9mIGRlZmF1bHRpbmcgdG8gRFBfVVNCIG1vZGU/CgpbIC4uLiBdCgpbU2V2
ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBi
dXQgaXMgdGhlcmUgYSBtaXNzaW5nIGxvY2sgaW4KcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgp
IHRoYXQgY291bGQgcmFjZSB3aXRoIFR5cGUtQyBldmVudHM/CgpMb29raW5nIGF0IHJrX3VkcGh5
X2RwX3BoeV9jb25maWd1cmUoKSBpbgpkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dXNiZHAuYzoKCiAgICBzdGF0aWMgaW50IHJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmUoc3RydWN0
IHBoeSAqcGh5LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuaW9u
IHBoeV9jb25maWd1cmVfb3B0cyAqb3B0cykKICAgIHsKICAgICAgICBzdHJ1Y3QgcmtfdWRwaHkg
KnVkcGh5ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7CiAgICAgICAgc3RydWN0IHBoeV9jb25maWd1
cmVfb3B0c19kcCAqZHAgPSAmb3B0cy0+ZHA7CiAgICAgICAgdTMyIGksIHZhbCwgbGFuZTsKICAg
ICAgICBpbnQgcmV0OwogICAgCiAgICAgICAgaWYgKGRwLT5zZXRfcmF0ZSkgewoKSXQgYXBwZWFy
cyB0byBhY2Nlc3MgYW5kIG1vZGlmeSBzaGFyZWQgUEhZIHN0YXRlIHdpdGhvdXQgaG9sZGluZyB1
ZHBoeS0+bXV0ZXguCgpDb25jdXJyZW50bHksIGEgVHlwZS1DIGV2ZW50IHN1Y2ggYXMgcmtfdWRw
aHlfdHlwZWNfbXV4X3NldCgpIHJ1bm5pbmcgaW4gYQp3b3JrcXVldWUgbW9kaWZpZXMgdWRwaHkt
PmRwX2xhbmVfc2VsIGFuZCB1ZHBoeS0+ZHBfbGFuZXMgd2hpbGUgaG9sZGluZwp1ZHBoeS0+bXV0
ZXguCgpDb3VsZCBya191ZHBoeV9kcF9waHlfY29uZmlndXJlKCkgcmVhZCBpbmNvbnNpc3RlbnQg
dmFsdWVzIGFuZCBjYXVzZQpvdXQtb2YtYm91bmRzIHJlZ2lzdGVyIHdyaXRlcyBpZiBpdCBnZXRz
IGFuIGludmFsaWQgaW5kZXggZnJvbSBkcF9sYW5lX3NlbD8KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MTAtcm9ja2NoaXAtdXNi
ZHAtY2xlYW51cC12MTItMC04YjQxYTlhOWJlZjBAY29sbGFib3JhLmNvbT9wYXJ0PTIwCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
