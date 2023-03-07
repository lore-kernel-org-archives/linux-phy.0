Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E2D2C678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRA31/lbS8vyVNT+lqANikV8vKk+WHvJJ3mFvjrzlS8=; b=KY2QIYC7p+M6A6
	RTV7I1LTM7a61DtA27Zg0/ROyAty4/zFOp8sZJCEqN8JwJV7RGdkap/+hmhnEskqZ5UAZNehc8Omo
	RpEyya+Mu0xgML4XnH71aa7Txuu8cqgiaalehCTnHCEvadFWTw852YGIDfW2IPKMLk08DypSphTbk
	S2SGF82hD0AvvQ14mbXDXorL94zCZ9zelFBQR1qLUPmZao8TFR3LyfO542jAq+RTxG3d01rorAnAD
	MLzsAyXcwnfmy/KRdboIMoXEQ83lYMqfgFD9T5UleLqarPzt74SqFAMfY21M5EB+uvUeU6HEStplV
	bITRTIf7jRwarCvMN1Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVze-00HZnQ-TN; Tue, 07 Mar 2023 12:00:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyh-00HZCP-IL
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=pv1Kzd5+N+jA6CZ98VqCMtJ36LJsWXt0hzxwgSM3DZg=; b=UiXf5fYHEWKqMPNz4Z+HWuPV7o
	OPsxx6efI7gjmuSJXKSVl0Oo/tTIJDu2jUbB/+U3i02qVWmBX6peEBQxWAt3iN1ygne5N4jWXw8Z4
	5c1/g8p4em1TLHLbNAfS+j80Edc0SmL6WbpHxbSVBHNk9fB1FYAYi2GewFpQA0H9As0ddTm1mLfL+
	eC54CHLSJK3euRVY/sf+6+ppqICm4szNagpf61vhKPPwKW5fl2t4iZwbmJ0G5nJ+a1b1Ypx2YmT4Z
	vXO4kMWQbmUMFThSRJ5kG/dOog0bTAU6KrvKzNosEec1xGAW0gi61Bnwsd1Sja+W8EHu0+eexlpsj
	XNfzgPlg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyZ-00H2AA-2w
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-0006Ts-J7; Tue, 07 Mar 2023 12:59:10 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyH-002TF7-Nd; Tue, 07 Mar 2023 12:59:09 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyF-002yiz-9t; Tue, 07 Mar 2023 12:59:07 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Liu Ying <victor.liu@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 06/31] phy: freescale: phy-fsl-imx8qm-lvds-phy: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:35 +0100
Message-Id: <20230307115900.2293120-7-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1724; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=9gpHIEckggYTyZ3HIlCaCJikgQAfbCSp+a63y0MDM4Y=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByaTAkC2kNUdjAdrmyObSMkjKoxMDh66rcgMA bw14mHjebSJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmkwAKCRDB/BR4rcrs Cb0OB/wJwSxUlUSpn3/T4nIet5SaQGCH0dLdgUpAW6AZMoVY+j56u0cwQXr5Ue49CMVwK4LJyeA UDS35Sw9KxsXcaMeH/UW8BkZRYtkWvFYgqCrEZj4SABoIgaRyezaOphHK52HInzGQhXauoufqkO YSl9500uH1FdnbqWH3aXlfHocGZ6gIGeUDRM/5Ptfa+Y242jJVx7EjOm6Zkrjp8RZ2QOb2pF1yW PeFXUq/e5Kc1FfRFioMtTE0hsnMyR6M+esB66Qm6kAFAIk6dGXOjTiKkYzPSqvWvlXb8firVMwf uoEszAA4QtjXQRwq+dKIYzrCOccPZLQ9GJYstbFusqh1IeNX
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115929_444075_FC262F39 
X-CRM114-Status: GOOD (  14.86  )
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
dmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OHFtLWx2ZHMtcGh5LmMgfCA2ICsrLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4cW0tbHZkcy1waHkuYyBiL2Ry
aXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhxbS1sdmRzLXBoeS5jCmluZGV4IGU1MTRi
NjRiZmRhYi4uMGFlMDUyZGYzNzY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUv
cGh5LWZzbC1pbXg4cW0tbHZkcy1waHkuYworKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5
LWZzbC1pbXg4cW0tbHZkcy1waHkuYwpAQCAtMzkxLDExICszOTEsOSBAQCBzdGF0aWMgaW50IG1p
eGVsX2x2ZHNfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJu
IHJldDsKIH0KIAotc3RhdGljIGludCBtaXhlbF9sdmRzX3BoeV9yZW1vdmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIG1peGVsX2x2ZHNfcGh5X3JlbW92ZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCXBtX3J1bnRpbWVfZGlzYWJsZSgmcGRldi0+
ZGV2KTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIG1peGVs
X2x2ZHNfcGh5X3J1bnRpbWVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCkBAIC00MzYsNyAr
NDM0LDcgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgbWl4ZWxfbHZkc19waHlfb2ZfbWF0Y2gp
OwogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBtaXhlbF9sdmRzX3BoeV9kcml2ZXIg
PSB7CiAJLnByb2JlCT0gbWl4ZWxfbHZkc19waHlfcHJvYmUsCi0JLnJlbW92ZQk9IG1peGVsX2x2
ZHNfcGh5X3JlbW92ZSwKKwkucmVtb3ZlX25ldyA9IG1peGVsX2x2ZHNfcGh5X3JlbW92ZSwKIAku
ZHJpdmVyID0gewogCQkucG0gPSAmbWl4ZWxfbHZkc19waHlfcG1fb3BzLAogCQkubmFtZSA9ICJt
aXhlbC1sdmRzLXBoeSIsCi0tIAoyLjM5LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
