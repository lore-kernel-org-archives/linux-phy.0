Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42AF0C6FD1B
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 11:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvtdQ3FlJ+xxS/Mkd9TnQGmqWDtjLlSwL7mBsz+xnc0=; b=Np5rHJEz2xnQD6
	pd1qtuQmjfxQggQaHvZZShxBwzpgq4uAx02AEKcBE/m7Jd9S+TrwGOHx4XLB8rDbxHNSA/6IXSIs6
	HDjo0k/glbjjKkqtpNDtk2v8O2TD8IHscl1kcEwLNq4z7VOyqtgMn1H08xeHPkagfVXS8yZ4lXHFP
	gvJU3551fcpPq8UKrR6hXWs9L6sQXt2lwsVKhkbUu85t4X+WC0F/6JHeVObw25exKveAyhRxKFR0g
	1TdeMRXqvPCbOoENr9Dmk7ELqUX7fRM924HmT5WS2jfsAZdoWDdoTsE5z4kYbNhv/HPDTWrrUaxCz
	c5OT1+hOFb5NM/ywl20Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyl-00HZEb-ID; Tue, 07 Mar 2023 11:59:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyU-00HZ0K-7R
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyG-0006T6-PV; Tue, 07 Mar 2023 12:59:08 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyF-002TEY-8e; Tue, 07 Mar 2023 12:59:07 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyE-002yim-I7; Tue, 07 Mar 2023 12:59:06 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Justin Chen <justinpopo6@gmail.com>,
	Al Cooper <alcooperx@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	kernel@pengutronix.de,
	linux-phy@lists.infradead.org
Subject: [PATCH 02/31] phy: broadcom: phy-brcm-usb: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:31 +0100
Message-Id: <20230307115900.2293120-3-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1754; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=kRxw18bZDrPn1WjJek/wHs7gpvIV/Aep2Uaun+CRMAU=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByaDyoUwhQtR8WuVn9jBLZGn9XA2UlgCx0ctl 6fdsAfPkN6JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmgwAKCRDB/BR4rcrs CWSbCACSS+oNu81C92z1NwJwGo41SEDJl/F1715d177nYoOY0l9hROREfmoUtYB9VCFLzF0iVRU mUdsBYDmE/hw6ePJz/ghEigBrhTmBEjd9iLiKPf4eFRfGHO2rt7lOR+bqCuIjlrNRMnjvhyp8Bc Uh9tn0mLtoADJ2602wikKCDE9l9/qf1lO9ToWJn7b8kYyGfxWWW9TqRddcNArqADTMeIQ+dZ6Sp Mb0M50aEVWkYvYYct6RIclrmLiMgEdZpDzs6aHdVUNwjfgJWuSsKnrRfwa4GxlKPE84Q2Nw67jH utl2Y+DkVMoCOBqE4IzF7nFgTjElkyUCMtI/6qHbnHpyWhKk
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035922_308924_254E0B6E 
X-CRM114-Status: GOOD (  15.20  )
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
dmVycy9waHkvYnJvYWRjb20vcGh5LWJyY20tdXNiLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9icm9hZGNvbS9waHktYnJjbS11c2IuYyBiL2RyaXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1i
cmNtLXVzYi5jCmluZGV4IDRkZTM5OTk5ZjQzZC4uYTRjZmI3NzdkZDgzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3BoeS9icm9hZGNvbS9waHktYnJjbS11c2IuYworKysgYi9kcml2ZXJzL3BoeS9icm9h
ZGNvbS9waHktYnJjbS11c2IuYwpAQCAtNTcyLDE0ICs1NzIsMTIgQEAgc3RhdGljIGludCBicmNt
X3VzYl9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gUFRS
X0VSUl9PUl9aRVJPKHBoeV9wcm92aWRlcik7CiB9CiAKLXN0YXRpYyBpbnQgYnJjbV91c2JfcGh5
X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQorc3RhdGljIHZvaWQgYnJjbV91
c2JfcGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCXN0cnVjdCBi
cmNtX3VzYl9waHlfZGF0YSAqcHJpdiA9IGRldl9nZXRfZHJ2ZGF0YSgmcGRldi0+ZGV2KTsKIAog
CXN5c2ZzX3JlbW92ZV9ncm91cCgmcGRldi0+ZGV2LmtvYmosICZicmNtX3VzYl9waHlfZ3JvdXAp
OwogCXVucmVnaXN0ZXJfcG1fbm90aWZpZXIoJnByaXYtPnBtX25vdGlmaWVyKTsKLQotCXJldHVy
biAwOwogfQogCiAjaWZkZWYgQ09ORklHX1BNX1NMRUVQCkBAIC02NzAsNyArNjY4LDcgQEAgTU9E
VUxFX0RFVklDRV9UQUJMRShvZiwgYnJjbV91c2JfZHRfaWRzKTsKIAogc3RhdGljIHN0cnVjdCBw
bGF0Zm9ybV9kcml2ZXIgYnJjbV91c2JfZHJpdmVyID0gewogCS5wcm9iZQkJPSBicmNtX3VzYl9w
aHlfcHJvYmUsCi0JLnJlbW92ZQkJPSBicmNtX3VzYl9waHlfcmVtb3ZlLAorCS5yZW1vdmVfbmV3
CT0gYnJjbV91c2JfcGh5X3JlbW92ZSwKIAkuZHJpdmVyCQk9IHsKIAkJLm5hbWUJPSAiYnJjbXN0
Yi11c2ItcGh5IiwKIAkJLnBtID0gJmJyY21fdXNiX3BoeV9wbV9vcHMsCi0tIAoyLjM5LjEKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
