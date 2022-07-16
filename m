Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D646DC433EF
	for <linux-phy@archiver.kernel.org>; Sat, 16 Jul 2022 14:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2NeIAuQEBlNEpeL5tHkKYWNZL+EYd+LmVIG63s35V7Y=; b=qBdLph9VzgxJOU
	cZV3RTjgAepyUGNx9wZCHJYCRKQUJoNRR6f3jMqTLoOcB3xtKDEKGsEraxEZ6UOYjMLyECUb7eOc9
	hujlYzdq66XSsX8uByqxYZxgzm3VHYtoqnc4o8fDcwuMDBdHM2Yq0A5WWjUsPLO0ftic/OQ70IERb
	jgF8vgC5R6FUk25Li9+5KmvodWzAkASHLhyhIoXE5YKD/wiIgp5Mt0Ngsm0ckyfvCW1IQ8mY7CMGx
	YHlW2roXVs6eeQcaDmtwW8EJ1BFgDY6hxKs3aWRJpwC2CiTvHzYYd/bcMSOI3fxtBeePlVS/kAZOT
	YCOcFrLdDg+GbC2o+ZnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCjBU-00GeL5-7D; Sat, 16 Jul 2022 14:54:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCjBR-00GeJ5-T9
	for linux-phy@lists.infradead.org; Sat, 16 Jul 2022 14:54:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oCjBK-0003OV-14; Sat, 16 Jul 2022 16:54:10 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oCjBI-001Kha-7Y; Sat, 16 Jul 2022 16:54:08 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oCjBH-005ZBr-Kc; Sat, 16 Jul 2022 16:54:07 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: JC Kuo <jckuo@nvidia.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH] phy: tegra: xusb: Only warn once reset problems in .remove()
Date: Sat, 16 Jul 2022 16:54:03 +0200
Message-Id: <20220716145403.107703-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1075; h=from:subject; bh=+wlILHjFxool2OFqmTfWn6VwhkGltRaqS5h5LpHwcZI=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBi0tEHRUXoJWlLCxORP3UCsI3c7+s+XgZ7b5wxGoh+ NzT8ot2JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYtLRBwAKCRDB/BR4rcrsCeFgB/ 9AqumZjLU6uRJER3EbkEiH8uzcO+iJ+Xej/90eJPRFJ+cXHYUBXf85Z2+4yjGusY9NO/oJGXArkPW/ Pp8uuQTLKi6ruFl3l0cjmIGDdbPxdEjdcLk3p+BQvCH+GBtHC3Dwk4yJnOsShn7Rg+0CrxpMIdmaOM XeGhSiuHlMKyDhJbnP0TnSx0tzDPOGPH+Ys5Wc2nNpVsqLT4d3blkKa06wk8AwHZMqo34c31B5hoe3 FAD5s3yUszHJEAwuJ8PqBV4ILOEjzhkIYI1jsKlWdIdxoSEfq1aN4wE0a/OahPslxnQwdhlFJr4NTa NJOqpjwo3jCfoc5Z+0dGBLKeyd9TY1
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220716_075417_961928_C2554DFB 
X-CRM114-Status: GOOD (  13.64  )
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

VGhlIHNpbmdsZSBkaWZmZXJlbmNlIGJldHdlZW4gcmV0dXJuaW5nIDAgYW5kIHJldHVybmluZyBh
biBlcnJvciBjb2RlIGluCmEgcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIGlzIHRoYXQgaW4gdGhl
IGxhdHRlciBjYXNlIHRoZSBwbGF0Zm9ybSBjb3JlCmVtaXRzIGEgd2FybmluZyBhYm91dCB0aGUg
ZXJyb3IgYmVpbmcgaWdub3JlZC4KCklmIHJlc2V0X2NvbnRyb2xfYXNzZXJ0KCkgZmFpbHMgdGhl
cmUgaXMgYWxyZWFkeSBhIHdhcm5pbmcsIHNvIHN1cHByZXNzCnRoZSBtb3JlIGdlbmVyaWMgKGFu
ZCBsZXNzIGhlbHBmdWwpIGJ5IHJldHVybmluZyAwIGluCnRlZ3JhX3h1c2JfcGFkY3RsX3JlbW92
ZSgpLgoKVGhpcyBpcyBhIHByZXBhcmF0aW9uIGZvciBtYWtpbmcgcGxhdGZvcm0gcmVtb3ZlIGNh
bGxiYWNrcyByZXR1cm4gdm9pZC4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1
LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9waHkvdGVncmEveHVz
Yi5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jIGIvZHJpdmVycy9waHkvdGVn
cmEveHVzYi5jCmluZGV4IGFhNTIzN2VhY2QyOS4uZDA0YTgwYzQzNmMzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKKysrIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCkBA
IC0xMjcwLDcgKzEyNzAsNyBAQCBzdGF0aWMgaW50IHRlZ3JhX3h1c2JfcGFkY3RsX3JlbW92ZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiAJcGFkY3RsLT5zb2MtPm9wcy0+cmVtb3Zl
KHBhZGN0bCk7CiAKLQlyZXR1cm4gZXJyOworCXJldHVybiAwOwogfQogCiBzdGF0aWMgX19tYXli
ZV91bnVzZWQgaW50IHRlZ3JhX3h1c2JfcGFkY3RsX3N1c3BlbmRfbm9pcnEoc3RydWN0IGRldmlj
ZSAqZGV2KQoKYmFzZS1jb21taXQ6IGYyOTA2YWE4NjMzODFhZmIwMDE1YTllYjdmZWZhZDg4NWQ0
ZTVhNTYKLS0gCjIuMzYuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
