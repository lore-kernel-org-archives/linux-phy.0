Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04CAFC624D3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 16:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91pOhznOuayTJljs1W7axPi4EydoITjakBJjj+1dRNg=; b=EM1Vj0HDoFJa0z
	oCifAF5M0PB3WPxlKSCdMCuk5xISrX23Lr2WlI5faw0RtvqqjSdbf69p+8OMt33BGvm3LVE3NoSX/
	GyqGPgY93QHYQCzMxRVTB9rNLd2PvqVlndhNGuKhik8DAYPPbfV6vRp1LDTbHlJ6b19OZDCxzgJpT
	IvXHOLSeDB5YfhiDldracpE1gklTvggBUv2MmN+8uJmCImnpJQ2EzRaUL+y7/H8Jok8R0WG+lZy2R
	PuE0PFKkmhpr02ZY6xxTN0zGywaCKPB2HpcRngQhTZUhQgSK85srfndrEoDLek0HGgvCt4JFEAwqy
	6WcQwjvLa4TPC6SUqanA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1RHe-0000000CefH-2z1L;
	Tue, 01 Sep 2026 16:24:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1RHd-0000000Cef3-1vFB
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 16:24:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 895A3602C2;
	Tue,  1 Sep 2026 16:24:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB4EE1F000E9;
	Tue,  1 Sep 2026 16:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788279864;
	bh=4UDZXTh6iCv0rFf07r29tde1mAL7NZr4a/6nnT9fwTI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LpaO8rBSyHasOXJ6e4yyjYXyOxfQn5Q3hjfEU3owKYQoriSp73sttdTD4oVWoFR5Y
	 xa8wtLI4Smfqia8kBDwP45K8q3IkpMJ0faR8w9Vwyr80OOjWZvKKwcWr+xgViJtnRx
	 he2wAfnIWsmTBP2tDfN/TSWWd7bXNFsQ0BGL7rNXP6oQaFusH1lt/s7a2UdB4EG7gJ
	 yG6mj1ScnF1J7hMgSRl5c3RAmaAdBIxVyHmgwaEMBSsRas3fQ9ccOPKCqCZrVCjSti
	 CyoCOwSB7/Ze5y0msVI64ksw/f1uwJHatznapSFmf0kuZ7gnDZoVVIICW+57K22C6L
	 YNjBqsxfSwzvw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 20/24] scsi: ufs: mediatek: Rework hardware version
 reading
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260901-mt8196-ufs-v11-20-dbd007704490@collabora.com>
References: <20260901-mt8196-ufs-v11-0-dbd007704490@collabora.com>
 <20260901-mt8196-ufs-v11-20-dbd007704490@collabora.com>
Date: Tue, 01 Sep 2026 16:24:23 +0000
Message-Id: <20260901162423.BB4EE1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBJZ25vcmVkIHJldHVybiB2YWx1ZXMgZnJvbSBgdWZzaGNkX2RtZV9nZXRgIGxlYWQg
dG8gdW5pbml0aWFsaXplZCBzdGFjayB2YXJpYWJsZSB1c2FnZS4KLSBbSGlnaF0gTWlzc2luZyBy
ZXR1cm4gdmFsdWUgY2hlY2tzIGZvciBgcGh5X3Bvd2VyX29uYCBhbmQgYHVmc19tdGtfbXBoeV9w
b3dlcl9vbmAuCi0tCgpjb21taXQgYmExMTk3OWUzMDE4NDI4YzBkMTBmZDVlOTM1MzIyOWE4ZGIz
MWFkMApBdXRob3I6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxh
Ym9yYS5jb20+CgpzY3NpOiB1ZnM6IG1lZGlhdGVrOiBSZXdvcmsgaGFyZHdhcmUgdmVyc2lvbiBy
ZWFkaW5nCgpTcGxpdCBhc3NpZ25tZW50IHRvIHRoZSBob3N0IHN0cnVjdCBvdXQgZnJvbSB0aGUg
cmVhZCBmdW5jdGlvbiwgYW5kCnV0aWxpc2UgYml0ZmllbGQgaGVscGVycyB0byBzaW1wbGlmeSB0
aGUgY29kZS4gQWxzbyBtb3ZlIHRoZSBkZWJ1ZyBwcmludApvdXQgb2YgdGhlIGxlZ2FjeSB2ZXJz
aW9uIGhlbHBlciwgd2hpY2ggbWVhbnMgaXQgbm8gbG9uZ2VyIGhhcyB0byB0YWtlIGEKc3RydWN0
IHVmc19oYmEgYXMgYW4gaW5wdXQsIGFuZCBjYW4gYmUgcmV3cml0dGVuIGFzIGEgcHVyZSBmdW5j
dGlvbi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMgYi9k
cml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gaW5kZXggNGU5MTZkNWFjMmFmNy4uZjQw
NWY1MTFmNDFmZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5j
Cj4gKysrIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwpbIC4uLiBdCj4gQEAgLTEy
MzIsNyArMTIyOSwxMSBAQCBzdGF0aWMgaW50IHVmc19tdGtfaW5pdChzdHJ1Y3QgdWZzX2hiYSAq
aGJhKQo+ICAKPiAgCXVmc19tdGtfc2V0dXBfY2xvY2tzKGhiYSwgdHJ1ZSwgUE9TVF9DSEFOR0Up
Owo+ICAKPiAtCXVmc19tdGtfZ2V0X2h3X2lwX3ZlcnNpb24oaGJhKTsKPiArCWhvc3QtPmlwX3Zl
ciA9IHVmc19tdGtfZ2V0X2h3X2lwX3ZlcnNpb24oaGJhKTsKPiArCWhvc3QtPmxlZ2FjeV9pcF92
ZXIgPSB1ZnNfbXRrX2lzX2xlZ2FjeV9jaGlwc2V0KGhvc3QtPmlwX3Zlcik7Cj4gKwo+ICsJZGV2
X2RiZyhoYmEtPmRldiwgIklQIHZlcnNpb24gMHgleCwgbGVnYWN5ID0gJXMiLCBob3N0LT5pcF92
ZXIsCj4gKwkJc3RyX3RydWVfZmFsc2UoaG9zdC0+bGVnYWN5X2lwX3ZlcikpOwo+ICAKPiAgCXJl
dHVybiAwOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlIGFu
ZCB3YXMgbm90IGludHJvZHVjZWQgYnkgdGhlIHBhdGNoIHVuZGVyCnJldmlldywgYnV0IGRvZXMg
dWZzX210a19pbml0KCkgaWdub3JlIHRoZSByZXR1cm4gdmFsdWUgb2YKdWZzX210a19tcGh5X3Bv
d2VyX29uKCkgd2hlbiBpdCBpcyBjYWxsZWQgZWFybGllciBpbiB0aGlzIHNhbWUgZnVuY3Rpb24/
CgpJZiB1ZnNfbXRrX21waHlfcG93ZXJfb24oKSBmYWlscyAoZS5nLiBiZWNhdXNlIHJlZ3VsYXRv
cnMgZmFpbCksIHByb2JlCmNvbnRpbnVlcyBhbmQgZXZlbnR1YWxseSByZXR1cm5zIDAgKHN1Y2Nl
c3MpLiBBdHRlbXB0aW5nIHRvIGNvbW11bmljYXRlCm92ZXIgYW4gdW5wb3dlcmVkIFBIWSBvciBh
Y2Nlc3NpbmcgaXRzIHJlZ2lzdGVycyBjYW4gcmVzdWx0IGluIGFuCmFzeW5jaHJvbm91cyBidXMg
ZmF1bHQsIGRldmljZSB0aW1lb3V0LCBvciBrZXJuZWwgaGFuZy4KCkxvb2tpbmcgYXQgdWZzX210
a19tcGh5X3Bvd2VyX29uKCksIGl0IGFsc28gc2VlbXMgdG8gaWdub3JlIHRoZSBlcnJvciBjb2Rl
CnJldHVybmVkIGJ5IHRoZSBnZW5lcmljIFBIWSBwb3dlci1vbiByb3V0aW5lLCBpbmNvcnJlY3Rs
eSByZXR1cm5pbmcgMAooc3VjY2Vzcykgd2hlbiBwaHlfcG93ZXJfb24obXBoeSkgaXMgY2FsbGVk
OgoKZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYzp1ZnNfbXRrX21waHlfcG93ZXJfb24o
KSB7CiAgICAuLi4KCQlyZXQgPSB1ZnNfbXRrXzA5dl9vbihob3N0KTsKCQlpZiAocmV0KQoJCQly
ZXR1cm4gcmV0OwoJCXBoeV9wb3dlcl9vbihtcGh5KTsKCX0gZWxzZSB7CiAgICAuLi4KfQoKW1Nl
dmVyaXR5OiBIaWdoXQpUaGlzIGlzIGFsc28gYSBwcmUtZXhpc3RpbmcgaXNzdWUgYW5kIHdhcyBu
b3QgaW50cm9kdWNlZCBieSB0aGUgcGF0Y2ggdW5kZXIKcmV2aWV3LCBidXQgZG8gd2UgdXNlIHVu
aW5pdGlhbGl6ZWQgc3RhY2sgdmFyaWFibGVzIGluIHVmc19tdGtfY2ZnX3VuaXByb19jZygpCmFu
ZCB1ZnNfbXRrX3Bvc3RfbGluaygpIGlmIHVmc2hjZF9kbWVfZ2V0KCkgZmFpbHM/CgpJbiB1ZnNf
bXRrX2NmZ191bmlwcm9fY2coKToKCmRyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmM6dWZz
X210a19jZmdfdW5pcHJvX2NnKCkgewogICAgLi4uCgkJdWZzaGNkX2RtZV9nZXQoaGJhLAoJCQkg
ICAgICAgVUlDX0FSR19NSUIoVlNfU0FWRVBPV0VSQ09OVFJPTCksICZ0bXApOwoJCXRtcCA9IHRt
cCB8CgkJICAgICAgKDEgPDwgUlhfU1lNQk9MX0NMS19HQVRFX0VOKSB8CgkJICAgICAgKDEgPDwg
U1lTX0NMS19HQVRFX0VOKSB8CgkJICAgICAgKDEgPDwgVFhfQ0xLX0dBVEVfRU4pOwoJCXVmc2hj
ZF9kbWVfc2V0KGhiYSwKCQkJICAgICAgIFVJQ19BUkdfTUlCKFZTX1NBVkVQT1dFUkNPTlRST0wp
LCB0bXApOwogICAgLi4uCn0KCklmIHVmc2hjZF9kbWVfZ2V0KCkgdGltZXMgb3V0IG9yIGZhaWxz
IGR1ZSB0byBpbnRlcm1pdHRlbnQgbGluayBpc3N1ZXMsIHRtcApyZXRhaW5zIHN0YWNrIGdhcmJh
Z2UuIE1vZGlmeWluZyBhbmQgd3JpdGluZyB0aGlzIGdhcmJhZ2UgYmFjayB0bwpWU19TQVZFUE9X
RVJDT05UUk9MIGNhbiBjb3JydXB0IHRoZSBVRlMgY29uZmlndXJhdGlvbiwgYnJlYWsgdGhlIGxp
bmssIG9yCmhhbmcgdGhlIGJ1cy4KCkEgc2ltaWxhciBpc3N1ZSBhcHBlYXJzIGluIHVmc19tdGtf
cG9zdF9saW5rKCk6Cgpkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jOnVmc19tdGtfcG9z
dF9saW5rKCkgewogICAgLi4uCgkJdWZzaGNkX2RtZV9nZXQoaGJhLCBVSUNfQVJHX01JQihWU19E
RUJVR09NQyksICZ0bXApOwoJCXRtcCB8PSAweDEwMDsKCQl1ZnNoY2RfZG1lX3NldChoYmEsIFVJ
Q19BUkdfTUlCKFZTX0RFQlVHT01DKSwgdG1wKTsKICAgIC4uLgp9CgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTAxLW10ODE5Ni11
ZnMtdjExLTAtZGJkMDA3NzA0NDkwQGNvbGxhYm9yYS5jb20/cGFydD0yMAoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
