Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D99E2C6FD20
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 11:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOG6v7opFU+Qok48XsJZmkoCMsolzM2IL19N3j5phKk=; b=lYeQR6XJiX7VyY
	I0RHQhA9iUnZhekDh20MHdfTqAIyD05oml4nro6BCe0yQ6f5pEmtUPvVfRxnJDuP2PPo0Ij9oZreg
	QVu5PFUwHmchru0JO4+D8AYGM8M7NJdA5K2AvOmQ633/Ebmbz63O2/tbGbgxGZvJDHQ4cmjKOlU1O
	BICMcFx9vQ7e2ZZ/RATGtui1CcF7NrFWRn1ic7lCf8lwIbf2NcjrCoK/Sz2xRcG1RC1vXJUjUlCBT
	suSMVikkjHp0ohwWKgoVqjBYjNCaeAmfaq1W1oQ4x4KOrCHLOrCUIjBccRuPbhoMIgLecbgd7vyH8
	WHnxURrh76QxX9MtQQpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyp-00HZH3-85; Tue, 07 Mar 2023 11:59:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyU-00HZ0s-HT
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyH-0006T9-6w; Tue, 07 Mar 2023 12:59:09 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyF-002TEi-OG; Tue, 07 Mar 2023 12:59:07 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyE-002yis-Vc; Tue, 07 Mar 2023 12:59:06 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	Lars-Peter Clausen <lars@metafoo.de>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 04/31] phy: cadence: phy-cadence-sierra: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:33 +0100
Message-Id: <20230307115900.2293120-5-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1836; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=AXV1XLtUqhQ1dvqpqsNePUWHHlGGT+GIGa0Ixk5r/60=; b=owGbwMvMwMV48I9IxdpTbzgZT6slMaSwq3UzrOCbtETx29KNnunRQfVneQQVq2/Z2SYpuZRYR NUx3DPuZDRmYWDkYpAVU2SpK9ISmyCx5r9dyRJumEGsTGBTuDgFYCLL/rL/0+iOMvdfrxclZDq5 udTs6bqFRf6PHS89Lfo2eYXfj8+m3s/e+DM/mj1xR2+F2Imcj5PCz/0qbpP+ZCxsP6vmtuzjO7n /fe5ddKyaNZv33J0LO4pfCxrpOEpnnd71NeVOYvsP78jH8W8tHx8QsDP32LgstE9NN0VJu+DhGc MLKRO1hfW3lByK1134VvFP3+q0N2987aszRM26DFcEhmU71DKqvnj9y7at0TdEeIL1I7G0L+rHc xYXOZ+3V3gl6V/aMmPZw3lvncQOmkWwrT/3Z2ntmxCfM7pyfnzq7AvfczvdSq22S12dprpYKLnS 58hULZOugyYZdeFGGZnlJyQLX7EtTfv5dtIbOR1d3ikA
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035922_597205_EE538B65 
X-CRM114-Status: GOOD (  15.76  )
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
dmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS1zaWVycmEuYyB8IDYgKystLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2Utc2llcnJhLmMgYi9kcml2ZXJzL3BoeS9jYWRl
bmNlL3BoeS1jYWRlbmNlLXNpZXJyYS5jCmluZGV4IDZlODZhNjUxN2YzNy4uMjk0ZDU5YjllYWVk
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXNpZXJyYS5jCisr
KyBiL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2Utc2llcnJhLmMKQEAgLTE1MTMsNyAr
MTUxMyw3IEBAIHN0YXRpYyBpbnQgY2Ruc19zaWVycmFfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIHJldDsKIH0KIAotc3RhdGljIGludCBjZG5zX3NpZXJy
YV9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCBj
ZG5zX3NpZXJyYV9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJ
c3RydWN0IGNkbnNfc2llcnJhX3BoeSAqcGh5ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7
CiAJaW50IGk7CkBAIC0xNTMzLDggKzE1MzMsNiBAQCBzdGF0aWMgaW50IGNkbnNfc2llcnJhX3Bo
eV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAl9CiAKIAljZG5zX3NpZXJy
YV9jbGtfdW5yZWdpc3RlcihwaHkpOwotCi0JcmV0dXJuIDA7CiB9CiAKIC8qIFFTR01JSSBQSFkg
UE1BIGxhbmUgY29uZmlndXJhdGlvbiAqLwpAQCAtMjUyMCw3ICsyNTE4LDcgQEAgTU9EVUxFX0RF
VklDRV9UQUJMRShvZiwgY2Ruc19zaWVycmFfaWRfdGFibGUpOwogCiBzdGF0aWMgc3RydWN0IHBs
YXRmb3JtX2RyaXZlciBjZG5zX3NpZXJyYV9kcml2ZXIgPSB7CiAJLnByb2JlCQk9IGNkbnNfc2ll
cnJhX3BoeV9wcm9iZSwKLQkucmVtb3ZlCQk9IGNkbnNfc2llcnJhX3BoeV9yZW1vdmUsCisJLnJl
bW92ZV9uZXcJPSBjZG5zX3NpZXJyYV9waHlfcmVtb3ZlLAogCS5kcml2ZXIJCT0gewogCQkubmFt
ZQk9ICJjZG5zLXNpZXJyYS1waHkiLAogCQkub2ZfbWF0Y2hfdGFibGUgPSBjZG5zX3NpZXJyYV9p
ZF90YWJsZSwKLS0gCjIuMzkuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
