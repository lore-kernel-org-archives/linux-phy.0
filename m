Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B63B7C43458
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jul 2026 10:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBVA+yxacShN4SnLqQ0dw4CIrOLw2Ltt1K966MQmHIo=; b=wZ06od3VEq+h/X
	I+7TESlUiE8/6OGFd+0QzZY2j0KGDEm/EP++h433V4W6lCSZMYYHBK8Ylv0c0lgcXNxoIjNA3pyNG
	tuDWS+wU9t1K4M/5jXnAFrWMpvLRY2r/6fSOZTvEYOOVYqHb963rrzT+o7fARzpcPyOprq5ed440S
	hERMVtbvItmlAtZQAG+DuTQRCWs07RGWUxeJ48gvt5HziiRnCwYzcpKvLRpFqqCwgrGBX65Ch/ExR
	sRhlQ2RxStk8woVW800ibyiS9+t2qrgENDwrd/bDNRtr/WAxzDOLpn557ZBd7rOdZamPme2eaM9ms
	DoaEEwi7018jxOFnxyDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjDxu-00000008to0-0iRd;
	Mon, 13 Jul 2026 10:32:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjDxs-00000008tn7-2XBM
	for linux-phy@lists.infradead.org;
	Mon, 13 Jul 2026 10:32:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C70146004E;
	Mon, 13 Jul 2026 10:32:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E37C1F000E9;
	Mon, 13 Jul 2026 10:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783938763;
	bh=5Dz+t3Wdm4GaqxoQWFG0bDZjkowP7rv++fG1N/ZnYUk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OlFiZV6HQSV3MRGlNbsU7DBAge7FSP/fOzEIbvsnqj8zT1kI7H7BFHtDw1p5XX8/h
	 XFEjK+mxnND9ErxmRAFDmJ4jxmghGGc9bNWuhXw2TZ7LwiWQLYZM3ui6ngOMg0IKZo
	 L8YY9ekTT7WBzSyAvzb0QMhOj44tWcVWYciEbXLKnrOUhHqbdQ+oTMrDLodS0IqoCV
	 pCajFg+EvQwEEGcpcvXDk2GS8t3/uJeAtkM1wuxzz3YEF4z+5eb/+RyjZqwMsl8Hho
	 6WiS0Vpvh32SBN+EKgznQtSU/t582+zxA6Hk/d2ks1c3R4kG3ANJ5b8+RJC7P6Nw6u
	 WYYfCCgjqgqig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: mediatek: Add support for MT8196 MIPI DSI
 PHY
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org
In-Reply-To: <20260713102322.21782-3-angelogioacchino.delregno@collabora.com>
References: <20260713102322.21782-1-angelogioacchino.delregno@collabora.com>
 <20260713102322.21782-3-angelogioacchino.delregno@collabora.com>
Date: Mon, 13 Jul 2026 10:32:42 +0000
Message-Id: <20260713103243.0E37C1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFNsZWVwaW5nIGluIEF0
b21pYyBDb250ZXh0Ci0gW0xvd10gRGVhZCBDb2RlIC8gSGFyZHdhcmUgQ2FwYWJpbGl0eSBSZXN0
cmljdGlvbgotLQoKLS0tIFBhdGNoIFsyXTogW1BBVENIIHYyIDIvMl0gcGh5OiBtZWRpYXRlazog
QWRkIHN1cHBvcnQgZm9yIE1UODE5NiBNSVBJIERTSSBQSFkgLS0tCmNvbW1pdCAyOTBkOTQyN2M0
MzZlMzAyYzRhYmE1YTI2ZjVlM2UxZTliYjcyOGY1CkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBE
ZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCnBoeTog
bWVkaWF0ZWs6IEFkZCBzdXBwb3J0IGZvciBNVDgxOTYgTUlQSSBEU0kgUEhZCgpBZGQgc3VwcG9y
dCBmb3IgdGhlIE1JUEkgRFNJIFBIWSBmb3VuZCBpbiB0aGUgTWVkaWFUZWsgTVQ4MTk2IFNvQwph
bmQgaXRzIHZhcmlhbnRzLiBUaGlzIFBIWSBoYXMgYSBkaWZmZXJlbnQgcmVnaXN0ZXIgbGF5b3V0
IGFuZCBwcm92aWRlcwpzdXBwb3J0IGZvciBtb3JlIGhhcmR3YXJlIGZlYXR1cmVzIGNvbXBhcmVk
IHRvIHRoZSBwcmV2aW91cyBnZW5lcmF0aW9uLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
bWVkaWF0ZWsvcGh5LW10ay1taXBpLWRzaS1tdDgxOTYuYyBiL2RyaXZlcnMvcGh5L21lZGlhdGVr
L3BoeS1tdGstbWlwaS1kc2ktbXQ4MTk2LmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4
IDAwMDAwMDAwMDAwMDAuLjI3M2YyMzZmYTdlOWUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJp
dmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1taXBpLWRzaS1tdDgxOTYuYwo+IEBAIC0wLDAgKzEs
MTk2IEBAClsgLi4uIF0KPiArc3RhdGljIGludCBtdGtfbWlwaV90eF9wbGxfZW5hYmxlKHN0cnVj
dCBjbGtfaHcgKmh3KQo+ICt7Cj4gKwlzdHJ1Y3QgbXRrX21pcGlfdHggKm1pcGlfdHggPSBtdGtf
bWlwaV90eF9mcm9tX2Nsa19odyhodyk7Cj4gKwl2b2lkIF9faW9tZW0gKmJhc2UgPSBtaXBpX3R4
LT5yZWdzOwo+ICsJdTMyIHZvbHRhZ2UgPSBSR19EU0lfUFJEX1JFRl9NSU5JOwo+ICsJdTMyIHBy
ZXMgPSBNSVBJVFhfUFJFU0VSVkVEX01JTkk7Cj4gKwl1bnNpZ25lZCBsb25nIGxvbmcgcGN3X2Nh
bGM7Cj4gKwl1bnNpZ25lZCBpbnQgdHhkaXYsIHR4ZGl2MDsKPiArCXUzMiBwY3c7Cj4gKwo+ICsJ
ZGV2X2RiZyhtaXBpX3R4LT5kZXYsICJlbmFibGU6ICV1IGJwc1xuIiwgbWlwaV90eC0+ZGF0YV9y
YXRlKTsKPiArCj4gKwlpZiAobWlwaV90eC0+ZGF0YV9yYXRlID49IDIwMDAwMDAwMDApIHsKPiAr
CQkvKiBTZWxlY3QgaGlnaGVyIHNpZ25hbGluZyB2b2x0YWdlIGZvciBmYXN0IGRhdGEgcmF0ZXMg
Ki8KPiArCQl2b2x0YWdlID0gUkdfRFNJX1BSRF9SRUZfREVGOwoKW1NldmVyaXR5OiBMb3ddCklz
IHRoaXMgYmxvY2sgcmVhY2hhYmxlPyBMYXRlciBpbiBtdGtfbWlwaV90eF9wbGxfZGV0ZXJtaW5l
X3JhdGUoKSwKcmVxLT5yYXRlIGlzIGNsYW1wZWQgdG8gYSBtYXhpbXVtIG9mIDEsNjAwLDAwMCww
MDAgSHouIElmIHRoZSBoYXJkd2FyZQpzdXBwb3J0cyByYXRlcyBhYm92ZSAyLjAgR0h6LCBkb2Vz
IHRoZSBjbGFtcCBsaW1pdCBuZWVkIHRvIGJlIGluY3JlYXNlZCwKb3IgaXMgdGhpcyBkZWFkIGNv
ZGU/Cgo+ICsJCXByZXMgPSBNSVBJVFhfUFJFU0VSVkVEX0RFRjsKPiArCQl0eGRpdiA9IDE7Cj4g
KwkJdHhkaXYwID0gMDsKPiArCX0gZWxzZSBpZiAobWlwaV90eC0+ZGF0YV9yYXRlID49IDEwMDAw
MDAwMDApIHsKWyAuLi4gXQo+ICsJbXRrX3BoeV9zZXRfYml0cyhiYXNlICsgTUlQSVRYX1BMTF9Q
V1IsIEFEX0RTSV9QTExfU0RNX1BXUl9PTik7Cj4gKwltdGtfcGh5X2NsZWFyX2JpdHMoYmFzZSAr
IE1JUElUWF9QTExfQ09OMSwgUkdfRFNJX1BMTF9FTik7Cj4gKwl1c2xlZXBfcmFuZ2UoMzAsIDYw
KTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNvZGUgc2xlZXAgaW4gYW4gYXRvbWljIGNv
bnRleHQ/CgpUaGUgbXRrX21pcGlfdHhfcGxsX2VuYWJsZSgpIGZ1bmN0aW9uIGlzIHJlZ2lzdGVy
ZWQgYXMgdGhlIC5lbmFibGUKY2FsbGJhY2sgaW4gbXRrX21pcGlfdHhfcGxsX29wcyBiZWxvdy4g
VGhlIENvbW1vbiBDbG9jayBGcmFtZXdvcmsgaW52b2tlcwouZW5hYmxlIHVuZGVyIGFuIGVuYWJs
ZV9sb2NrIHNwaW5sb2NrIHdpdGggaW50ZXJydXB0cyBkaXNhYmxlZC4KCkNhbGxpbmcgdXNsZWVw
X3JhbmdlKCkgaGVyZSwgd2hpY2ggaW50ZXJuYWxseSBjYWxscyBzY2hlZHVsZSgpLCB3aWxsIGxl
YWQKdG8gc2NoZWR1bGluZyB3aGlsZSBhdG9taWMuIFNob3VsZCB0aGlzIHVzZSBhbiBhdG9taWMt
c2FmZSBkZWxheSBsaWtlCnVkZWxheSgzMCksIG9yIHNob3VsZCB0aGlzIGxvZ2ljIGJlIG1vdmVk
IHRvIHRoZSBzbGVlcGFibGUgLnByZXBhcmUKY2FsbGJhY2s/Cgo+ICsKPiArCW10a19waHlfY2xl
YXJfYml0cyhiYXNlICsgTUlQSVRYX1BMTF9QV1IsIEFEX0RTSV9QTExfU0RNX0lTT19FTik7Cj4g
Kwl3cml0ZWwocGN3LCBiYXNlICsgTUlQSVRYX1BMTF9DT04wKTsKPiArCW10a19waHlfdXBkYXRl
X2ZpZWxkKGJhc2UgKyBNSVBJVFhfUExMX0NPTjEsIFJHX0RTSV9QTExfUE9TRElWLCB0eGRpdjAp
Owo+ICsJdXNsZWVwX3JhbmdlKDMwLCA2MCk7Cj4gKwo+ICsJbXRrX3BoeV9zZXRfYml0cyhiYXNl
ICsgTUlQSVRYX1BMTF9DT04xLCBSR19EU0lfUExMX0VOKTsKPiArCXVzbGVlcF9yYW5nZSgzMCwg
NjApOwo+ICsKPiArCXJldHVybiAwOwo+ICt9ClsgLi4uIF0KPiArc3RhdGljIGludCBtdGtfbWlw
aV90eF9wbGxfZGV0ZXJtaW5lX3JhdGUoc3RydWN0IGNsa19odyAqaHcsCj4gKwkJCQkJICBzdHJ1
Y3QgY2xrX3JhdGVfcmVxdWVzdCAqcmVxKQo+ICt7Cj4gKwlyZXEtPnJhdGUgPSBjbGFtcF92YWwo
cmVxLT5yYXRlLCAxMjUwMDAwMDAsIDE2MDAwMDAwMDApOwo+ICsKPiArCXJldHVybiAwOwo+ICt9
Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGNsa19vcHMgbXRrX21pcGlfdHhfcGxsX29wcyA9
IHsKPiArCS5lbmFibGUgPSBtdGtfbWlwaV90eF9wbGxfZW5hYmxlLAo+ICsJLmRpc2FibGUgPSBt
dGtfbWlwaV90eF9wbGxfZGlzYWJsZSwKPiArCS5kZXRlcm1pbmVfcmF0ZSA9IG10a19taXBpX3R4
X3BsbF9kZXRlcm1pbmVfcmF0ZSwKPiArCS5zZXRfcmF0ZSA9IG10a19taXBpX3R4X3BsbF9zZXRf
cmF0ZSwKPiArCS5yZWNhbGNfcmF0ZSA9IG10a19taXBpX3R4X3BsbF9yZWNhbGNfcmF0ZSwKPiAr
fTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjA3MTMxMDIzMjIuMjE3ODItMS1hbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxh
Ym9yYS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
