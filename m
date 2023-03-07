Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5809C678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 11:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8ailSE94+ZM2FQ2VsEpVmMTHn5pG34aMXET1+sCXqE=; b=0NAB8761ehEQGO
	Mn6zOe8WhgJTQvw0F2Y1p75BnYr5DPNTzT5M80E/l8E4tfZi9SeXQSMbfQRrY9KnRp2MOxF013aGE
	YhfgLV1kTCr3l2/AfDCud56c6YI9LtienTbl1TvB9cX+gkVvFPISeevn9ELDCmgNf9Q5KGi3I+l/O
	I1+YW/UtuV3H8uC3ItXR1W/502DLzfnnx6exPHFMjj9CJTE1Fz6WjAIH1uLd41eiuILQm6cRtxKFr
	9NyW2Hq90igBbSFvG++7IiHrKJ0g4qH6OeYvNa8Hev1pgOLE1RmqEWi/Q6VNeMq89fzFuSxxiUcVv
	HR3Z4Dc6wh4ohM4Khvng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyl-00HZE6-3R; Tue, 07 Mar 2023 11:59:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyT-00HZ08-TE
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyG-0006T8-JN; Tue, 07 Mar 2023 12:59:08 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyF-002TEf-MC; Tue, 07 Mar 2023 12:59:07 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyE-002yip-Ov; Tue, 07 Mar 2023 12:59:06 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Pratyush Yadav <p.yadav@ti.com>,
	Rahul T R <r-ravikumar@ti.com>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 03/31] phy: cadence: cdns-dphy: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:32 +0100
Message-Id: <20230307115900.2293120-4-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1713; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=w2w5giaK7bwvJRoPlNMu5LvcGIcgJWo9wnyDOxq3IM8=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByaHAsMeoi8Nnpmb8NHkJotjflnd1UhnjWMU/ /U6HtJzkRKJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmhwAKCRDB/BR4rcrs Cb1MCACH3q4K5GY5Q20eJh6vxUthniaS7L/KjzI+Pkymd7L3mSnpB9NGSeigcVp8sZKj02Dq4WZ cGp9HJE/ovyxSj7eBMTpTUCUmmTjUInO1ajlabDNOrCM5DRCrLP7ZEtq/SBXPyoiqomHBrR52O8 XShmwWr/nl+G/wdNLIKnmQlPLRdPB+7PKSJ2uIUcuAUOGV82gMghqbCNNlk9t+L54MciYS4j0TN o97Icm4u5VN+qxS/S+MRL6cTLy/x8Fzzhr18kcPRsOjhZHeDulvv+4fbITmZshAw9IJzYKQZjRJ X7yvPnCBr86ARfBf8iQ9vS5eFgTHi/6F2P1WH1LEMAOn9DbA
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035921_960743_6C56BEB6 
X-CRM114-Status: GOOD (  15.97  )
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
dmVycy9waHkvY2FkZW5jZS9jZG5zLWRwaHkuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L2NhZGVuY2UvY2Rucy1kcGh5LmMgYi9kcml2ZXJzL3BoeS9jYWRlbmNlL2NkbnMtZHBoeS5jCmlu
ZGV4IDNkZmRmYjMzY2QwYS4uNmU1ODAxMmI2NDg4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9j
YWRlbmNlL2NkbnMtZHBoeS5jCisrKyBiL2RyaXZlcnMvcGh5L2NhZGVuY2UvY2Rucy1kcGh5LmMK
QEAgLTQ1NiwxNCArNDU2LDEyIEBAIHN0YXRpYyBpbnQgY2Ruc19kcGh5X3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIFBUUl9FUlJfT1JfWkVSTyhwaHlfcHJvdmlk
ZXIpOwogfQogCi1zdGF0aWMgaW50IGNkbnNfZHBoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKK3N0YXRpYyB2b2lkIGNkbnNfZHBoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgY2Ruc19kcGh5ICpkcGh5ID0gZGV2X2dldF9kcnZk
YXRhKCZwZGV2LT5kZXYpOwogCiAJaWYgKGRwaHktPm9wcy0+cmVtb3ZlKQogCQlkcGh5LT5vcHMt
PnJlbW92ZShkcGh5KTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9m
X2RldmljZV9pZCBjZG5zX2RwaHlfb2ZfbWF0Y2hbXSA9IHsKQEAgLTQ3NSw3ICs0NzMsNyBAQCBN
T0RVTEVfREVWSUNFX1RBQkxFKG9mLCBjZG5zX2RwaHlfb2ZfbWF0Y2gpOwogCiBzdGF0aWMgc3Ry
dWN0IHBsYXRmb3JtX2RyaXZlciBjZG5zX2RwaHlfcGxhdGZvcm1fZHJpdmVyID0gewogCS5wcm9i
ZQkJPSBjZG5zX2RwaHlfcHJvYmUsCi0JLnJlbW92ZQkJPSBjZG5zX2RwaHlfcmVtb3ZlLAorCS5y
ZW1vdmVfbmV3CT0gY2Ruc19kcGh5X3JlbW92ZSwKIAkuZHJpdmVyCQk9IHsKIAkJLm5hbWUJCT0g
ImNkbnMtbWlwaS1kcGh5IiwKIAkJLm9mX21hdGNoX3RhYmxlCT0gY2Ruc19kcGh5X29mX21hdGNo
LAotLSAKMi4zOS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
