Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A79F2C5475B
	for <linux-phy@archiver.kernel.org>; Fri,  8 Mar 2024 08:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vGkfKbkCXaboYP78X7ySZpsIJ9KWkdRO8voR8g/tNsw=; b=3n5tkOqH/4w13D
	OwMPtC8XYKPnc9ySr+PZg5kx+TBvgrfh2bM3t0o7Pemur7oqRUDCQuB4NjxuEzPPPmRDJMQIx0zmw
	aX8D3s2YqyuSYHecsq3ECtZ21+eLYquRqu9FmuuTGbHqymCx8vRLor4607OiBKcW9J5QJQIEx0osg
	Z/NZVqxonufTqZDNWHBFxJTK0lxoJ4U/bcm36okOFztCEwRMiCr1jQbI29D9tO35Gbfb3q+54+lnE
	owWpiBirURili2ifP1HFfIBfuEC/HDBAKcB+Z0v9Q0FSneV5ozrp43ta0Evuh0cr2D2YS5tDm/oQ5
	sQnVsnI+k82K5DFD3x8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riVxS-00000008QXP-0dfK;
	Fri, 08 Mar 2024 08:52:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riVxO-00000008QTo-1ZsG
	for linux-phy@lists.infradead.org;
	Fri, 08 Mar 2024 08:52:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1riVxG-0006wb-Ea; Fri, 08 Mar 2024 09:51:50 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1riVxG-0056NT-1J; Fri, 08 Mar 2024 09:51:50 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1riVxF-00245s-35;
	Fri, 08 Mar 2024 09:51:49 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH] phy: xilinx: Convert to platform remove callback returning void
Date: Fri,  8 Mar 2024 09:51:13 +0100
Message-ID: <57a3338a1cec683ac84d48e00dbf197e15ee5481.1709886922.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1882; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=aVN8+EY/uO3cH4FEyS7VfiUXi1DIt1cu/7mR+1Q406s=; b=owGbwMvMwMXY3/A7olbonx/jabUkhtRXF1si/vb/PSe45SCjRmGIw8xerZNOGfblPP3qfFvys zrFV+7qZDRmYWDkYpAVU2Sxb1yTaVUlF9m59t9lmEGsTCBTGLg4BWAiKc7s/8tcY5vkpm0St7Tb s9f2PWug6qxKa5X7KqK9Zza+OT9d1r+68h9vYWX8cZYTPa+uf2C/fU911ep9+gYXZjHWRimkNJx YevbjwnXL7DN5G1bpM83M7WeLiVFw6v94Q8dP5vZ20eaKsCTt+I3hSgv8zj8z5ZNJuslx2Ydzg3 aguh2PgIrh1snVue4BkxY2nXEq3tGkofxz7c7OkvLjnbKzFfe5n0l+l9j5lKfTWmiutZKMlRrb2 TnZAZsMHp4K6DOTXPHeaPlut/dmK+/7HPojLeMYsTF1tXuzSNTXjSwOp89nNas2v+bZKyi8S1Gs MZLjRvPOpb2MctJPr0wUEVnLdW3O3N/rb/64embNjqJ3AA==
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_005158_476742_34B83E51 
X-CRM114-Status: GOOD (  14.96  )
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
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyBpZ25vcmVkIChhcGFydApmcm9tIGVtaXR0aW5n
IGEgd2FybmluZykgYW5kIHRoaXMgdHlwaWNhbGx5IHJlc3VsdHMgaW4gcmVzb3VyY2UgbGVha3Mu
CgpUbyBpbXByb3ZlIGhlcmUgdGhlcmUgaXMgYSBxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2Fs
bGJhY2sgcmV0dXJuCnZvaWQuIEluIHRoZSBmaXJzdCBzdGVwIG9mIHRoaXMgcXVlc3QgYWxsIGRy
aXZlcnMgYXJlIGNvbnZlcnRlZCB0bwoucmVtb3ZlX25ldygpLCB3aGljaCBhbHJlYWR5IHJldHVy
bnMgdm9pZC4gRXZlbnR1YWxseSBhZnRlciBhbGwgZHJpdmVycwphcmUgY29udmVydGVkLCAucmVt
b3ZlX25ldygpIHdpbGwgYmUgcmVuYW1lZCB0byAucmVtb3ZlKCkuCgpUcml2aWFsbHkgY29udmVy
dCB0aGlzIGRyaXZlciBmcm9tIGFsd2F5cyByZXR1cm5pbmcgemVybyBpbiB0aGUgcmVtb3ZlCmNh
bGxiYWNrIHRvIHRoZSB2b2lkIHJldHVybmluZyB2YXJpYW50LgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2
ZXJzL3BoeS94aWxpbngvcGh5LXp5bnFtcC5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
eGlsaW54L3BoeS16eW5xbXAuYyBiL2RyaXZlcnMvcGh5L3hpbGlueC9waHktenlucW1wLmMKaW5k
ZXggZjcyYzUyNTdkNzEyLi5kYzgzMTliZGE0M2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3hp
bGlueC9waHktenlucW1wLmMKKysrIGIvZHJpdmVycy9waHkveGlsaW54L3BoeS16eW5xbXAuYwpA
QCAtOTk1LDE1ICs5OTUsMTMgQEAgc3RhdGljIGludCB4cHNndHJfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIGludCB4cHNndHJfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCB4cHNndHJfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHhwc2d0cl9kZXYg
Kmd0cl9kZXYgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKIAogCXBtX3J1bnRpbWVfZGlz
YWJsZShndHJfZGV2LT5kZXYpOwogCXBtX3J1bnRpbWVfcHV0X25vaWRsZShndHJfZGV2LT5kZXYp
OwogCXBtX3J1bnRpbWVfc2V0X3N1c3BlbmRlZChndHJfZGV2LT5kZXYpOwotCi0JcmV0dXJuIDA7
CiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHhwc2d0cl9vZl9tYXRjaFtd
ID0gewpAQCAtMTAxNSw3ICsxMDEzLDcgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgeHBzZ3Ry
X29mX21hdGNoKTsKIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgeHBzZ3RyX2RyaXZl
ciA9IHsKIAkucHJvYmUgPSB4cHNndHJfcHJvYmUsCi0JLnJlbW92ZQk9IHhwc2d0cl9yZW1vdmUs
CisJLnJlbW92ZV9uZXcgPSB4cHNndHJfcmVtb3ZlLAogCS5kcml2ZXIgPSB7CiAJCS5uYW1lID0g
InhpbGlueC1wc2d0ciIsCiAJCS5vZl9tYXRjaF90YWJsZQk9IHhwc2d0cl9vZl9tYXRjaCwKCmJh
c2UtY29tbWl0OiA4ZmZjOGIxYmJkNTA1ZTI3ZTJjODQzOWQzMjZiNjA1OWM5MDZjOWRkCi0tIAoy
LjQzLjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
