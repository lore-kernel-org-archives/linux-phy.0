Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C7FDC678D4
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 11:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cw3PD/w3yIDREUOzgkXqoSxRGcUz0UtgnuBp0EcBE4=; b=rqJQqdGbg9bo02
	YBhzuyNSE/XoiYFLuyipUkI2WuFgizTAc5BMZpZGHq0+9g0JQ85+21/a7fMmZ+FduvktH7535Rj8a
	tCIq6mULv5S7fDFbys74jNHaR7JSbiu/jsjZUoxqGp82uqhkigBkq2+bCfOeLuILyxbo4bc3pWxEM
	i5z6mKJ2AeceYZwxW2QN1MpZrcYcz7ecZ4JHjmoSKeaYeuxKyRjigelzQHZEm+ZjssSFG6QYTa27p
	33Fboe23Qkj4s+FrPZS13z9JbePCwQKDJ1DFO4ZXmfKXRHfJP/nEP2+2KKe3VtBvUWmA0TafsdsO6
	88fRlvYGPJFdBphC1IFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyz-00HZNK-PN; Tue, 07 Mar 2023 11:59:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyY-00HZ5o-E8
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyL-0006Zh-9v; Tue, 07 Mar 2023 12:59:13 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002TG9-T3; Tue, 07 Mar 2023 12:59:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002yk2-QP; Tue, 07 Mar 2023 12:59:10 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Dan Carpenter <error27@gmail.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc: linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 23/31] phy: st: phy-stm32-usbphyc: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:52 +0100
Message-Id: <20230307115900.2293120-24-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1863; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=nLjrzhFMDWv8vjI/TpGtzSepyHgqVbB8jO7N9V2rgSw=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBybdOJzEP8Mob8O1vUcByQ02bBPElIp2nyn3N cOH8KuWARqJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm3QAKCRDB/BR4rcrs CSImB/0QNjaVQMfaMmv9zoXO2BF5RJ3RtN4ps6lvW09LJnzFzRScIA1pFNDkn2wLqVhrjPTw4IG 7C7uLxIgU1BMy6fWqpkzjRR8ztgrR/+4885Xngv6Yin0x4mAZcI51zgj7mUz4WvI0FNOvWtyg2i 8aMlJ9VIVEL+R8V3GSGZtTvp3V2IWr5peSxD5iYBlnO0MKww2BjLi3PJqyhIZatKMRZH1sZkM1i KAIku6iysvLYWW5wmdt7fwol1ypU9gWEljfdc8u4tsMtvxB0Rz53bLPNf1Vx/3QIv66bVlx8m39 lehCOOGjr+SF1YsUORJO+CwfDq04HMMLZFKVw/sPPBT96XgM
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035926_520026_71096FE8 
X-CRM114-Status: GOOD (  15.27  )
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
dmVycy9waHkvc3QvcGh5LXN0bTMyLXVzYnBoeWMuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3N0L3BoeS1zdG0zMi11c2JwaHljLmMgYi9kcml2ZXJzL3BoeS9zdC9waHktc3RtMzItdXNi
cGh5Yy5jCmluZGV4IDViYjk2NDdiMDc4Zi4uMWFkZDNiNzVmOTJmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL3BoeS9zdC9waHktc3RtMzItdXNicGh5Yy5jCisrKyBiL2RyaXZlcnMvcGh5L3N0L3BoeS1z
dG0zMi11c2JwaHljLmMKQEAgLTc2Niw3ICs3NjYsNyBAQCBzdGF0aWMgaW50IHN0bTMyX3VzYnBo
eWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gcmV0OwogfQog
Ci1zdGF0aWMgaW50IHN0bTMyX3VzYnBoeWNfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCitzdGF0aWMgdm9pZCBzdG0zMl91c2JwaHljX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQogewogCXN0cnVjdCBzdG0zMl91c2JwaHljICp1c2JwaHljID0gZGV2X2dl
dF9kcnZkYXRhKCZwZGV2LT5kZXYpOwogCWludCBwb3J0OwpAQCAtNzc5LDggKzc3OSw2IEBAIHN0
YXRpYyBpbnQgc3RtMzJfdXNicGh5Y19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAlzdG0zMl91c2JwaHljX2NsazQ4X3VucmVnaXN0ZXIodXNicGh5Yyk7CiAKIAljbGtfZGlz
YWJsZV91bnByZXBhcmUodXNicGh5Yy0+Y2xrKTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMg
aW50IF9fbWF5YmVfdW51c2VkIHN0bTMyX3VzYnBoeWNfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRl
dikKQEAgLTgxMCw3ICs4MDgsNyBAQCBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBzdG0zMl91c2Jw
aHljX29mX21hdGNoKTsKIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgc3RtMzJfdXNi
cGh5Y19kcml2ZXIgPSB7CiAJLnByb2JlID0gc3RtMzJfdXNicGh5Y19wcm9iZSwKLQkucmVtb3Zl
ID0gc3RtMzJfdXNicGh5Y19yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSBzdG0zMl91c2JwaHljX3Jl
bW92ZSwKIAkuZHJpdmVyID0gewogCQkub2ZfbWF0Y2hfdGFibGUgPSBzdG0zMl91c2JwaHljX29m
X21hdGNoLAogCQkubmFtZSA9ICJzdG0zMi11c2JwaHljIiwKLS0gCjIuMzkuMQoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
