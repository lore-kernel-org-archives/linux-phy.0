Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1759FC6FD1F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 11:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pi4ov/x0yzwdszI4osTOMckQGqrdEsTDrSmYFzdwibk=; b=PN371+l6a7xdSS
	e4byys+xAQLxs/YxjH/boLPE3w/PQ7nh5hFckiSsX8X/6HtQ/PQc+uuFW8dHzlvDpmbtHwVlHAYP6
	KxwQW/SPAvTLkgGSGUyEYCnxDMzxXk8ZGh3S3cVKrSgDQl10VENvl6tRrY/F/QFdoB9K79LCJm1/2
	ZRUKacF3I4GO7AhODRsVesR1pK/XsVFsU2croxZVAAkl0t1cP99iAQHfQi9mfv5vOjFBfGEtKDGIA
	jCs8DSR1oAZ5EbVhSRynrI0/GlJGv91BUYNl9bFWMSLMC88kOE+j6Q2dlY/lwyBDOGEVH8E9CwR+M
	rRLCUVNylbD4QU8b7TFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyl-00HZEx-VP; Tue, 07 Mar 2023 11:59:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyV-00HZ0p-0i
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-0006Ze-IP; Tue, 07 Mar 2023 12:59:12 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002TG6-RJ; Tue, 07 Mar 2023 12:59:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002yjy-JL; Tue, 07 Mar 2023 12:59:10 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 22/31] phy: rockchip: phy-rockchip-typec: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:51 +0100
Message-Id: <20230307115900.2293120-23-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1736; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=0SUGPfok3tQB4A0ITBzAkq4+prG7Ts411Ut+16Tw0IY=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBybZ3YLBj5r2BWZEkEDfzAu3GR/hqL/rVcKar qszkPo4OieJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm2QAKCRDB/BR4rcrs CVYRB/9Y6kEMwwc/lyj4lQFyg9u4AFHjGIytRfG/uKS97fyy268AEkXOwu3jdYyJOd098l83jlC dP27PQ/qan4BjOFD6aoE72dEM7RHOxGOCpDE/diW8jWXzaAKXcvQAOznfeLhkCua8X9vpq+krTz zFAAC1Z9+Rcy1fLoCLECi9GEyhFGSzEUEt7MVRLf51HZIECkQ3SM0qHOZCx1wMsLgQlHjJrLJJ1 SMayPApQxFYNy+j8mZpZu4jrBYQ30yKOW7VLn0DsNDwEE0tLsYzxLkWDHInKol8+0ylg/yz3fzd 2qAK2ITRskiLBgXAJFi4RZA43O0N2q7+vAaerwdu8CgQiwEb
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035923_072389_4C0B0688 
X-CRM114-Status: GOOD (  15.84  )
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
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXR5cGVjLmMgfCA2ICsrLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYyBiL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5jCmluZGV4IDM5ZGI4YWNkZTYxYS4uOGIxNjY3YmU0
OTE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMu
YworKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYwpAQCAtMTE5
NCwxMSArMTE5NCw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdHlwZWNfcGh5X3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgcm9j
a2NoaXBfdHlwZWNfcGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQorc3Rh
dGljIHZvaWQgcm9ja2NoaXBfdHlwZWNfcGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQogewogCXBtX3J1bnRpbWVfZGlzYWJsZSgmcGRldi0+ZGV2KTsKLQotCXJldHVybiAw
OwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCByb2NrY2hpcF90eXBlY19w
aHlfZHRfaWRzW10gPSB7CkBAIC0xMjEzLDcgKzEyMTEsNyBAQCBNT0RVTEVfREVWSUNFX1RBQkxF
KG9mLCByb2NrY2hpcF90eXBlY19waHlfZHRfaWRzKTsKIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9y
bV9kcml2ZXIgcm9ja2NoaXBfdHlwZWNfcGh5X2RyaXZlciA9IHsKIAkucHJvYmUJCT0gcm9ja2No
aXBfdHlwZWNfcGh5X3Byb2JlLAotCS5yZW1vdmUJCT0gcm9ja2NoaXBfdHlwZWNfcGh5X3JlbW92
ZSwKKwkucmVtb3ZlX25ldwk9IHJvY2tjaGlwX3R5cGVjX3BoeV9yZW1vdmUsCiAJLmRyaXZlcgkJ
PSB7CiAJCS5uYW1lCT0gInJvY2tjaGlwLXR5cGVjLXBoeSIsCiAJCS5vZl9tYXRjaF90YWJsZSA9
IHJvY2tjaGlwX3R5cGVjX3BoeV9kdF9pZHMsCi0tIAoyLjM5LjEKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
