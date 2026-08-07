Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE8D4C2A09B
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 13:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mANpy2J2A/zIiMWYL7hNca2HVsMXMQPkGWAcZpMKK7Q=; b=VdPq9V9dCXJxVP
	mv5l7TiHeDfsxvnAqaQh9cLs1JvEGnORjleqDIjztADN7hoF942Zta1SmwXdPubY4ChTAcbdk86Z7
	WmjqwVJ1NJGxMeJXV7gaLqOmkhN+NOvRLXWpVpTmnp7vNOGJi9sk6T3toGM+b37nfZMYsH2asQy0q
	TgHOg25kLpD8J4rR1kYKkjwagXDqnViw8TSpNoESrDO+ayDFpHit/Ucu5+tRjg7BlvMAusA/ylw54
	wgAKGP+PSt5FBVBM3qbGKVr+ebYsQ/jTHUNOgxDCFTQAv2dmf+JQA61yZXUbyojxsrGkr2Whz6LO8
	qIAM28b2KkKB2V3asY1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKmN-000000089qM-1AxZ;
	Fri, 07 Aug 2026 13:38:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKmK-000000089pl-3tBb
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 13:38:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ECDAE600D8;
	Fri,  7 Aug 2026 13:38:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 570261F000E9;
	Fri,  7 Aug 2026 13:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786109907;
	bh=awaxIGkOkAa4611SgfZQD9Fh/5OxwMnMxVhVVv8/7Tw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PJFbUBNk700dIEHPh5P/TP9E15k4dSeCNIdINO9gmZPThSCzY2Y2UUcE9DnW5RSXr
	 cedtzZayv7ltLmbTm5FAftD4VlIiCfQtIQCJAWefl/Bizuu5AjVyzqexdpC+jZVUle
	 5/oy9dgXCpXntNVos3H1TstaEJ9THoyilECrUJzrsgH4hEV9yfU7ye3bKNQzs4A7G+
	 u7pOB1q7SRtX2WsRcyFiWm8IK7ji2qm7Q1JHvx4aIe8O8OMkamkHXm3LSdTSR8uOWj
	 k5FJ3p242OOefh7YP4Zy5FwqOG98M/NfNTW9jdmex8VTElZGikms37RDLJw2Lha+p9
	 +B8uKXYnea1fg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: sunplus: fix ERR_PTR deref in
 update_disc_vol()
To: "Felix Gu" <ustc.gu@gmail.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260807-sunplus-v2-2-d5379c664dfc@gmail.com>
References: <20260807-sunplus-v2-0-d5379c664dfc@gmail.com>
 <20260807-sunplus-v2-2-d5379c664dfc@gmail.com>
Date: Fri, 07 Aug 2026 13:38:26 +0000
Message-Id: <20260807133827.570261F000E9@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIHZhbGlkYXRpb24gb2YgbnZtZW0gY2VsbCBsZW5ndGggY2FuIGxlYWQg
dG8gYW4gb3V0LW9mLWJvdW5kcyByZWFkIG9yIFpFUk9fU0laRV9QVFIgZGVyZWZlcmVuY2UuCi0g
W0hpZ2hdIENsb2NrIGFuZCByZXNldCBjb250cm9sIHJlc291cmNlcyBhcmUgbGVha2VkIGR1ZSB0
byB1bmJhbGFuY2VkIG9wZXJhdGlvbnMgaW4gYHNwX3VwaHlfaW5pdCgpYCBlcnJvciBwYXRocy4K
LS0KCi0tLSBQYXRjaCBbMl06IFtQQVRDSCB2MiAyLzJdIHBoeTogc3VucGx1czogZml4IEVSUl9Q
VFIgZGVyZWYgaW4gdXBkYXRlX2Rpc2Nfdm9sKCkgLS0tCmNvbW1pdCBlYzhlZjllMTY5ODA3NGZm
NWE1OTJiZjQ2YmMzMmFkMGJkZDM5NmRiCkF1dGhvcjogRmVsaXggR3UgPHVzdGMuZ3VAZ21haWwu
Y29tPgoKcGh5OiBzdW5wbHVzOiBmaXggRVJSX1BUUiBkZXJlZiBpbiB1cGRhdGVfZGlzY192b2wo
KQoKbnZtZW1fY2VsbF9nZXQoKSByZXR1cm5zIEVSUl9QVFIgb24gZmFpbHVyZS4gVGhlIGNvZGUg
cHJldmlvdXNseSBmZWxsIHRocm91Z2gKdG8gbnZtZW1fY2VsbF9yZWFkKCksIGRlcmVmZXJlbmNp
bmcgdGhlIGludmFsaWQgcG9pbnRlci4gVGhpcyBwYXRjaCBza2lwcyB0aGUKcmVhZCBhbmQgd3Jp
dGVzIHRoZSBkZWZhdWx0IGRpc2Nvbm5lY3Qgdm9sdGFnZSB3aGVuIHRoZSBsb29rdXAgZmFpbHMu
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zdW5wbHVzL3BoeS1zdW5wbHVzLXVzYjIuYyBi
L2RyaXZlcnMvcGh5L3N1bnBsdXMvcGh5LXN1bnBsdXMtdXNiMi5jCj4gaW5kZXggODQyMDg3YmRm
YmE1My4uZWI4MzQ3ODhlYTJmYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9zdW5wbHVzL3Bo
eS1zdW5wbHVzLXVzYjIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3N1bnBsdXMvcGh5LXN1bnBsdXMt
dXNiMi5jCj4gQEAgLTg0LDkgKzg0LDEwIEBAIHN0YXRpYyBpbnQgdXBkYXRlX2Rpc2Nfdm9sKHN0
cnVjdCBzcF91c2JwaHkgKnVzYnBoeSkKPiAgCXUzMiB2YWwsIHNldCA9IE9UUF9ESVNDX0xFVkVM
X0RFRkFVTFQ7Cj4gIAo+ICAJY2VsbCA9IG52bWVtX2NlbGxfZ2V0KHVzYnBoeS0+ZGV2LCBkaXNj
X25hbWUpOwo+IC0JaWYgKElTX0VSUl9PUl9OVUxMKGNlbGwpKSB7Cj4gKwlpZiAoSVNfRVJSKGNl
bGwpKSB7Cj4gIAkJaWYgKFBUUl9FUlIoY2VsbCkgPT0gLUVQUk9CRV9ERUZFUikKPiAgCQkJcmV0
dXJuIC1FUFJPQkVfREVGRVI7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3Rp
bmcgaXNzdWUsIGJ1dCBkb2VzIHRoaXMgcmV0dXJuIHBhdGggbGVhayB0aGUgY2xvY2sgYW5kCnJl
c2V0IGNvbnRyb2wgcmVmZXJlbmNlcz8KCldoZW4gdXBkYXRlX2Rpc2Nfdm9sKCkgcmV0dXJucyAt
RVBST0JFX0RFRkVSLCB0aGUgY2FsbGVyIHNwX3VwaHlfaW5pdCgpCnJldHVybnMgdGhlIGVycm9y
IGRpcmVjdGx5IHdpdGhvdXQgcGVyZm9ybWluZyBjbGVhbnVwOgoKc3BfdXBoeV9pbml0KCkgewog
ICAgICAgIC4uLgogICAgICAgIHJldCA9IGNsa19wcmVwYXJlX2VuYWJsZSh1c2JwaHktPnBoeV9j
bGspOwogICAgICAgIGlmIChyZXQpCiAgICAgICAgICAgICAgICBnb3RvIGVycl9jbGs7CgogICAg
ICAgIHJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQodXNicGh5LT5yc3RjKTsKICAgICAgICBp
ZiAocmV0KQogICAgICAgICAgICAgICAgZ290byBlcnJfcmVzZXQ7CiAgICAgICAgLi4uCiAgICAg
ICAgcmV0ID0gdXBkYXRlX2Rpc2Nfdm9sKHVzYnBoeSk7CiAgICAgICAgaWYgKHJldCA8IDApCiAg
ICAgICAgICAgICAgICByZXR1cm4gcmV0OwogICAgICAgIC4uLgp9CgpUaGlzIGVhcmx5IHJldHVy
biBieXBhc3NlcyB0aGUgZXJyX3Jlc2V0IGFuZCBlcnJfY2xrIGNsZWFudXAgbGFiZWxzLCBsZWFk
aW5nCnRvIHVuYm91bmRlZCBpbmNyZW1lbnRpbmcgb2YgcmVmZXJlbmNlIGNvdW50cyBvbiBzdWJz
ZXF1ZW50IHJldHJpZXMgaWYgdGhlCm52bWVtIHByb3ZpZGVyIGlzIG5vdCB5ZXQgcmVhZHkuCgo+
ICsJCWdvdG8gc2tpcF9udm1lbV9yZWFkOwo+ICAJfQo+ICAKPiAgCW90cF92ID0gbnZtZW1fY2Vs
bF9yZWFkKGNlbGwsICZvdHBfbCk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcg
aW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgc2hvdWxkIHRoZSBsZW5ndGggb2YgdGhlCm52
bWVtIGNlbGwgcmV0dXJuZWQgaW4gb3RwX2wgYmUgdmFsaWRhdGVkPwoKSWYgbnZtZW1fY2VsbF9y
ZWFkKCkgcmV0dXJucyBhIGNlbGwgd2l0aCBhIGxlbmd0aCBvZiAwLCB0aGUgYWxsb2NhdG9yIHJl
dHVybnMKWkVST19TSVpFX1BUUiB3aGljaCBwYXNzZXMgdGhlICFJU19FUlIoKSBjaGVjay4gRGVy
ZWZlcmVuY2luZyB0aGlzIHBvaW50ZXIKd291bGQgdHJpZ2dlciBhIHBhZ2UgZmF1bHQ6CgoJaWYg
KCFJU19FUlIob3RwX3YpKSB7CgkJc2V0ID0gKihvdHBfdiArIDEpOwoJCXNldCA9IChzZXQgPDwg
KHNpemVvZihjaGFyKSAqIDgpKSB8ICpvdHBfdjsKCklmIHRoZSBjZWxsIGxlbmd0aCBpcyAxLCAq
KG90cF92ICsgMSkgd291bGQgY2F1c2UgYW4gb3V0LW9mLWJvdW5kcyByZWFkLgoKWyAuLi4gXQoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDgwNy1zdW5wbHVzLXYyLTAtZDUzNzljNjY0ZGZjQGdtYWlsLmNvbT9wYXJ0PTIKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
