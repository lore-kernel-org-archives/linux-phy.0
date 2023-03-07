Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D541C678D4
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7lLB34IoSKbMD/EDSIL1MYQpNIqXU/sNLlV6rX5C48=; b=TIJAWC5wc7chmg
	+Pylk94qBzpXPnTWfTr/MJQeaIZyBSORHImtIKuRFfWkUW6MyvzjqD241iZZuEnTeggQ9HonWl4vq
	Y/4yLicYwdEPzcCatZUS+3ReIfQhdcjswb+wQEM/sz7BMud5gqLhOq9tTTRu2X32RaXhzfbrt55x/
	vjczD1vCDJMTXtWfxJjhBNEUgrxQHFzcKbC7B54Ca4tULny0DPMCLXYqV+UCqfze873jzmUl15NgR
	kpIqRlciQJg/hnv2IQjVV5MlffWE9ZGZUEgw5cj4VjhiIN1rtRA9a2quQNvcUiqmF+kneXW+dwM3u
	jgm83amWepybxOy1wj8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVze-00HZmo-G0; Tue, 07 Mar 2023 12:00:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyc-00HZ9e-OM
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyM-0006e3-7p; Tue, 07 Mar 2023 12:59:14 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-002TGY-Mx; Tue, 07 Mar 2023 12:59:12 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002ykO-QO; Tue, 07 Mar 2023 12:59:11 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Roger Quadros <rogerq@kernel.org>,
	Matt Ranostay <mranostay@ti.com>,
	Sinthu Raja <sinthu.raja@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Dan Carpenter <error27@gmail.com>,
	Tanmay Patil <t-patil@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 28/31] phy: ti: phy-j721e-wiz: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:57 +0100
Message-Id: <20230307115900.2293120-29-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1611; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=ZYhetVjyW3atzjhJk9cQUYlmMDJt87SyH+3ct5SokFY=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBybxYocZVs/jxvRWJBzPDfPJvnjFyzY4nZ5Ir ZZ7hmRaXsmJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm8QAKCRDB/BR4rcrs CQYnB/sGdQL+lpyfILigKR+fBxXiZ2tDDOSiHTB5N2N2j1LoULs/k1WltEHDcQH9q80XBe+ePRB MhBnxBkZ+XsTPQsKAX5mp92Repj/O8v80p+CxOsJcD8rdp3bR/UoV75z4HXT0FXc1Y9/dPaNd2W FQAWdvek2iGOO5+XD8hpTlE9LJJ5HAApJiKJAlQB+myMJmOuRQ2ucu6Vtgf4BtbT2a8wx906qSY EGcgbbsSvyitCqSSF9ocDf+DiMc1Vl0YkJQkljdcg2fppVMBayoM7rc7N+3TeLhdTHiiQwlbjta zuhwkWQCGpU7iuvZ0bqS47T4C662vTHkd40QXlXkShsfmX/n
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035930_835865_287620F1 
X-CRM114-Status: GOOD (  15.92  )
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
dmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
dGkvcGh5LWo3MjFlLXdpei5jIGIvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jCmluZGV4
IDFiODNjOThhNzhmMC4uZDJmZDIxNDM0NTBhIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS90aS9w
aHktajcyMWUtd2l6LmMKKysrIGIvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jCkBAIC0x
NjM2LDcgKzE2MzYsNyBAQCBzdGF0aWMgaW50IHdpel9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQogCXJldHVybiByZXQ7CiB9CiAKLXN0YXRpYyBpbnQgd2l6X3JlbW92ZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQorc3RhdGljIHZvaWQgd2l6X3JlbW92ZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5k
ZXY7CiAJc3RydWN0IGRldmljZV9ub2RlICpub2RlID0gZGV2LT5vZl9ub2RlOwpAQCAtMTY1MCwx
MyArMTY1MCwxMSBAQCBzdGF0aWMgaW50IHdpel9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKIAl3aXpfY2xvY2tfY2xlYW51cCh3aXosIG5vZGUpOwogCXBtX3J1bnRpbWVfcHV0
KGRldik7CiAJcG1fcnVudGltZV9kaXNhYmxlKGRldik7Ci0KLQlyZXR1cm4gMDsKIH0KIAogc3Rh
dGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgd2l6X2RyaXZlciA9IHsKIAkucHJvYmUJCT0gd2l6
X3Byb2JlLAotCS5yZW1vdmUJCT0gd2l6X3JlbW92ZSwKKwkucmVtb3ZlX25ldwk9IHdpel9yZW1v
dmUsCiAJLmRyaXZlcgkJPSB7CiAJCS5uYW1lCT0gIndpeiIsCiAJCS5vZl9tYXRjaF90YWJsZSA9
IHdpel9pZF90YWJsZSwKLS0gCjIuMzkuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
