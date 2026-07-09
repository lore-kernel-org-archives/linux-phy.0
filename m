Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FAD3C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTNfv5FbzAQf4rms1LkAUaXwKAS9CRtB2DtykyXupaQ=; b=Y+zcVZAVx9+G8g
	gkkX3ny48x7dCek3+C6YVfgIZ7Ufg9eX4OZnZbZ2B684745Tu2sZCaUV5j9RWzLtoGMQWRmOlM304
	QgaDFYySxRGfET2IRIf7sv+77sEKE8l5AqqIAT2jvnvdH168S9PX6DBSJpnxefh0JLV5oD67jXFmH
	eP+H7lroXKWxpN8aTaIfqcqdQJTuYl/aLI8nlJT9RdNVsFJiiP1IQI+MLdRWTVJoerc7XVYrYsGZI
	zKBkUf/OWIn1XreHC79vmCWc5ofIuRyVIIg8vr0LSlVgtkFKKSYloishaIHQUY0gjxKBODaxi0I4O
	dO4ms86fYK7XxOYSAb2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuPr-00000003Sux-1dYW;
	Thu, 09 Jul 2026 19:28:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuPq-00000003Sun-2QaI
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:28:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0CA376137D;
	Thu,  9 Jul 2026 19:28:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 695451F000E9;
	Thu,  9 Jul 2026 19:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625289;
	bh=eaP32CK9fnRz3e8cIkX6XK1tIuAHPip78tNRma2KLoU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IY1DlZrer+jRwx/b4fu6TFRtQeXOEnPPF29Ri3uk2HRsXLSSqjVYgd7g82ny8WWmL
	 lU1Jko9bTstR73mjcyrhuaofbFYQNNU6Hf4LpwAaIKOVzcUnPR8ewtVUK56dTkcp/F
	 ALNPAjUcnz5D8mVm3y2Y8+ty00F/UYT1bUTj6YDnMHmfwoupcKDFpO0kMiYvdlOB7y
	 UzpH2siq/rkDMOMPG5/xoiFjUvOKgcJS+icT29HK0DS8f1qmdFeQJu4Q10jios5h3H
	 bCSktWYYac1yKTNR2fKhdQXfW7AhMOKJ0Z+gAlMBArKgkRZTN6R1TSIuFDNZ1HU8f5
	 klGktllgQV90g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 26/36] phy: rockchip: usbdp: Avoid xHCI SErrors
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-26-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-26-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:28:09 +0000
Message-Id: <20260709192809.695451F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBVU0IzIHBvcnQg
aXMgdW5jb25kaXRpb25hbGx5IGRpc2FibGVkIGJlZm9yZSBQSFkgcmUtaW5pdGlhbGl6YXRpb24g
dG8gYXZvaWQgeEhDSSBTRXJyb3JzLCBidXQgaXQgaXMgbmV2ZXIgcmUtZW5hYmxlZCBhZnRlcndh
cmRzLCBwZXJtYW5lbnRseSBicmVha2luZyBVU0IzIGZ1bmN0aW9uYWxpdHkuCi0tCgotLS0gUGF0
Y2ggWzI2XTogW1BBVENIIHYxMSAyNi8zNl0gcGh5OiByb2NrY2hpcDogdXNiZHA6IEF2b2lkIHhI
Q0kgU0Vycm9ycyAtLS0KY29tbWl0IDFmNWU5YWFkMTc5ZTUxZmIzMmYyMTE3YTRkOGZmMzUyNDhl
MTQ1Y2MKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFi
b3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBBdm9pZCB4SENJIFNFcnJvcnMKClRoZSBV
U0JEUCBQSFkgcHJvdmlkZXMgdGhlIFBJUEUgY2xvY2sgdG8gdGhlIFVTQjMgY29udHJvbGxlciwg
d2hpY2ggbWVhbnMKdGhlIFBIWSBtdXN0IGJlIGZ1bGx5IHJ1bm5pbmcgd2hlbiBhbnl0aGluZyB0
cmllcyB0byBhY2Nlc3MgdGhlIHhIQ0kKcmVnaXN0ZXJzLiBUaGlzIHBhdGNoIGF2b2lkcyBTRXJy
b3JzIGR1cmluZyByZS1pbml0aWFsaXphdGlvbiBieSBkaXNhYmxpbmcKdGhlIFVTQjMgcG9ydCBi
ZWZvcmVoYW5kLCBmb3JjaW5nIHRoZSBjbG9jayBzb3VyY2UgdG8gYSBzYWZlIGZhbGxiYWNrLgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMg
Yi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IGVkZWUy
NzkzM2Q4OTAuLjllNzc1MTM2NDNhMzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdXNiZHAuYwo+IEBAIC0xMDAwLDggKzEwMDAsOCBAQCBzdGF0aWMgaW50IHJrX3Vk
cGh5X3Bvd2VyX29uKHN0cnVjdCBya191ZHBoeSAqdWRwaHksIHU4IG1vZGUpCj4gIAkJCXJrX3Vk
cGh5X3UzX3BvcnRfZGlzYWJsZSh1ZHBoeSwgZmFsc2UpOwo+ICAJCXVkcGh5LT5waHlfbmVlZHNf
cmVpbml0ID0gZmFsc2U7Cj4gIAl9IGVsc2UgaWYgKHVkcGh5LT5waHlfbmVlZHNfcmVpbml0KSB7
Cj4gLQkJaWYgKHVkcGh5LT5tb2RlID09IFVEUEhZX01PREVfRFApCj4gLQkJCXJrX3VkcGh5X3Uz
X3BvcnRfZGlzYWJsZSh1ZHBoeSwgdHJ1ZSk7Cj4gKwkJcmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxl
KHVkcGh5LCB0cnVlKTsKPiArCQl1ZGVsYXkoMTApOwo+ICAKPiAgCQlyZXQgPSBya191ZHBoeV9p
bml0KHVkcGh5KTsKPiAgCQlpZiAocmV0KQoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29k
ZSBwZXJtYW5lbnRseSBicmVhayB0aGUgVVNCMyBmdW5jdGlvbmFsaXR5PyAKCldlIG5vdyB1bmNv
bmRpdGlvbmFsbHkgZGlzYWJsZSB0aGUgVVNCMyBwb3J0IGhlcmUgYmVmb3JlIHJlLWluaXRpYWxp
emluZyB0aGUKUEhZLCBidXQgaXQgYXBwZWFycyB0aGVyZSBpcyBubyBjb3JyZXNwb25kaW5nIGNh
bGwgdG8gCnJrX3VkcGh5X3UzX3BvcnRfZGlzYWJsZSh1ZHBoeSwgZmFsc2UpIHRvIHJlLWVuYWJs
ZSBpdCBhZnRlciBya191ZHBoeV9pbml0KCkKY29tcGxldGVzLgoKV2lsbCB0aGlzIGxlYXZlIHRo
ZSBEV0MzIGNvbnRyb2xsZXIgc3R1Y2sgb24gdGhlIFVUTUkgZmFsbGJhY2sgY2xvY2sgd2l0aApw
aHlzdGF0dXMgZm9yY2VkIHRvIDAsIG1ha2luZyB0aGUgaW50ZXJmYWNlIHVudXNhYmxlIGFmdGVy
IGEgbW9kZSBzd2l0Y2g/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwNzA5LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjExLTAtYTE0
OWFjNjBmNzZjQGNvbGxhYm9yYS5jb20/cGFydD0yNgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
