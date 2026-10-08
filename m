Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E96DCA6007
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 11:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziYGnn9a0VAKB4kTpiiYpnSQ3rkBM0/CKJNwdAnQG4Q=; b=cQZr6+9ownbzWN
	3FlUD+ItcjEYV7cIb6qQTRCqpd2m/pYDaRsTl12ArDBPn9x3OEaOj9OASN67XaFlGyyTQlZlmmtRT
	OiBlBJAI3+BYNxXbEOyArbJybHHkzY/je0k02B2Ny7YcqlaBYs5VZHKdCcV4VgrHtVpFBBD7imXzr
	N93mCbZ/o62Plu8CqIt4T3F2E/4k1hbMGQUQHRIILvaZuHqIfnwKlB2ANVTK8dUmbv7YP2XiHX77W
	iQbWAMdOAvUvWrgTpKRHb6o3tyZJRsjlhpJ4JSLHhy8OChbcNGADI/vRP3HCzGKbNe19RSBKfPX5F
	DnQ7ROAtsMundh4l6Omw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEmTL-00000004GTT-3a7U;
	Thu, 08 Oct 2026 11:39:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEmTL-00000004GTE-0KZZ
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 11:39:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 87106438A1;
	Thu,  8 Oct 2026 11:39:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F09E21F000FF;
	Thu,  8 Oct 2026 11:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791459578;
	bh=MEQ/WGt30g3uE836dXb/ot0HcFGDv/bs7yWpwc7rEow=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HWD0ha+IegfdYhFmuy2rzUEqcaXQXf5QiBo0iEwLisVoLqlOKCnPbiBAK/Rzw8oT/
	 dNoZGg4IXe1NxUV4oCuwES1tL1D8MSQfaWJTT+DjKpYetAn6zp94LNnYmfekJx1u3d
	 ZkNsq2ofestTRkMVsXdDo5W627xn8ZXkTGJYNOpec8e3T/E3X0RarggocaojA0fwkg
	 eOGJ/6RaDXGxJQM+7sSGroZECyoZrF/TgNatNR81C1s8MhV9LX2N6qWO/3v3hJNQgY
	 esITsreCOD8k4K19DIrZ79g1YyRJ100Cj3JFU5DRjX4aYVyT7DYc3xUqXCk/Q++lse
	 AU6t7A1G7w3vg==
Message-ID: <sashiko-outbox-164098@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] phy: aspeed: Add ASPEED PCIe PHY driver
To: "Jacky Chou" <jacky_chou@aspeedtech.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20261008-aspeed_pcie_phy-v1-2-96764937aef0@aspeedtech.com>
References: <20261008-aspeed_pcie_phy-v1-0-96764937aef0@aspeedtech.com>
 <20261008-aspeed_pcie_phy-v1-2-96764937aef0@aspeedtech.com>
Date: Thu, 08 Oct 2026 11:39:37 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBhc3BlZWQ6
IERlc3RydWN0aXZlIG92ZXJ3cml0ZSBvZiBQRUhSX0dMT0JBTCBhbmQgUEVIUl9NSVNDXzVDIHJl
Z2lzdGVycwotIFtMb3ddIGJ1aWxkOiBtaXNzaW5nIDxsaW51eC9iaXRmaWVsZC5oPiBhbmQgPGxp
bnV4L2lvLmg+IGNhdXNlcyBDT01QSUxFX1RFU1QgZmFpbHVyZXMKLS0KCmNvbW1pdCBkNmM2ODdh
ZjA4ZjUyY2U4YzUxMDY4ODNhMGFkYTM3MzUyOGZlMWI4CkF1dGhvcjogSmFja3kgQ2hvdSA8amFj
a3lfY2hvdUBhc3BlZWR0ZWNoLmNvbT4KCnBoeTogYXNwZWVkOiBBZGQgQVNQRUVEIFBDSWUgUEhZ
IGRyaXZlcgoKVGhpcyBjb21taXQgaW50cm9kdWNlcyB0aGUgQXNwZWVkIFBDSWUgUEhZIGNvbnRy
b2xsZXIgZHJpdmVyIGZvcgpBU1QyNjAwLzI3MDAgcGxhdGZvcm1zLiBJdCBhZGRzIEtjb25maWcg
YW5kIE1ha2VmaWxlIGNoYW5nZXMgYWxvbmdzaWRlCnRoZSBtYWluIGRyaXZlciBjb2RlIGltcGxl
bWVudGluZyBQSFkgb3BlcmF0aW9ucy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2FzcGVl
ZC9waHktYXNwZWVkLXBjaWUuYyBiL2RyaXZlcnMvcGh5L2FzcGVlZC9waHktYXNwZWVkLXBjaWUu
Ywo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uZWIzMDA4ODdi
NjQ0MQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3BoeS9hc3BlZWQvcGh5LWFzcGVl
ZC1wY2llLmMKPiBAQCAtMCwwICsxLDIzNyBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMCsKPiArLyoKPiArICogQ29weXJpZ2h0IDIwMjUgQXNwZWVkIFRlY2hub2xvZ3kg
SW5jLgo+ICsgKi8KPiArCj4gKyNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiArI2luY2x1ZGUgPGxp
bnV4L2Vyci5oPgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51
eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3BoeS9wY2llLmg+Cj4gKyNp
bmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+CgpbU2V2ZXJpdHk6IExvd10KQ2FuIHRoaXMgY2F1c2Ug
YnVpbGQgZmFpbHVyZXMgd2hlbiBDT01QSUxFX1RFU1QgaXMgZW5hYmxlZCBvbiBhcmNoaXRlY3R1
cmVzCnRoYXQgZG8gbm90IGltcGxpY2l0bHkgaW5jbHVkZSA8bGludXgvYml0ZmllbGQuaD4gYW5k
IDxsaW51eC9pby5oPj8KClRoZSBGSUVMRF9QUkVQLCBGSUVMRF9NT0RJRlksIHJlYWRsLCBhbmQg
d3JpdGVsIG1hY3JvcyBhbmQgZnVuY3Rpb25zIGFyZQp1c2VkIHRocm91Z2hvdXQgdGhpcyBmaWxl
LCBidXQgdGhlaXIgaGVhZGVycyBhcmUgbm90IGV4cGxpY2l0bHkgaW5jbHVkZWQuCgpbIC4uLiBd
Cj4gK3N0YXRpYyBpbnQgYXN0MjYwMF9waHlfc2V0X21vZGUoc3RydWN0IHBoeSAqcGh5LCBlbnVt
IHBoeV9tb2RlIG1vZGUsCj4gKwkJCQlpbnQgc3VibW9kZSkKPiArewo+ICsJc3RydWN0IGFzcGVl
ZF9wY2llX3BoeSAqcGNpZV9waHkgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiArCj4gKwlzd2l0
Y2ggKHN1Ym1vZGUpIHsKPiArCWNhc2UgUEhZX01PREVfUENJRV9SQzoKPiArCQl3cml0ZWwoQVNU
MjYwMF9QT1JUX1RZUEUoMHgzKSwgcGNpZV9waHktPnJlZyArIFBFSFJfR0xPQkFMKTsKCltTZXZl
cml0eTogTWVkaXVtXQpDb3VsZCB0aGlzIHdyaXRlIHVuaW50ZW50aW9uYWxseSBjbGVhciBvdGhl
ciBjb25maWd1cmF0aW9uIGJpdHMgaW4gUEVIUl9HTE9CQUw/Ckl0IG92ZXJ3cml0ZXMgdGhlIGVu
dGlyZSByZWdpc3RlciBpbnN0ZWFkIG9mIHBlcmZvcm1pbmcgYSByZWFkLW1vZGlmeS13cml0ZQpv
cGVyYXRpb24uCgo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoKPiArCQlkZXZfZXJyKCZwaHktPmRl
diwgIlVuc3VwcG9ydGVkIHN1Ym1vZGUgJWRcbiIsIHN1Ym1vZGUpOwo+ICsJCXJldHVybiAtRUlO
VkFMOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9CgpbIC4uLiBdCj4gK3N0YXRpYyBpbnQg
YXN0MjcwMF9waHlfc2V0X21vZGUoc3RydWN0IHBoeSAqcGh5LCBlbnVtIHBoeV9tb2RlIG1vZGUs
Cj4gKwkJCQlpbnQgc3VibW9kZSkKPiArewo+ICsJc3RydWN0IGFzcGVlZF9wY2llX3BoeSAqcGNp
ZV9waHkgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiArCXUzMiBjZmdfdmFsOwo+ICsKPiArCXN3
aXRjaCAoc3VibW9kZSkgewo+ICsJY2FzZSBQSFlfTU9ERV9QQ0lFX1JDOgo+ICsJCXdyaXRlbCgw
LCBwY2llX3BoeS0+cmVnICsgUEVIUl9NSVNDXzI3OCk7Cj4gKwkJd3JpdGVsKFNFTF9JTlRFUk5B
TF9SRVNFVCwgcGNpZV9waHktPnJlZyArIFBFSFJfTUlTQ18yODApOwo+ICsJCXdyaXRlbChQT1NU
RURfREFUQV9DUkVESVRTKDB4YzApIHwgUE9TVEVEX0hFQURFUl9DUkVESVRTKDB4YSksCj4gKwkJ
ICAgICAgIHBjaWVfcGh5LT5yZWcgKyBQRUhSX01JU0NfNzApOwo+ICsJCXdyaXRlbChDT01QTEVU
SU9OX0RBVEFfQ1JFRElUUygweDMwKSB8IENPTVBMRVRJT05fSEVBREVSX0NSRURJVFMoMHg4KSwK
PiArCQkgICAgICAgcGNpZV9waHktPnJlZyArIFBFSFJfTUlTQ183OCk7Cj4gKwkJd3JpdGVsKExP
Q0FMX1NDQUxFX1NVUCwgcGNpZV9waHktPnJlZyArIFBFSFJfTUlTQ181OCk7Cj4gKwkJd3JpdGVs
KENPTkZJR19SQ19ERVZJQ0UsIHBjaWVfcGh5LT5yZWcgKyBQRUhSX01JU0NfNUMpOwoKW1NldmVy
aXR5OiBNZWRpdW1dCkRvZXMgd3JpdGluZyBDT05GSUdfUkNfREVWSUNFIGRpcmVjdGx5IHRvIFBF
SFJfTUlTQ181QyByaXNrIHplcm9pbmcgb3V0IG90aGVyCmJpdHMgaW4gdGhpcyByZWdpc3Rlcj8K
CkEgcmVhZC1tb2RpZnktd3JpdGUgcGF0dGVybiBtaWdodCBiZSBuZWVkZWQgaGVyZSwgc2ltaWxh
ciB0byBob3cgUEVIUl9NSVNDXzYwCmlzIGhhbmRsZWQganVzdCBiZWxvdyB0aGlzLgoKPiArCQlj
ZmdfdmFsID0gcmVhZGwocGNpZV9waHktPnJlZyArIFBFSFJfTUlTQ182MCk7Cj4gKwkJRklFTERf
TU9ESUZZKEFTVDI3MDBfUE9SVF9UWVBFX01BU0ssICZjZmdfdmFsLAo+ICsJCQkgICAgIFBPUlRf
VFlQRV9ST09UKTsKPiArCQl3cml0ZWwoY2ZnX3ZhbCwgcGNpZV9waHktPnJlZyArIFBFSFJfTUlT
Q182MCk7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYxMDA4LWFzcGVlZF9wY2llX3BoeS12MS0wLTk2NzY0OTM3YWVmMEBhc3BlZWR0
ZWNoLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
