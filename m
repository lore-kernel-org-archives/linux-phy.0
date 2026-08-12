Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17A6AC5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CwQ91XoqtUg6GW7qtEz6yG83kLnRnO/adXSR6HIzF0=; b=cYTs3xSEjWlErX
	30VNdZIKH9wcwUK/FAEs0nS4V+xo7jTeI9267KRh4KLvrRm9SgZpsIeZMFeOI/MVOLOQS4K1acvfy
	anSqRcpF87LkWXFnlN4vWgtnvkmK9xQgureUud5s7mDPAo3Zeopri2ZKnBTnpeGS43VFrjThkRxOz
	RVqzpihpJJHlrU0oEaYB+0joLanezostIEAZ+hY74+KCzO5cQ0MTYl7oU11WyxYofcTcwJ2Yj7d9M
	P2Qbz4cq2e4RlhaqI5zI8GVlkm9oAMEFothLvxPxAlSNFCSO9HX74+aKZbZznRr65Coz2ZY35u8/o
	H1yHT/TdPOfbG9iMn7jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5gq-0000000Fp9O-1QOC;
	Wed, 12 Aug 2026 09:56:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5go-0000000Fp8u-3NUg
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:56:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8F4F34008B;
	Wed, 12 Aug 2026 09:56:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 007CF1F00A3A;
	Wed, 12 Aug 2026 09:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786528562;
	bh=015cT6wYQP0mrinIlhVZBT2quUZXCmnTUNJNShjeGR8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Xq13hzxQKYO/F7VotocMw2QqdWBMDHf35gOTWzlTnu8jw5j14qwrdIc1NPqwl1Fda
	 zqwtu2RGJ9pWrhqzZkpNdR3U1cwZjdgMjH+leQQbFNDeU3/N2EIqEtk4tjdAEfs+B/
	 LAGyagYR7uT8MIdVHOOw0Bzt/rcvepk/yplKCqKaDnce5e46DMBa5Lr3ijnFyNp/Tz
	 PD+b6IwJAhTBcLWhNACxYRob7578LGeeE0WctTsao2AUmFIzPYP929aOdKakfsh3F7
	 925CH/I/gQ/BOIyPs1QzAPiGrUY/OFPaCzS24HJqvXM4CrLO0kC1iYNo3LjVU91t+w
	 OkMzQ7hBKlC8w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 05/14] arm64: dts: qcom: ipq5018: Flatten usb
 controller node
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260812-ipq5018-usb3-v2-5-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-5-8f355d7ff0ef@outlook.com>
Date: Wed, 12 Aug 2026 09:56:01 +0000
Message-Id: <20260812095602.007CF1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBmbGF0dGVuZWQg
YHFjb20sc25wcy1kd2MzYCBub2RlIHByb3ZpZGVzIGEgYHJlZ2AgbWVtb3J5IHJlZ2lvbiBzaXpl
IChgMHhlMDAwYCkgdGhhdCBpcyB0b28gc21hbGwgdG8gY292ZXIgdGhlIHFzY3JhdGNoIHdyYXBw
ZXIgcmVnaXN0ZXJzLCBsZWFkaW5nIHRvIGEgYC1FQlVTWWAgcHJvYmUgZmFpbHVyZS4KLS0KCi0t
LSBQYXRjaCBbNV06IFtQQVRDSCB2MiAwNS8xNF0gYXJtNjQ6IGR0czogcWNvbTogaXBxNTAxODog
RmxhdHRlbiB1c2IgY29udHJvbGxlciBub2RlIC0tLQpjb21taXQgZTA5N2NhZmEwMzJjYjJlMjI0
YzMwNTI2OTFjZWY1MDdiMjViOTgzMQpBdXRob3I6IEdlb3JnZSBNb3Vzc2FsZW0gPGdlb3JnZS5t
b3Vzc2FsZW1Ab3V0bG9vay5jb20+Cgphcm02NDogZHRzOiBxY29tOiBpcHE1MDE4OiBGbGF0dGVu
IHVzYiBjb250cm9sbGVyIG5vZGUKClRoaXMgY29tbWl0IGZsYXR0ZW5zIHRoZSBVU0IgY29udHJv
bGxlciBub2RlIGFuZCB1cGRhdGVzIGl0IHRvIHVzZSB0aGUKbGF0ZXN0IGJpbmRpbmdzIGFuZCBm
bGF0dGVuZWQgZHJpdmVyIGFwcHJvYWNoLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL2lwcTUwMTguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4
LmR0c2kKPiBpbmRleCBhYmQxMmIzMWE1MTQ3Li43YjhjOTQ2NWY0NDQyIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kKPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20vaXBxNTAxOC5kdHNpClsgLi4uIF0KPiAtCQl1c2I6IHVzYkA4YWY4ODAw
IHsKPiAtCQkJY29tcGF0aWJsZSA9ICJxY29tLGlwcTUwMTgtZHdjMyIsICJxY29tLGR3YzMiOwo+
IC0JCQlyZWcgPSA8MHgwOGFmODgwMCAweDQwMD47Cj4gLQo+IC0JCQlpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgMTM0IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+IC0JCQkJICAgICA8R0lDX1NQSSAxMjEg
SVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gLQkJCQkgICAgIDxHSUNfU1BJIDEyMCBJUlFfVFlQRV9M
RVZFTF9ISUdIPjsKPiAtCQkJaW50ZXJydXB0LW5hbWVzID0gInB3cl9ldmVudCIsCj4gLQkJCQkJ
ICAiZHBfaHNfcGh5X2lycSIsCj4gLQkJCQkJICAiZG1faHNfcGh5X2lycSI7Cj4gKwkJdXNiOiB1
c2JAOGEwMDAwMCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxpcHE1MDE4LWR3YzMiLCAicWNv
bSxzbnBzLWR3YzMiOwo+ICsJCQlyZWcgPSA8MHgwOGEwMDAwMCAweGUwMDA+OwoKW1NldmVyaXR5
OiBIaWdoXQpEb2VzIHRoaXMgcmVnIHNpemUgY29ycmVjdGx5IGNvdmVyIHRoZSBxc2NyYXRjaCB3
cmFwcGVyIHJlZ2lzdGVycz8KClRoZSBRdWFsY29tbSB3cmFwcGVyIGRyaXZlciAoZHdjMy1xY29t
LmMpIGFydGlmaWNpYWxseSBleHBhbmRzIHRoZSBtZW1vcnkKcmVzb3VyY2Ugc2l6ZSB1cCB0byB0
aGUgMHhmODgwMCBvZmZzZXQuIFNpbmNlIHRoZSBuZXcgZmxhdHRlbmVkIG5vZGUgaGVyZQpvbmx5
IGFsbG9jYXRlcyBhIGxlbmd0aCBvZiAweGUwMDAgYnl0ZXMsIHdvbid0IGRldm1faW9yZW1hcF9y
ZXNvdXJjZSgpCmZhaWwgd2l0aCAtRUJVU1kgZHVyaW5nIHByb2JlIHdoZW4gdGhlIGNvcmUgZHJp
dmVyIHJlcXVlc3RzIGEgcmVnaW9uIHRoYXQKZXh0ZW5kcyBiZXlvbmQgdGhpcyBwYXJlbnQgZGV2
aWNlIGJvdW5kYXJ5PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDgxMi1pcHE1MDE4LXVzYjMtdjItMC04ZjM1NWQ3ZmYwZWZAb3V0
bG9vay5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
