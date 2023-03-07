Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 343DDC678D4
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 11:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xo0Hm3RtvMcZ6jdM6Y063XQ1vschXwXJpniOmNIbPdk=; b=csfbXTO8QdNqOQ
	JDPnKQvBvws6E4g4PhAVOQxxy91KjMvS4AeMRwJ5uu/Nb30x+e2BhALhbAIBxeLwG1mvw+zy6v98G
	x80pj4kAnrNDyI4znUAh2+nvXr24Y9MgdEa47C8XcCBDbXsTrhQkuH26pr3uCfGyEFLd90Z3zHZAA
	vwp6upinB4S83OfLDbwIyvygSoIAKiP9HNzfcQus1b7KNeb9iOqb0xyzocyzGp7i8V1KO5RLWVkS5
	oyUT88ctW6S6TwL/mgckqRIVeKu9ZlJd9IT7uTke+Yr7rNbEMLCdq7ls4UMHJwfxd/YyLSfEopM8D
	8EOCJOwowzPO3saM6KTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyl-00HZEK-BL; Tue, 07 Mar 2023 11:59:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyU-00HZ0W-1X
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyN-0006g5-GZ; Tue, 07 Mar 2023 12:59:15 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyL-002TGm-1Y; Tue, 07 Mar 2023 12:59:13 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-002ykX-8B; Tue, 07 Mar 2023 12:59:12 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lv Ruyi <lv.ruyi@zte.com.cn>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 30/31] phy: ti: phy-ti-pipe3: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:59 +0100
Message-Id: <20230307115900.2293120-31-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1772; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=wgMZPGUgw8h17S+52a9JdTMDYMZqnuWu4i4fHW8hpDo=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByb5wImGA2u4Kdye+5pE2RO89nR8WLiKNsSdl hGQO3lBN+aJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm+QAKCRDB/BR4rcrs CcILCACW+Yd1Uo1sIG2LKdlCQ77E/x88IcHgDR9kjXujT6iSjK9RkJ3HHbv4COexLCaKrNug96+ g5dZF2yfwOrqDCstCUht3VOyfmaWjMSLc5zjjv/yC2mLouH7ir+xitVVanXV9ubUjjn8j+29oo7 IeHL4kHMWzFrbPZZIXPVRn1rWhLPoKqvcXXOFNrdHmwfrf4A4czPW5pnApx/WhBFXZI98W3vxcU l+NcCOZbY1hLC+zz05nE5TJ2AplXCFMzEiOPJTVKmcTx5UUlj/LPooaht7nmo/Cd5dKY10dMkPN wqxT8zbMEvAD8EV9CloCG90NbC1nL4XV+HsV0ggNAMBGB7Yy
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035922_157027_2502EC80 
X-CRM114-Status: GOOD (  15.54  )
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
dmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90
aS9waHktdGktcGlwZTMuYyBiL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBlMy5jCmluZGV4IGY1
MDJjMzZmM2JlNS4uNTA3ZTE1NTJkYjVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS90aS9waHkt
dGktcGlwZTMuYworKysgYi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwpAQCAtODQxLDcg
Kzg0MSw3IEBAIHN0YXRpYyBpbnQgdGlfcGlwZTNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKIAlyZXR1cm4gUFRSX0VSUl9PUl9aRVJPKHBoeV9wcm92aWRlcik7CiB9CiAKLXN0
YXRpYyBpbnQgdGlfcGlwZTNfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitz
dGF0aWMgdm9pZCB0aV9waXBlM19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
IHsKIAlzdHJ1Y3QgdGlfcGlwZTMgKnBoeSA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwog
CkBAIC04NTAsOCArODUwLDYgQEAgc3RhdGljIGludCB0aV9waXBlM19yZW1vdmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIAkJcGh5LT5zYXRhX3JlZmNsa19lbmFibGVkID0gZmFsc2U7
CiAJfQogCXBtX3J1bnRpbWVfZGlzYWJsZSgmcGRldi0+ZGV2KTsKLQotCXJldHVybiAwOwogfQog
CiBzdGF0aWMgaW50IHRpX3BpcGUzX2VuYWJsZV9jbG9ja3Moc3RydWN0IHRpX3BpcGUzICpwaHkp
CkBAIC05MjgsNyArOTI2LDcgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgdGlfcGlwZTNfaWRf
dGFibGUpOwogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciB0aV9waXBlM19kcml2ZXIg
PSB7CiAJLnByb2JlCQk9IHRpX3BpcGUzX3Byb2JlLAotCS5yZW1vdmUJCT0gdGlfcGlwZTNfcmVt
b3ZlLAorCS5yZW1vdmVfbmV3CT0gdGlfcGlwZTNfcmVtb3ZlLAogCS5kcml2ZXIJCT0gewogCQku
bmFtZQk9ICJ0aS1waXBlMyIsCiAJCS5vZl9tYXRjaF90YWJsZSA9IHRpX3BpcGUzX2lkX3RhYmxl
LAotLSAKMi4zOS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
