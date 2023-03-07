Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72E53C6FD1B
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 11:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Ds9gd5WgB6QRcb5Ahy8nW9LRwkdNBcDE9pJeUpYLbI=; b=LM+vZvPVIpYrXO
	uQj8aOPjB/Xy7rajo2q6gCustYIrQcREHU6rsvD2kK8Ixdv3HPD+HANvfiHrMaaTjWd4VEpmL5bPh
	cOqK6YL8E7JI3Ao5xcsXnODjBZWS7Fb5wxOO1ozttlVu2+0xvyRxksfeIEKy+Ko+0q0o4rqEs0MmN
	sSSMDExHSNwbDXp+heZiA9RkuHd7UShijoqwse9IuILBVYweUZph7cIhyHZgrYxdX29pyZCObRmD9
	34DkWPGhPDQ4t8LUfmxLh+IQCfwUo/7WkLqu2GJ2Bo3uuorNxehAMv/h5SQ+tJIgphe0XLp2kOq0s
	zlloiDiXRaeHQu2iyqiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyo-00HZGe-SH; Tue, 07 Mar 2023 11:59:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyV-00HZ0t-9s
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-0006WC-FR; Tue, 07 Mar 2023 12:59:11 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002TFV-Md; Tue, 07 Mar 2023 12:59:10 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyG-002yjI-7S; Tue, 07 Mar 2023 12:59:08 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 11/31] phy: phy-lgm-usb: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:40 +0100
Message-Id: <20230307115900.2293120-12-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1557; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=pz9pBMZBV8CeCewNXzK9wiRT/fJeJ9rmTO9zxWVW7zQ=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByarj+X/Uu776QGZlALzVO3tud9bf1oGfuQEF FaqRxUUNLuJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmqwAKCRDB/BR4rcrs Cej7B/9SctOCfmv7VRUNbPGQ54M49gsRuMZO8ng2w/ZGmVmrTdsUThyCXi2E1iZlsIFsBo+uDAI bjrWnp+gXnI/Yo3mULwqMM4Poc3HrwYqja35o70oYqmX1CHzbsDn+56eIWg+gKqNrIYAQCQR2gz y6Ma7hixpSXmGubgFyM4pQQDFcja9T+qM/0mV8rNNjVFYc9lmE0bWxMAqmSCIcfA+7QSZVv4bi/ 30jmp9OdJ89svTOXHz2j1B4wtBbgYvll9naTViOS3uZjTOuDVslDgkp01p95jVkHayUk2D9OOy6 sqDvmi0qgmBYy95yUXLxLBopzsoq4sycv3Ux5jqtogawBE4P
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035923_367853_2F1513C6 
X-CRM114-Status: GOOD (  15.24  )
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
dmVycy9waHkvcGh5LWxnbS11c2IuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS1s
Z20tdXNiLmMgYi9kcml2ZXJzL3BoeS9waHktbGdtLXVzYi5jCmluZGV4IDMwOWM4ZjBlMDcyNC4u
NDEwNzI5YzdmNTEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9waHktbGdtLXVzYi5jCisrKyBi
L2RyaXZlcnMvcGh5L3BoeS1sZ20tdXNiLmMKQEAgLTI1MiwxMyArMjUyLDExIEBAIHN0YXRpYyBp
bnQgcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIHVzYl9h
ZGRfcGh5X2RldihwaHkpOwogfQogCi1zdGF0aWMgaW50IHBoeV9yZW1vdmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIHBoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgdGNhX2FwYiAqdGEgPSBwbGF0Zm9ybV9nZXRfZHJ2
ZGF0YShwZGV2KTsKIAogCXVzYl9yZW1vdmVfcGh5KCZ0YS0+cGh5KTsKLQotCXJldHVybiAwOwog
fQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBpbnRlbF91c2JfcGh5X2R0X2lk
c1tdID0gewpAQCAtMjczLDcgKzI3MSw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVy
IGxnbV9waHlfZHJpdmVyID0gewogCQkub2ZfbWF0Y2hfdGFibGUgPSBpbnRlbF91c2JfcGh5X2R0
X2lkcywKIAl9LAogCS5wcm9iZSA9IHBoeV9wcm9iZSwKLQkucmVtb3ZlID0gcGh5X3JlbW92ZSwK
KwkucmVtb3ZlX25ldyA9IHBoeV9yZW1vdmUsCiB9OwogCiBtb2R1bGVfcGxhdGZvcm1fZHJpdmVy
KGxnbV9waHlfZHJpdmVyKTsKLS0gCjIuMzkuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
