Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A98BCA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 12:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOEJVuqEpWSmka/bV8N+ZHWOkwRLeG/nn/K6QGVrnb8=; b=oxogwyOgl69JtB
	BEu6AstJK4wqi6x8L6zNlSaRgW+utkcN5nHv1a0lDdOaqak0xgsd0ye7OBpWBQ+NDmfoH6NgBw+1t
	MZCBCGAouGtL914F1yIywU01N1vm0PlZtlKec2QH0BNULCc/zFi/ZevZRHQX3JufvETLs7E1hplMY
	Lh7XOTut3VWbbKZ/S3da3tesf65sIYDa4WGChy62BXOEKg3vNfOBmSKicGxL27Jo3Ojg/Ra3nkR8y
	4e02FbdL0dbuYZ3Q3HUZVU6+ra5Stj1H+1xrO94Wg1OdA0XLRY07Ox1Rysf5oodQRJpCXzb5c1Tc8
	TnQQL9QVNxaFmFqteDDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFRM-0000000AUoy-2wyI;
	Mon, 12 Oct 2026 12:47:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFRL-0000000AUos-3dh3
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 12:47:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0BB6D60229;
	Mon, 12 Oct 2026 12:47:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4710B1F0089B;
	Mon, 12 Oct 2026 12:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791809258;
	bh=ni48CHLOz7JypUH7cdsSw4gne0QqilVpvyo1x9KIrqI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kK1B0pRYNdywuPdv0xWuuAQXlegLJlLhYqSk0vOTTIzZKFAeQvp6XlLDsGzKu3aer
	 A/v6Kac/TG910evbBnUXV6+F07FFtAyt1wVjRaIm+HrLd1xZiR9FjPLtTUNU3EEP1g
	 NKUAb/JeJ0lup54vXs6C1HwnVK0TPglpMoz08t2g6E4ZNGbNsLXr2znefrr1R6L41M
	 A5/QLNOqbKx7sCKO+6y9/Ote+0Ebb6ZGeF4JW7fy0loS3aU1hqmKuthT4rZ1E9H/gk
	 GUuh2GfHZdp95/Q54Gf7kHotHseT7GOd7rUI7iQPngdrq49bHcnw0ut1JMbtyIOXEu
	 IyePrISBMJAzw==
Message-ID: <sashiko-outbox-168127@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] phy: cix: Add Sky1 DP PHY driver
To: "Luo Liu" <Luo.Liu@cixtech.com>
Cc: olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20261012123618.648930-3-Luo.Liu@cixtech.com>
References: <20261012123618.648930-1-Luo.Liu@cixtech.com>
 <20261012123618.648930-3-Luo.Liu@cixtech.com>
Date: Mon, 12 Oct 2026 12:47:37 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBjaXg6IG1p
c3Npbmcgc3RhdGUgcmVzdG9yZSBvbiBjaXhfZHBfcGh5X3NldF9sYW5lX3ZvbHRhZ2UoKSBlcnJv
ciBwYXRoCi0gW01lZGl1bV0gcGh5OiBjaXg6IFJhY2UgY29uZGl0aW9uIGluIENEQiB0cmFuc2Fj
dGlvbiBjb21wbGV0aW9uIGR1ZSB0byBpZ25vcmVkIGJ1c3kgcHVsc2UgdGltZW91dAotLQoKY29t
bWl0IDgxM2YyYTk5ZjgyNTBhNzRlNmIzODU2OTE0ODI5ZTc1ZWEyMWE3ODYKQXV0aG9yOiBMdW8g
TGl1IDxMdW8uTGl1QGNpeHRlY2guY29tPgoKcGh5OiBjaXg6IEFkZCBTa3kxIERQIFBIWSBkcml2
ZXIKClRoaXMgY29tbWl0IGFkZHMgYSBQSFkgZHJpdmVyIGZvciB0aGUgQ0lYIFNreTEgZGVkaWNh
dGVkIERpc3BsYXlQb3J0IFBNQS4KSXQgc3VwcG9ydHMgY29uZmlndXJpbmcgdGhlIGxpbmsgcmF0
ZSwgbGFuZSBjb3VudCwgU1NDLCBhbmQgdm9sdGFnZSBzd2luZwp1c2luZyB0aGUgZ2VuZXJpYyBQ
SFkgRFAgb3BlcmF0aW9ucy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2NpeC9waHktY2l4
LWRwLmMgYi9kcml2ZXJzL3BoeS9jaXgvcGh5LWNpeC1kcC5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9waHkvY2l4L3BoeS1jaXgtZHAuYwoK
WyAuLi4gXQoKPiArc3RhdGljIGludCBjaXhfZHBfcGh5X2NkYl9jb21wbGV0ZShzdHJ1Y3QgY2l4
X2RwICpkcCkKPiArewo+ICsJdTMyIHZhbHVlOwo+ICsKPiArCXJlYWRsX3BvbGxfdGltZW91dF9h
dG9taWMoZHAtPmJhc2UgKyBDSVhfRFBfQ0RCX1JFQURZLCB2YWx1ZSwKPiArCQkJCSAgISh2YWx1
ZSAmIEJJVCgwKSksIDAsIDEpOwo+ICsKPiArCXJldHVybiBjaXhfZHBfcGh5X2NkYl9yZWFkeShk
cCk7Cj4gK30KCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoaXMgZXhwbGljaXRseSBzdXBwcmVz
cyB0aGUgcmV0dXJuIHZhbHVlIGZyb20gdGhlIGJ1c3ktcHVsc2UgcG9sbD8KCklmIHRoZSBoYXJk
d2FyZSB0YWtlcyBsb25nZXIgdGhhbiAxdXMgdG8gZHJvcCB0aGUgQ0lYX0RQX0NEQl9SRUFEWSBi
aXQgdG8gMAphZnRlciBDSVhfRFBfQ0RCX0VOQUJMRSBpcyB3cml0dGVuLCB0aGUgZmlyc3QgcG9s
bGluZyBsb29wIHdpbGwgdGltZSBvdXQgYW5kCnRoZSBlcnJvciBpcyBpZ25vcmVkLiBUaGUgc2Vj
b25kIHBvbGxpbmcgbG9vcCBpbiBjaXhfZHBfcGh5X2NkYl9yZWFkeSgpCmNvdWxkIHRoZW4gaW1t
ZWRpYXRlbHkgcmVhZCB0aGUgc3RhbGUgUkVBRFkgPT0gMSBzdGF0ZSBhbmQgcmV0dXJuIHN1Y2Nl
c3MKYmVmb3JlIHRoZSBoYXJkd2FyZSBhY3R1YWxseSBwcm9jZXNzZXMgdGhlIGNvbW1hbmQuCgpD
YW4gdGhpcyByYWNlIGNvbmRpdGlvbiBsZWFkIHRvIFBIWSBpbml0aWFsaXphdGlvbiBmYWlsdXJl
cyBieSBhbGxvd2luZwpvdmVybGFwcGluZyBjb21tYW5kcyB0byBiZSBpc3N1ZWQgdG8gdGhlIGhh
cmR3YXJlPwoKWyAuLi4gXQoKPiArc3RhdGljIGludCBjaXhfZHBfcGh5X3NldF9sYW5lX3ZvbHRh
Z2Uoc3RydWN0IGNpeF9kcCAqZHAsIHUzMiBsYW5lLAo+ICsJCQkJICAgICAgIGNvbnN0IHN0cnVj
dCBjaXhfZHBfdm9sdGFnZV9jb25mICpjZmcpCj4gK3sKPiArCWludCB2YWx1ZTsKPiArCWludCBy
ZXQ7Cj4gKwo+ICsJdmFsdWUgPSBjaXhfZHBfcGh5X2NkYl9yZWFkKGRwLCBDSVhfRFBfVFhfRElB
R19BQ1lBX0xBTkUobGFuZSkpOwo+ICsJaWYgKHZhbHVlIDwgMCkKPiArCQlyZXR1cm4gdmFsdWU7
Cj4gKwo+ICsJcmV0ID0gY2l4X2RwX3BoeV9jZGJfd3JpdGUoZHAsIENJWF9EUF9UWF9ESUFHX0FD
WUFfTEFORShsYW5lKSwKPiArCQkJCSAgIHZhbHVlIHwgQklUKDApKTsKPiArCWlmIChyZXQpCj4g
KwkJcmV0dXJuIHJldDsKPiArCj4gKwlyZXQgPSBjaXhfZHBfcGh5X2NkYl93cml0ZShkcCwgQ0lY
X0RQX1RYX1RYQ0NfQ1RSTF9MQU5FKGxhbmUpLAo+ICsJCQkJICAgY2ZnLT50eF90eGNjX2N0cmwp
Owo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0OwoKW1NldmVyaXR5OiBNZWRpdW1dCklmIHRo
aXMgd3JpdGUgb3IgYW55IHN1YnNlcXVlbnQgY29uZmlndXJhdGlvbiB3cml0ZSBmYWlscywgdGhl
IGZ1bmN0aW9uCnJldHVybnMgaW1tZWRpYXRlbHkuIERvZXMgdGhpcyBza2lwIHRoZSBjbGVhbnVw
IHN0ZXAgYXQgdGhlIGVuZCBvZiB0aGUKZnVuY3Rpb24gdGhhdCByZXN0b3JlcyB0aGUgQ0lYX0RQ
X1RYX0RJQUdfQUNZQV9MQU5FIHJlZ2lzdGVyPwoKSXQgYXBwZWFycyB0aGF0IHJldHVybmluZyBl
YXJseSBsZWF2ZXMgdGhlIGhhcmR3YXJlIHN0dWNrIGluIGEgZGlhZ25vc3RpYwpvdmVycmlkZSBz
dGF0ZSAod2l0aCBCSVQoMCkgc3RpbGwgc2V0KSwgd2hpY2ggbWlnaHQgc2lsZW50bHkgY29ycnVw
dCBmdXR1cmUKb3BlcmF0aW9ucyBvciBsaW5rIHRyYWluaW5nIGF0dGVtcHRzLiBTaG91bGQgdGhl
c2UgZXJyb3IgcGF0aHMgZW5zdXJlIHRoZQpvcmlnaW5hbCBzdGF0ZSBpcyByZXN0b3JlZD8KCj4g
Kwo+ICsJcmV0ID0gY2l4X2RwX3BoeV9jZGJfd3JpdGUoZHAsIENJWF9EUF9EUlZfRElBR19UWF9E
UlZfTEFORShsYW5lKSwKPiArCQkJCSAgIGNmZy0+ZHJ2X2RpYWdfdHhfZHJ2KTsKPiArCWlmIChy
ZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gKwlyZXQgPSBjaXhfZHBfcGh5X2NkYl93cml0ZShk
cCwKPiArCQkJCSAgIENJWF9EUF9UWF9UWENDX01HTkZTX01VTFRfMDAwX0xBTkUobGFuZSksCj4g
KwkJCQkgICBjZmctPnR4X3R4Y2NfbWduZnNfbXVsdF8wMDApOwo+ICsJaWYgKHJldCkKPiArCQly
ZXR1cm4gcmV0Owo+ICsKPiArCXJldCA9IGNpeF9kcF9waHlfY2RiX3dyaXRlKGRwLAo+ICsJCQkJ
ICAgQ0lYX0RQX1RYX1RYQ0NfQ1BPU1RfTVVMVF8wMF9MQU5FKGxhbmUpLAo+ICsJCQkJICAgY2Zn
LT50eF90eGNjX2Nwb3N0X211bHRfMDApOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+
ICsKPiArCXJldHVybiBjaXhfZHBfcGh5X2NkYl93cml0ZShkcCwgQ0lYX0RQX1RYX0RJQUdfQUNZ
QV9MQU5FKGxhbmUpLAo+ICsJCQkJICAgIHZhbHVlICYgfkJJVCgwKSk7Cj4gK30KCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMTIx
MjM2MTguNjQ4OTMwLTEtTHVvLkxpdUBjaXh0ZWNoLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
