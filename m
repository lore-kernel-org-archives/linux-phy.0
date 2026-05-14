Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 864EDCD37AC
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 02:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HV4SSpn4Yij5Wcs71LRblBk63iLiMJKv1cj1+yvA574=; b=kLSK6UcExDIsmO
	0cEPX28RAGmF/W+YRpRpWB6VpoH/JhfJrWg7My0/UI73cbisLi3V5gm02nyhQhPRTQVQ33tF2i+nY
	T5IwBcQVNYyUqF0/HhaE2AVI+mT5tCd7LpnP8ItZFr6aOw91AjLrOdC1FFfiO36maaRTGaG4bUeJq
	DhTgy9IcAq56VUZZXW24DQitRGWGVZG4uNeqNC2hKZOZBIc8hTJTniQk1xCVswh9OMlrGTuxxWl4/
	1boaelugqFslbHU//froBJBug2SKAalnQnhBA9z1LBFtr4Zmva2G6lxWTdyZWP3UWVRBP8NS4GKW7
	rLyz5W7FAGx10saMZ0GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNLWY-00000004Kxx-0Ay9;
	Thu, 14 May 2026 02:10:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNLWV-00000004Kxb-33rR
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 02:10:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C2EF6600AE;
	Thu, 14 May 2026 02:10:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41093C19425;
	Thu, 14 May 2026 02:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778724602;
	bh=DyA8uv6EDdJZXj2cS8GHZF7ecGSXNgEeL1Dq9RyG4Y0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=CdZ/LUGxq716+nz9tYmyn2bXtEn3WHJrw8O3esGCKAnJ5k4J1XSd9UPkiCK/Vw5/n
	 VzTeXLkcYGrdZScAfU3DkpAdegbHTcHbG/fOPmsOx+F7qOdVwbyEGdrmqhhnBOmuZX
	 lBdZBFRW2+jks0wF9U1kmkzFBx0gkquGAn0+XH+tHXePmGHlb6rw7QJlAZ92+dGq8V
	 Oh4NPjJshvDEP6HbW+hUDgk1V+ozPAXS1/V3o9i2FwKyXBytDbMxID5wrGnDaEL1CG
	 9YNltwIZ/IKyMCA+v7TS/pQWpPtPWAhv86PAmHMyfK+ku9v0079UrtVosxdKDjUuau
	 c9TTpxa2JtXhw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: ti: pipe3: Fix clock resource leak on probe errors
To: "Hongling Zeng" <zenghongling@kylinos.cn>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260513063902.113956-1-zenghongling@kylinos.cn>
References: <20260513063902.113956-1-zenghongling@kylinos.cn>
Date: Thu, 14 May 2026 02:10:01 +0000
Message-Id: <20260514021002.41093C19425@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgcG1fcnVu
dGltZV9kaXNhYmxlKCkgaW4gdGhlIHByb2JlIGVycm9yIHBhdGggbGVhdmVzIFBNIHJ1bnRpbWUg
c3RhdGUgdW5iYWxhbmNlZC4KLS0KCmNvbW1pdCBmZDA0ZTZiZDAzNjQwMmJmMTcwYTdmZjc5Nzhi
OTVmMTQ3OGJmZDdiCkF1dGhvcjogSG9uZ2xpbmcgWmVuZyA8emVuZ2hvbmdsaW5nQGt5bGlub3Mu
Y24+CgpwaHk6IHRpOiBwaXBlMzogRml4IGNsb2NrIHJlc291cmNlIGxlYWsgb24gcHJvYmUgZXJy
b3JzCgpUaGlzIGNvbW1pdCBhZGRyZXNzZXMgYSBjbG9jayByZXNvdXJjZSBsZWFrIGluIHRoZSBw
cm9iZSBlcnJvciBwYXRoIG9mIHRoZQpUSSBQSVBFMyBQSFkgZHJpdmVyLiBJdCBhZGRzIGFuIGVy
cl9jbGtfZGlzYWJsZSBsYWJlbCB0byBlbnN1cmUgdGhlIHJlZmVyZW5jZQpjbG9jayBpcyBkaXNh
YmxlZCBpZiBQSFkgY3JlYXRpb24gb3IgcHJvdmlkZXIgcmVnaXN0cmF0aW9uIGZhaWxzLgoKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMgYi9kcml2ZXJzL3BoeS90
aS9waHktdGktcGlwZTMuYwo+IGluZGV4IGI1NTQzYjVjNjc0YzguLjI5YTRjYmU3Mzc4MTIgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKPiArKysgYi9kcml2ZXJz
L3BoeS90aS9waHktdGktcGlwZTMuYwo+IEBAIC04MzcsMTUgKzgzNywyNyBAQCBzdGF0aWMgaW50
IHRpX3BpcGUzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCgpbIC4uLiBdCgo+
ICAJcGh5X3Byb3ZpZGVyID0gZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0ZXIoZGV2LCBvZl9w
aHlfc2ltcGxlX3hsYXRlKTsKPiAtCXJldHVybiBQVFJfRVJSX09SX1pFUk8ocGh5X3Byb3ZpZGVy
KTsKPiArCWlmIChJU19FUlIocGh5X3Byb3ZpZGVyKSkgewo+ICsJCXJldCA9IFBUUl9FUlIocGh5
X3Byb3ZpZGVyKTsKPiArCQlnb3RvIGVycl9jbGtfZGlzYWJsZTsKPiArCX0KPiArCj4gKwlyZXR1
cm4gMDsKPiArCj4gK2Vycl9jbGtfZGlzYWJsZToKPiArCWlmIChwaHktPnNhdGFfcmVmY2xrX2Vu
YWJsZWQpCj4gKwkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBoeS0+cmVmY2xrKTsKPiArCXJldHVy
biByZXQ7CgpEb2VzIHRoaXMgbmV3IGVycm9yIHBhdGggbGVhdmUgdGhlIHBvd2VyIG1hbmFnZW1l
bnQgcnVudGltZSBzdGF0ZSB1bmJhbGFuY2VkPwoKRWFybGllciBpbiB0aV9waXBlM19wcm9iZSgp
LCBwbV9ydW50aW1lX2VuYWJsZShkZXYpIGlzIGNhbGxlZC4gV2l0aG91dCBhCmNvcnJlc3BvbmRp
bmcgcG1fcnVudGltZV9kaXNhYmxlKCkgY2FsbCBpbiB0aGlzIGVycm9yIHBhdGgsIGl0IGxvb2tz
IGxpa2UKdGhlIGRldmljZSdzIHBvd2VyIG1hbmFnZW1lbnQgcnVudGltZSBzdGF0ZSBpcyBsZWZ0
IHVuYmFsYW5jZWQsIHdoaWNoIGNhbgp0cmlnZ2VyIGEgd2FybmluZyBvbiBzdWJzZXF1ZW50IHBy
b2JlIHJldHJpZXMuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYwNTEzMDYzOTAyLjExMzk1Ni0xLXplbmdob25nbGluZ0BreWxpbm9z
LmNuP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
