Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72EE5C35FF3
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 04:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZzSPFZrTMfbGO2x43h2Zv3Fzw0iViSmW/S75JSPX34=; b=kCSUW7SR7bhNQH
	E7xqxL62ZloUvrTBIeOCJv9sqz8/nMUgpxBh4ecXvQ1LKLjPp4Ttb0PCSOBeUV3S4bAxaT0RPZSVF
	Rguwt1RW41dCYPkTg2tnbyX1w0GP85yn+9cA+UQUT358uJGGiRHCpp1dma8cNrLzrCCZKI3KWip2X
	eyS7PW+CSID5ZC0hXlan36F/7+QrdxuHEyHVL9Ws5/QMtdai4nhCWDh85hTkxYDXuJEu3Qg0BeClr
	bL2/ax08l9yremO68FmndcVFLO+mIylGsXc8KLUqylfk4lCFZUf+u20CcIrWpSwxA2+PnIU+7llvB
	3r0LNlr9X7hUUngrIyWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvTqE-0000000Do2Q-3gqO;
	Fri, 21 Mar 2025 04:18:42 +0000
Received: from out-71.smtpout.orange.fr ([193.252.22.71] helo=out.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvTqB-0000000Do1q-2Bh2
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 04:18:41 +0000
Received: from [172.16.82.72] ([124.33.176.97])
	by smtp.orange.fr with ESMTPA
	id vTpqtuCVJpih5vTpvtXDey; Fri, 21 Mar 2025 05:18:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1742530710;
	bh=RfTovQ5pBBPXl/sQntAxGWbDNnwENYAK9Bt2Ch93r58=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=KxUvipl/mBH9mc3/+Jxp2x1493gZQeZOd7O1dWUrPtM6thSRht5eemzsz0bAhoVki
	 UK6CTEtCyIr0B2njVsiL/Rbr4irCB0+2uOw5H+lalCF9jyZTppgCSLooDDJSUxSqiP
	 KLwOa3oQaBRKfU1w7HcWDEh8qDV9uKdiX8SEa3TJYLNcfQMoUqnv/Y+c4nKoVmstXw
	 QtOzdhj2FmatopgmqctXNjsEuD+W5CATzJW4ecmjZKK+YxcyTexp8CHwQ510jgHD3x
	 Q85cTm7l4Tdfae2YGjxEcK0z2m8NKPbDmVd5zGOqFiHSeZzl8e/qDzEFkGwqSLiRK8
	 h/GCI4MlrBSDQ==
X-ME-Helo: [172.16.82.72]
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Fri, 21 Mar 2025 05:18:30 +0100
X-ME-IP: 124.33.176.97
Message-ID: <7805e0db-7c17-438d-9985-f4feec644da6@wanadoo.fr>
Date: Fri, 21 Mar 2025 13:18:18 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: can-transceiver: Re-instate "mux-states" property
 presence check
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Rob Herring <robh@kernel.org>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Marc Kleine-Budde <mkl@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>,
 Aswath Govindraju <a-govindraju@ti.com>,
 Biju Das <biju.das.jz@bp.renesas.com>
References: <3d7e0d723908284e8cf06ad1f7950c03173178f3.1742483710.git.geert+renesas@glider.be>
Content-Language: en-US
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Autocrypt: addr=mailhol.vincent@wanadoo.fr; keydata=
 xjMEZluomRYJKwYBBAHaRw8BAQdAf+/PnQvy9LCWNSJLbhc+AOUsR2cNVonvxhDk/KcW7FvN
 LFZpbmNlbnQgTWFpbGhvbCA8bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI+wrIEExYKAFoC
 GwMFCQp/CJcFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQTtj3AFdOZ/IOV06OKrX+uI
 bbuZwgUCZx41XhgYaGtwczovL2tleXMub3BlbnBncC5vcmcACgkQq1/riG27mcIYiwEAkgKK
 BJ+ANKwhTAAvL1XeApQ+2NNNEwFWzipVAGvTRigA+wUeyB3UQwZrwb7jsQuBXxhk3lL45HF5
 8+y4bQCUCqYGzjgEZx4y8xIKKwYBBAGXVQEFAQEHQJrbYZzu0JG5w8gxE6EtQe6LmxKMqP6E
 yR33sA+BR9pLAwEIB8J+BBgWCgAmFiEE7Y9wBXTmfyDldOjiq1/riG27mcIFAmceMvMCGwwF
 CQPCZwAACgkQq1/riG27mcJU7QEA+LmpFhfQ1aij/L8VzsZwr/S44HCzcz5+jkxnVVQ5LZ4B
 ANOCpYEY+CYrld5XZvM8h2EntNnzxHHuhjfDOQ3MAkEK
In-Reply-To: <3d7e0d723908284e8cf06ad1f7950c03173178f3.1742483710.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_211839_965522_58B7B5B3 
X-CRM114-Status: GOOD (  22.78  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjEvMDMvMjAyNSBhdCAwMDoxNSwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+IE9uIHRo
ZSBSZW5lc2FzIEdyYXkgSGF3ayBTaW5nbGUgZGV2ZWxvcG1lbnQgYm9hcmQ6Cj4gCj4gICAgIGNh
bi10cmFuc2NlaXZlci1waHkgY2FuLXBoeTA6IC9jYW4tcGh5MDogZmFpbGVkIHRvIGdldCBtdXgt
c3RhdGUgKDApCj4gCj4gIm11eC1zdGF0ZXMiIGlzIGFuIG9wdGlvbmFsIHByb3BlcnR5IGZvciBD
QU4gdHJhbnNjZWl2ZXJzLiAgSG93ZXZlciwKPiBtdXhfZ2V0KCkgYWx3YXlzIHByaW50cyBhbiBl
cnJvciBtZXNzYWdlIGluIGNhc2Ugb2YgYW4gZXJyb3IsIGluY2x1ZGluZwo+IHdoZW4gdGhlIHBy
b3BlcnR5IGlzIG5vdCBwcmVzZW50LCBjb25mdXNpbmcgdGhlIHVzZXIuCj4gCj4gRml4IHRoaXMg
YnkgcmUtaW5zdGF0aW5nIHRoZSBwcm9wZXJ0eSBwcmVzZW5jZSBjaGVjayAodGhpcyB0aW1lIHVz
aW5nCj4gdGhlIHByb3BlciBBUEkpIGluIGEgd3JhcHBlciBhcm91bmQgZGV2bV9tdXhfc3RhdGVf
Z2V0KCkuICBXaGVuIHRoZQo+IG11bHRpcGxleGVyIHN1YnN5c3RlbSBnYWlucyBzdXBwb3J0IGZv
ciBvcHRpb25hbCBtdXhlcywgdGhlIHdyYXBwZXIgY2FuCj4ganVzdCBiZSByZW1vdmVkLgo+IAo+
IEluIGFkZGl0aW9uLCBwcm9wYWdhdGUgYWxsIHJlYWwgZXJyb3JzIHVwc3RyZWFtLCBpbnN0ZWFk
IG9mIGlnbm9yaW5nCj4gdGhlbS4KCkkgd291bGQgbGlrZSB0byBoZWFyIFJvYidzIG9waW5pb24g
b24gdGhpcy4gSW4gZDAyZGZkNGNlYjJlOWYzNCBSb2IKcHVycG9zZWx5IGNoYW5nZWQgdGhlIGZ1
bmN0aW9uIHRvIGlnbm9yZSBlcnJvcnMgb3RoZXIgdGhhbiBFUFJPQkVfREVGRVIuCgpSaWdodCBu
b3csIEkgZG8gbm90IHNlZSBhIHJlYXNvbiBub3QgdG8gcHJvcGFnYXRlIHRoZSBvdGhlciBlcnJv
cnMsIHNvCknCoGFtIGluIGZhdm9yIG9mIHRoaXMgcm9sbCBiYWNrLiBCdXQgbWF5YmUgd2UgYXJl
IG1pc3Npbmcgc29tZXRoaW5nPwoKT3RoZXJ3aXNlLCB0aGUgcGF0Y2ggbG9va3MgZ29vZCB0byBt
ZS4gTmljZSBpbXByb3ZlbWVudCBvdmVyIHRoZSB2MS4gSQp3aWxsIHdhaXQgZm9yIFJvYidzIGNv
bW1lbnQgdG8gZ2l2ZSBteSByZXZpZXcgdGFnLgoKPiBGaXhlczogZDAyZGZkNGNlYjJlOWYzNCAo
InBoeTogY2FuLXRyYW5zY2VpdmVyOiBEcm9wIHVubmVjZXNzYXJ5ICJtdXgtc3RhdGVzIiBwcm9w
ZXJ0eSBwcmVzZW5jZSBjaGVjayIpCj4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVu
IDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiAtLS0KPiBBbHRlcm5hdGl2ZWx5LCB0aGUgbXVs
dGlwbGV4ZXIgc3Vic3lzdGVtIG5lZWRzIHRvIGdhaW4gc3VwcG9ydCBmb3IKPiBnZXR0aW5nIGFu
IG9wdGlvbmFsIG11eC4uLgo+IAo+IHYyOgo+ICAgLSBBZGQgYW5kIHVzZSBkZXZtX211eF9zdGF0
ZV9nZXRfb3B0aW9uYWwoKSwKPiAgIC0gTm8gZ2l2ZW4gdGFncyBhZGRlZCwgYXMgdGhlIG5ldyBz
b2x1dGlvbiBpcyBkaWZmZXJlbnQuCj4gLS0tCj4gIGRyaXZlcnMvcGh5L3BoeS1jYW4tdHJhbnNj
ZWl2ZXIuYyB8IDIyICsrKysrKysrKysrKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3BoeS1jYW4tdHJhbnNjZWl2ZXIuYyBiL2RyaXZlcnMvcGh5L3BoeS1jYW4tdHJhbnNjZWl2
ZXIuYwo+IGluZGV4IDJiZWM3MDYxNTQ0OWY5NGQuLmY1OWNhZmY0YjNkNGMyNjcgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9waHkvcGh5LWNhbi10cmFuc2NlaXZlci5jCj4gKysrIGIvZHJpdmVycy9w
aHkvcGh5LWNhbi10cmFuc2NlaXZlci5jCj4gQEAgLTkzLDYgKzkzLDE2IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGNhbl90cmFuc2NlaXZlcl9waHlfaWRzW10gPSB7Cj4gIH07
Cj4gIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGNhbl90cmFuc2NlaXZlcl9waHlfaWRzKTsKPiAg
Cj4gKy8qIFRlbXBvcmFyeSB3cmFwcGVyIHVudGlsIHRoZSBtdWx0aXBsZXhlciBzdWJzeXN0ZW0g
c3VwcG9ydHMgb3B0aW9uYWwgbXV4ZXMgKi8KPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgbXV4X3N0
YXRlICoKPiArZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFsKHN0cnVjdCBkZXZpY2UgKmRldiwg
Y29uc3QgY2hhciAqbXV4X25hbWUpCj4gK3sKPiArCWlmICghb2ZfcHJvcGVydHlfcHJlc2VudChk
ZXYtPm9mX25vZGUsICJtdXgtc3RhdGVzIikpCj4gKwkJcmV0dXJuIE5VTEw7Cj4gKwo+ICsJcmV0
dXJuIGRldm1fbXV4X3N0YXRlX2dldChkZXYsIG11eF9uYW1lKTsKPiArfQo+ICsKPiAgc3RhdGlj
IGludCBjYW5fdHJhbnNjZWl2ZXJfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gIHsKPiAgCXN0cnVjdCBwaHlfcHJvdmlkZXIgKnBoeV9wcm92aWRlcjsKPiBAQCAtMTE0
LDEzICsxMjQsMTEgQEAgc3RhdGljIGludCBjYW5fdHJhbnNjZWl2ZXJfcGh5X3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAltYXRjaCA9IG9mX21hdGNoX25vZGUoY2FuX3Ry
YW5zY2VpdmVyX3BoeV9pZHMsIHBkZXYtPmRldi5vZl9ub2RlKTsKPiAgCWRydmRhdGEgPSBtYXRj
aC0+ZGF0YTsKPiAgCj4gLQltdXhfc3RhdGUgPSBkZXZtX211eF9zdGF0ZV9nZXQoZGV2LCBOVUxM
KTsKPiAtCWlmIChJU19FUlIobXV4X3N0YXRlKSkgewo+IC0JCWlmIChQVFJfRVJSKG11eF9zdGF0
ZSkgPT0gLUVQUk9CRV9ERUZFUik+IC0JCQlyZXR1cm4gUFRSX0VSUihtdXhfc3RhdGUpOwo+IC0J
fSBlbHNlIHsKPiAtCQljYW5fdHJhbnNjZWl2ZXJfcGh5LT5tdXhfc3RhdGUgPSBtdXhfc3RhdGU7
Cj4gLQl9Cj4gKwltdXhfc3RhdGUgPSBkZXZtX211eF9zdGF0ZV9nZXRfb3B0aW9uYWwoZGV2LCBO
VUxMKTsKPiArCWlmIChJU19FUlIobXV4X3N0YXRlKSkKPiArCQlyZXR1cm4gUFRSX0VSUihtdXhf
c3RhdGUpOwo+ICsKPiArCWNhbl90cmFuc2NlaXZlcl9waHktPm11eF9zdGF0ZSA9IG11eF9zdGF0
ZTsKPiAgCj4gIAlwaHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBkZXYtPm9mX25vZGUsCj4gIAkJ
CSAgICAgICZjYW5fdHJhbnNjZWl2ZXJfcGh5X29wcyk7CgpZb3VycyBzaW5jZXJlbHksClZpbmNl
bnQgTWFpbGhvbAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
