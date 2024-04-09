Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F7A4CD128A
	for <linux-phy@archiver.kernel.org>; Tue,  9 Apr 2024 16:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gI0AadTIllqqvQVxF1x2EvegK6VeMGrfxc27SOUeE7c=; b=nx4Pp3+bU2UrY0
	eYQgaMprWApiJVZi7CHmbNL4vh1OCvLFx93XzgRuQlo4E7SvrCaWRsXg9kw6FaKT5gL45gX/z8lES
	vTKwNgd6Oz/8XetDrdpLoBE1MKzA0yVRek54Ht9kG67lpY/ZMZXGNUk+ntpwb71dFTe2two4e+g+d
	ZVr0BP40Wds5V9UHJDLrDLli3PnIjh5o7clZzYvacxxnBkkM9NzrH2K0D9MEiGQGLx49qmfx/00ze
	c6+sh8T2lLWRm9kPjmlWIt2LxNQ6vL3U/ciWbpY50/+RofHEc1T9j3sLopJqmUeyYK2DMBAkT2UxK
	wyK2pEj25FlldpLuCjiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruE82-00000002tMo-0sjB;
	Tue, 09 Apr 2024 16:15:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruE7y-00000002tK6-2WE1
	for linux-phy@lists.infradead.org;
	Tue, 09 Apr 2024 16:15:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1ruE7p-0004Jl-4y; Tue, 09 Apr 2024 18:15:09 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1ruE7o-00BKsS-NN; Tue, 09 Apr 2024 18:15:08 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1ruE7o-00H3jd-23;
	Tue, 09 Apr 2024 18:15:08 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	kernel@pengutronix.de,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: freescale: fsl-samsung-hdmi: Convert to platform remove callback returning void
Date: Tue,  9 Apr 2024 18:15:06 +0200
Message-ID: <20240409161505.66619-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2186; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=UODHebjoSRsDBh4aJIcSDZTcohe95O3Vckhf7QF1o7k=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmFWmJQu+7+BClDllOlLVxiKIlBJ9uwSJIrjRlS chsD2/Y1s2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhVpiQAKCRCPgPtYfRL+ TsMhCACZ0/Aq+jK/yeH9y/XY9appTHmSYkynpNly+AOXb+/GPhtjxJ4P3m0nSIzYDa73htQt+Qn XpSkQk8X99dyD9dpb4Nyj70zWpX2F8615uxEUmQ8pd/q5v4rDB8vA8EP0KNxlnWazHi8PZB3lNC V39FtIbiy0DC59XGSyjgrUg7S8KRarKSbd2hQ8WEdBFt8ZWAbYmeOKoko384saRFnogcYxbxCNE YmZVIIusOLdFu5Bcc/qWIB4Oxjz0Lb0rJssRqzYmDfSH+fZ4GPm56TU/8QEUMvfNvJNFFR5CpsU vlBRTQmEGCE+UN4FbnC2PT2ijEDO2Bp2NvKXK7l+Cmy2FWyi
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_091518_666808_29914AAC 
X-CRM114-Status: GOOD (  14.61  )
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
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCkhlbGxv
LAoKdGhlIGRyaXZlciBwYXRjaGVkIGhlcmUgZG9lc24ndCBleGlzdCB5ZXQgaW4gdGhlIG1haW4g
bGluZSwgaXQgY3VycmVudGx5CmlzIGFkZGVkIGluIGNvbW1pdCA2YWQwODJiZWU5MDIgYXZhaWxh
YmxlIGluCmdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9waHkv
bGludXgtcGh5LmdpdCBuZXh0IC4KCkJlc3QgcmVnYXJkcwpVd2UKCiBkcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxl
L3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKaW5kZXggODllMmMwMWYyY2NmLi45MDQ4Y2RjNzYwYzIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5j
CisrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCkBAIC02
NTcsMTEgKzY1Nyw5IEBAIHN0YXRpYyBpbnQgZnNsX3NhbXN1bmdfaGRtaV9waHlfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0aWMgaW50
IGZzbF9zYW1zdW5nX2hkbWlfcGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQorc3RhdGljIHZvaWQgZnNsX3NhbXN1bmdfaGRtaV9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiB7CiAJb2ZfY2xrX2RlbF9wcm92aWRlcihwZGV2LT5kZXYub2Zfbm9k
ZSk7Ci0KLQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGludCBfX21heWJlX3VudXNlZCBmc2xfc2Ft
c3VuZ19oZG1pX3BoeV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKQEAgLTcwNiw3ICs3MDQs
NyBAQCBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9vZl9tYXRj
aCk7CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGZzbF9zYW1zdW5nX2hkbWlfcGh5
X2RyaXZlciA9IHsKIAkucHJvYmUgID0gZnNsX3NhbXN1bmdfaGRtaV9waHlfcHJvYmUsCi0JLnJl
bW92ZSA9IGZzbF9zYW1zdW5nX2hkbWlfcGh5X3JlbW92ZSwKKwkucmVtb3ZlX25ldyA9IGZzbF9z
YW1zdW5nX2hkbWlfcGh5X3JlbW92ZSwKIAkuZHJpdmVyID0gewogCQkubmFtZSA9ICJmc2wtc2Ft
c3VuZy1oZG1pLXBoeSIsCiAJCS5vZl9tYXRjaF90YWJsZSA9IGZzbF9zYW1zdW5nX2hkbWlfcGh5
X29mX21hdGNoLAoKYmFzZS1jb21taXQ6IGEwNTNmZDNjYTVkMWI5MjdhODY1NWYyMzljODRiMGQ3
OTAyMThmZGEKLS0gCjIuNDMuMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
