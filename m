Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0682EC88E7F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oDwgEg+sMuw8avRMTkrT4FVLiO+Yz35NbZ+HiGErSA=; b=VsJc0o/ftsLZ31
	P+rxAOoME50/XlFOIbjqSmbMm7MBcLUjQ28SYZaQrdbv13xuq6hKABw9klNKWLs5uXg0WOcveX7LJ
	k5uPcVZ3zr9idbK5a6iJNt7WXOkVnCAHl/8bncj7We+3FrHmpJS/DNSPtWcLDS09YOCj1E12czSEB
	x30YleKJcucHFEt4PjUHbDkdIgavebDZMkq/F/0YaZhxb1WYZYKtiR2ZeL1k/Rh356bg4M+KpTnte
	Xqx9vtz+BdDiE9/8GfcR3V7NtLF5acF9+yps1+NLNbmqpmqtO4cQI+np7gCqFDy57ODZsyxHrJGwH
	19/3azCetyVrMzcSoyyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VJ8-00000007GMy-2pOr;
	Tue, 15 Sep 2026 15:42:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VJ7-00000007GMg-1Fie
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:42:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BD0EC600C8;
	Tue, 15 Sep 2026 15:42:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C34F1F000FF;
	Tue, 15 Sep 2026 15:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486972;
	bh=ccSY9K9uxYM1oSI+gBiTsIbZc/U86mLwcFMnuY4QCwg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gTytRoDVAFEtRuf5n1yWftyVuhg/Eh1T9+kAOIFDBGYIsZ0he7wduUL1I8eA18Cwx
	 q52H3R4CaLFXrkOMA0lUa6s1CeW4KCScCBz0m5TVwaVIrSedWT7SmmyH4WywBtlPX+
	 pmhyaFiExWZhVz0AGltnLBNYoIZnSmbSkqEhtEDOWQZhFOWcl7QSOyacNpqoHKchKF
	 dS6izIBSKzk8WdG2tzqOLWt2mMXEpOxgy4W5JGmW/jYRUIj7HqGDp6TItzCDpsCh2m
	 X6tTCywXIVNG5nvMLJvZjvCMl84WE8nftEbKMBt1JcebwiCF+FSF5xm8KW93Jj42Ku
	 CuISanhpZV1ZA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 16/20] phy: Add common Innosilicon HDMI PHY helpers
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: linux-clk@vger.kernel.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org, lee@kernel.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org
In-Reply-To: <20260915-jh7110-clean-send-v4-16-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153242eucas1p1394a6a5e272f106b9cab2a0f709ddeb8@eucas1p1.samsung.com>
 <20260915-jh7110-clean-send-v4-16-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:42:51 +0000
Message-Id: <20260915154252.0C34F1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogZGl2aXNpb24g
YnkgemVybyBrZXJuZWwgcGFuaWMgaW4gcmVjYWxjX3JhdGUoKSBvbiByZWdpc3RlciByZWFkIGZh
aWx1cmUKLS0KCmNvbW1pdCA1NDNlNWQwMGQ5ZTA3OTgyOWY0YWQ0N2RlMDUyNDhjMTI3ZjgxZDFj
CkF1dGhvcjogTWljaGFsIFdpbGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1zdW5nLmNvbT4KCnBo
eTogQWRkIGNvbW1vbiBJbm5vc2lsaWNvbiBIRE1JIFBIWSBoZWxwZXJzCgpUaGlzIGNvbW1pdCBh
ZGRzIGEgY29tbW9uIGxpYnJhcnkgZm9yIHRoZSBJbm5vc2lsaWNvbiBIRE1JIFBIWSBJUCwgd2hp
Y2gKaXMgdXNlZCBieSBzZXZlcmFsIFNvQ3MuIEl0IGV4dHJhY3RzIHRoZSBwcmUtUExMIGNvbmZp
Z3VyYXRpb24gdGFibGUKZm9ybWF0LCBsb29rdXBzLCBhbmQgY2xvY2sgcmF0ZSBoZWxwZXJzIGlu
dG8gc2hhcmVkIGNvZGUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktaW5uby1oZG1p
LmMgYi9kcml2ZXJzL3BoeS9waHktaW5uby1oZG1pLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
IGluZGV4IDAwMDAwMDAwMDAwMDAuLjc3ZTc0NWE4N2QyMmIKPiAtLS0gL2Rldi9udWxsCj4gKysr
IGIvZHJpdmVycy9waHkvcGh5LWlubm8taGRtaS5jCgpbIC4uLiBdCgo+ICt1bnNpZ25lZCBsb25n
Cj4gK2lubm9faGRtaV9waHlfcHJlX3BsbF9yZWNhbGNfcmF0ZShjb25zdCBzdHJ1Y3QgaW5ub19o
ZG1pX3BoeV9wcmVfcGxsICpwbGwsCj4gKwkJCQkgIHVuc2lnbmVkIGxvbmcgcGFyZW50X3JhdGUp
Cj4gK3sKPiArCXU4IG5kLCBub19hLCBub19iLCBub19kOwo+ICsJdW5zaWduZWQgbG9uZyBmcmFj
LCByYXRlOwo+ICsJdTY0IHZjbywgdmNvX3JhdGU7Cj4gKwl1MTYgbmY7Cj4gKwo+ICsJbmQgPSBp
bm5vX3JlYWQocGxsLCBJTk5PX1BSRV9QTExfRElWXzEpICYgSU5OT19QUkVfUExMX1BSRV9ESVZf
TUFTSzsKPiArCW5mID0gKGlubm9fcmVhZChwbGwsIElOTk9fUFJFX1BMTF9ESVZfMikgJgo+ICsJ
ICAgICAgSU5OT19QUkVfUExMX0ZCX0RJVl8xMV84X01BU0spIDw8IDg7Cj4gKwluZiB8PSBpbm5v
X3JlYWQocGxsLCBJTk5PX1BSRV9QTExfRElWXzMpOwo+ICsJdmNvID0gcGFyZW50X3JhdGUgKiBu
ZjsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRv
ZXMgdGhpcyBjb2RlIGNhdXNlIGFuIGludGVnZXIgb3ZlcmZsb3cKb24gMzItYml0IGFyY2hpdGVj
dHVyZXM/CgpXaGVuIGlubm9faGRtaV9waHlfcHJlX3BsbF9yZWNhbGNfcmF0ZSgpIGV4ZWN1dGVz
LCBwYXJlbnRfcmF0ZSAqIG5mCm11bHRpcGxpZXMgdHdvIDMyLWJpdCBpbnRlZ2Vycywgd2hpY2gg
Y291bGQgc2lsZW50bHkgb3ZlcmZsb3cgYmVmb3JlCmFzc2lnbm1lbnQgdG8gdGhlIDY0LWJpdCB2
Y28gdmFyaWFibGUuCgo+ICsKPiArCWlmICghKGlubm9fcmVhZChwbGwsIElOTk9fUFJFX1BMTF9E
SVZfMikgJgo+ICsJICAgICAgSU5OT19QUkVfUExMX0ZSQUNfRElWX0RJU0FCTEUpKSB7Cj4gKwkJ
ZnJhYyA9IGlubm9fcmVhZChwbGwsIElOTk9fUFJFX1BMTF9GUkFDX0RJVl83XzApIHwKPiArCQkg
ICAgICAgKGlubm9fcmVhZChwbGwsIElOTk9fUFJFX1BMTF9GUkFDX0RJVl8xNV84KSA8PCA4KSB8
Cj4gKwkJICAgICAgIChpbm5vX3JlYWQocGxsLCBJTk5PX1BSRV9QTExfRlJBQ19ESVZfMjNfMTYp
IDw8IDE2KTsKPiArCQl2Y28gKz0gRElWX1JPVU5EX0NMT1NFU1QocGFyZW50X3JhdGUgKiBmcmFj
LAo+ICsJCQkJCSBCSVQoSU5OT19GUkFDX0RJVl9XSURUSCkpOwoKW1NldmVyaXR5OiBIaWdoXQpU
aGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IGRvZXMgcGFyZW50
X3JhdGUgKiBmcmFjCmFsc28gbWFzc2l2ZWx5IG92ZXJmbG93IGJlZm9yZSByb3VuZGluZyBvbiAz
Mi1iaXQgc3lzdGVtcz8KClNpbmNlIHBhcmVudF9yYXRlIGlzIHR5cGljYWxseSAyNE1IeiBhbmQg
ZnJhYyBpcyBhIDI0LWJpdCBkaXZpZGVyLCB0aGVpcgpwcm9kdWN0IGV4Y2VlZHMgdGhlIDMyLWJp
dCBtYXhpbXVtLiBUaGlzIGNhdXNlcyBzaWxlbnQgdHJ1bmNhdGlvbiBhbmQgbGVhZHMKdG8gY29t
cGxldGVseSBpbmNvcnJlY3QgY2FsY3VsYXRlZCBWQ08gcmF0ZXMuCgo+ICsJfQo+ICsKPiArCXZj
b19yYXRlID0gdmNvOwo+ICsKPiArCWlmIChpbm5vX3JlYWQocGxsLCBJTk5PX1BSRV9QTExfQ09O
VFJPTCkgJiBJTk5PX1BDTEtfVkNPX0RJVl81X01BU0spIHsKPiArCQlkb19kaXYodmNvLCBuZCAq
IDUpOwoKW1NldmVyaXR5OiBIaWdoXQpDYW4gdGhpcyByZXN1bHQgaW4gYSBkaXZpc2lvbiBieSB6
ZXJvIGtlcm5lbCBwYW5pYz8KCmlubm9fcmVhZCgpIHJldHVybnMgMCBpZiByZWdtYXBfcmVhZCgp
IGZhaWxzLiBJZiBuZCBldmFsdWF0ZXMgdG8gMCBkdWUgdG8KYW4gdW5pbml0aWFsaXplZCByZWdp
c3RlciBvciBhIHJlYWQgZmFpbHVyZSwgdGhlIGRlbm9taW5hdG9yIGJlY29tZXMgMC4KCj4gKwl9
IGVsc2Ugewo+ICsJCW5vX2EgPSBpbm5vX3JlYWQocGxsLCBJTk5PX1BDTEtfRElWX0FCKSAmIElO
Tk9fUENMS19ESVZfQV9NQVNLOwo+ICsJCW5vX2IgPSBGSUVMRF9HRVQoSU5OT19QQ0xLX0RJVl9C
X01BU0ssCj4gKwkJCQkgaW5ub19yZWFkKHBsbCwgSU5OT19QQ0xLX0RJVl9BQikpICsgMjsKPiAr
CQlub19kID0gaW5ub19yZWFkKHBsbCwgSU5OT19QQ0xLX0RJVl9DRCkgJiBJTk5PX1BDTEtfRElW
X0RfTUFTSzsKPiArCj4gKwkJZG9fZGl2KHZjbywgbmQgKiAobm9fYSA9PSAxID8gbm9fYiA6IG5v
X2EpICogbm9fZCAqIDIpOwoKW1NldmVyaXR5OiBIaWdoXQpDb3VsZCB0aGlzIGFsc28gdHJpZ2dl
ciBhIGRpdmlzaW9uIGJ5IHplcm8gY3Jhc2g/CgpJZiBuZCwgbm9fYSwgb3Igbm9fZCBldmFsdWF0
ZXMgdG8gMCBkdWUgdG8gcmVhZCBmYWlsdXJlcywgdGhlIGRlbm9taW5hdG9yCmJlY29tZXMgMC4K
ClRoZSBsZWdhY3kgUkszMjI4IGRyaXZlciBndWFyZGVkIGFnYWluc3Qgbm9fYSBiZWluZyAwIHdp
dGggYW4gZXhwbGljaXQKY2hlY2sgKGlmICghbm9fYSkgbm9fYSA9IDE7KSwgYnV0IGl0IGFwcGVh
cnMgdGhpcyBwcm90ZWN0aW9uIHdhcyByZW1vdmVkCndoZW4gY3JlYXRpbmcgdGhpcyBzaGFyZWQg
Y29kZS4KCj4gKwl9Cj4gKwo+ICsJcmF0ZSA9IERJVl9ST1VORF9DTE9TRVNUKCh1bnNpZ25lZCBs
b25nKXZjbywgMTAwMCkgKiAxMDAwOwoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNS1qaDcxMTAtY2xlYW4tc2Vu
ZC12NC0wLWYwZTRmZDZmMmNjOEBzYW1zdW5nLmNvbT9wYXJ0PTE2CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
