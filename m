Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC529C43602
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 23:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Seu2cxTQBBSeX8acuOvmBzTBAkaldcRB0CBxV0RzXL4=; b=Rug4yvHvBcBUvp
	SgXt3mUXyRtjrVEH2MF2eTKBiaNpStGmOBZo+GPpsPMHPX6/rbFDKvtYVxO3KKjzYjEQqwqaSwp8k
	DPwp24iA48RyNDZL5VWtwBNY7Wkyzs85geFdxl5cactScfQU94KF+FYZwBAZmcezL26gvBPr0rF4L
	eU04hf977OpDT2ab/qkVqEHaIsc8GBfeEuEKiE27MVzETe3b011OFvg7tf80YBA+B8jqlFZKC9ZPh
	/7mQpAD3VX/PGcHDUzHVl2Q990dDIVU671dy7pIkl9K82RUgAtaiSBtgXt4h4QtOT8PBwY6yx1V+t
	XZcIAEowFlkqe7rAUHdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4pc-00000003FxJ-2Y8H;
	Wed, 01 Jul 2026 23:59:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4pb-00000003FxB-2lLU
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 23:59:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 254DA43AD0;
	Wed,  1 Jul 2026 23:59:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8800B1F000E9;
	Wed,  1 Jul 2026 23:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950343;
	bh=bIy4jNIZE4AKwiaiANhfC8Sexabsd1MckjNxwJlu4fs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=O2WtNhjiBwQejsKy3chFeaGs0FfPNS5MjQHC5fQSrVcHsLaBpQaXAqywQqua/FIGD
	 t6gw/povquKny2RNxA+NfdJ/0N+C3nLcq+6LlWLDeK2VB+/Uk+Iy22UbZORkPpwc+c
	 CNhZZ/G+AbZsxlilzg11wG0fWWt2NGOPOKeKrAxli4WAQAtvkjHwdlMf9L43uZwsA9
	 Il+TFqIJ5heoFcSSMDUTHmRiccrEClV5N2qZLcvRzGbixAP9ERnEpUajBN2uSpcZu9
	 EewrN7e+PsEu0OEmzQcjGMDuSgjqq5X/UClvtAfiTrb4ruEk7v7WFzuB9weivCRa+O
	 uXRLBLIzs1ohQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 06/38] phy: rockchip: usbdp: Drop seamless DP
 takeover
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-6-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-6-e31efbb62d2e@collabora.com>
Date: Wed, 01 Jul 2026 23:59:02 +0000
Message-Id: <20260701235902.8800B1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFBlcm1hbmVudGx5IGJy
ZWFrcyBuYXRpdmUgRFAgYW5kIGVEUCBkaXNwbGF5cyBpZiB0aGUgYm9vdGxvYWRlciBwcmUtZW5h
YmxlcyB0aGUgUEhZLgotIFtIaWdoXSBVbmNvbmRpdGlvbmFsbHkgZGlzYWJsaW5nIGEgcHJlLWVu
YWJsZWQgRFAgUEhZIGR1cmluZyBwcm9iZSB3aXRob3V0IGRldGVybWluaXN0aWMgc3luY2hyb25p
emF0aW9uIHdpdGggdGhlIGRpc3BsYXkgY29udHJvbGxlciAoVk9QKSB3aWxsIGNhdXNlIGEgaGFy
ZHdhcmUgbG9ja3VwLgotLQoKY29tbWl0IGI2MmJlNzY2MDMyN2QxOWM1MzhmNGE3ZTA0ZmUxZjc3
ZGRiODJkMjMKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29s
bGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBEcm9wIHNlYW1sZXNzIERQIHRha2Vv
dmVyCgpUaGlzIGNvbW1pdCByZW1vdmVzIHN1cHBvcnQgZm9yIHNlYW1sZXNzIERQIHRha2VvdmVy
IGluIHRoZSBSb2NrY2hpcCBVU0JEUCBQSFkKZHJpdmVyLiBJdCBhdHRlbXB0cyB0byB3b3JrIGFy
b3VuZCBhY3RpdmUgYm9vdGxvYWRlciBjb25maWd1cmF0aW9ucyBieSBmb3JjaW5nCkhQRCBsb3cg
YW5kIHdhaXRpbmcgYmVmb3JlIHNodXR0aW5nIGRvd24gdGhlIFBIWS4KCkxpbms6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8yMDI2MDYxMjE2NDEwNy5DN0RCMjFGMDAwRTlAc210
cC5rZXJuZWwub3JnLwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAu
Ywo+IGluZGV4IDNmYzgyMjJmY2FlYzIuLmQ3MzQ1NTM3MDExMzQgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwoKWyAuLi4gXQoKPiBAQCAtOTM4LDEwICs5
MzksMTQgQEAgc3RhdGljIGludCBya191ZHBoeV9nZXRfaW5pdGlhbF9zdGF0dXMoc3RydWN0IHJr
X3VkcGh5ICp1ZHBoeSkKPiAgCXJrX3VkcGh5X3Jlc2V0X2RlYXNzZXJ0X2FsbCh1ZHBoeSk7Cj4g
IAo+ICAJcmVnbWFwX3JlYWQodWRwaHktPnBtYV9yZWdtYXAsIENNTl9MQU5FX01VWF9BTkRfRU5f
T0ZGU0VULCAmdmFsdWUpOwo+IC0JaWYgKEZJRUxEX0dFVChDTU5fRFBfTEFORV9NVVhfQUxMLCB2
YWx1ZSkgJiYgRklFTERfR0VUKENNTl9EUF9MQU5FX0VOX0FMTCwgdmFsdWUpKQo+IC0JCXVkcGh5
LT5zdGF0dXMgPSBVRFBIWV9NT0RFX0RQOwo+IC0JZWxzZQo+IC0JCXJrX3VkcGh5X2Rpc2FibGUo
dWRwaHkpOwo+ICsJaWYgKEZJRUxEX0dFVChDTU5fRFBfTEFORV9NVVhfQUxMLCB2YWx1ZSkgJiYg
RklFTERfR0VUKENNTl9EUF9MQU5FX0VOX0FMTCwgdmFsdWUpKSB7Cj4gKwkJZGV2X2luZm8odWRw
aHktPmRldiwgIlN0YXJ0ZWQgd2l0aCBEUCBQSFkgcHJlLWVuYWJsZWQ7IHNlYW1sZXNzIHRha2Vv
dmVyIHVuc3VwcG9ydGVkXG4iKTsKPiArCQlya191ZHBoeV9ncmZyZWdfd3JpdGUodWRwaHktPnZv
Z3JmLCAmY2ZnLT52b2dyZmNmZ1t1ZHBoeS0+aWRdLmhwZF90cmlnZ2VyLCBmYWxzZSk7CgpbU2V2
ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBwZXJtYW5lbnRseSBicmVhayBuYXRpdmUgRFAgYW5kIGVE
UCBkaXNwbGF5cyBpZiB0aGUgYm9vdGxvYWRlcgpwcmUtZW5hYmxlcyB0aGUgUEhZPwoKQnkgd3Jp
dGluZyBmYWxzZSB0byB0aGUgaHBkX3RyaWdnZXIgcmVnaXN0ZXIsIHRoaXMgZm9yY2VzIGEgc29m
dHdhcmUgb3ZlcnJpZGUKb2YgdGhlIHBoeXNpY2FsIEhQRCBwaW4gdG8gYSBsb3cgc3RhdGUuIFNp
bmNlIHRoaXMgb3ZlcnJpZGUgaXMgbmV2ZXIgcmV2ZXJ0ZWQKYW55d2hlcmUgaW4gdGhlIGRyaXZl
ciwgd2lsbCB0aGUgaGFyZHdhcmUgRFAgY29udHJvbGxlciBwZXJtYW5lbnRseSByZWFkIEhQRAph
cyBsb3csIHByZXZlbnRpbmcgbmF0aXZlIGRpc3BsYXlzIGZyb20gbGluayB0cmFpbmluZz8KCj4g
KwkJLyogV2FpdCBmb3IgVk9QIHNpZGUgdG8gc2h1dCB1cCAqLwo+ICsJCW1zbGVlcCgxMDApOwo+
ICsJfQo+ICsKPiArCXJrX3VkcGh5X2Rpc2FibGUodWRwaHkpOwoKW1NldmVyaXR5OiBIaWdoXQpD
YW4gdW5jb25kaXRpb25hbGx5IGRpc2FibGluZyBhIHByZS1lbmFibGVkIERQIFBIWSBoZXJlIGNh
dXNlIGEgaGFyZHdhcmUgbG9ja3VwPwoKU2luY2UgdGhlIFBIWSBkcml2ZXIgcHJvYmVzIHZlcnkg
ZWFybHksIHRoZSBEUk0gZHJpdmVyIGhhcyBub3QgeWV0IGJvdW5kLAptZWFuaW5nIG5vIGludGVy
cnVwdCBoYW5kbGVyIGlzIHByZXNlbnQgdG8gcHJvY2VzcyB0aGUgSFBEIGRyb3AsIGFuZCB0aGUg
VmlkZW8KT3V0cHV0IFByb2Nlc3NvciAoVk9QKSBjb250aW51ZXMgc3RyZWFtaW5nLiBBZnRlciB0
aGUgMTAwbXMgZGVsYXksCnJrX3VkcGh5X2Rpc2FibGUoKSBhYnJ1cHRseSB0dXJucyBvZmYgdGhl
IFBIWSBhbmQgaXRzIFBMTC4KCkRvZXMgaGFsdGluZyB0aGUgcGl4ZWwgY2xvY2sgd2hpbGUgdGhl
IFZPUCBpcyBhY3RpdmVseSB0cmFuc2FjdGluZyBjYXVzZSBhbgppbnRlcmNvbm5lY3Qgc3RhbGwg
b24gUm9ja2NoaXAgU29Dcz8KCj4gIAo+ICAJcmV0dXJuIDA7Cj4gIH0KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDItcm9ja2No
aXAtdXNiZHAtY2xlYW51cC12OS0wLWUzMWVmYmI2MmQyZUBjb2xsYWJvcmEuY29tP3BhcnQ9NgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
