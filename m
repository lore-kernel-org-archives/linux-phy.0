Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C169CD8C92
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 07:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgoMrJ0BAuX1K48MP2xgtKgg+QSJgpgzrDbk06GQKlM=; b=04+r5F1LPX/7dn
	QgmgoYNhmfw2GTtGkR31I7wJ5L1jrYVgDiF5J3skdKplF0/llp3xbpV63ol6ZMfAy4WZsF6rJULLX
	orITRxb8eZir22rK2SFGRhd0x0IElSU2F6atjg90pLpmX/9aQfzuDzHYXbH31TY9dk/XorKlxc7Tm
	I5dv9tQUH7fR3DXSAQTKHDEE3RaWEDMH5Q6FbL2XV7ntWBz8nH9Ijaw9qOZGR3/ec6jmBAvOhJteU
	UxqZlcBP7S5m1LKG3nkILnqimEUuI3JuJ6DpjkZPbBToAjUaZwTdlI6cC/gu5PsHl/nFlrRA+i/PT
	QcB9v6MJodu1dDsCfI1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWUJz-00000002yOK-2zqL;
	Mon, 08 Jun 2026 07:22:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWUJx-00000002yNn-16eG
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 07:22:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 70C1B6001D;
	Mon,  8 Jun 2026 07:22:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D16521F00893;
	Mon,  8 Jun 2026 07:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780903372;
	bh=ziVCRKfQcwfSJt7PbRlTI6G3VcqLUslFQ59UFeIhpqM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TY/M5BqF4GHrjOiIOFolNNGwZYlVYPa6tTB6Y9k0bFHVX1Zvg2b3ov5nNYg0B7dYE
	 FAf+tPDDYOf3P2Td2T2+0PqGrTaSP5stD3Ug4YyxdE3NrFHnuOan2pybwH1pr3e5iv
	 GnVl/87n5CT++3xMdY3t6vKewVOAqmOiTO2w/zs4W2CJDNeNl4FLA1X7GOHjS8Us67
	 K14ahFoBTYQCJwg+G1vpFj0lzj8/4BGBN48U+ucgC0XETe6p9/Z6iZ9tsFOTCEcc5h
	 gG2pQaVCMaSIv692alWkeW860AEb5ec1OKyCaEKuJ3aD+Ixh4ZEfLeiwOUDgXm0rfU
	 /heRGi5lOo5LQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/5] drm/rockchip: cdn-dp: Support handle lane info
 without extcon
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260608070805.88-5-kernel@airkyi.com>
References: <20260608070805.88-5-kernel@airkyi.com>
Date: Mon, 08 Jun 2026 07:22:51 +0000
Message-Id: <20260608072251.D16521F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEluY29ycmVjdCBleHRj
b24gcG9pbnRlciB2YWxpZGF0aW9uIGxvZ2ljIHNraXBzIHZhbGlkIGV4dGNvbiBkZXZpY2VzCi0t
Cgpjb21taXQgYTllMWZmODg3OWE2ODVkNGNmNGFlMDM0OGUxMTAwNGMwM2QxZGM0NgpBdXRob3I6
IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KCmRybS9yb2NrY2hpcDog
Y2RuLWRwOiBTdXBwb3J0IGhhbmRsZSBsYW5lIGluZm8gd2l0aG91dCBleHRjb24KClRoaXMgY29t
bWl0IGFkZHMgc3VwcG9ydCBmb3IgZ2V0dGluZyBQSFkgbGFuZSBpbmZvIHdpdGhvdXQgdGhlIGhl
bHAgb2YgZXh0Y29uCndoZW4gdGhlIFR5cGUtQyBjb250cm9sbGVyIGlzIHByZXNlbnQuIEl0IHVw
ZGF0ZXMgbXVsdGlwbGUgZnVuY3Rpb25zIHRvIHZlcmlmeQp0aGUgZXh0Y29uIGRldmljZSBwb2lu
dGVyIGJlZm9yZSB1c2luZyBpdC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9jZG4tZHAtY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3Jl
LmMKPiBpbmRleCAxNzdlMzA0NDVlZTgzLi45MDY4MTE4ODU5ZTIxIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKClsgLi4uIF0KCj4gQEAgLTExMjEsMTQgKzExMzAs
MTQgQEAgc3RhdGljIGludCBjZG5fZHBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiAgCQkgICAgUFRSX0VSUihwaHkpID09IC1FUFJPQkVfREVGRVIpCj4gIAkJCXJldHVybiAt
RVBST0JFX0RFRkVSOwo+ICAKPiAtCQlpZiAoSVNfRVJSKGV4dGNvbikgfHwgSVNfRVJSKHBoeSkp
Cj4gKwkJaWYgKElTX0VSUihwaHkpIHx8IFBUUl9FUlIoZXh0Y29uKSAhPSAtRU5PREVWKQo+ICAJ
CQljb250aW51ZTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGxvZ2ljIHNraXAgdmFsaWQg
ZXh0Y29uIGRldmljZXM/CgpXaGVuIGV4dGNvbl9nZXRfZWRldl9ieV9waGFuZGxlKCkgcmV0dXJu
cyBhIHZhbGlkIHBvaW50ZXIsIFBUUl9FUlIoZXh0Y29uKQpldmFsdWF0ZXMgdG8gdGhlIHBvaW50
ZXIncyBtZW1vcnkgYWRkcmVzcywgd2hpY2ggd2lsbCBub3QgZXF1YWwgLUVOT0RFVi4KClRoaXMg
Y2F1c2VzIHRoZSBjb25kaXRpb24gdG8gZXZhbHVhdGUgdG8gdHJ1ZSwgZXhlY3V0aW5nIHRoZSBj
b250aW51ZQpzdGF0ZW1lbnQgYW5kIGJ5cGFzc2luZyBpbml0aWFsaXphdGlvbiBmb3IgYm9hcmRz
IHRoYXQgcmVseSBvbiBhIHZhbGlkCmV4dGNvbiBkZXZpY2UuCgo+ICAKPiAgCQlwb3J0ID0gZGV2
bV9remFsbG9jKGRldiwgc2l6ZW9mKCpwb3J0KSwgR0ZQX0tFUk5FTCk7Cj4gIAkJaWYgKCFwb3J0
KQo+ICAJCQlyZXR1cm4gLUVOT01FTTsKPiAgCj4gLQkJcG9ydC0+ZXh0Y29uID0gZXh0Y29uOwo+
ICsJCXBvcnQtPmV4dGNvbiA9IElTX0VSUihleHRjb24pID8gTlVMTCA6IGV4dGNvbjsKPiAgCQlw
b3J0LT5waHkgPSBwaHk7Cj4gIAkJcG9ydC0+ZHAgPSBkcDsKPiAgCQlwb3J0LT5pZCA9IGk7Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNjA4MDcwODA1Ljg4LTEta2VybmVsQGFpcmt5aS5jb20/cGFydD00CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
