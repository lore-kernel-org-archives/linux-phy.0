Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFD23CD4F21
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 22:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6f3eIyeHXV0UrohsXhkgk6W0aj2p2TpcT8XkFrsL01I=; b=Y4pxs2vWkq+Plu
	u9l+WyLRqKRI5q3qlzk1mb11lwy5a1R5NI1amN5wN+x1buet+WJlMqRqJDT0CSwgqhSzY+3Ps6vvj
	LNqHoBB3sj3L2YfTj8TybWPtN28GI1fxywUTNJNPpfYCnlFgZ8hEnnNHlvU6D1ixW+xXjYoPU974s
	vcxSvg8RGzQ642FQKbjLKlB459hGOllahWx8lhiSoqDIXFY+CYVoDfwFT2/E9LelI+r+T/sGiXtwD
	KsvebsZEHaa14yC+A4ANHYnpZ1SWJev0yyWmKlUWwqfPrvrSgEMbtukDckwitEs90sWMBLa4dMd7J
	1RARn7Vh3VSTSX5yXLgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvxI-00000000ddl-0u02;
	Tue, 12 May 2026 22:52:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvxE-00000000dd1-3bCB
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 22:51:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 58F1D4177C;
	Tue, 12 May 2026 22:51:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEA3AC2BCB0;
	Tue, 12 May 2026 22:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778626316;
	bh=tjK1+oavXGAiP02Cpi9vCgdq3F9SVT8CHoWV72aIS50=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ajIZBZJfR1hzbp0zeIha6aWa+Zci16pJ43fnZa2y3nzTraFlvYOjrUz1T9coAvSpQ
	 ury5fnT0Q6k3xNDw3sLO37OjE+lIz6J4jLzW0XUD5ozIxrY+RUQEQ1q384rLjwXIBy
	 nfiIemobgX0hhlc9cGGWlXcrbhFrGmbag6v8k7oettQJrGzARly0V0PWVffv5sPOAu
	 tc+Y0iITRYW9gB72nOcdwv6FaFLELavVYuneddBQvakNTuY7HHsCISiH/cI0Xj2mJA
	 qiIbCl1B7EJvOgOJKKBnBO9LTy7AF1+QW04QUIhz6xm/QRWdaWxqA4MtlXoPQ2zjFG
	 lDJ/vhQ9f/w1A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/6] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for high bpc
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260511-hdptx-clk-fixes-v2-1-664e41379cab@collabora.com>
References: <20260511-hdptx-clk-fixes-v2-1-664e41379cab@collabora.com>
Date: Tue, 12 May 2026 22:51:55 +0000
Message-Id: <20260512225155.EEA3AC2BCB0@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_155156_935720_EA0CA868 
X-CRM114-Status: GOOD (  11.40  )
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
Reply-To: sashiko@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gQ2xvY2sgcmF0ZSBj
YWxjdWxhdGlvbiBkcm9wcyBhIHJvdW5kaW5nIHN0ZXAsIHJlcGxhY2luZyBESVZfUk9VTkRfQ0xP
U0VTVF9VTEwoKSB3aXRoIHRydW5jYXRpb24gdmlhIGRpdl91NjQoKSwgd2hpY2ggY2FuIGNhdXNl
IGEgMSBIeiBjbG9jayByYXRlIG1pc21hdGNoLgotLQoKY29tbWl0IGYwMTNiNGI3YmMxZDRhZTIz
NWQyOGIxMGNhZDMxNDNkMDA5ZDEzMWMKQXV0aG9yOiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0
aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogc2Ftc3VuZy1oZHB0
eDogRml4IHJhdGUgcmVjYWxjdWxhdGlvbiBmb3IgaGlnaCBicGMKClRoaXMgY29tbWl0IGZpeGVz
IHRoZSBjbG9jayByYXRlIHJlY2FsY3VsYXRpb24gaW4gdGhlIEhETUkgUEhZIHByb2JlIHBhdGgK
YnkgZGlyZWN0bHkgcmVhZGluZyB0aGUgYnBjIHZhbHVlIGZyb20gaGFyZHdhcmUgcmVnaXN0ZXJz
IGluc3RlYWQgb2YKcmVseWluZyBvbiB1bmluaXRpYWxpemVkIGNvbmZpZ3VyYXRpb24gc3RydWN0
IG1lbWJlcnMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtc2Ftc3VuZy1oZHB0eC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNh
bXN1bmctaGRwdHguYwo+IGluZGV4IDJkOTczYmMzN2YwNzYuLjdmYjFjMjIzMThiYmYgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHgu
Ywo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4
LmMKPiBAQCAtMjI4MCw3ICsyMjgxLDcgQEAgc3RhdGljIHU2NCBya19oZHB0eF9waHlfY2xrX2Nh
bGNfcmF0ZV9mcm9tX3BsbF9jZmcoc3RydWN0IHJrX2hkcHR4X3BoeSAqaGRwdHgpCj4gIAkJCWZv
dXQgPSBmb3V0ICsgc2RtOwo+ICAJfQo+ICAKPiAtCXJldHVybiBkaXZfdTY0KGZvdXQgKiAyLCBy
b3BsbF9ody5wbXNfc2RpdiAqIDEwKTsKPiArCXJldHVybiBkaXZfdTY0KGZvdXQgKiAyICogOCwg
cm9wbGxfaHcucG1zX3NkaXYgKiAxMCAqIGJwYyk7Cj4gIH0KPiAgCj4gIHN0YXRpYyB1bnNpZ25l
ZCBsb25nIHJrX2hkcHR4X3BoeV9jbGtfcmVjYWxjX3JhdGUoc3RydWN0IGNsa19odyAqaHcsCj4g
QEAgLTIyODgsMTkgKzIyODksMTMgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgcmtfaGRwdHhfcGh5
X2Nsa19yZWNhbGNfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywKPiAgewo+ICAJc3RydWN0IHJrX2hk
cHR4X3BoeSAqaGRwdHggPSB0b19ya19oZHB0eF9waHkoaHcpOwo+ICAJdTMyIHN0YXR1czsKPiAt
CXU2NCByYXRlOwo+ICAJaW50IHJldDsKPiAgCj4gIAlyZXQgPSByZWdtYXBfcmVhZChoZHB0eC0+
Z3JmLCBHUkZfSERQVFhfQ09OMCwgJnN0YXR1cyk7Cj4gIAlpZiAocmV0IHx8ICEoc3RhdHVzICYg
SERQVFhfSV9QTExfRU4pKQo+ICAJCXJldHVybiAwOwo+ICAKPiAtCXJhdGUgPSBya19oZHB0eF9w
aHlfY2xrX2NhbGNfcmF0ZV9mcm9tX3BsbF9jZmcoaGRwdHgpOwo+IC0KPiAtCWlmIChoZHB0eC0+
aGRtaV9jZmcubW9kZSA9PSBQSFlfSERNSV9NT0RFX0ZSTCkKPiAtCQlyZXR1cm4gcmF0ZTsKPiAt
Cj4gLQlyZXR1cm4gRElWX1JPVU5EX0NMT1NFU1RfVUxMKHJhdGUgKiA4LCBoZHB0eC0+aGRtaV9j
ZmcuYnBjKTsKPiArCXJldHVybiBya19oZHB0eF9waHlfY2xrX2NhbGNfcmF0ZV9mcm9tX3BsbF9j
ZmcoaGRwdHgpOwoKRG9lcyB0aGlzIGluYWR2ZXJ0ZW50bHkgY2hhbmdlIHRoZSByb3VuZGluZyBi
ZWhhdmlvcj8KCkJ5IG1vdmluZyB0aGUgKiA4IGFuZCAvIGJwYyBtYXRoIGludG8gcmtfaGRwdHhf
cGh5X2Nsa19jYWxjX3JhdGVfZnJvbV9wbGxfY2ZnKCkKYW5kIHVzaW5nIGRpdl91NjQoKSwgdGhl
IHJlc3VsdCBpcyBub3cgdHJ1bmNhdGVkIGluc3RlYWQgb2Ygcm91bmRlZC4KCkZvciBleGFtcGxl
LCBpZiB0aGUgZXhhY3QgY2FsY3VsYXRlZCB2YWx1ZSBlbmRzIGluIC42IG9yIC44LCB0aGUgdHJ1
bmNhdGlvbgp3aWxsIHlpZWxkIGEgdmFsdWUgMSBIeiBsb3dlciB0aGFuIHRoZSByb3VuZGVkIHZh
bHVlLgoKU2luY2UgcmtfaGRwdHhfcGh5X2Nsa19kZXRlcm1pbmVfcmF0ZSgpIHN0aWxsIGNhbGN1
bGF0ZXMgdGhlIGV4cGVjdGVkIHJhdGUKdXNpbmcgRElWX1JPVU5EX0NMT1NFU1RfVUxMKCksIGNv
dWxkIHRoaXMgdHJ1bmNhdGlvbiBsZWFkIHRvIGEgMSBIeiBtaXNtYXRjaAppbiB0aGUgQ29tbW9u
IENsb2NrIEZyYW1ld29yaz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MTEtaGRwdHgtY2xrLWZpeGVzLXYyLTAtNjY0ZTQxMzc5
Y2FiQGNvbGxhYm9yYS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
