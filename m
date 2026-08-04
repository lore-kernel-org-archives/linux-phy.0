Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FB35C55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 14:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70mbyRodLxS+E6esFi6sJg9PF9WfwLBGS74bX667u58=; b=IU4tcFneEthiuR
	34aRK9KR3CMTrouqal3wg3VzexmBOuKyBqUPnWq0b8Txb3ZxDKqhmKTteyDWE1oTu7J7c/ZC/Akwg
	2+AykV3xPUxBeCJMCl3+r/mwX7gJn0XczBodPgfUbUPCWBDG1FTpvzccgwEIImBF3/d+bXXup28h3
	D64UOxhYUWVsP2Zheiksw/mqjMIkW5qovXz9yu2UxhlbatZDKJkekXH3v8LD8dMgpbsAu6pu4bPIo
	BDtBqVwwi/V6mEI5pgRyS7v2S+KTV/7SJHgkspGGy3bBTVNRq+FXybDRnERJZHsBHtYXuSersihpb
	ogIUHKzHQwT5zEPB7UMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrG8l-000000025ED-0c45;
	Tue, 04 Aug 2026 14:29:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrG8k-000000025E5-0MaR
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 14:29:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6AF8660A75;
	Tue,  4 Aug 2026 14:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCE8E1F000E9;
	Tue,  4 Aug 2026 14:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785853749;
	bh=8/Qqm7Pq/mzMQaYAlgT2InnyvCnb/MabsurkRuvuyx8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=T8/HhpbOdc1UF8VNIklq7tfTM7RqoIZpqO2ZrkLFOVKJf9ra3950SJ/1w6brQWccG
	 PlggH7yxUR77uxw4RBBMs2ouvlCwUo0OKP7FNakPuNasLUjGF/dbHz19tLm0v1krPQ
	 v2RFR8AxqZ0KjqpU41n5sWOOdY96f+kPjMhTdrfjx8EIxwforwoknFqzfHRrtJxL9O
	 /ICBgamBO8CE+p/GyiBx6IUpwUBt+wErFxSM9+VKJCltLT2mERY6DFaa0ml6+KG2hy
	 UwkgK7o7oCL0+Ec7bRKBo9doXgDEm/46QqYoXADRKFSXzRSa/i6ehIwSSwggzVKcnb
	 SqwPuPpF1WKYg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: sunplus: fix crash when the disc_vol nvmem cell is
 missing
To: "Felix Gu" <ustc.gu@gmail.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260804-sunplus-v1-1-79f52226cb50@gmail.com>
References: <20260804-sunplus-v1-1-79f52226cb50@gmail.com>
Date: Tue, 04 Aug 2026 14:29:07 +0000
Message-Id: <20260804142908.CCE8E1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIGxlbmd0aCBjaGVjayBvbiB0aGUgZHluYW1pY2FsbHkgc2l6ZWQgYnVm
ZmVyIHJldHVybmVkIGJ5IG52bWVtX2NlbGxfcmVhZCgpIGxlYWRzIHRvIGEgaGVhcCBvdXQtb2Yt
Ym91bmRzIHJlYWQgYW5kIHBvdGVudGlhbCBpbmZvcm1hdGlvbiBsZWFrIHRvIE1NSU8uCi0gW0hp
Z2hdIENsb2NrIGFuZCByZXNldCByZXNvdXJjZSBsZWFrIGluIHNwX3VwaHlfaW5pdCgpIGVycm9y
IHBhdGggd2hlbiB1cGRhdGVfZGlzY192b2woKSBmYWlscy4KLS0KCi0tLSBQYXRjaCBbMV06IFtQ
QVRDSF0gcGh5OiBzdW5wbHVzOiBmaXggY3Jhc2ggd2hlbiB0aGUgZGlzY192b2wgbnZtZW0gY2Vs
bCBpcyBtaXNzaW5nIC0tLQpjb21taXQgM2ZmM2VlYzhlYmUzYmQxZGFiMjMyNTI0OGM5ZDY4YzM5
ZGJmNjBkNApBdXRob3I6IEZlbGl4IEd1IDx1c3RjLmd1QGdtYWlsLmNvbT4KCnBoeTogc3VucGx1
czogZml4IGNyYXNoIHdoZW4gdGhlIGRpc2Nfdm9sIG52bWVtIGNlbGwgaXMgbWlzc2luZwoKbnZt
ZW1fY2VsbF9nZXQoKSBjYW4gZmFpbCB3aXRoIGVycm9ycyBvdGhlciB0aGFuIC1FUFJPQkVfREVG
RVIsIGJ1dAp1cGRhdGVfZGlzY192b2woKSBvbmx5IGhhbmRsZWQgLUVQUk9CRV9ERUZFUiBhbmQg
dGhlbiBjYWxsZWQKbnZtZW1fY2VsbF9yZWFkKCkgd2l0aCB0aGUgZXJyb3IgcG9pbnRlciwgY3Jh
c2hpbmcgdGhlIGtlcm5lbC4KCkZhbGwgYmFjayB0byB0aGUgZGVmYXVsdCBkaXNjb25uZWN0IHZv
bHRhZ2Ugb24gYSBmYWlsZWQgY2VsbCBsb29rdXAsCmFuZCBmcmVlIHRoZSBidWZmZXIgcmV0dXJu
ZWQgYnkgbnZtZW1fY2VsbF9yZWFkKCkuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zdW5w
bHVzL3BoeS1zdW5wbHVzLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3N1bnBsdXMvcGh5LXN1bnBsdXMt
dXNiMi5jCj4gaW5kZXggNjM3YTVmYmFlNmQ5YS4uOTQxNDYxMThlOWMyZSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BoeS9zdW5wbHVzL3BoeS1zdW5wbHVzLXVzYjIuYwo+ICsrKyBiL2RyaXZlcnMv
cGh5L3N1bnBsdXMvcGh5LXN1bnBsdXMtdXNiMi5jCj4gQEAgLTgxLDEyICs4MSwxMyBAQCBzdGF0
aWMgaW50IHVwZGF0ZV9kaXNjX3ZvbChzdHJ1Y3Qgc3BfdXNicGh5ICp1c2JwaHkpCj4gIAljaGFy
ICpkaXNjX25hbWUgPSAiZGlzY192b2wiOwo+ICAJc3NpemVfdCBvdHBfbCA9IDA7Cj4gIAljaGFy
ICpvdHBfdjsKPiAtCXUzMiB2YWwsIHNldDsKPiArCXUzMiB2YWwsIHNldCA9IE9UUF9ESVNDX0xF
VkVMX0RFRkFVTFQ7Cj4gIAo+ICAJY2VsbCA9IG52bWVtX2NlbGxfZ2V0KHVzYnBoeS0+ZGV2LCBk
aXNjX25hbWUpOwo+IC0JaWYgKElTX0VSUl9PUl9OVUxMKGNlbGwpKSB7Cj4gKwlpZiAoSVNfRVJS
KGNlbGwpKSB7Cj4gIAkJaWYgKFBUUl9FUlIoY2VsbCkgPT0gLUVQUk9CRV9ERUZFUikKPiAgCQkJ
cmV0dXJuIC1FUFJPQkVfREVGRVI7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcg
aW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgaWYgdXBkYXRlX2Rpc2Nfdm9sKCkKcmV0dXJu
cyAtRVBST0JFX0RFRkVSIGhlcmUsIGRvIHdlIGxlYWsgdGhlIGNsb2NrIGFuZCByZXNldCByZXNv
dXJjZXMgaW4Kc3BfdXBoeV9pbml0KCk/CgpJbiBzcF91cGh5X2luaXQoKToKCglyZXQgPSBjbGtf
cHJlcGFyZV9lbmFibGUodXNicGh5LT5waHlfY2xrKTsKCWlmIChyZXQpCgkJZ290byBlcnJfY2xr
OwoKCXJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQodXNicGh5LT5yc3RjKTsKCWlmIChyZXQp
CgkJZ290byBlcnJfcmVzZXQ7Ci4uLgoJcmV0ID0gdXBkYXRlX2Rpc2Nfdm9sKHVzYnBoeSk7Cglp
ZiAocmV0IDwgMCkKCQlyZXR1cm4gcmV0OwoKSXQgbG9va3MgbGlrZSB0aGlzIHJldHVybnMgZGly
ZWN0bHkgaW5zdGVhZCBvZiByb3V0aW5nIHRvIHRoZSBlcnJfcmVzZXQgYW5kCmVycl9jbGsgY2xl
YW51cCBsYWJlbHMuCgo+ICsJCWdvdG8gb3V0Owo+ICAJfQo+ICAKPiAgCW90cF92ID0gbnZtZW1f
Y2VsbF9yZWFkKGNlbGwsICZvdHBfbCk7Cj4gQEAgLTk2LDExICs5NywxMiBAQCBzdGF0aWMgaW50
IHVwZGF0ZV9kaXNjX3ZvbChzdHJ1Y3Qgc3BfdXNicGh5ICp1c2JwaHkpCj4gIAkJc2V0ID0gKihv
dHBfdiArIDEpOwo+ICAJCXNldCA9IChzZXQgPDwgKHNpemVvZihjaGFyKSAqIDgpKSB8ICpvdHBf
djsKPiAgCQlzZXQgPSAoc2V0ID4+IHVzYnBoeS0+ZGlzY192b2xfYWRkcl9vZmYpICYgSl9ESVND
OwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgaXMg
aXQgc2FmZSB0byB1bmNvbmRpdGlvbmFsbHkgYWNjZXNzIHR3bwpieXRlcyBmcm9tIHRoZSBudm1l
bSBidWZmZXIgd2l0aG91dCBjaGVja2luZyB0aGUgcmV0dXJuZWQgbGVuZ3RoIChvdHBfbCk/CgpU
aGUgbnZtZW1fY2VsbF9yZWFkKCkgZnVuY3Rpb24gZHluYW1pY2FsbHkgYWxsb2NhdGVzIGEgYnVm
ZmVyIHNpemVkIGV4YWN0bHkKdG8gdGhlIGNlbGwncyBieXRlIGNvdW50LiBJZiB0aGUgTlZNRU0g
Y2VsbCBpcyBkZWZpbmVkIGFzIDEgYnl0ZSBpbiB0aGUKZGV2aWNlIHRyZWUsIHdvdWxkbid0ICoo
b3RwX3YgKyAxKSByZXN1bHQgaW4gYSBzbGFiIG91dC1vZi1ib3VuZHMgcmVhZD8KCj4gKwkJaWYg
KHNldCA9PSAwKQo+ICsJCQlzZXQgPSBPVFBfRElTQ19MRVZFTF9ERUZBVUxUOwo+ICsJCWtmcmVl
KG90cF92KTsKPiAgCX0KPiAgCj4gLQlpZiAoSVNfRVJSKG90cF92KSB8fCBzZXQgPT0gMCkKPiAt
CQlzZXQgPSBPVFBfRElTQ19MRVZFTF9ERUZBVUxUOwo+IC0KPiArb3V0Ogo+ICAJdmFsID0gcmVh
ZGwodXNicGh5LT5waHlfcmVncyArIENPTkZJRzcpOwo+ICAJdmFsID0gKHZhbCAmIH5KX0RJU0Mp
IHwgc2V0Owo+ICAJd3JpdGVsKHZhbCwgdXNicGh5LT5waHlfcmVncyArIENPTkZJRzcpOwoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDgwNC1zdW5wbHVzLXYxLTEtNzlmNTIyMjZjYjUwQGdtYWlsLmNvbT9wYXJ0PTEKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
