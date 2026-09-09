Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AE22C79FAA
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 07:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5I/3k+UIh+jX2RPnjtbGzq57DYna1qVa9fzEoU5BzI=; b=XD2Be8tv2b+vYd
	+xFEE5Od+B6l63pDj7jNpJ56h4pRp+57LSiR9M0LSYT2szGoYfvLSr8Tyjzp2Z8kBK8f+baCbzyD8
	UYaR49JJdQv4pkyz1tqCjz8MbDpsMJy7P8SH5wArinTNrMKxkTdwKJ8EomE7ONnsVytjosBztJc/S
	B4A/GAvq58jzQnnzdw/TJo6ws69Qb4v855uG/PwJmcKDl7Sn88n9xPKeyFlh8ujmno3zmsotgRqgg
	DcX2K/gEaubRs7nkZizgQM+geRPMfT414s89KfwAeqiBR3F8dmW2HM+Zh977ZfInDGrzFNpyUzYgv
	FC4XDAvkdgsFuf/7ugsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4D4F-0000000B1iu-3pGl;
	Wed, 09 Sep 2026 07:50:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4D4E-0000000B1iT-3YUz
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 07:50:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1760440937;
	Wed,  9 Sep 2026 07:50:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8F511F00A3A;
	Wed,  9 Sep 2026 07:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788940202;
	bh=tFiS6PtJDB+tdoVRAxcZAbZDOvowamoHaenAhpOzI/Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=T/ROcGQ31AiJhvirGu6tbN1vkHNW6LQC42hvbYwheinYEXHgcZrb5VbKHj4I/nsJ4
	 8ZxN2f2bFehNP/HMdpt7CSLIy93Ni39CU4SEYGL8cKxg9NCoiCqtBrbyQ1BNvKDJU+
	 FKe6LItn3Jgwo4xD69Ou254tlQhJkVgwy1Zau9Y9fYTizIhARUgd5lM8SKQBqVHmJ7
	 dO0AJ94IVOz7/RX9XP0yWN0YrXLYmcUoPCG8zwjNPAKKTbDZ1ptb7AjIIUf83zYRq7
	 O2O54h9gYambCj7C/nCOtPfRBEC34u//sXnkMKQ1RxI1mWTL+U7BsFrj99oBq4jaUV
	 I/yG5uv5NGFyw==
Date: Wed, 9 Sep 2026 09:49:54 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
	kishon@kernel.org, rogerq@ti.com, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, zhongling0719@126.com
Subject: Re: [PATCH v6 2/4] phy: ti: pipe3: Fix clock resource leak on probe
 errors
Message-ID: <wfrsq66kmpd2hrfaub5ywe64pzahj2r3ns7mmyhwt75n2mwiwu@6ddlpgoo6emc>
References: <20260619030214.1779043-1-zenghongling@kylinos.cn>
 <20260619030214.1779043-3-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260619030214.1779043-3-zenghongling@kylinos.cn>
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

T24gRnJpLCBKdW4gMTksIDIwMjYgYXQgMTE6MDI6MTJBTSArMDgwMCwgSG9uZ2xpbmcgWmVuZyB3
cm90ZToKPiBXaGVuIGRldm1fcGh5X2NyZWF0ZSgpIG9yIGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3Jl
Z2lzdGVyKCkgZmFpbHMsCj4gdGhlIHJlZmNsayB0aGF0IHdhcyBlbmFibGVkIGVhcmxpZXIgaXMg
bm90IGRpc2FibGVkLCBjYXVzaW5nIGEKPiByZXNvdXJjZSBsZWFrLgo+IAo+IEZpeCB0aGlzIGJ5
IGFkZGluZyBhbiBlcnJvciBoYW5kbGluZyBwYXRoIHRvIGRpc2FibGUgdGhlIGNsb2NrCj4gd2hl
biB0aGVzZSBmdW5jdGlvbnMgZmFpbC4KPiAKPiBGaXhlczogMjM0NzM4ZWEzMzkwICgicGh5OiB0
aS1waXBlMzogbW92ZSBjbGsgaW5pdGlhbGl6YXRpb24gdG8gYSBzZXBhcmF0ZSBmdW5jdGlvbiIp
Cj4gU2lnbmVkLW9mZi1ieTogSG9uZ2xpbmcgWmVuZyA8emVuZ2hvbmdsaW5nQGt5bGlub3MuY24+
Cj4gCj4gLS0tCj4gIENoYW5nZSBpbiB2MjoKPiAgIC1BZGQgcG1fcnVudGltZV9kaXNhYmxlKCkg
aW4gZXJyb3IgcGF0aCAocmVwb3J0ZWQgYnkgU2FzaGlrbyBBSSkuCj4gLS0tCj4gIGNoYW5nZSBp
biB2MzoKPiAgIC1GaXggdW5iYWxhbmNlZCBjbG9jayBkaXNhYmxlIGJ5IGNoZWNraW5nIGNsa19w
cmVwYXJlX2VuYWJsZSgpcmV0dXJuIHZhbHVlIGFuZAo+IHNldHRpbmcgc2F0YV9yZWZjbGtfZW5h
YmxlZG9ubHkgb24gc3VjY2Vzcy4KPiAgIC1GaXggZXJyb3IgcGF0aCB0ZWFyZG93biBvcmRlciB0
byBtYXRjaCB0aV9waXBlM19yZW1vdmUoKShkaXNhYmxlIGNsb2NrIGJlZm9yZQo+IGRpc2FibGlu
ZyBydW50aW1lIFBNKS4KPiAtLS0KPiAgY2hhbmdlIGluIHY0Ogo+ICAgLUZpeCB0aGUgcGF0Y2gg
dmVyc2lvbgo+IC0tLQo+IENoYW5nZSBpbiB2NToKPiAgIC1BZGQgRml4IGlnbm9yZWQgY2xvY2sg
ZW5hYmxlIHJldHVybiB2YWx1ZSBpbiBpbml0IHBhdGNoCj4gLS0tCj4gQ2hhbmdlIGluIHY2Ogo+
ICAtRml4IGFsbCBjbG9jayBsZWFrIHBhdGhzIGNvbXByZWhlbnNpdmVseToKPiAgLVBDSWUgc3lz
Y29uIHVwZGF0ZSBmYWlsdXJlIHBhdGgKPiAgLVNBVEEgRFBMTCBsb2NrIGNoZWNrIHBhdGggKGFs
c28gZml4IGluY29ycmVjdCByZXR1cm4gbG9naWMpCj4gIC1TQVRBIGVycmF0YSBwYXRoIGluIHRp
X3BpcGUzX2V4aXQoKQo+IC0tLQo+ICBkcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYyB8IDI2
ICsrKysrKysrKysrKysrKysrKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90aS9w
aHktdGktcGlwZTMuYyBiL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBlMy5jCj4gaW5kZXggYjhj
MDU1ODkzNzQyLi4yZDM2ZmU0YzQyMTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvdGkvcGh5
LXRpLXBpcGUzLmMKPiArKysgYi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwo+IEBAIC04
MzQsMjEgKzgzNCwzOSBAQCBzdGF0aWMgaW50IHRpX3BpcGUzX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4gIAkgKi8KPiAgCWlmIChwaHktPm1vZGUgPT0gUElQRTNfTU9ERV9T
QVRBKSB7Cj4gIAkJaWYgKCFJU19FUlIocGh5LT5yZWZjbGspKSB7Cj4gLQkJCWNsa19wcmVwYXJl
X2VuYWJsZShwaHktPnJlZmNsayk7Cj4gKwkJCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShwaHkt
PnJlZmNsayk7Cj4gKwkJCWlmIChyZXQpIHsKPiArCQkJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRv
IGVuYWJsZSByZWZjbGsgJWRcbiIsIHJldCk7Cj4gKwkJCQlnb3RvIGVycl9wbV9kaXNhYmxlOwo+
ICsJCQl9Cj4gIAkJCXBoeS0+c2F0YV9yZWZjbGtfZW5hYmxlZCA9IHRydWU7Cj4gIAkJfQo+ICAJ
fQo+ICAKPiAgCWdlbmVyaWNfcGh5ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgTlVMTCwgJm9wcyk7
Cj4gLQlpZiAoSVNfRVJSKGdlbmVyaWNfcGh5KSkKPiAtCQlyZXR1cm4gUFRSX0VSUihnZW5lcmlj
X3BoeSk7Cj4gKwlpZiAoSVNfRVJSKGdlbmVyaWNfcGh5KSkgewo+ICsJCXJldCA9IFBUUl9FUlIo
Z2VuZXJpY19waHkpOwo+ICsJCWdvdG8gZXJyX2Nsa19kaXNhYmxlOwo+ICsJfQo+ICAKPiAgCXBo
eV9zZXRfZHJ2ZGF0YShnZW5lcmljX3BoeSwgcGh5KTsKPiAgCj4gIAl0aV9waXBlM19wb3dlcl9v
ZmYoZ2VuZXJpY19waHkpOwo+ICAKPiAgCXBoeV9wcm92aWRlciA9IGRldm1fb2ZfcGh5X3Byb3Zp
ZGVyX3JlZ2lzdGVyKGRldiwgb2ZfcGh5X3NpbXBsZV94bGF0ZSk7Cj4gLQlyZXR1cm4gUFRSX0VS
Ul9PUl9aRVJPKHBoeV9wcm92aWRlcik7Cj4gKwlpZiAoSVNfRVJSKHBoeV9wcm92aWRlcikpIHsK
PiArCQlyZXQgPSBQVFJfRVJSKHBoeV9wcm92aWRlcik7Cj4gKwkJZ290byBlcnJfY2xrX2Rpc2Fi
bGU7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gKwo+ICtlcnJfY2xrX2Rpc2FibGU6Cj4gKwlp
ZiAocGh5LT5zYXRhX3JlZmNsa19lbmFibGVkICYmICFJU19FUlIocGh5LT5yZWZjbGspKQoKJyFJ
U19FUlIocGh5LT5yZWZjbGspJyBjaGVjayBpcyByZWR1bmRhbnQgc2luY2UgdGhlICdwaHktPnNh
dGFfcmVmY2xrX2VuYWJsZWQnCmZsYWcgaXMgc2V0IG9ubHkgd2hlbiByZWZjbGsgaXMgdmFsaWQu
IAoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
