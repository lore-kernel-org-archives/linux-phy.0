Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6565ACA5FD2
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 13:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JkNMg5yUhLe9TdlrAZ0Vv759nJlclX/Jx+vWoPwyiY=; b=c13XHo4Mp26c0z
	lD/Kn/cWlj4UZfoXWILrllT8QUFHcn4pBQtJb/HHEDWmkrwMeHvrMN2fAlBMyEzAbInAYQ9/RiGOw
	K5yyUb7/31uN5FSGHvqiEV3vr02B6goCfqzOeMJdCEb1vYvLDhCz4Xr5V+ZvNqBZuXbmpg/5kCY/1
	UhkHW5dHKHaaVboQ8Z3F0ogqjYXgPKSFh3kel16XB7AWoiMP2ASreaG9faKDAY5MeMQrUv2yAZ8UM
	wu81Z3pB4qZXCzS2MsGU0faiUCoANuHrqBeHPjl+OIq4TNvEsQhXVEWt7fjKl7uBsCwlTKa8mVesF
	wCA3f6ClV73eQGdJEv9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGj3-00000009Dwc-3sEv;
	Thu, 01 Oct 2026 13:21:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGj2-00000009DwV-2PVw
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 13:21:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BFBDA60A52;
	Thu,  1 Oct 2026 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B3441F000FF;
	Thu,  1 Oct 2026 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790860887;
	bh=hoTlEHyUIMbybTTcw9WZYNnLlGkYO3auYOj/mhOxhPE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WZImD7KK3Mizcvj7kNOldB+6/Y/X5xusz9nV2xieTgqU7/TS1m+wj5gph2D9I0sK/
	 JPefCeLD7fMNQZoHb13IvJ3m/lEDCniK9sMAHjDSk6vSGcsbTPCaldbBSV43vRBc8T
	 YHLToAfluP/TOLiSCcGxEUb9mQxata1R7NT3Xf0QHDDugCJ1YnDQOFKPNGPW3OXLEP
	 Lx5J6AqM/I4o9hJOpnPpKyYcNB0GAYH8o0lubDm6c61G4zDQaXUo+0PtuKQtmLvwIR
	 CqcaezRZ1Ucx6J6jK39DMl5Lqmapf6/ERCJvul8Xi75FOz5UUHqGpmmQXaZK+GMsi9
	 n12IK+YJM16KA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/4] phy: rockchip: inno-usb2: move suspend handling
 into new function
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20261001-phy-rockchip-inno-usb2-clock-fix-v2-3-e01bf509359e@collabora.com>
References: <20261001-phy-rockchip-inno-usb2-clock-fix-v2-0-e01bf509359e@collabora.com>
 <20261001-phy-rockchip-inno-usb2-clock-fix-v2-3-e01bf509359e@collabora.com>
Date: Thu, 01 Oct 2026 13:21:26 +0000
Message-Id: <20261001132127.2B3441F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcm9ja2NoaXA6
IGludmVydGVkIGxvZ2ljIGluIHJvY2tjaGlwX3VzYjJwaHlfc2V0X3N1c3BlbmQoKQotLQoKY29t
bWl0IDU1OWYzN2U3ZmNiZDE4YzBkMjY5ZWI5YTcxMWNjYTcyM2MyNjRiMTkKQXV0aG9yOiBTZWJh
c3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9j
a2NoaXA6IGlubm8tdXNiMjogbW92ZSBzdXNwZW5kIGhhbmRsaW5nIGludG8gbmV3IGZ1bmN0aW9u
CgpUaGlzIGNvbW1pdCByZWZhY3RvcnMgdGhlIFBIWSBzdXNwZW5kIGhhbmRsaW5nIGludG8gaXRz
IG93biBkZWRpY2F0ZWQgaGVscGVyCmZ1bmN0aW9uLiBJdCBpcyBpbnRlbmRlZCB0byBwcm9kdWNl
IG5vIGZ1bmN0aW9uYWwgY2hhbmdlcyB0byB0aGUgZHJpdmVyLgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGIvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jCj4gaW5kZXggZTRkOGFiZjkzNWMxYi4u
OTI1YTAzZmVlNmJjNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtaW5uby11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtaW5uby11c2IyLmMKPiBAQCAtMzMyLDYgKzMzMiwzNSBAQCByb2NrY2hpcF91c2IycGh5X2Ns
azQ4MG1fY2xrb3V0X2N0bChzdHJ1Y3QgY2xrX2h3ICpodywgc3RydWN0IHJlZ21hcCAqKmJhc2Us
Cj4gIAl9Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgcm9ja2NoaXBfdXNiMnBoeV9zZXRfc3VzcGVu
ZChzdHJ1Y3Qgcm9ja2NoaXBfdXNiMnBoeSAqcnBoeSwKPiArCQkJCQlzdHJ1Y3Qgcm9ja2NoaXBf
dXNiMnBoeV9wb3J0ICpycG9ydCwKPiArCQkJCQlib29sIGRvX3N1c3BlbmQpCj4gK3sKPiArCWlu
dCByZXQ7Cj4gKwo+ICsJcmV0ID0gcHJvcGVydHlfZW5hYmxlKHJwaHktPmdyZiwgJnJwb3J0LT5w
b3J0X2NmZy0+cGh5X3N1cywgIWRvX3N1c3BlbmQpOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRo
aXMgaGVscGVyIGludmVydCB0aGUgaW50ZW5kZWQgbG9naWM/CgpJbiB0aGUgb3JpZ2luYWwgY29k
ZSwgcm9ja2NoaXBfdXNiMnBoeV9wb3dlcl9vbigpIGNhbGxlZCBwcm9wZXJ0eV9lbmFibGUoKQp3
aXRoIGZhbHNlIHRvIGNsZWFyIHRoZSBzdXNwZW5kIHByb3BlcnR5LCBhbmQgcm9ja2NoaXBfdXNi
MnBoeV9wb3dlcl9vZmYoKQpjYWxsZWQgaXQgd2l0aCB0cnVlIHRvIHNldCB0aGUgcHJvcGVydHku
CgpCeSBwYXNzaW5nICFkb19zdXNwZW5kIGhlcmUsIHdoZW4gY2FsbGVycyB3YW50IHRvIGV4aXQg
c3VzcGVuZCBhbmQgcGFzcwpmYWxzZSwgd2UgZW5kIHVwIHBhc3NpbmcgdHJ1ZSB0byBwcm9wZXJ0
eV9lbmFibGUoKS4gVGhpcyBzZWVtcyB0byByZXZlcnNlIAp0aGUgaGFyZHdhcmUgc3RhdGUgZm9y
IHN1c3BlbmQgYW5kIHJlc3VtZSBvcGVyYXRpb25zLgoKWyAuLi4gXQoKPiBAQCAtNjAzLDI3ICs2
MzIsMTIgQEAgc3RhdGljIGludCByb2NrY2hpcF91c2IycGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkg
KnBoeSkKPiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiAgCj4gLQlyZXQgPSBwcm9wZXJ0
eV9lbmFibGUocnBoeS0+Z3JmLCAmcnBvcnQtPnBvcnRfY2ZnLT5waHlfc3VzLCBmYWxzZSk7Cj4g
KwlyZXQgPSByb2NrY2hpcF91c2IycGh5X3NldF9zdXNwZW5kKHJwaHksIHJwb3J0LCBmYWxzZSk7
CgpbU2V2ZXJpdHk6IEhpZ2hdCkNvdWxkIHRoaXMgY2F1c2UgdGhlIFBIWSB0byBpbmNvcnJlY3Rs
eSBzdXNwZW5kIHdoZW4gd2UncmUgdHJ5aW5nIHRvIHBvd2VyIAppdCBvbj8KCldoZW4gcm9ja2No
aXBfdXNiMnBoeV9wb3dlcl9vbigpIGNhbGxzIHJvY2tjaGlwX3VzYjJwaHlfc2V0X3N1c3BlbmQo
KSB3aXRoCmZhbHNlLCB0aGUgbmV3IGhlbHBlciB3aWxsIGV4ZWN1dGUgcHJvcGVydHlfZW5hYmxl
KC4uLiwgdHJ1ZSkuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYxMDAxLXBoeS1yb2NrY2hpcC1pbm5vLXVzYjItY2xvY2stZml4LXYy
LTAtZTAxYmY1MDkzNTllQGNvbGxhYm9yYS5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
