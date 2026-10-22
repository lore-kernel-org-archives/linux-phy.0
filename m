Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A82860A2612
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 16:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=daDFLH13;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Afwv45BL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=grNQZ2/E5uOnunmbyhLfEO35K1KIhHjl2lMmEjcaGcw=; b=daDFLH13f+GJ7Y+vEPE58BA4RR
	yz0VkrBb+Eegd3wkoZ+nlKMFrARwBNk71QNRdJal9Dq82/HJMZzb1Ecv2WXa3GTxDGFe6hS3XTYvc
	agK+q/HcUxs+mu2dbgsQNfFsbj4Eq8KE1jJ+dWk9x9ad5TPN0/srs/UEq9Fc5p1CUCrXaCf/Ei16F
	AUplTA5CAaWK4Lf+cQcvx7gXVmmPs1xVyJ4DifGw2ySita5PpvmdL73hSdgKh6p5Q3vWh0ce0VW/4
	2WDkU5Ws6Mypeyx4cBDXRzh0of5XIn0dO+0DGxuCR6rY+qzVnwKZmGOSkqqBlXYobAKa6X16UcW43
	vuxIjM9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJvPw-0000000ET7t-40ul;
	Thu, 22 Oct 2026 16:13:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJvPu-0000000ET7f-30Kc
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 16:13:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2DA4D6143B;
	Thu, 22 Oct 2026 16:13:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1864B1F01825;
	Thu, 22 Oct 2026 16:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792685601;
	bh=GtKmJl/OJ/zPWcGlJb7z095B9CDlkr6N8ZsDc0Umj/8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Afwv45BLfRoSr/LCrzMnPN3xbKsL2w/uyhEtITWPCaulCVh8UBat7G40qWb0JYMGI
	 v74DGov8B2TPueBokXcwe/KHtpSnjt6FKEI54NLUDzKI9/pM36CiKryA4f+60O5WEl
	 DPX+0Y5aTkrbEMEWqCplJiNKRaIW3IEio/HUaH7xJX7lvU1JQmXPqYxsKGiV5mvRHX
	 DkCO4Kx1DFAe4wW2KSuyQlE5SaI68rbSXsUeXzUyF9R6SifUwma2+Y99cONGUlvNzC
	 GOptXuteDueNqnnxojDyyB7/IjzMI46Hrw4HiN47Ene1WnP+MHHY/A4c0tNIf9yIhE
	 +Rl3VOVO34a/A==
Message-ID: <sashiko-outbox-181786@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 22/27] phy: rockchip-naneng-combphy: Add RK3572 support
To: "Cunhao Lu" <1579567540@qq.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, lee@kernel.org
In-Reply-To: <20261022-add-board-ok3572-c-v1-22-0b0fd85a31ee@qq.com>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-22-0b0fd85a31ee@qq.com>
Date: Thu, 22 Oct 2026 16:13:20 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiByb2NrY2hp
cC1uYW5lbmctY29tYnBoeTogd3JpdGVsKCkgY2xvYmJlcnMgU1NDIGJpdCBpbiByazM1NzJfY29t
YnBoeV9jZmcoKQotLQoKY29tbWl0IDljYTM2YTY4ZTJlYmQ0MWVlN2UxMjZmYWVhZTY4YWFlNGZh
MDVlYWUKQXV0aG9yOiBDdW5oYW8gTHUgPDE1Nzk1Njc1NDBAcXEuY29tPgoKcGh5OiByb2NrY2hp
cC1uYW5lbmctY29tYnBoeTogQWRkIFJLMzU3MiBzdXBwb3J0CgpUaGlzIGNvbW1pdCBhZGRzIGNv
bmZpZ3VyYXRpb24gdGFibGVzLCByZWdpc3RlciBwcm9ncmFtbWluZywgYW5kIGRldmljZSB0cmVl
Cm1hdGNoaW5nIHN1cHBvcnQgZm9yIHRoZSBSSzM1NzIgY29tYm8gUEhZIG9wZXJhdGluZyBpbiBQ
Q0llLCBVU0IzLCBhbmQgU0FUQQptb2Rlcy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jIGIvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMKPiBpbmRleCA3ODQzMzU2YTRkZDQ3Li5l
MTNhNzhhYjU3Nzc5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1uYW5lbmctY29tYnBoeS5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLW5hbmVuZy1jb21icGh5LmMKPiBAQCAtMTAwMCw2ICsxMDAwLDIwNCBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfY2ZnIHJrMzU2OF9jb21icGh5X2NmZ3MgPSB7
Cj4gIAkuY29tYnBoeV9jZmcJPSByazM1NjhfY29tYnBoeV9jZmcsCj4gIH07Cj4gIAo+ICtzdGF0
aWMgaW50IHJrMzU3Ml9jb21icGh5X2NmZyhzdHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeV9wcml2ICpw
cml2KQo+ICt7CgpbIC4uLiBdCgo+ICsJc3dpdGNoIChyYXRlKSB7Cj4gKwljYXNlIDI0MDAwMDAw
Ogo+ICsJCXJvY2tjaGlwX2NvbWJwaHlfcGFyYW1fd3JpdGUocHJpdi0+cGh5X2dyZiwgJmNmZy0+
cGlwZV9jbGtfMjRtLCB0cnVlKTsKPiArCQlpZiAocHJpdi0+dHlwZSA9PSBQSFlfVFlQRV9VU0Iz
IHx8IHByaXYtPnR5cGUgPT0gUEhZX1RZUEVfU0FUQSkgewo+ICsJCQkvKiBTZXQgc3NjX2NudFs5
OjBdPTAxMDExMTExMDEgJiAzMS41S0h6ICovCj4gKwkJCXJvY2tjaGlwX2NvbWJwaHlfdXBkYXRl
bChwcml2LCBHRU5NQVNLKDcsIDYpLCBCSVQoNiksIDB4ZSA8PCAyKTsKPiArCj4gKwkJCXJvY2tj
aGlwX2NvbWJwaHlfdXBkYXRlbChwcml2LCBHRU5NQVNLKDcsIDApLCAweDVmLCAweGYgPDwgMik7
Cj4gKwkJfSBlbHNlIGlmIChwcml2LT50eXBlID09IFBIWV9UWVBFX1BDSUUpIHsKPiArCQkJLyog
UExMIEtWQ08gdHVuaW5nIGZpbmUgKi8KPiArCQkJcm9ja2NoaXBfY29tYnBoeV91cGRhdGVsKHBy
aXYsIEdFTk1BU0soNCwgMiksIDB4NCA8PCAyLCAweDIwIDw8IDIpOwoKWyAuLi4gXQoKPiArCWlm
IChwcml2LT5leHRfcmVmY2xrKSB7Cj4gKwkJcm9ja2NoaXBfY29tYnBoeV9wYXJhbV93cml0ZShw
cml2LT5waHlfZ3JmLCAmY2ZnLT5waXBlX2Nsa19leHQsIHRydWUpOwo+ICsJCWlmIChwcml2LT50
eXBlID09IFBIWV9UWVBFX1BDSUUgJiYgcmF0ZSA9PSAxMDAwMDAwMDApIHsKPiArCQkJd3JpdGVs
KDB4MTAsIHByaXYtPm1taW8gKyAoMHgyMCA8PCAyKSk7Cj4gKwo+ICsJCQl3cml0ZWwoMHgwYywg
cHJpdi0+bW1pbyArICgweDFiIDw8IDIpKTsKPiArCj4gKwkJCS8qCj4gKwkJCSAqIFNldCB1cCBz
dV90cmltOiBUM19QMSA2NTBtdgo+ICsJCQkgKiBDS1JDViB0ZXJtaW5hdGlvbiByZXNpc3RvciBh
ZGp1c3QgMTE6IEhpLVoKPiArCQkJICovCj4gKwkJCXdyaXRlbCgweDkwLCBwcml2LT5tbWlvICsg
KDB4YSA8PCAyKSk7Cj4gKwkJCXdyaXRlbCgweDQzLCBwcml2LT5tbWlvICsgKDB4YiA8PCAyKSk7
Cj4gKwkJCXdyaXRlbCgweGI4LCBwcml2LT5tbWlvICsgKDB4YyA8PCAyKSk7Cj4gKwkJCXdyaXRl
bCgweDU2LCBwcml2LT5tbWlvICsgKDB4ZCA8PCAyKSk7Cj4gKwkJfQo+ICsJfQo+ICsKPiArCWlm
IChwcml2LT5lbmFibGVfc3NjKSB7Cj4gKwkJcm9ja2NoaXBfY29tYnBoeV91cGRhdGVsKHByaXYs
IEdFTk1BU0soNCwgNCksIEJJVCg0KSwgMHg3IDw8IDIpOwo+ICsJCS8qIFBMTCBjb250cm9sIFNT
QyBtb2R1bGUgcGVyaW9kIHNob3VsZCBiZSBzZXQgKi8KPiArCQlyb2NrY2hpcF9jb21icGh5X3Vw
ZGF0ZWwocHJpdiwgR0VOTUFTSyg1LCA1KSwgQklUKDUpLCAweDIwIDw8IDIpOwo+ICsKPiArCQlp
ZiAocHJpdi0+dHlwZSA9PSBQSFlfVFlQRV9QQ0lFICYmIHJhdGUgPT0gMjQwMDAwMDApIHsKPiAr
CQkJLyogeGluMjRtIFQwXzEgNjUwbVYgKi8KPiArCQkJd3JpdGVsKDB4MDAsIHByaXYtPm1taW8g
KyAoMHgxMCA8PCAyKSk7Cj4gKwkJCXdyaXRlbCgweDMyLCBwcml2LT5tbWlvICsgKDB4MTEgPDwg
MikpOwo+ICsJCQl3cml0ZWwoMHgwMCwgcHJpdi0+bW1pbyArICgweDFiIDw8IDIpKTsKPiArCQkJ
d3JpdGVsKDB4OTAsIHByaXYtPm1taW8gKyAoMHgwYSA8PCAyKSk7Cj4gKwkJCXdyaXRlbCgweDAy
LCBwcml2LT5tbWlvICsgKDB4MGIgPDwgMikpOwo+ICsJCQl3cml0ZWwoMHgwOCwgcHJpdi0+bW1p
byArICgweDBjIDw8IDIpKTsKPiArCQkJd3JpdGVsKDB4NTcsIHByaXYtPm1taW8gKyAoMHgwZCA8
PCAyKSk7Cj4gKwkJCXdyaXRlbCgweDQwLCBwcml2LT5tbWlvICsgKDB4MGUgPDwgMikpOwo+ICsJ
CQl3cml0ZWwoMHg1ZiwgcHJpdi0+bW1pbyArICgweDBmIDw8IDIpKTsKPiArCQkJd3JpdGVsKDB4
MTAsIHByaXYtPm1taW8gKyAoMHgyMCA8PCAyKSk7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyB0
aGlzIHdyaXRlbCgweDEwLCBwcml2LT5tbWlvICsgKDB4MjAgPDwgMikpIGluIHJrMzU3Ml9jb21i
cGh5X2NmZygpCmNsb2JiZXIgdGhlIFNTQyBwZXJpb2QgY29udHJvbCBiaXQgdGhhdCB3YXMganVz
dCBzZXQgYWJvdmU/CgpXaGVuIHByaXYtPmVuYWJsZV9zc2MgaXMgdHJ1ZSwgcmszNTcyX2NvbWJw
aHlfY2ZnKCkgc2V0cyBCSVQoNSkgaW4gcmVnaXN0ZXIKb2Zmc2V0IDB4MjAgPDwgMiB2aWEgcm9j
a2NoaXBfY29tYnBoeV91cGRhdGVsKCkuIEltbWVkaWF0ZWx5IGFmdGVyd2FyZHMsIHdoZW4KcHJp
di0+dHlwZSA9PSBQSFlfVFlQRV9QQ0lFIGFuZCByYXRlID09IDI0MDAwMDAwLCB0aGlzIHdyaXRl
bCgpIG92ZXJ3cml0ZXMgdGhlCmVudGlyZSByZWdpc3RlciBhdCAweDIwIDw8IDIgd2l0aCAweDEw
LCBjbGVhcmluZyBCSVQoNSkgYmFjayB0byAwLgoKU2hvdWxkIGJvdGggdGhpcyB3cml0ZSBhbmQg
dGhlIHdyaXRlbCgweDEwLCBwcml2LT5tbWlvICsgKDB4MjAgPDwgMikpIGluIHRoZQpwcml2LT5l
eHRfcmVmY2xrIGJsb2NrIGFib3ZlIHVzZSByb2NrY2hpcF9jb21icGh5X3VwZGF0ZWwoKSB3aXRo
IEdFTk1BU0soNCwgMikKaW5zdGVhZCwgbWF0Y2hpbmcgaG93IHRoZSAyNCBNSHogYW5kIDEwMCBN
SHogUEhZX1RZUEVfUENJRSBjYXNlcyB1cGRhdGUgdGhlClBMTCBLVkNPIHR1bmluZyBmaWVsZCBl
YXJsaWVyIGluIHJrMzU3Ml9jb21icGh5X2NmZygpPwoKWyAuLi4gXQoKPgoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAyMi1hZGQt
Ym9hcmQtb2szNTcyLWMtdjEtMC0wYjBmZDg1YTMxZWVAcXEuY29tP3BhcnQ9MjIKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
