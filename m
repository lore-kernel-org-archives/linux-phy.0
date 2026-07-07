Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C47FC44501
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 16:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSj3P14qkM5GDmSCCssXpb9ZsimyUIy7DcOdoatS4QE=; b=jzHuHBK4aKzpg1
	42CCLaloEouFtV+SHXzDes0FaFf+2MmCAZ3FZJXIEQ3vj6DwpYln1JEGKfSdp5Xb2HK6rHTjrOiN5
	71vaNH40/tp9mjM1tSu08BQWrPfzxPaO5/ykLOMHSHW2yv26L34gA6J+z+ex/Y/iKB0R3i12jv4XZ
	cFB9w7go2dsa98ZyfolmAnnU0Ynd9j/1xeCtqAemnDrjNFCh4bFLbYP8RU6JH0o0IgjqGayPtP8LL
	OPewSQeSjoIXHYZtYfBEEJRhC9iGK/hoJxbMecFB1ifU2ZIImZi4jpyY2iUOpDJBdrQN2uSNez3qv
	0w3SSsejSVL3LI2Or6ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8IH-0000000FQJg-17QF;
	Tue, 07 Jul 2026 16:05:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8IG-0000000FQJN-0ep7
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 16:05:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E514A43B63;
	Tue,  7 Jul 2026 16:05:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4759F1F000E9;
	Tue,  7 Jul 2026 16:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783440307;
	bh=Yk477um1jH80e2Sz/rztfnvHOzSQ3sa8se5sclGoQO8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N27ifRur+LVxsYEgdJukVVfAeuFJKBOIhjFEmFTn1j8Z6758ckNJPn9My/oPTfdy1
	 Fw6Jey/VmGqn953p95DNjxCnSS4GEQMdtYMI0fcvIsBF7XmlAUvh/HXfEuo2WVyQDT
	 AoJcS8d0zgFd2SBnD5vvGzm2BnoJW/qiBqk2na8zG6J4yC628cI+8MSjPrShid3f/y
	 c+dRRMb8Hx1nXfAH26jTwf5LCv3o+gOwsf2SZ6pubUSMA3eAWR9bXXFftpfAxf2yyi
	 kynIBHHpCqRgvfMJ6bNS7A0Qk9SiQFJ58OHjCsMq4V0LNQUyXs5e3oDLi+q8Prb2rE
	 zGTSYTE1J1b6Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 12/12] phy: phy-mtk-dp: Add support for MT8196 eDP
 PHY
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260707154245.198361-13-angelogioacchino.delregno@collabora.com>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-13-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 16:05:06 +0000
Message-Id: <20260707160507.4759F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgTlVMTCBj
aGVjayBmb3IgdGhlIHJlc3VsdCBvZiBgZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRldilgIGJlZm9y
ZSBkZXJlZmVyZW5jaW5nIGl0LgotLQoKLS0tIFBhdGNoIFsxMl06IFtQQVRDSCB2MyAxMi8xMl0g
cGh5OiBwaHktbXRrLWRwOiBBZGQgc3VwcG9ydCBmb3IgTVQ4MTk2IGVEUCBQSFkgLS0tCmNvbW1p
dCAxNzFjYWRmZjk2NWE0MWI3YWJhOGQ4MWZiYjYwNjIyZjJhOGUxYTk3CkF1dGhvcjogQW5nZWxv
R2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3Jh
LmNvbT4KCnBoeTogcGh5LW10ay1kcDogQWRkIHN1cHBvcnQgZm9yIE1UODE5NiBlRFAgUEhZCgpU
aGUgTVQ4MTk2IFNvQyBmZWF0dXJlcyBhbiB1cGRhdGVkIFBIWSBJUCBjb21wYXJlZCB0byB0aGUg
b2xkZXIKb25lcywgYW5kIHRoZXJlIGlzIG9uZSB0aGF0IGlzIHNwZWNpZmljIHRvIEVtYmVkZGVk
IERpc3BsYXlQb3J0LgpUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIHRoZSBlRFAgUEhZIGZv
dW5kIGluIHRoZSBNZWRpYVRlayBNVDgxOTYgU29DCmFuZCBhbGwgb2YgaXRzIHZhcmlhbnRzLgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jIGIvZHJpdmVy
cy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jCj4gaW5kZXggZjVhYWRjNWZkYzQyYy4uNWRlY2My
OWM3N2NiMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMK
PiArKysgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMKClsgLi4uIF0KCj4gQEAg
LTgwNSw4ICs4MzgsMzkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfZHBfcGh5X3BkYXRhIG10
ODE5NV9kcF9waHlfZGF0YSA9IHsKPiAgCX0sCj4gIH07Cj4gIAo+ICtzdGF0aWMgY29uc3Qgc3Ry
dWN0IG10a19kcF9waHlfcGRhdGEgbXQ4MTk2X2VkcF9waHlfZGF0YSA9IHsKPiArCS5vZmZfYW5h
X2dsYiA9IDB4NDAwLAoKWyAuLi4gXQoKPiArCS5kcml2aW5nX3BhcmFtcyA9IChjb25zdCB1MzJb
XSkgewo+ICsJCVswXSA9IDAsCj4gKwkJWzFdID0gMCwKPiArCQlbMl0gPSAwLAo+ICsJCVszXSA9
IE1UODE5Nl9EUklWSU5HX1BBUkFNXzNfREVGQVVMVCwKPiArCQlbNF0gPSBNVDgxOTZfRFJJVklO
R19QQVJBTV80X0RFRkFVTFQsCj4gKwkJWzVdID0gTVQ4MTk2X0RSSVZJTkdfUEFSQU1fNV9ERUZB
VUxULAo+ICsJCVs2XSA9IE1UODE5Nl9EUklWSU5HX1BBUkFNXzZfREVGQVVMVCwKPiArCQlbN10g
PSBNVDgxOTZfRFJJVklOR19QQVJBTV83X0RFRkFVTFQsCj4gKwkJWzhdID0gTVQ4MTk2X0RSSVZJ
TkdfUEFSQU1fOF9ERUZBVUxUCj4gKwl9LAo+ICt9Owo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgbXRrX2RwX3BoeV9vZl9tYXRjaFtdID0gewo+ICAJeyAuY29tcGF0aWJs
ZSA9ICJtZWRpYXRlayxtdDgxOTUtZHAtcGh5IiwgLmRhdGEgPSAmbXQ4MTk1X2RwX3BoeV9kYXRh
IH0sCj4gKwl7IC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE5Ni1lZHAtcGh5IiwgLmRhdGEg
PSAmbXQ4MTk2X2VkcF9waHlfZGF0YSB9LAo+ICAJeyAvKiBzZW50aW5lbCAqLyB9Cj4gIH07Cgpb
U2V2ZXJpdHk6IEhpZ2hdCklmIHRoZSBkcml2ZXIgaXMgZm9yY2VmdWxseSBib3VuZCB0byBhIGRl
dmljZSB2aWEgdGhlIHN5c2ZzIGJpbmQgaW50ZXJmYWNlLAphbmQgdGhlIGRldmljZSBoYXMgYW4g
b2Zfbm9kZSBidXQgaXRzIGNvbXBhdGlibGUgc3RyaW5nIGRvZXMgbm90IG1hdGNoIGFueQplbnRy
eSBpbiB0aGUgZHJpdmVyJ3Mgb2ZfbWF0Y2hfdGFibGUsIGRldmljZV9nZXRfbWF0Y2hfZGF0YShk
ZXYpIHdpbGwgcmV0dXJuCk5VTEwuCgpUaGlzIE5VTEwgcG9pbnRlciBpcyBzdG9yZWQgaW4gZHBf
cGh5LT5wZGF0YToKCmRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYzptdGtfZHBfcGh5
X3Byb2JlKCkgewogICAgLi4uCglkcF9waHktPnBkYXRhID0gZGV2aWNlX2dldF9tYXRjaF9kYXRh
KGRldik7CgoJaWYgKElTX1JFQUNIQUJMRShDT05GSUdfTlZNRU0pKSB7CgkJcmV0ID0gbXRrX2Rw
X3BoeV9nZXRfY2FsaWJyYXRpb25fZGF0YShkcF9waHkpOwogICAgLi4uCn0KCkFuZCBpcyB1bmNv
bmRpdGlvbmFsbHkgZGVyZWZlcmVuY2VkIGhlcmU6Cgpkcml2ZXJzL3BoeS9tZWRpYXRlay9waHkt
bXRrLWRwLmM6bXRrX2RwX3BoeV9nZXRfZGVmYXVsdF9jYWxfZGF0YSgpIHsKICAgIC4uLgoJY29u
c3Qgc3RydWN0IG10a19kcF9waHlfcGRhdGEgKnBkYXRhID0gZHBfcGh5LT5wZGF0YTsKCWludCBp
OwoKCWRwX3BoeS0+YW5hX2JpYXNfciA9IHBkYXRhLT5hbmFfYmlhc19yOwogICAgLi4uCn0KClNo
b3VsZCBkZXZpY2VfZ2V0X21hdGNoX2RhdGEoKSBiZSBjaGVja2VkIGZvciBOVUxMIGJlZm9yZSBj
b250aW51aW5nIGluCm10a19kcF9waHlfcHJvYmUoKSB0byBwcmV2ZW50IGEgcG90ZW50aWFsIGtl
cm5lbCBwYW5pYz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjA3MDcxNTQyNDUuMTk4MzYxLTEtYW5nZWxvZ2lvYWNjaGluby5kZWxy
ZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9MTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
