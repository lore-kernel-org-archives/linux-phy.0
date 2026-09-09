Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C910C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgckqfankHH4As5PzOzAYc2HeV5dXb8f6oi5rbo8/L4=; b=gdkpwWboIzyb6u
	k8mUuRz4TYi4bEOENkkDu29orqEtGv+1RyH5n4ArrCN7Si+5gdR1jyON6ahauvZHfuVQti9k/vakn
	QWCOEar2jq5wqu0CCA6/x58i50XjlXtsF0FloNOfSGfwA+TnMcbbDjVj0ZMgqm5TQm0Nu1oGImsZT
	RJ4IaMvZuywlwUDX6neMMM1leB8I828fIINyZ/g73/9gJxA+AezfGEuG0+NsnZeZcj6NLpDJlJ3ix
	nSG1iq0rkRPeD2W4NezL+a9NIrMhHTw/qGPCGjCteNS/9dnyz2c9Rm/qkbxiq90ZYpMFOsVp6PYuW
	XKHK/RSvtsFTldH2elvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Gie-0000000Bc48-3aFE;
	Wed, 09 Sep 2026 11:44:00 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Gid-0000000Bc3o-3iEn
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:43:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 28776601FF;
	Wed,  9 Sep 2026 11:43:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F9BE1F00A3E;
	Wed,  9 Sep 2026 11:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788954238;
	bh=+1d/nc8suBMCnB/oz2DxtWZjNRkK0Zcj38kSg/wx7II=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IKOBJ3LMJuhHINs8S9t1OihSig8u8fvz/5302lsPBI6GjtvDbwNVA+6YQld2eVqLO
	 FnGRzrL7Rv4GtS3UqHxIFa+yCNgifI4CHqvH03udddjDvUEgFicM+pJRMjk8dg1utL
	 O1yI4RYCLtDlnMfx/1AmZL8VmXPxj7SF1WMxWzK+g8HNXwsP9CK0iw664UIwCp12TV
	 YIighNwYRj6GOviqmF9/xevk75RH7eC3QheGhvcJOBBArSvopQyYinHRgLw862QxWz
	 ptBFL9yj+1E1vahqPANlNqhE61OsqOb019CdZqLMym6rxkMZPP4iVDccH6wF/Teujo
	 5zADFXFZctrAA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 4/4] phy: ti-pipe3: Fix clock leak in init error path
To: "Hongling Zeng" <zenghongling@kylinos.cn>
Cc: olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260909113433.1287454-5-zenghongling@kylinos.cn>
References: <20260909113433.1287454-1-zenghongling@kylinos.cn>
 <20260909113433.1287454-5-zenghongling@kylinos.cn>
Date: Wed, 09 Sep 2026 11:43:58 +0000
Message-Id: <20260909114358.8F9BE1F00A3E@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHBhdGNoIGlu
Y2x1ZGVzIGFuIHVuZG9jdW1lbnRlZCBmaXggZm9yIGEgY2xvY2sgbGVhayBpbiB0aGUgU0FUQSBu
b3JtYWwgZXhpdCBwYXRoLgotLQoKY29tbWl0IGNhODg5Mzc4MTdkNDRlYjkyNGVhMmIzNTU0MTUz
OWYwMzNlNmVmYTkKQXV0aG9yOiBIb25nbGluZyBaZW5nIDx6ZW5naG9uZ2xpbmdAa3lsaW5vcy5j
bj4KCnBoeTogdGktcGlwZTM6IEZpeCBjbG9jayBsZWFrIGluIGluaXQgZXJyb3IgcGF0aAoKV2hl
biByZWdtYXBfdXBkYXRlX2JpdHMoKSBmYWlscyBpbiB0aV9waXBlM19pbml0KCkgZm9yIFBDSWUg
bW9kZSwKdGhlIGZ1bmN0aW9uIHJldHVybnMgdGhlIGVycm9yIHdpdGhvdXQgY2FsbGluZyB0aV9w
aXBlM19kaXNhYmxlX2Nsb2NrcygpLgpUaGlzIGxlYXZlcyB0aGUgY2xvY2tzIHBlcm1hbmVudGx5
IGVuYWJsZWQgc2luY2UgdGhlIFBIWSBmcmFtZXdvcmsgd29uJ3QKaW52b2tlIHRoZSAuZXhpdCBj
YWxsYmFjayBvbiBpbml0IGZhaWx1cmUuCgpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvMjAyNjA1MTgwMjM2NTcuNDE4NTJDMkJDQjBAc210cC5rZXJuZWwub3JnLwoKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMgYi9kcml2ZXJzL3BoeS90aS9waHkt
dGktcGlwZTMuYwo+IGluZGV4IGE2N2Y1ZGE0M2M4M2IuLmZlYTY0ZGI5M2RhNTQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKPiArKysgYi9kcml2ZXJzL3BoeS90
aS9waHktdGktcGlwZTMuYwpbIC4uLiBdCj4gQEAgLTU1NSw4ICs1NTcsMTAgQEAgc3RhdGljIGlu
dCB0aV9waXBlM19leGl0KHN0cnVjdCBwaHkgKngpCj4gIAkvKiBJZiBkcGxsX3Jlc2V0X3N5c2Nv
biBpcyBub3QgcHJlc2VudCB3ZSB3b250IHBvd2VyIGRvd24gU0FUQSBEUExMCj4gIAkgKiBkdWUg
dG8gRXJyYXRhIGk3ODMKPiAgCSAqLwo+IC0JaWYgKHBoeS0+bW9kZSA9PSBQSVBFM19NT0RFX1NB
VEEgJiYgIXBoeS0+ZHBsbF9yZXNldF9zeXNjb24pCj4gKwlpZiAocGh5LT5tb2RlID09IFBJUEUz
X01PREVfU0FUQSAmJiAhcGh5LT5kcGxsX3Jlc2V0X3N5c2Nvbikgewo+ICsJCXRpX3BpcGUzX2Rp
c2FibGVfY2xvY2tzKHBoeSk7Cj4gIAkJcmV0dXJuIDA7Cj4gKwl9Cj4gIAo+ICAJLyogUENJZSBk
b2Vzbid0IGhhdmUgaW50ZXJuYWwgRFBMTCAqLwo+ICAJaWYgKHBoeS0+bW9kZSAhPSBQSVBFM19N
T0RFX1BDSUUpIHsKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoZSBjb21taXQgbWVzc2FnZSBu
ZWVkIHRvIGRvY3VtZW50IHRoaXMgZml4IGluIHRoZSBTQVRBIGV4aXQgcGF0aD8KClRoZSBjb21t
aXQgbWVzc2FnZSBvbmx5IG1lbnRpb25zIGZpeGluZyB0aGUgY2xvY2sgbGVhayBpbiB0aGUgdGlf
cGlwZTNfaW5pdCgpCmVycm9yIHBhdGggZm9yIFBDSWUgbW9kZS4gCgpUaGlzIGFkZGl0aW9uIG9m
IHRpX3BpcGUzX2Rpc2FibGVfY2xvY2tzKCkgaW4gdGlfcGlwZTNfZXhpdCgpIGZvciB0aGUgU0FU
QQptb2RlIHNlZW1zIGxpa2UgYSBtZWFuaW5nZnVsIGZ1bmN0aW9uYWwgY2hhbmdlIHRoYXQgaXNu
J3QgZG9jdW1lbnRlZCBpbiB0aGUKY29tbWl0IGxvZywgd2hpY2ggY291bGQgY2F1c2UgY29uZnVz
aW9uIGR1cmluZyByZXZpZXcgYW5kIGhpbmRlciBzdGFibGUKYmFja3BvcnRzLgoKLS0gClNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkwOTEx
MzQzMy4xMjg3NDU0LTEtemVuZ2hvbmdsaW5nQGt5bGlub3MuY24/cGFydD00CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
