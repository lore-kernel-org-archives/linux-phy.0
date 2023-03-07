Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8395FC6FD1B
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOeoCEmgOKqCkM9qASnXE3Z1wh+jomYj+tbAKAdI5C0=; b=MgAlg2VGOSNUCB
	QoiXq2iH4+OEMJeLhDi4HUOb+bV5buQz4U7phUC4kqir6cy7UFikFf4FpM0ivlmXECVdRLB/aKTQc
	4C7B1YYBPB2HfuYmJZVKZJHEf6e/U8o5fv/LeP38u1mx/IrrOvRWqDq8+l2PWlUewBRVlQVxm1L3M
	ltO4iy5d1xycB30fEixTZupSy2zGJJYit7VcOR2MlXNCRGGOLXX71JZnfWqky1ignwTevdgnWi9W9
	ePmg6yAVyTjfaBcJfZEqVm+/ZnUFUxL9znNLbfVLFK6f6ezwk76DbBvsHb8lqba3jy39AcclZMlkd
	MWJhWUU1DOIUgFVA46nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVz8-00HZSS-Rd; Tue, 07 Mar 2023 12:00:02 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyZ-00HZ58-70
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-0006XQ-9l; Tue, 07 Mar 2023 12:59:12 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002TFm-6X; Tue, 07 Mar 2023 12:59:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002yjo-6I; Tue, 07 Mar 2023 12:59:10 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 20/31] phy: rockchip: phy-rockchip-inno-dsidphy: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:49 +0100
Message-Id: <20230307115900.2293120-21-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1745; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=lehOlgnny9s9YCry74LCGOZ0ZUh8mvbpw5s20/s1D2E=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBybRLBReKv+70Ss8u3GHrR3lrh0qQpW+itAX6 fM01umsxBWJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm0QAKCRDB/BR4rcrs Ca6RCACDNdLE05biV9TVjBa1dw1Ho9bE39CgUqssJyw3KsPPTc/ieVj9irScI+gV4ZCrnG2VA1C PnOsgncF1VGtyqrpDGJ5qody35ck8N2hwL7skAm3UhcGk0RQEVZETeKPXKmbYx0YNgHCsgRoxCY MU7pFmXtlXL545NtYaqX0UymSo1MpUCcG8ImDRxRp1rXL6jpPpYbccpJHLJZ0dkWJ7dOHIqBnts CsZeH7L1nTqVabd3DP12ZuEUcOwo0ibzhzSi2ANKyWvQpzVFKxtLWLlvWEC7ERS9Qf+DGFPs/XE B9vz6+mUnWYCreFafvt6imG75rIrQtQz7F4QI1F9066t4rJK
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035927_347646_CAF4BECF 
X-CRM114-Status: GOOD (  15.55  )
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
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jIHwgNiArKy0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jIGIv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jCmluZGV4IDJj
NTg0N2ZhZmY2My4uNzI2OTI4ZmYxMjczIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtaW5uby1kc2lkcGh5LmMKKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jCkBAIC03NTUsMTMgKzc1NSwxMSBAQCBzdGF0aWMg
aW50IGlubm9fZHNpZHBoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJl
dHVybiAwOwogfQogCi1zdGF0aWMgaW50IGlubm9fZHNpZHBoeV9yZW1vdmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIGlubm9fZHNpZHBoeV9yZW1vdmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgaW5ub19kc2lkcGh5ICppbm5vID0g
cGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAKIAlwbV9ydW50aW1lX2Rpc2FibGUoaW5uby0+
ZGV2KTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9p
ZCBpbm5vX2RzaWRwaHlfb2ZfbWF0Y2hbXSA9IHsKQEAgLTc4OCw3ICs3ODYsNyBAQCBzdGF0aWMg
c3RydWN0IHBsYXRmb3JtX2RyaXZlciBpbm5vX2RzaWRwaHlfZHJpdmVyID0gewogCQkub2ZfbWF0
Y2hfdGFibGUJPSBvZl9tYXRjaF9wdHIoaW5ub19kc2lkcGh5X29mX21hdGNoKSwKIAl9LAogCS5w
cm9iZSA9IGlubm9fZHNpZHBoeV9wcm9iZSwKLQkucmVtb3ZlID0gaW5ub19kc2lkcGh5X3JlbW92
ZSwKKwkucmVtb3ZlX25ldyA9IGlubm9fZHNpZHBoeV9yZW1vdmUsCiB9OwogbW9kdWxlX3BsYXRm
b3JtX2RyaXZlcihpbm5vX2RzaWRwaHlfZHJpdmVyKTsKIAotLSAKMi4zOS4xCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
