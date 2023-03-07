Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0474C6FD1E
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RGbVEVINmOwR4WWiU/XwaceAq3LxCQyAg/Lnyh6Imc=; b=31k43sxfDLEivR
	4DmduQS57COHdWKw3UkYmkTxWQaznwQfd/5MBe2ttqgls9kkkeMQsfL+xQoQ7T43gfSuV4X2jSPCl
	N5pWSrHdTfsCGXXfj+rA0c5jPmAF7A9f94HgMk3F6grXr72f3XMl7gBYnJkmbgtrbn3I3EYzlb8Ml
	ESEHmALzsZX2cepMDra0Hj3FnIx5gvSGYY43oiTjj9tXWjQL5/H8y+ghr3HlI7Dfk5trQPXDlDCTx
	wfApzhjTe9ffRq3vuCrZ9GtIEUMq4i9JgUasEofvUtV7auVSgzu/QvqWNWMJnPBTwgxGqw7eVtfom
	gOt8CqH543clkkGVaejw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW0H-00HaDA-9P; Tue, 07 Mar 2023 12:01:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVys-00HZJQ-Od
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=LQvU5CDfc8RslBN7EvbsCLmfDRcOk5IjZ+DOtAmWXZg=; b=miEUrbfNNWIW2likApbq+h3Kgq
	ShWqxlIbK/A2YwYvPyUACP65kOQ9cLN3wMs4Gnqpgxqs+X6vgZpLl3CrPk+Fobv0MmowMBcyTjoyl
	jAIGdWj+jzgTFQIRZ57CGTsT2sM+jmcr1keHQQfc5qk8VDOyJ9/je9L90jl6l0bnpOMbprxYJbuei
	92BU1e/eF6sAqxNtO++kCCzibX7XYKzcnywRB3zSoPRaH2idqPOhUMtNVEkRlMgta3OL+btGORAEE
	RdDIehBb0CM1y9zAidSzO1vagBd2iU+N65SIzcXJOR6ywZEy8DkuxDaIonE0gL2fTu6xmJWNhtGVO
	tBJhHTvw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyb-00H2AB-1D
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyM-0006eZ-2x; Tue, 07 Mar 2023 12:59:14 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-002TGb-Ou; Tue, 07 Mar 2023 12:59:12 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-002ykU-19; Tue, 07 Mar 2023 12:59:12 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Miaoqian Lin <linmq006@gmail.com>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 29/31] phy: ti: phy-omap-usb2: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:58 +0100
Message-Id: <20230307115900.2293120-30-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1541; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=LPQGrPhDYWkwMtNtnBv3B3GCSd1h4cZbAe3XnSi0VdM=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByb1VpzzqU28EerfTo0QqH0QvZcMsuzip+ZQO Lh50rihR1aJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm9QAKCRDB/BR4rcrs CSWCB/0R9E1mGQmid0W/28a8XTal73J/edAiqxeWI25WkdZrhjr3HAYUmQ7T1udCZ9er8HAqsSb pXBaUA6So5XE98YnorIumsf9nSMJqIPQY/M5wHyxqrxQhB5DRTSaA8RnhNK/ilAamODEGBtXimW q/tuTwQwbaUZksCNQwYiz99fhsJ8Bl/8ZfJz6QEBhFbb6RkuANTfnlXRvT7aG08+rsSFotsKS/5 ZyBSlZmKW5njZk/hB/+Ey6xZINHoIvY8tAzuQ43EgJOKvcqRhiG79Ba+WhNasDK0t4BKdTZJHnE K1iHX9Kf+x0Cp8XZXzY/Tgx9CyCGCRJG66K7EEUdB+O3E28w
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115943_665524_FE159D78 
X-CRM114-Status: GOOD (  15.17  )
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
dmVycy9waHkvdGkvcGh5LW9tYXAtdXNiMi5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
dGkvcGh5LW9tYXAtdXNiMi5jIGIvZHJpdmVycy9waHkvdGkvcGh5LW9tYXAtdXNiMi5jCmluZGV4
IDMxYTc3NTg3N2Y2ZS4uYmJlNWQyNWIwMzUxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS90aS9w
aHktb21hcC11c2IyLmMKKysrIGIvZHJpdmVycy9waHkvdGkvcGh5LW9tYXAtdXNiMi5jCkBAIC01
MDYsMTkgKzUwNiwxNyBAQCBzdGF0aWMgaW50IG9tYXBfdXNiMl9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCXJldHVybiAwOwogfQogCi1zdGF0aWMgaW50IG9tYXBfdXNiMl9y
ZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIG9tYXBfdXNi
Ml9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3Qgb21hcF91
c2IJKnBoeSA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwogCiAJdXNiX3JlbW92ZV9waHko
JnBoeS0+cGh5KTsKIAlwbV9ydW50aW1lX2Rpc2FibGUocGh5LT5kZXYpOwotCi0JcmV0dXJuIDA7
CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIG9tYXBfdXNiMl9kcml2ZXIgPSB7
CiAJLnByb2JlCQk9IG9tYXBfdXNiMl9wcm9iZSwKLQkucmVtb3ZlCQk9IG9tYXBfdXNiMl9yZW1v
dmUsCisJLnJlbW92ZV9uZXcJPSBvbWFwX3VzYjJfcmVtb3ZlLAogCS5kcml2ZXIJCT0gewogCQku
bmFtZQk9ICJvbWFwLXVzYjIiLAogCQkub2ZfbWF0Y2hfdGFibGUgPSBvbWFwX3VzYjJfaWRfdGFi
bGUsCi0tIAoyLjM5LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
