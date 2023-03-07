Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ED51C6FA99
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVBpeyI0Sg0uSmfRvfQZgYJYE5O0ttLnkC3wedkCmQs=; b=sqhnz0lHD0bRq1
	vFDE/v5SRlT3BWK73v7IN/pS4Q+xM/ZzfxKqR0u/jF3e+6NcgG9ZhvGCMmj6sLuoOB1Pl+6pUV2tj
	q4uNIXxdFBLIloRm+YxQeSTpYHbW6OKgZEOAl43zbz7Tv75xOnbfxej4Q2eEMvftPPT52FeuCHJ4c
	A36uWGtCicUuw4Nb7QVItVXt4fR5nf288SYd7ldaBhZzQTOI9RujX5CZeEfK5G1tvhjhXLJKal8I8
	AxT3gMvaFjftMXOngLB7ufEGkiqgxAdrZ230qQBVi8A7qP0jEOQ+I9Rrq5/9GFixMrNUp2ARX19w6
	Yv7k8nkq+4C9jerT//Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVze-00HZmy-KC; Tue, 07 Mar 2023 12:00:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyf-00HZBk-Sc
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=4fV8NiMP8aR0cLgmDcON6+pJm6juo1Emk1124L2Wdpw=; b=GOlcFx3KG2+Mq9S5VK/ZiH4dbU
	jJR5oZp8RLEGMdgl02fk7yZ5gnjqcq/kXNwGz/+QHuyqNEYVniHut2is+TPq8buHzbrkNNxoN74sc
	Vwg5U/7vimnIkt01nq+KK0ykzPORVs89mIOehS/Kbi7w49zJCj1YT6iE1uTDIliRFVQt3N9DOUMGc
	Z4svOvXuNjMWakCJeP45cy302rDLCuBHLT2HjvuBd1Bv4LORocQcSfWi5PQYHrL2AsdZUMaXjICT+
	9ddbaerFv9UdBEMhtvXyWrRS62RpWeJM3l9Qq7lkEptu+z6OAgWxRaJOuKX4RJr5cKxyVJq3Em1/p
	QoeJjYHA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyZ-00H2A5-2w
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-0006WO-IY; Tue, 07 Mar 2023 12:59:11 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002TFZ-PN; Tue, 07 Mar 2023 12:59:10 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyH-002yjg-MU; Tue, 07 Mar 2023 12:59:09 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 18/31] phy: renesas: r8a779f0-ether-serdes: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:47 +0100
Message-Id: <20230307115900.2293120-19-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1688; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=DgldPtxYnSqrToBXBLpRuTGOHbZXgAGlRGAXxYDQHww=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBybJxKx0cZMbv2sm0DfoIQ8Rr4Tbwr/t7OKVa ntvVdAFdIWJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmyQAKCRDB/BR4rcrs CacaB/4z0nQZWQLqYRyG/WQDrKOu1KLMZCfMIUMWx4oGQztJDN0loT2qTVSBR03tGcNnIhftQKd oz0WaushlAqI34Ss3fxKRB3WCBs//zrVyDXZoTrG0XpuNJhDBZlRG3Uq6RO4eqwUI/Zcix3q6Ub swOBWMqrYrKESCbaAUAmRRU8UiZz/U0ku9FlFmE0cTU8HfoT4BG4uf9d6StKI2zRIDoSUMbB1+s 8sRiNTawzFfqfXjrCMzEGiYWp1BD9ozldHoeKeK5ZaN60jMzsKC+QbDPd+7F38w7yzTVfMcYS6X QGDGfVMkUcsYJaVXt2VUqjwJ4gPeKrGazFL7QxS2Xkt8l+b6
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115928_458234_AD99B1C6 
X-CRM114-Status: GOOD (  14.99  )
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
dmVycy9waHkvcmVuZXNhcy9yOGE3NzlmMC1ldGhlci1zZXJkZXMuYyB8IDYgKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3JlbmVzYXMvcjhhNzc5ZjAtZXRoZXItc2VyZGVzLmMgYi9kcml2ZXJzL3Bo
eS9yZW5lc2FzL3I4YTc3OWYwLWV0aGVyLXNlcmRlcy5jCmluZGV4IGM1MjA2ZWY5MTk1Yi4uNTVi
N2JkZmMxMGQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3I4YTc3OWYwLWV0aGVy
LXNlcmRlcy5jCisrKyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMvcjhhNzc5ZjAtZXRoZXItc2VyZGVz
LmMKQEAgLTM4OCwxOSArMzg4LDE3IEBAIHN0YXRpYyBpbnQgcjhhNzc5ZjBfZXRoX3NlcmRlc19w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiAwOwogfQogCi1zdGF0
aWMgaW50IHI4YTc3OWYwX2V0aF9zZXJkZXNfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCitzdGF0aWMgdm9pZCByOGE3NzlmMF9ldGhfc2VyZGVzX3JlbW92ZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQogewogCXBtX3J1bnRpbWVfcHV0KCZwZGV2LT5kZXYpOwogCXBt
X3J1bnRpbWVfZGlzYWJsZSgmcGRldi0+ZGV2KTsKIAogCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBk
ZXYsIE5VTEwpOwotCi0JcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJp
dmVyIHI4YTc3OWYwX2V0aF9zZXJkZXNfZHJpdmVyX3BsYXRmb3JtID0gewogCS5wcm9iZSA9IHI4
YTc3OWYwX2V0aF9zZXJkZXNfcHJvYmUsCi0JLnJlbW92ZSA9IHI4YTc3OWYwX2V0aF9zZXJkZXNf
cmVtb3ZlLAorCS5yZW1vdmVfbmV3ID0gcjhhNzc5ZjBfZXRoX3NlcmRlc19yZW1vdmUsCiAJLmRy
aXZlciA9IHsKIAkJLm5hbWUgPSAicjhhNzc5ZjBfZXRoX3NlcmRlcyIsCiAJCS5vZl9tYXRjaF90
YWJsZSA9IHI4YTc3OWYwX2V0aF9zZXJkZXNfb2ZfdGFibGUsCi0tIAoyLjM5LjEKCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
