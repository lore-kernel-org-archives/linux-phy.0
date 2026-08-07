Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9E9CC5AC7A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 13:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8IPuTb+tZS7MiWm2PtpgYJIA69ODGdaxtzyl8DwnvCQ=; b=BlbwuzvolF2gxl
	6Ngry/f7tP5o+ZKilQO13OKFklkuWoi1aigRCzZBG19S/RZzNIgfzywxCNREAc03Twpgwhi3vTbK4
	GItZ1bVswKPmOFI6aSTBA6FqK9HkhPMvBMjLfs8R7sA5fIv07X/cDsYxV1JAPMHbghjT6EgkqUBRP
	uu2pEkpzcsq9zjJ99sA27iZC+Taz0twuyAf2rfkpuoHRGc0msXxpuXrFw+LTiJivNdBFPBRyZNHwc
	vtgOVHOyptFExjYseQiaCW7dZ1ZS4N6aoAWn3cJKXkTNeBM9I07qIp9MQW21B+pPJw3IdOUhWVeET
	+VtMuSMGtRdnCxBVsF6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKgl-000000088wO-0xty;
	Fri, 07 Aug 2026 13:32:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKgk-000000088wB-0u7D
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 13:32:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F30D84361C;
	Fri,  7 Aug 2026 13:32:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BAEF1F00A3A;
	Fri,  7 Aug 2026 13:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786109561;
	bh=slcIugf8Zr77nA3jcKGcP1Z9+b3KkUA9GeATOWrm3RA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jceTpp57/0qOaBoC5ZTiLHZxgzZoTdr28StUlBGrZ57QFyKVL5NaTkfVRwrpdZuEw
	 Hbbfcqvx3loIu8417pb2vqobBgekN/Pu5pHAgDALfC7zu9lHZnQEG3IHmzkV38iiUL
	 ogCG1DWr3KsA1CTfZ/RUmAlNahnjP109/UrJ8SIZVlcV76MxOpCxk++fDWnZbo8xi8
	 ZNp65MsxwpxWCwiIiY22TkiQdmrSRwd/X97FneJmNdX7lFs1oGI/2LXddkabMpsQJN
	 KUVNNyvQcQ4YJFy8JpcZKeg7mQnpd6sSr6s6d5c7xCyEmCLvW9kKcIONmT66WJTWOj
	 wr/FKnVqj8Rog==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] phy: sunplus: fix memory leak in
 update_disc_vol()
To: "Felix Gu" <ustc.gu@gmail.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260807-sunplus-v2-1-d5379c664dfc@gmail.com>
References: <20260807-sunplus-v2-0-d5379c664dfc@gmail.com>
 <20260807-sunplus-v2-1-d5379c664dfc@gmail.com>
Date: Fri, 07 Aug 2026 13:32:40 +0000
Message-Id: <20260807133241.7BAEF1F00A3A@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIGJvdW5kcyBjaGVjayBvbiB0aGUgYnVmZmVyIHJldHVybmVkIGJ5IGBu
dm1lbV9jZWxsX3JlYWRgLgotIFtIaWdoXSBDbG9jayBhbmQgcmVzZXQgY29udHJvbCByZXNvdXJj
ZXMgbGVhayBvbiB0aGUgZXJyb3IgcGF0aCBvZiBgc3BfdXBoeV9pbml0YC4KLS0KCi0tLSBQYXRj
aCBbMV06IFtQQVRDSCB2MiAxLzJdIHBoeTogc3VucGx1czogZml4IG1lbW9yeSBsZWFrIGluIHVw
ZGF0ZV9kaXNjX3ZvbCgpIC0tLQpjb21taXQgM2UzZjg4NmUzMDMyMDU1ZGZiZGMwMDEzNDZkMzYz
N2MwYTgwYjE5ZApBdXRob3I6IEZlbGl4IEd1IDx1c3RjLmd1QGdtYWlsLmNvbT4KCnBoeTogc3Vu
cGx1czogZml4IG1lbW9yeSBsZWFrIGluIHVwZGF0ZV9kaXNjX3ZvbCgpCgpudm1lbV9jZWxsX3Jl
YWQoKSByZXR1cm5zIGEga21hbGxvYydkIGJ1ZmZlciB0aGF0IHVwZGF0ZV9kaXNjX3ZvbCgpCm5l
dmVyIGZyZWVkLiBGcmVlIGl0IGFmdGVyIGV4dHJhY3RpbmcgdGhlIGRpc2Nvbm5lY3Qtdm9sdGFn
ZSB2YWx1ZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3N1bnBsdXMvcGh5LXN1bnBsdXMt
dXNiMi5jIGIvZHJpdmVycy9waHkvc3VucGx1cy9waHktc3VucGx1cy11c2IyLmMKPiBpbmRleCA2
MzdhNWZiYWU2ZDlhLi44NDIwODdiZGZiYTUzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3N1
bnBsdXMvcGh5LXN1bnBsdXMtdXNiMi5jCj4gKysrIGIvZHJpdmVycy9waHkvc3VucGx1cy9waHkt
c3VucGx1cy11c2IyLmMKPiBAQCAtODEsNyArODEsNyBAQCBzdGF0aWMgaW50IHVwZGF0ZV9kaXNj
X3ZvbChzdHJ1Y3Qgc3BfdXNicGh5ICp1c2JwaHkpCgpbIC4uLiBdCgo+IEBAIC05NiwxMSArOTYs
MTEgQEAgc3RhdGljIGludCB1cGRhdGVfZGlzY192b2woc3RydWN0IHNwX3VzYnBoeSAqdXNicGh5
KQo+ICAJCXNldCA9ICoob3RwX3YgKyAxKTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHBy
ZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMgdGhpcyBjb2RlIG5lZWQgYSBib3VuZHMgY2hlY2sK
b24gdGhlIGJ1ZmZlciByZXR1cm5lZCBieSBudm1lbV9jZWxsX3JlYWQoKT8KCklmIHRoZSBOVk1F
TSBjZWxsIGRlZmluZWQgaW4gdGhlIGRldmljZSB0cmVlIGhhcyBhIHNpemUgb2YgMSBieXRlLApu
dm1lbV9jZWxsX3JlYWQoKSB3aWxsIGFsbG9jYXRlIDEgYnl0ZSBhbmQgc2V0IG90cF9sID0gMS4g
VGhpcyBjb2RlCnVuY29uZGl0aW9uYWxseSByZWFkcyAqKG90cF92ICsgMSksIHdoaWNoIGNvdWxk
IHJlc3VsdCBpbiBhbiBvdXQtb2YtYm91bmRzCnJlYWQuCgpBZGRpdGlvbmFsbHksIGlmIHRoZSBj
ZWxsIHNpemUgaXMgMCBieXRlcywgbnZtZW1fY2VsbF9yZWFkKCkgd2lsbCBhbGxvY2F0ZQowIGJ5
dGVzLCByZXR1cm5pbmcgWkVST19TSVpFX1BUUi4gU2luY2UgWkVST19TSVpFX1BUUiBwYXNzZXMg
dGhlIElTX0VSUigpCmNoZWNrLCBkZXJlZmVyZW5jaW5nIHRoaXMgcG9pbnRlciB3b3VsZCBpbW1l
ZGlhdGVseSBwYW5pYyB0aGUga2VybmVsLgoKPiAgCQlzZXQgPSAoc2V0IDw8IChzaXplb2YoY2hh
cikgKiA4KSkgfCAqb3RwX3Y7Cj4gIAkJc2V0ID0gKHNldCA+PiB1c2JwaHktPmRpc2Nfdm9sX2Fk
ZHJfb2ZmKSAmIEpfRElTQzsKPiArCQlpZiAoc2V0ID09IDApCj4gKwkJCXNldCA9IE9UUF9ESVND
X0xFVkVMX0RFRkFVTFQ7Cj4gKwkJa2ZyZWUob3RwX3YpOwo+ICAJfQo+ICAKPiAtCWlmIChJU19F
UlIob3RwX3YpIHx8IHNldCA9PSAwKQo+IC0JCXNldCA9IE9UUF9ESVNDX0xFVkVMX0RFRkFVTFQ7
Cj4gLQoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhp
cyBwYXRjaCwgYnV0IGRvZXMgdGhlIGVycm9yIHBhdGggaW4Kc3BfdXBoeV9pbml0KCkgbGVhayBj
bG9jayBhbmQgcmVzZXQgY29udHJvbCByZXNvdXJjZXM/CgpJbiBzcF91cGh5X2luaXQoKSwgaWYg
dXBkYXRlX2Rpc2Nfdm9sKCkgcmV0dXJucyAtRVBST0JFX0RFRkVSLCB0aGUgY29kZQphcHBlYXJz
IHRvIHJldHVybiBkaXJlY3RseSBpbnN0ZWFkIG9mIGp1bXBpbmcgdG8gdGhlIGVycl9yZXNldCBj
bGVhbnVwCmxhYmVsOgoKZHJpdmVycy9waHkvc3VucGx1cy9waHktc3VucGx1cy11c2IyLmM6c3Bf
dXBoeV9pbml0KCkgewogICAgLi4uCglyZXQgPSB1cGRhdGVfZGlzY192b2wodXNicGh5KTsKCWlm
IChyZXQgPCAwKQoJCXJldHVybiByZXQ7CiAgICAuLi4KfQoKVXBvbiBwcm9iZSBkZWZlcnJhbCBy
ZXRyeSwgd291bGRuJ3QgdGhlIGVuYWJsZSBjb3VudHMgaW5jcmVtZW50IGFnYWluCndpdGhvdXQg
YmVpbmcgZGVjcmVhc2VkLCBwZXJtYW5lbnRseSBsZWFraW5nIHRoZSBjbG9jayBhbmQgcmVzZXQg
Y29udHJvbD8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA4MDctc3VucGx1cy12Mi0wLWQ1Mzc5YzY2NGRmY0BnbWFpbC5jb20/cGFy
dD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
