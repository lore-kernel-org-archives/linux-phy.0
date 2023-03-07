Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E308C6FD1F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3nthG3JnszIFAgMPG+CQLSAbFGf1Sef0Rkiubo7aT84=; b=DSI5tUOzm4MU1c
	CMtkdSQ/Muu/7eE8pKwHacl5EUju9HD0Wz4z6s9mkYIUfFgKOpLSYenrBIDR5Koiucaa+pzfKfXcW
	wYBeeQwqySMKlWHt+d3jTuCJsPkuYWxzjOxmKP955Iwlshtu15KyLSTEgb5N3Nmq+Nw2/mnZeoNtQ
	70Nq6fVh/hK6arvzhGOH0LTmaSxA9v7CWHg+WzTEfvHwKdcOA87Pi+2JwFauVSCSFnxVvuiwR4SAC
	I7S4UA4XQ7Osf0dr03/c+J2v8ZuuiSqCLQQGan7ImeL7MzUfR+sjVhCUz2Zg2VDXIbeNJqi3If8/p
	CyAg3dgWQ8N7rzsCdiwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW0H-00HaDQ-Fm; Tue, 07 Mar 2023 12:01:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyu-00HZKf-GQ
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=srthGBLeA0jfYr1ModFODTAoqlugvl4dBv7nTwh9Pbs=; b=FbUVvToVKU9hpFPiUO2lECLQ/k
	y1azZN4+27juZSCgBzbQ8mHV/1bZJ3wMCN+ViG22uQdaCfJzvuPFK1kXyLm1hsbRCFfs4+2v/4dHy
	D6eQqSmeoPFJIoRzsepgPPCDYEKFYAMh7gniFY/V/4nNR5kAj+giqGt33JlPsPUyla6niEVtJ/KW1
	1REoJb+GJlgXb8Kf8dqSd61Ye1f7Cbr26d5Lhkyd+pPRAePo9uo8xC0KTF6hBkJhlAVArr2rqIxsS
	qvhip4ygkJ0lu0A7OYC7jbBABIuPTMwfhrZ/EmG01+8LSS5FsNxi19P6G19csFM1nQw9zBF2OYizM
	nyCzGU/g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyZ-00H2AD-2w
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-0006Vu-It; Tue, 07 Mar 2023 12:59:11 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002TFN-Ca; Tue, 07 Mar 2023 12:59:10 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyH-002yjd-Ff; Tue, 07 Mar 2023 12:59:09 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 17/31] phy: renesas: phy-rcar-gen3-usb3: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:46 +0100
Message-Id: <20230307115900.2293120-18-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1688; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=S8xN6/D58vDbFZKshID6jaGWz2r8GuFPoFdy8ZZjYq8=; b=owEBbAGT/pANAwAKAcH8FHityuwJAcsmYgBkBybF+TZqDPzF/qGCk4H08UpsFE6WpXIMxBick 085AWCe92GJATIEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmxQAKCRDB/BR4rcrs CQDBB/iJEXB1/Ahed08wq1tOfLj5XOMp40mLot7ba+rO2H/qW1GeGuZI7ipcgxITzfQnlIfc1wj hYt11Y4Uk36rMbgrZLAB/ESF5aeYK+lrmf2z0pKkP2gbOmK1lUWVp34d5mHHTTy6MA8gndSlXLZ TZ+tjs4kqnSb5VRDkM1dZ2A35K1TkMvT2I1i/VLmsGcG1nX1IJjix8NGTIRLyEvCzhtNGKSysp5 NtvzBpC3AStrLWPUxHsrN0nvLOZNwPs88bwU+Gbdbsk8Hk2oWTW7RjdZGk67qxpIZaUkiFvhcr5 7Uf2OEAoUmekrjcuXEdQKmErTlCPdxjo/FLmSfBs6wv//tE=
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115945_363176_62DB24AA 
X-CRM114-Status: GOOD (  14.76  )
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
dmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjMuYyB8IDYgKystLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IzLmMgYi9kcml2ZXJzL3BoeS9yZW5l
c2FzL3BoeS1yY2FyLWdlbjMtdXNiMy5jCmluZGV4IGYyN2Q2ZjQ3MTYyOS4uZTJkNjMwZWRkOTky
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMy5jCisr
KyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IzLmMKQEAgLTE5OSwxMSAr
MTk5LDkgQEAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjNfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0aWMgaW50IHJjYXJfZ2Vu
M19waHlfdXNiM19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2
b2lkIHJjYXJfZ2VuM19waHlfdXNiM19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIHsKIAlwbV9ydW50aW1lX2Rpc2FibGUoJnBkZXYtPmRldik7Ci0KLQlyZXR1cm4gMDsKIH07
CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHJjYXJfZ2VuM19waHlfdXNiM19kcml2
ZXIgPSB7CkBAIC0yMTIsNyArMjEwLDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIg
cmNhcl9nZW4zX3BoeV91c2IzX2RyaXZlciA9IHsKIAkJLm9mX21hdGNoX3RhYmxlCT0gcmNhcl9n
ZW4zX3BoeV91c2IzX21hdGNoX3RhYmxlLAogCX0sCiAJLnByb2JlCT0gcmNhcl9nZW4zX3BoeV91
c2IzX3Byb2JlLAotCS5yZW1vdmUgPSByY2FyX2dlbjNfcGh5X3VzYjNfcmVtb3ZlLAorCS5yZW1v
dmVfbmV3ID0gcmNhcl9nZW4zX3BoeV91c2IzX3JlbW92ZSwKIH07CiBtb2R1bGVfcGxhdGZvcm1f
ZHJpdmVyKHJjYXJfZ2VuM19waHlfdXNiM19kcml2ZXIpOwogCi0tIAoyLjM5LjEKCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
