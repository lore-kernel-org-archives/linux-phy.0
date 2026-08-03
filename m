Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C372DC55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 15:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9u1y4iT6+JCcTw+O8tTERbxx4CbxLu3rU7W2QMK1U2M=; b=b55Ww+pPnCj97v
	Afy5WzgXWDfRCvYMjCCDeTc9G8FaMXnrZn6lwQJpI0F1JncV+Ay7TLKuw07BKiTKfOeH/sY1Y45fj
	DvfLaUvRtBXjbCx3GWQJRLchsQkTpRbzEP9fPXYlUEKw9cBbnj4ckqqxHUo2frpWzLvfWIh3IeMBK
	VR5EKmL9gUW6B3AaVR6PKhbxsfGzLDfhw3HqZuWi2Bqhz5aaJYOQqZjAqFwcLqdC72VSQkD250xuS
	xnzpY+19xpAr3NE5c+DfBasxDcH0N83OJiVgLtjh0iLCOPkwjoYZgtPDmcBnlZKgwQ6bfRddUOBET
	hAlr/SqvCgRweo7IUWQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wquVU-0000000HWFd-25bR;
	Mon, 03 Aug 2026 15:23:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wquVT-0000000HWFU-0Mkn
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 15:23:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BA4C0402EA;
	Mon,  3 Aug 2026 15:23:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42DE41F000E9;
	Mon,  3 Aug 2026 15:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785770590;
	bh=6LKwQHcdexltmkzYB20t3L0TGK8lqWmTeGVDqqMEHrE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HOoCrCNhhIWVAK7SVT5BqyL6pa/xFLQbYFXu+ueynRnrY6KQyaSHUp8X9vxR6qJU9
	 a6Xok5QkRaQjrdkayP+9xPjZgQyW7yHaKWCROuKyvqJ8YZgd32Ekt4a43NCRYed1aj
	 ZGqXJ7ZmECfwxkikQwOQAQtvPJdAWQAScfPGoFff57IyrwmgRGw1ASquOkld7Sb5I4
	 0S8INA0AHesNHcQJg7D4cNA5RngdywpvYUlgtE17p98uX6BcLxEYcpW1RoofULrGaN
	 anR3dORVo28DyiIt9NIy8jZHdi1ibLU+0f/jrJfh+iuneb1q6m6A8SnE3jYnD2p3Dm
	 xnGMIu9yeb59w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: sunplus: fix error handling in sp_uphy_init()
To: "Felix Gu" <ustc.gu@gmail.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260803-sunplus-usb3-v1-1-5a562524c869@gmail.com>
References: <20260803-sunplus-usb3-v1-1-5a562524c869@gmail.com>
Date: Mon, 03 Aug 2026 15:23:09 +0000
Message-Id: <20260803152310.42DE41F000E9@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBLZXJuZWwgcGFuaWMgZHVlIHRvIGRlcmVmZXJlbmNpbmcgYW4gaW52YWxpZCBlcnJv
ciBwb2ludGVyIGZyb20gbnZtZW1fY2VsbF9nZXQuCi0gW01lZGl1bV0gTWVtb3J5IGxlYWsgb2Yg
dGhlIGJ1ZmZlciByZXR1cm5lZCBieSBudm1lbV9jZWxsX3JlYWQuCi0gW01lZGl1bV0gVW52YWxp
ZGF0ZWQgYXJyYXkgYWNjZXNzIG1heSBsZWFkIHRvIGFuIG91dC1vZi1ib3VuZHMgcmVhZC4KLS0K
Ci0tLSBQYXRjaCBbMV06IFtQQVRDSF0gcGh5OiBzdW5wbHVzOiBmaXggZXJyb3IgaGFuZGxpbmcg
aW4gc3BfdXBoeV9pbml0KCkgLS0tCmNvbW1pdCBiYmRjM2ZiOTIxY2IyNjU3NTk4YjYzNzI0NjYw
MzU1ZmQ5NTZiNDU1CkF1dGhvcjogRmVsaXggR3UgPHVzdGMuZ3VAZ21haWwuY29tPgoKcGh5OiBz
dW5wbHVzOiBmaXggZXJyb3IgaGFuZGxpbmcgaW4gc3BfdXBoeV9pbml0KCkKCkZpeGVzIHRoZSBl
cnJvciBwYXRocyBpbiBzcF91cGh5X2luaXQoKSB0byBjb3JyZWN0bHkgdW5kbyBpbml0aWFsaXph
dGlvbgpzdGVwcy4gSXQgcmV0dXJucyBkaXJlY3RseSBpZiBjbG9jayBlbmFibGUgZmFpbHMsIHJl
bGVhc2VzIHRoZSBjbG9jayBpZgpyZXNldCBkZWFzc2VydCBmYWlscywgYW5kIGFzc2VydHMgcmVz
ZXQgYW5kIGNsb2NrIGlmIGRpc2Nvbm5lY3Qgdm9sdGFnZQp1cGRhdGUgZmFpbHMuCgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9zdW5wbHVzL3BoeS1zdW5wbHVzLXVzYjIuYyBiL2RyaXZlcnMv
cGh5L3N1bnBsdXMvcGh5LXN1bnBsdXMtdXNiMi5jCj4gaW5kZXggNjM3YTVmYmFlNmQ5YS4uMGFk
NGM3MTYwZDE3YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9zdW5wbHVzL3BoeS1zdW5wbHVz
LXVzYjIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3N1bnBsdXMvcGh5LXN1bnBsdXMtdXNiMi5jCj4g
QEAgLTEyOSw3ICsxMjksNyBAQCBzdGF0aWMgaW50IHNwX3VwaHlfaW5pdChzdHJ1Y3QgcGh5ICpw
aHkpCj4gIAkvKiBkaXNjb25uZWN0IHZvbHRhZ2UgKi8KPiAgCXJldCA9IHVwZGF0ZV9kaXNjX3Zv
bCh1c2JwaHkpOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQg
YnkgdGhpcyBwYXRjaCwgYnV0IGxvb2tpbmcgYXQgdXBkYXRlX2Rpc2Nfdm9sKCkKY2FsbGVkIGhl
cmUgaW4gZHJpdmVycy9waHkvc3VucGx1cy9waHktc3VucGx1cy11c2IyLmMsIGlzIHRoZXJlIGEg
cG90ZW50aWFsCmRlcmVmZXJlbmNlIG9mIGFuIGludmFsaWQgcG9pbnRlcj8KCklmIG52bWVtX2Nl
bGxfZ2V0KCkgZmFpbHMgYW5kIHJldHVybnMgYW4gZXJyb3IgcG9pbnRlciBvdGhlciB0aGFuCi1F
UFJPQkVfREVGRVIgKHN1Y2ggYXMgLUVOT0VOVCksIG9yIGlmIGl0IHJldHVybnMgTlVMTCwgdGhl
IGNvZGUgZG9lc24ndApyZXR1cm4gZWFybHkuIEl0IGZhbGxzIHRocm91Z2ggYW5kIHBhc3NlcyB0
aGlzIGludmFsaWQgcG9pbnRlciBkaXJlY3RseSB0bwpudm1lbV9jZWxsX3JlYWQoKToKCgljZWxs
ID0gbnZtZW1fY2VsbF9nZXQodXNicGh5LT5kZXYsIGRpc2NfbmFtZSk7CglpZiAoSVNfRVJSX09S
X05VTEwoY2VsbCkpIHsKCQlpZiAoUFRSX0VSUihjZWxsKSA9PSAtRVBST0JFX0RFRkVSKQoJCQly
ZXR1cm4gLUVQUk9CRV9ERUZFUjsKCX0KCglvdHBfdiA9IG52bWVtX2NlbGxfcmVhZChjZWxsLCAm
b3RwX2wpOwoJbnZtZW1fY2VsbF9wdXQoY2VsbCk7CgpXaWxsIHRoaXMgY2F1c2UgYSBwYW5pYyB3
aGVuIG52bWVtX2NlbGxfcmVhZCgpIGF0dGVtcHRzIHRvIGRlcmVmZXJlbmNlIHRoZQpjZWxsIHBv
aW50ZXI/CgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwg
YnV0IGRvZXMgdXBkYXRlX2Rpc2Nfdm9sKCkgbGVhayB0aGUgYnVmZmVyCnJldHVybmVkIGJ5IG52
bWVtX2NlbGxfcmVhZCgpPwoKCW90cF92ID0gbnZtZW1fY2VsbF9yZWFkKGNlbGwsICZvdHBfbCk7
Cgludm1lbV9jZWxsX3B1dChjZWxsKTsKCglpZiAoIUlTX0VSUihvdHBfdikpIHsKCQlzZXQgPSAq
KG90cF92ICsgMSk7CgkJLi4uCgpUaGUgbnZtZW1fY2VsbF9yZWFkKCkgZnVuY3Rpb24gcmV0dXJu
cyBhIGR5bmFtaWNhbGx5IGFsbG9jYXRlZCBidWZmZXIgdGhhdAp0aGUgY2FsbGVyIGlzIHJlc3Bv
bnNpYmxlIGZvciBmcmVlaW5nLiBJdCBhcHBlYXJzIG90cF92IGlzIG5ldmVyIHBhc3NlZCB0bwpr
ZnJlZSgpIGJlZm9yZSB0aGUgZnVuY3Rpb24gcmV0dXJucywgd2hpY2ggd291bGQgcmVzdWx0IGlu
IGEgbWVtb3J5IGxlYWsuCgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhpcyBpcyBhbm90aGVyIHByZS1l
eGlzdGluZyBpc3N1ZSwgYnV0IGNvdWxkIHRoZSBhcnJheSBhY2Nlc3MgaW4KdXBkYXRlX2Rpc2Nf
dm9sKCkgbGVhZCB0byBhbiBvdXQtb2YtYm91bmRzIHJlYWQ/CgoJb3RwX3YgPSBudm1lbV9jZWxs
X3JlYWQoY2VsbCwgJm90cF9sKTsKCW52bWVtX2NlbGxfcHV0KGNlbGwpOwoKCWlmICghSVNfRVJS
KG90cF92KSkgewoJCXNldCA9ICoob3RwX3YgKyAxKTsKClRoZSBzaXplIG9mIHRoZSByZWFkIGJ1
ZmZlciBpcyBwcm92aWRlZCBpbiBvdHBfbC4gSWYgYSBkZXZpY2UgdHJlZQppbmNvcnJlY3RseSBw
cm92aWRlcyBhIDEtYnl0ZSBudm1lbSBjZWxsLCB1bmNvbmRpdGlvbmFsbHkgYWNjZXNzaW5nIHRo
ZQpzZWNvbmQgYnl0ZSBvZiB0aGUgYnVmZmVyIGF0ICoob3RwX3YgKyAxKSB3aXRob3V0IGNoZWNr
aW5nIGlmIG90cF9sIGlzIGF0CmxlYXN0IDIgbWlnaHQgbGVhZCB0byByZWFkaW5nIG91dC1vZi1i
b3VuZHMgbWVtb3J5LgoKPiAgCWlmIChyZXQgPCAwKQo+IC0JCXJldHVybiByZXQ7Cj4gKwkJZ290
byBlcnJfcmVzZXQ7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYwODAzLXN1bnBsdXMtdXNiMy12MS0xLTVhNTYyNTI0Yzg2OUBnbWFp
bC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
