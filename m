Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E8F3C678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 11:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOfw0I+FOHYBRunv48VlUjoQJQtwjXKx7F8b/aHRutw=; b=jiiqLMekKAo4eA
	ViizH1iitt7RksgvsDrVGLJ2hh/JcfCdyE32X0HTH/o781ZF/bFukXepLujeGesUlnfrLlWKOtXlj
	FMWz0DxNWmzsJD+e3k2KRkybb601o8iUcMQ+1izXnr4kS0JnZCm2lCpZCbIk1Bhxwu6t7XcKtOzg9
	zTUdCglugePf6ie1sHiWSA/He6KcZHMwOvn+KK9f3WdkTZSfPfOG9N926kt5sZR7cWcSy6nQrKcOu
	gy8IXsRb8es1/KkC0wiEFQ3Fm4TjcBRdBen1A3TFSbcwqWrZFqxrmLbqk8sc0nhbk+VY4wBCeC+rw
	OFcqP9kHIy7wBmhKuBNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyp-00HZGp-2J; Tue, 07 Mar 2023 11:59:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyU-00HZ0j-7s
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-0006Tu-I3; Tue, 07 Mar 2023 12:59:10 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyH-002TFB-Qh; Tue, 07 Mar 2023 12:59:09 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyF-002yiw-4v; Tue, 07 Mar 2023 12:59:07 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 05/31] phy: cadence: phy-cadence-torrent: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:34 +0100
Message-Id: <20230307115900.2293120-6-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1914; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=1GRRyDR85Pj5BAv2kHwpd70U0CmKvfL6izY6Oa0xqBI=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByaPssiuLDX0F8hVfepEpm/U7vF3yeXgob/uO MKtdvcUt1mJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmjwAKCRDB/BR4rcrs CZCaB/4x58m9q9HoC0njSyJnb3YowwDRSh5zlXsyS2Vly6kcrplPUoTne8tjHsRUG7PUxhpo41g MgOUTFrUEkDYTvwiZWzK1Q6flxEyZRcvNQaRPJ+9TQOGtdx/VOjsInN4p2TQX/sy5ZQPQkmhRY7 74T+fIvJyNHmM+k9p5VZOV2taGWLAQaUdMW/TvJz8OuP8KQgfiJV4aK0KoF6Oqs+tt00nHhlcgB 9XHoEyZBTHMZTdUZ8ybd6rlYJ55Q/Mp3PpG+vFivZqlY1uLjJbhFrErYLWT6uTVj4q8yylCJmpn tx+sYrA45aPpjDK9a8+kI2uy/s+EZLTHaAd8X6ZGNL+t46/L
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035922_334066_A7D2C375 
X-CRM114-Status: GOOD (  15.66  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhlIC5yZW1vdmUoKSBjYWxsYmFjayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBp
bnQgd2hpY2ggbWFrZXMKbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3VtZSBpdCdzIHBv
c3NpYmxlIHRvIGRvIGVycm9yIGhhbmRsaW5nIGJ5CnJldHVybmluZyBhbiBlcnJvciBjb2RlLiBI
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyAobW9zdGx5KSBpZ25vcmVkCmFuZCB0aGlzIHR5
cGljYWxseSByZXN1bHRzIGluIHJlc291cmNlIGxlYWtzLiBUbyBpbXByb3ZlIGhlcmUgdGhlcmUg
aXMgYQpxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuIHZvaWQuIEluIHRo
ZSBmaXJzdCBzdGVwIG9mIHRoaXMKcXVlc3QgYWxsIGRyaXZlcnMgYXJlIGNvbnZlcnRlZCB0byAu
cmVtb3ZlX25ldygpIHdoaWNoIGFscmVhZHkgcmV0dXJucwp2b2lkLgoKVHJpdmlhbGx5IGNvbnZl
cnQgdGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQpj
YWxsYmFjayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KClNpZ25lZC1vZmYtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJp
dmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMgfCA2ICsrLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYyBiL2RyaXZlcnMvcGh5L2Nh
ZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jCmluZGV4IGYwOTkwNTNjNTgzYy4uMzgzMWY1OTZk
NTBjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQu
YworKysgYi9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYwpAQCAtMjc3
Nyw3ICsyNzc3LDcgQEAgc3RhdGljIGludCBjZG5zX3RvcnJlbnRfcGh5X3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIHJldDsKIH0KIAotc3RhdGljIGludCBjZG5z
X3RvcnJlbnRfcGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQorc3RhdGlj
IHZvaWQgY2Ruc190b3JyZW50X3BoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIHsKIAlzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAqY2Ruc19waHkgPSBwbGF0Zm9ybV9nZXRf
ZHJ2ZGF0YShwZGV2KTsKIAlpbnQgaTsKQEAgLTI3OTEsOCArMjc5MSw2IEBAIHN0YXRpYyBpbnQg
Y2Ruc190b3JyZW50X3BoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAog
CWNsa19kaXNhYmxlX3VucHJlcGFyZShjZG5zX3BoeS0+Y2xrKTsKIAljZG5zX3RvcnJlbnRfY2xr
X2NsZWFudXAoY2Ruc19waHkpOwotCi0JcmV0dXJuIDA7CiB9CiAKIC8qIFNpbmdsZSBEaXNwbGF5
UG9ydChEUCkgbGluayBjb25maWd1cmF0aW9uICovCkBAIC00NzA4LDcgKzQ3MDYsNyBAQCBNT0RV
TEVfREVWSUNFX1RBQkxFKG9mLCBjZG5zX3RvcnJlbnRfcGh5X29mX21hdGNoKTsKIAogc3RhdGlj
IHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgY2Ruc190b3JyZW50X3BoeV9kcml2ZXIgPSB7CiAJLnBy
b2JlCT0gY2Ruc190b3JyZW50X3BoeV9wcm9iZSwKLQkucmVtb3ZlID0gY2Ruc190b3JyZW50X3Bo
eV9yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSBjZG5zX3RvcnJlbnRfcGh5X3JlbW92ZSwKIAkuZHJp
dmVyID0gewogCQkubmFtZQk9ICJjZG5zLXRvcnJlbnQtcGh5IiwKIAkJLm9mX21hdGNoX3RhYmxl
CT0gY2Ruc190b3JyZW50X3BoeV9vZl9tYXRjaCwKLS0gCjIuMzkuMQoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
