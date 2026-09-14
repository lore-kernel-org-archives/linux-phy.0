Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF8A2C88E7D
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 19:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7AnbLA/s5ktAwY1sOBIZeaPXY1joRtZkR1KsdNeOf8=; b=3BPR90EXRFQEIz
	UE0egGGjuagUgJN5gnDyHFmH26JClblKQcU9NIULoQjVLEwy8VcHRlcdvCTW2zR0Z0obDkkdt9uXf
	m4ABlBBc5IKN97txs7C72fH5dqHmeOGHFvuN4o95bOaHmzKCH/OUNB5YRjmUI+Ezssqah2ZxIgMM8
	0MgjK66EhAlW69KAX83IeDW2DpmvDB+K2Ia+g91ghK/wu9coMct0dZMw4YBUulV+noR7s9736f82L
	W6ng4GTP4PXk0P9fCtuIK8i2cEh36btUKV7u6kuWjrEayQTTm9SsQr6gn0RaRyxfi99UHRiqqLg7u
	ebvKj4ZsW7AjQEMF6y8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6CbJ-00000004YJ6-1P1t;
	Mon, 14 Sep 2026 19:44:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6CbH-00000004YHm-17eB
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 19:44:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 621BA6025B;
	Mon, 14 Sep 2026 19:44:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 944211F00893;
	Mon, 14 Sep 2026 19:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789415062;
	bh=lqI3ODgO2LNSJBicniYkHecRRZp2tEoUeHm8xIYO/4c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=njb24naRFr4370jvLpu2zSQy9Pp+LFi1K/4vV+nRJLxeSqL2oKxSJ/fOvNEimIlzW
	 Bq+yAP6NtCMGxg0FwCpX4zB0dz1QnWoSdTS6m7g56C0Ox1htRKSJxomB6jzZcZhom4
	 K+U2RY2wmFoIfdSzbc0woh2AbeCd8/FDOXNabdV/rs3eLQmkXUGN5RygIAm21D7jnZ
	 tZ/pnC6WoS2lj+Ssqj5QENdoqd32UxBsSn1WyJVZII0+oaHnI9fXogCzxAys+huUMg
	 V/LPl+FnCf7Mk1/W0t9HPrLBPpamVQFqqS3dFNBTowCo2z2sQSCj9EU9l5njQoIkQS
	 u3zxaHV4g5rGg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 06/11] net: pcs: xpcs: add ANRESTART support
 for SGMII link recovery
To: "Coia Prant" <coiaprant@gmail.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, wsa+renesas@sang-engineering.com, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260913185849.907479-7-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
 <20260913185849.907479-7-coiaprant@gmail.com>
Date: Mon, 14 Sep 2026 19:44:21 +0000
Message-Id: <20260914194421.944211F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVW5jb25kaXRpb25h
bGx5IGFwcGx5aW5nIHRoZSBSSzM1NjggU0dNSUkgQU4gcmVzdGFydCBxdWlyayBjYXVzZXMgYW4g
aW5maW5pdGUgaW50ZXJydXB0IHN0b3JtIG9yIHdvcmtxdWV1ZSBsb29wIG9uIHN0YW5kYXJkIGlu
dGVycnVwdC1kcml2ZW4gRFcgWFBDUyBjb25maWd1cmF0aW9ucy4KLS0KCmNvbW1pdCA3OGViNTQ4
OGQwYzBkM2ZlOWY2MDllNTZlNTk3MTBjZWQ1Mjg1NmZhCkF1dGhvcjogQ29pYSBQcmFudCA8Y29p
YXByYW50QGdtYWlsLmNvbT4KCm5ldDogcGNzOiB4cGNzOiBhZGQgQU5SRVNUQVJUIHN1cHBvcnQg
Zm9yIFNHTUlJIGxpbmsgcmVjb3ZlcnkKClRoaXMgcGF0Y2ggYWRkcyBCTUNSX0FOUkVTVEFSVCB0
byBEVyBYUENTIHdoZW4gY29uZmlndXJpbmcgYXV0by1uZWdvdGlhdGlvbgphbmQgd2hlbiB0aGUg
bGluayBnb2VzIGRvd24uIFRoaXMgaXMgaW50ZW5kZWQgdG8gcmVzb2x2ZSBhbiBpc3N1ZSBvbiBz
b21lCnBsYXRmb3JtcyAobGlrZSBSSzM1NjgpIHdoZXJlIHRoZSBQQ1MgZG9lcyBub3QgYXV0b21h
dGljYWxseSByZXN0YXJ0CmF1dG8tbmVnb3RpYXRpb24gd2hlbiB0aGUgbGluayBnb2VzIGRvd24g
YW5kIGNvbWVzIGJhY2sgdXAuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9wY3MvcGNzLXhw
Y3MuYyBiL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy5jCj4gaW5kZXggMDMzN2UyYmNjMDEyNS4u
OGMzODc1YjY5ODViOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MuYwo+
ICsrKyBiL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy5jClsgLi4uIF0KPiBAQCAtMTA5Myw5ICsx
MTA3LDE4IEBAIHN0YXRpYyBpbnQgeHBjc19nZXRfc3RhdGVfYzM3X3NnbWlpKHN0cnVjdCBkd194
cGNzICp4cGNzLAo+ICAJCXJldHVybiAwOwo+ICAJfQo+ICAKPiAtCS8qIENsZWFyIEFOIGNvbXBs
ZXRlIHN0YXR1cyBvciBpbnRlcnJ1cHQgKi8KPiAtCWlmIChzdGF0ZS0+YW5fY29tcGxldGUpCj4g
LQkJeHBjc193cml0ZSh4cGNzLCBNRElPX01NRF9WRU5EMiwgRFdfVlJfTUlJX0FOX0lOVFJfU1RT
LCAwKTsKPiArCWlmIChzdGF0ZS0+YW5fY29tcGxldGUpIHsKPiArCQkvKiBDbGVhciBBTiBjb21w
bGV0ZSBzdGF0dXMgb3IgaW50ZXJydXB0ICovCj4gKwkJcmV0ID0geHBjc193cml0ZSh4cGNzLCBN
RElPX01NRF9WRU5EMiwgRFdfVlJfTUlJX0FOX0lOVFJfU1RTLCAwKTsKPiArCQlpZiAocmV0IDwg
MCkKPiArCQkJcmV0dXJuIHJldDsKPiArCj4gKwkJLyogSW5pdGlhdGUgdGhlIG5leHQgcm91bmQg
b2YgQU4gKi8KPiArCQlyZXQgPSB4cGNzX21vZGlmeSh4cGNzLCBNRElPX01NRF9WRU5EMiwgTUlJ
X0JNQ1IsIEJNQ1JfQU5SRVNUQVJULAo+ICsJCQkJICBCTUNSX0FOUkVTVEFSVCk7CgpbU2V2ZXJp
dHk6IE1lZGl1bV0KQ291bGQgdW5jb25kaXRpb25hbGx5IGFwcGx5aW5nIHRoaXMgQU4gcmVzdGFy
dCBxdWlyayBjYXVzZSBhbiBpbmZpbml0ZQppbnRlcnJ1cHQgc3Rvcm0gb3IgTURJTyBwb2xsaW5n
IGxvb3Agb24gc3RhbmRhcmQgRFcgWFBDUyBjb25maWd1cmF0aW9ucz8KCklmIGEgY2FibGUgaXMg
ZGlzY29ubmVjdGVkIG9uIGFuIFNHTUlJIHBvcnQsIHRoZSBQSFkgbWF5IGNvbnRpbnVvdXNseSB0
cmFuc21pdAp0aGUgJ0xpbmsgRG93bicgQU4gY29uZmlndXJhdGlvbiB3b3JkLiBXaGVuIHRoZSBN
QUMgY29tcGxldGVzIEFOIGFuZCBnZW5lcmF0ZXMKYW4gaW50ZXJydXB0LCB4cGNzX2dldF9zdGF0
ZV9jMzdfc2dtaWkoKSBpcyBjYWxsZWQuIEl0IGNsZWFycyB0aGUgaW50ZXJydXB0CmFuZCB1bmNv
bmRpdGlvbmFsbHkgc2V0cyBCTUNSX0FOUkVTVEFSVC4KCldpbGwgdGhpcyBjYXVzZSB0aGUgaGFy
ZHdhcmUgdG8gcmVzZXQgaXRzIEFOIHN0YXRlIG1hY2hpbmUsIGltbWVkaWF0ZWx5CmNvbXBsZXRl
IEFOIGFnYWluIHdpdGggdGhlIFBIWSdzIGNvbnRpbnVvdXMgJ0xpbmsgRG93bicgd29yZCwgYW5k
IGZpcmUgYW5vdGhlcgppbnRlcnJ1cHQsIGNyZWF0aW5nIGFuIGVuZGxlc3MgbG9vcD8KClNob3Vs
ZCB0aGlzIGJlaGF2aW9yIGJlIGlzb2xhdGVkIHRvIG9ubHkgdGhlIHBsYXRmb3JtcyB0aGF0IHJl
cXVpcmUgdGhlIHF1aXJrCihsaWtlIFJLMzU2OCksIHJhdGhlciB0aGFuIGFwcGxpZWQgdG8gYWxs
IGhhcmR3YXJlIHVzaW5nIHRoZSBEZXNpZ25XYXJlIFhQQ1MgSVA/Cgo+ICsJCWlmIChyZXQgPCAw
KQo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICAKPiAgCXJldHVybiAwOwo+ICB9CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTEz
MTg1ODQ5LjkwNzQ3OS0xLWNvaWFwcmFudEBnbWFpbC5jb20/cGFydD02CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
