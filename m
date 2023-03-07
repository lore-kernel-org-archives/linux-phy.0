Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11C92C678D4
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BE7ox1BXXNWcCeqIWBAhE8mrIh+WFxI2OCHNdz06CY=; b=DS50XxdgMOqEre
	5cj/SSGCVYcos0H5+Kd6jfom8Cjs6Mt6oSDBsGJPMc/yyfmgoHcK9KoBng2GVmsSU7C0faK14c6rW
	VBH53/Wj5DTJAlSn9Tw8RgYdxb5X2iBJzIWJFqOaw+Nv6ZDma5iWQy7rZPs+PgFswZGJ6LI4QBI6m
	r/xECk/ZDm9NkR72jggzQWd5Ikt+2ds1WLEZZU7PgMDhZu+fJXs4Pq38C4m+8Jh3y/p3G4+Ezd9L5
	hY3BfLLtpz77/Xf3yjWEDxRKbcUOlh6oj9PY9YoE59XfFw09Kh8+zWciXUVwxscgAaSDYejt+ht04
	NBWYgXxreYs4qK8Fyyfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVzM-00HZav-DR; Tue, 07 Mar 2023 12:00:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyZ-00HZ6w-UO
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-0006TP-A5; Tue, 07 Mar 2023 12:59:11 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyG-002TEq-KL; Tue, 07 Mar 2023 12:59:08 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyF-002yj7-KN; Tue, 07 Mar 2023 12:59:07 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 08/31] phy: mediatek: phy-mtk-mipi-dsi: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:37 +0100
Message-Id: <20230307115900.2293120-9-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1659; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=OaSKTY4uqDyE/b4P9Kpjn5LpWgMlD/CRSWsvB/MD7Nw=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByacJQfciNykwOUJrVNhGA5Nxd2zTC7TCkwZQ 4c8QctKW9SJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmnAAKCRDB/BR4rcrs CSVVCACQo1k2/vqezM/4H1xRWVHIdvVsDLdfoHThYAyWII3ivZoIokEktT25evY1Znhmyu0nuhw uwLCJgEkYRjZszqxZQhA/fe0I12lZhSesE7LbSnIY6KrtAhkkah6WX3dIe3h0jo9a9NQyn/X9qy vJ84H9UfFtjkQPehl4G/LD5yKO/fq1BBmA4KUM1bIx5HZ0qE4dDZvyf4BbOT1sk1nHEuF9ZquKk m22ixqZB+EqEelFK8wKKBX+IPTa9hVnLK7xXNqVPizdhQNnQR/7zEvsPmtowJNhcfz7PjY2DQz+ b55i6avd4ukF7PdeLPGi92kGTgKYoqzzcOB1rqVzV1uu6BF0
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035928_016795_530C998D 
X-CRM114-Status: GOOD (  16.13  )
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
dmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1taXBpLWRzaS5jIHwgNSArKy0tLQogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLW1pcGktZHNpLmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRl
ay9waHktbXRrLW1pcGktZHNpLmMKaW5kZXggY2Y5YzM4NjM4NWJiLi41MjZjMDVhNGFmNWUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstbWlwaS1kc2kuYworKysgYi9k
cml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLW1pcGktZHNpLmMKQEAgLTE4MCwxMCArMTgwLDkg
QEAgc3RhdGljIGludCBtdGtfbWlwaV90eF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQogCQkJCSAgIG1pcGlfdHgtPnBsbCk7CiB9CiAKLXN0YXRpYyBpbnQgbXRrX21pcGlfdHhf
cmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCBtdGtfbWlw
aV90eF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlvZl9jbGtfZGVs
X3Byb3ZpZGVyKHBkZXYtPmRldi5vZl9ub2RlKTsKLQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGNv
bnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbXRrX21pcGlfdHhfbWF0Y2hbXSA9IHsKQEAgLTE5OSw3
ICsxOTgsNyBAQCBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBtdGtfbWlwaV90eF9tYXRjaCk7CiAK
IHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIG10a19taXBpX3R4X2RyaXZlciA9IHsKIAku
cHJvYmUgPSBtdGtfbWlwaV90eF9wcm9iZSwKLQkucmVtb3ZlID0gbXRrX21pcGlfdHhfcmVtb3Zl
LAorCS5yZW1vdmVfbmV3ID0gbXRrX21pcGlfdHhfcmVtb3ZlLAogCS5kcml2ZXIgPSB7CiAJCS5u
YW1lID0gIm1lZGlhdGVrLW1pcGktdHgiLAogCQkub2ZfbWF0Y2hfdGFibGUgPSBtdGtfbWlwaV90
eF9tYXRjaCwKLS0gCjIuMzkuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
