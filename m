Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B44A1CD4F39
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 10:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7y8Ctr8qZUyzn6swOuGSGPQSIm+UYv2j1uF6pQ5dZE=; b=ArUbRX3WX2Z9yW
	/NNZDhB2FTYY++FtS1v/K0W07HGj64yiy1E/Jhj0TgZ/Ehok2q6SCNEuO4YK7dEFisU9JdFTg5QTG
	Srm/Bta6nKv/0caZ4YlRNgdXDGOzl8+JN4oO20dX2sAE7/IrVGahnSsihH+7/N08/Pl+o0WJX+fQN
	xIOecfebl83UICLM0dUNC3IRUaBUgXsHaIP4OJqVQA0Kk3XmHiqrVo2qCW4rwn/Ddw8mbqZI4/d/d
	GVn8vXWBbakeSbonEyLxqpKv/z/PzJPqXUZVJ/0mix+9vPMbAHXRGLR4XC8gwgXFgSf/HvPd3wYoE
	0Wtw1+TtxtpeYGzbY97w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNTM2-00000005Clv-1Rn3;
	Thu, 14 May 2026 10:31:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNTM0-00000005Cld-3TrQ
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 10:31:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EFA9860008;
	Thu, 14 May 2026 10:31:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B33BC2BCB8;
	Thu, 14 May 2026 10:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778754703;
	bh=3EBucZADutiLhc0zsK97xEuNM/mj/N1TAOXT7u77wZo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=a6h8orFdggwypf6YVN3RbQQ3SHzDozhvMPa3gGaXtNf9fj8/HOYvvWRir+3lDAYhh
	 jPlsk3vy2nuor2QqEdP5tiK2BfUxgnv5MKyAcdBXzTawdEy4hgV4Y1xXPIHcvo4qM4
	 VkJsHI9G6L/neLY6fIfLzQhXrwlw8igfwSJKf2OtxZDHwo8fGeBoMSd6nnzXDImkyK
	 OyV3zL+OVwllyQ5AQosJ+FZ83JJ9b0wg1CkiLTGALOFJDLj1M2+V3vpXifSzUmUIBS
	 t1v6eT9b6eOPwY8Tt7hewZP3jz6s1EEfuvdBSn7nx9WpdEOcr8dzLcymhrY9M3YBi9
	 xEM/Z+FLZerhw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH phy-next 2/2] phy: ti: add PHY driver for TI DS125DF111
 Dual-Channel Retimer
To: "Ioana Ciornei" <ioana.ciornei@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260513185103.1371809-3-ioana.ciornei@nxp.com>
References: <20260513185103.1371809-3-ioana.ciornei@nxp.com>
Date: Thu, 14 May 2026 10:31:42 +0000
Message-Id: <20260514103143.4B33BC2BCB8@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVW5pbml0aWFsaXpl
ZCBtZW1vcnkgcmVhZCBpbiBgZHMxMjVkZjExMV94bGF0ZWAgZHVlIHRvIG1pc3NpbmcgYGFyZ3Nf
Y291bnRgIHZhbGlkYXRpb24uCi0gW0xvd10gTWlzc2luZyBleHBsaWNpdCBoZWFkZXIgaW5jbHVz
aW9ucyBmb3IgbWFjcm9zIGFuZCBtZW1vcnkgYWxsb2NhdGlvbiBmdW5jdGlvbnMuCi0tCgpjb21t
aXQgYTVkY2YyNDdlMmUyYTZiNzUyZDY2N2FjNDYyMjc5MjVhYTQ3NmRlZgpBdXRob3I6IElvYW5h
IENpb3JuZWkgPGlvYW5hLmNpb3JuZWlAbnhwLmNvbT4KCnBoeTogdGk6IGFkZCBQSFkgZHJpdmVy
IGZvciBUSSBEUzEyNURGMTExIER1YWwtQ2hhbm5lbCBSZXRpbWVyCgpUaGlzIGNvbW1pdCBhZGRz
IGEgZ2VuZXJpYyBQSFkgZHJpdmVyIGZvciB0aGUgVEkgRFMxMjVERjExMSBNdWx0aS1Qcm90b2Nv
bApEdWFsLUNoYW5uZWwgUmV0aW1lciBvdmVyIEkyQy4gSXQgY3VycmVudGx5IHN1cHBvcnRzIDEw
RyBhbmQgMUcgbGluayBzcGVlZHMsCmFuZCByZWdpc3RlcnMgYSBzZXBhcmF0ZSBQSFkgZGV2aWNl
IGZvciBlYWNoIG9mIHRoZSB0d28gY2hhbm5lbHMgdG8gYWxsb3cKaW5kZXBlbmRlbnQgY29uZmln
dXJhdGlvbi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RpL3BoeS1kczEyNWRmMTExLmMg
Yi9kcml2ZXJzL3BoeS90aS9waHktZHMxMjVkZjExMS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiBpbmRleCAwMDAwMDAwMDAwMDAwLi44YWMxMGM2MDNiZjcwCj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL2RyaXZlcnMvcGh5L3RpL3BoeS1kczEyNWRmMTExLmMKPiBAQCAtMCwwICsxLDI0NSBAQAo+
ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICsvKiBDb3B5cmlnaHQgMjAy
NiBOWFAgKi8KPiArCj4gKyNpbmNsdWRlIDxsaW51eC9pMmMuaD4KPiArI2luY2x1ZGUgPGxpbnV4
L2tlcm5lbC5oPgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51
eC9waHkuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3BoeS9waHkuaD4KClRoaXMgaXNuJ3QgYSBidWcs
IGJ1dCBzaG91bGQgdGhpcyBpbmNsdWRlIGxpbnV4L2JpdGZpZWxkLmgsIGxpbnV4L2JpdHMuaCwK
YW5kIGxpbnV4L3NsYWIuaD8KClRoZSBkcml2ZXIgdXNlcyBGSUVMRF9QUkVQKCksIEdFTk1BU0so
KSwgYW5kIGRldm1fa3phbGxvYygpLCBidXQgcmVsaWVzIG9uCmltcGxpY2l0IGluY2x1c2lvbnMg
Zm9yIHRoZXNlIGhlYWRlcnMuIEV4cGxpY2l0bHkgaW5jbHVkaW5nIHRoZW0gY2FuIGhlbHAKcHJl
dmVudCBidWlsZCBicmVha2FnZXMgaWYgdGhlIGluY2x1ZGUgY2hhaW5zIGFyZSByZWZhY3RvcmVk
IGluIHRoZSBmdXR1cmUuCgpbIC4uLiBdCgo+ICtzdGF0aWMgc3RydWN0IHBoeSAqZHMxMjVkZjEx
MV94bGF0ZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gKwkJCQkgICAgY29uc3Qgc3RydWN0IG9mX3Bo
YW5kbGVfYXJncyAqYXJncykKPiArewo+ICsJc3RydWN0IGRzMTI1ZGYxMTFfcHJpdiAqcHJpdiA9
IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ICsJdTMyIGlkeCA9IGFyZ3MtPmFyZ3NbMF07CgpJcyBp
dCBwb3NzaWJsZSB0byByZWFkIHVuaW5pdGlhbGl6ZWQgbWVtb3J5IGhlcmU/CgpJZiBhIGNvbnN1
bWVyJ3MgRGV2aWNlIFRyZWUgcmVmZXJlbmNlIGluY29ycmVjdGx5IGNvbmZpZ3VyZXMgI3BoeS1j
ZWxscyA9IDwwPiwKb2ZfcGFyc2VfcGhhbmRsZV93aXRoX2FyZ3MoKSBzZXRzIGFyZ3MtPmFyZ3Nf
Y291bnQgdG8gMCBhbmQgbGVhdmVzIHRoZQphcmdzIGFycmF5IHVubW9kaWZpZWQuCgpTaW5jZSB0
aGUgb2ZfcGhhbmRsZV9hcmdzIHN0cnVjdHVyZSBpcyBvZnRlbiBhbGxvY2F0ZWQgb24gdGhlIHN0
YWNrLCBmb3IKZXhhbXBsZSBpbiBfb2ZfcGh5X2dldCgpLCBldmFsdWF0aW5nIGFyZ3MtPmFyZ3Nb
MF0gd2l0aG91dCB2ZXJpZnlpbmcgdGhhdAphcmdzLT5hcmdzX2NvdW50ID49IDEgY291bGQgcmVz
dWx0IGluIGV2YWx1YXRpbmcgc3RhY2sgZ2FyYmFnZSBhZ2FpbnN0IHRoZQptYXhpbXVtIGNoYW5u
ZWwgY291bnQuCgo+ICsKPiArCWlmIChpZHggPj0gRFMxMjVERjExMV9OVU1fQ0gpIHsKPiArCQlk
ZXZfZXJyKGRldiwgIk1heGltdW0gbnVtYmVyIG9mIGNoYW5uZWxzIGlzICVkXG4iLAo+ICsJCQlE
UzEyNURGMTExX05VTV9DSCk7Cj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4gKwl9Cj4g
Kwo+ICsJcmV0dXJuIHByaXYtPmNoW2lkeF0ucGh5Owo+ICt9CgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTEzMTg1MTAzLjEzNzE4
MDktMS1pb2FuYS5jaW9ybmVpQG54cC5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
