Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73890C43458
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jul 2026 10:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ius6zLU1kv3bNrlkit0oUM2eM/V6h47ksnjYYsXRTeQ=; b=1K8+DArvvRRwBO
	CVkvXIfvoKuhV3d+boT0OwZLIekCVZDforWFCyaj/0pn/gQx9bA3Re3GJLip0oYYpWtOfBETS69HD
	S8n9Y5pYP1CA3XFD/nkjcfl0+VtfBUVFRo9HsO2xkS2SFi+MpfdJ8D/8AGzh+7y90PUggUdoitEVS
	hcEfTiEO+JiTa9tVgQjT+zZNkO1/rBU4MAPqm9BjF0HY2zgEIlOmprKsR5okwJEPEXsWVsYN54zsj
	+uT7Si0ZwuPwq6y4eSS85vfeb/lW8YPrhZ+iJfR1bXuj1YIqez9Q1I/XXvTm9kpOi5IZt6DfNlf9s
	dIkeiDaWd9TNL+jOrMDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjEDG-00000008vVR-0NgC;
	Mon, 13 Jul 2026 10:48:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjEDF-00000008vVL-1HPY
	for linux-phy@lists.infradead.org;
	Mon, 13 Jul 2026 10:48:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 82B8E6004E;
	Mon, 13 Jul 2026 10:48:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B14401F000E9;
	Mon, 13 Jul 2026 10:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783939716;
	bh=joM5xgBMc4RGmzMrirARnsAMqCbi+hseeTpklEeWnqo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NQXKinrIg9//o0fJBswvaUnIFClXlbvufjwxhxiQzNiUN+VETRDFM+7g5gdvzDQ6O
	 9E/IjbbdeM/Qk4P4xEk68XBBPQkFM7pUlk+STlyXZLaNY6McVVm2f//w5QriwD4bJm
	 1NAga6WZLWuFHzfhVbT6YwQRAUmGOkDLVfjGdbDnklZqy23of59R+2tKeTQr8uGnh4
	 29uVQzOQaeveYE2RNSWh0sfVqTqiC1caWZmBcEEIqxxG3RADDCGmdOUwqK9xi2I7Fd
	 jzRtGNYrJFLEVb4IqRA/NViBACFFYFg+g6y5RSF0daOJVS5CZc/v325MZyYHGqe1GL
	 +oyFUnnAyq7zA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] phy: mediatek: Add support for MT8196 MIPI DSI
 PHY
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com
In-Reply-To: <20260713103805.23030-3-angelogioacchino.delregno@collabora.com>
References: <20260713103805.23030-1-angelogioacchino.delregno@collabora.com>
 <20260713103805.23030-3-angelogioacchino.delregno@collabora.com>
Date: Mon, 13 Jul 2026 10:48:35 +0000
Message-Id: <20260713104835.B14401F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gU2lnbmFsaW5nIHZv
bHRhZ2UgYm9vc3QgaXMgZXhjbHVzaXZlbHkgdGllZCB0byB0aGUgYWJzb2x1dGUgbWF4aW11bSBj
bGFtcGVkIGZyZXF1ZW5jeSwgcHJldmVudGluZyBoaWdoIGRhdGEgcmF0ZXMgZnJvbSByZWNlaXZp
bmcgdGhlIGJvb3N0LgotLQoKLS0tIFBhdGNoIFsyXTogW1BBVENIIHYzIDIvMl0gcGh5OiBtZWRp
YXRlazogQWRkIHN1cHBvcnQgZm9yIE1UODE5NiBNSVBJIERTSSBQSFkgLS0tCmNvbW1pdCBhNmI0
MGNhYWQxYWMyNjZhMDQ4MWVmN2IyNmJhZmZjZWI2NzIwMDhjCkF1dGhvcjogQW5nZWxvR2lvYWNj
aGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4K
CnBoeTogbWVkaWF0ZWs6IEFkZCBzdXBwb3J0IGZvciBNVDgxOTYgTUlQSSBEU0kgUEhZCgpUaGlz
IGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIHRoZSBNSVBJIERTSSBQSFkgZm91bmQgaW4gdGhlIE1l
ZGlhVGVrIE1UODE5NgpTb0MgYW5kIGl0cyB2YXJpYW50cy4gSXQgaW50cm9kdWNlcyBhIG5ldyBy
ZWdpc3RlciBsYXlvdXQgYW5kIGJhc2ljIEQtUEhZCmZ1bmN0aW9uYWxpdHkgbmVlZGVkIHRvIGRy
aXZlIE1JUEkgRFNJIGRpc3BsYXlzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWVkaWF0
ZWsvcGh5LW10ay1taXBpLWRzaS1tdDgxOTYuYyBiL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1t
dGstbWlwaS1kc2ktbXQ4MTk2LmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAw
MDAwMDAwMDAuLmVhYzNkYjk5MjJkYmEKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9w
aHkvbWVkaWF0ZWsvcGh5LW10ay1taXBpLWRzaS1tdDgxOTYuYwoKWyAuLi4gXQoKPiArc3RhdGlj
IGludCBtdGtfbWlwaV90eF9wbGxfZW5hYmxlKHN0cnVjdCBjbGtfaHcgKmh3KQo+ICt7Cj4gKwlz
dHJ1Y3QgbXRrX21pcGlfdHggKm1pcGlfdHggPSBtdGtfbWlwaV90eF9mcm9tX2Nsa19odyhodyk7
Cj4gKwl2b2lkIF9faW9tZW0gKmJhc2UgPSBtaXBpX3R4LT5yZWdzOwo+ICsJdTMyIHZvbHRhZ2Ug
PSBSR19EU0lfUFJEX1JFRl9NSU5JOwo+ICsJdTMyIHByZXMgPSBNSVBJVFhfUFJFU0VSVkVEX01J
Tkk7Cj4gKwl1bnNpZ25lZCBsb25nIGxvbmcgcGN3X2NhbGM7Cj4gKwl1bnNpZ25lZCBpbnQgdHhk
aXYsIHR4ZGl2MDsKPiArCXUzMiBwY3c7Cj4gKwo+ICsJZGV2X2RiZyhtaXBpX3R4LT5kZXYsICJl
bmFibGU6ICV1IGJwc1xuIiwgbWlwaV90eC0+ZGF0YV9yYXRlKTsKPiArCj4gKwlpZiAobWlwaV90
eC0+ZGF0YV9yYXRlID49IERTSV9QSFlfUExMX01BWF9SQVRFX0haKSB7Cj4gKwkJLyogU2VsZWN0
IGhpZ2hlciBzaWduYWxpbmcgdm9sdGFnZSBmb3IgZmFzdCBkYXRhIHJhdGVzICovCj4gKwkJdm9s
dGFnZSA9IFJHX0RTSV9QUkRfUkVGX0RFRjsKPiArCQlwcmVzID0gTUlQSVRYX1BSRVNFUlZFRF9E
RUY7Cj4gKwkJdHhkaXYgPSAxOwo+ICsJCXR4ZGl2MCA9IDA7Cj4gKwl9IGVsc2UgaWYgKG1pcGlf
dHgtPmRhdGFfcmF0ZSA+PSAxMDAwMDAwMDAwKSB7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyB0
aGlzIGxvZ2ljIHVuaW50ZW50aW9uYWxseSByZXN0cmljdCB0aGUgaGlnaGVyIHNpZ25hbGluZyB2
b2x0YWdlIHRvIG9ubHkKZXhhY3QgbWF0Y2hlcyBvZiB0aGUgbWF4aW11bSBQTEwgcmF0ZT8KClNp
bmNlIG10a19taXBpX3R4X3BsbF9kZXRlcm1pbmVfcmF0ZSgpIGNsYW1wcyB0aGUgY2xvY2sgcmF0
ZSB0bwpEU0lfUEhZX1BMTF9NQVhfUkFURV9IWiAoMi4wIEdIeiksIG1pcGlfdHgtPmRhdGFfcmF0
ZSBjYW4gbmV2ZXIgZXhjZWVkIHRoaXMKdmFsdWUuIENvbnNlcXVlbnRseSwgcGFuZWxzIHJlcXVl
c3RpbmcgZGF0YSByYXRlcyBzbGlnaHRseSBiZWxvdyAyLjAgR0h6Cihmb3IgZXhhbXBsZSwgMS45
OSBHSHopIHdpbGwgZmFsbCB0aHJvdWdoIHRvIHRoZSAxLjAgR0h6IGJyYW5jaCBpbnN0ZWFkIG9m
CnJlY2VpdmluZyB0aGUgdm9sdGFnZSBib29zdCBhbmQgY29ycmVjdCBQTEwgZGl2aWRlcnMgaW50
ZW5kZWQgZm9yIGZhc3QgZGF0YQpyYXRlcy4KCkNvdWxkIHRoaXMgY29uZmxhdGlvbiBiZXR3ZWVu
IHRoZSBQTEwgb2N0YXZlIGJhbmQgdGhyZXNob2xkIGFuZCB0aGUgbWF4aW11bQpmcmVxdWVuY3kg
Y2xhbXAgbWFjcm8gYWxzbyBicmVhayB0aGUgUExMIGRpdmlkZXIgbG9naWMgaWYgdGhlIG1heGlt
dW0Kc3VwcG9ydGVkIHJhdGUgbGltaXQgaXMgaW5jcmVhc2VkIGluIHRoZSBmdXR1cmU/CgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYw
NzEzMTAzODA1LjIzMDMwLTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29t
P3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
