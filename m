Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AADCC6FD1B
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Hftiy/Poug96CeX4az3oM2RmiPjbRSERFgyz55KrIs=; b=rhOrLg0CJDOLYN
	GitnU3ZOeJQIlaS6xeV/SsUxwyEZbro2TEB2p0oNi8SwXGUA7Mb4UCZ92AfazohLrbSMMpZUWtLfG
	+2mek+Z4y2W5UM+wTQsnZgAdAxnNVso/yDiNH+69AsqEkp1Uzq0hsNpncoPJboVCEShLumjJVebJR
	Oeky3lY8NiIQ8HL3KzjBPK6XUxC0TscFNEkIilhoAEz20ThinoIpHTYlHOxjm2yU2rdBx6mmSPa/9
	aVjnfQAYCgehVnHiWKSqExLWBGZkBwSFkfSVbL689O9lGVc3Z0wCQKCURUe8PhkZcoRvVkyEqiVeS
	1cvEoKaGWXgC8/dvYAQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW0F-00HaBM-Lw; Tue, 07 Mar 2023 12:01:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyn-00HZFE-1J
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=WWKYJzzPfqaKRP4X5USZGpaVmPdTZshRiSrqrYkZvPM=; b=Z8h9hZhfpIC8CEDIzgNdFFR6RW
	8DPjApCDqPAGREA4Fws/xC+itAu6c6ZoMz2N4An66OgwYHP/HpQ0myZD88/ShVHfRW4eqj385IV9g
	69wT46eVReL80ZdyQm657Skon9im9fwd6+TGZHadM7ck60jcGb9QMrCb+J3VIGXKxJqsG0HWmhn+J
	RrTCg3ikPueqnbjaEBZ5/AmLU+IdyO44rToYtx5njehlFqpPms4bcCTPloUrwBM0q+Vx23e/A0iS2
	v4owr2btvldxhRyzdhotELyO7Zc+BYPfCInXwrZgl7bG7ZseDFCCf/767gh0tW0Cvl1C3nzOiZZOO
	aPtvSd/A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyc-00H2AJ-14
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-0006Vp-Bk; Tue, 07 Mar 2023 12:59:11 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002TFI-9W; Tue, 07 Mar 2023 12:59:10 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyG-002yjS-RI; Tue, 07 Mar 2023 12:59:08 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 14/31] phy: qualcomm: phy-qcom-ipq806x-sata: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:43 +0100
Message-Id: <20230307115900.2293120-15-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1859; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=BpU8LHVSt/XqXfZwVOK+XjWGgAEHw708aj/r8R+zfKA=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBya6OvvUkMkDMmUnFRNeO9txQVuNkKZJvNWXm OUz8SgW9BWJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmugAKCRDB/BR4rcrs CWZYB/43tpEzNSBnSv+RjJRTTsFxxOcZVVV/13nL8D9lmMUlUZS5FrY/8OKrqdRjxsbfrgxO8d6 15j6Rm+0YRKPVaGDDv5qtBqWBgeAQGe8e2fYO5eXl54aRGtU9qKfo6SzjiHiSlqTzQemgzXSov6 IOvTOm1zw5zBHlfuaqoMajWS1NLSRBvAFiYRBQBC7tOkqRNSQplAllnm/lsL3t+rke7kT+1YOiJ fa05mop+O0r8i1luFKarLwq8glGp+iDIsAB4RT6K5GvmNx8PC1k2Y42r5WZJx++9ZrIIRVT78AP xGenvrHVNJ6wtrENecNB3Q4Lgn9URerG+Hzs1AzQwcHZMvVy
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115937_346054_29EA27BD 
X-CRM114-Status: GOOD (  15.47  )
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
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20taXBxODA2eC1zYXRhLmMgfCA2ICsrLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1pcHE4MDZ4LXNhdGEuYyBiL2RyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLWlwcTgwNngtc2F0YS5jCmluZGV4IDBmYzJhMWVkMzliMy4u
ZjBhNzJiODJjNzcwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1p
cHE4MDZ4LXNhdGEuYworKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1pcHE4MDZ4
LXNhdGEuYwpAQCAtMTcwLDEzICsxNzAsMTEgQEAgc3RhdGljIGludCBxY29tX2lwcTgwNnhfc2F0
YV9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gMDsKIH0K
IAotc3RhdGljIGludCBxY29tX2lwcTgwNnhfc2F0YV9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCBxY29tX2lwcTgwNnhfc2F0YV9waHlfcmVtb3Zl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHFjb21faXBxODA2eF9z
YXRhX3BoeSAqcGh5ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAKIAljbGtfZGlzYWJs
ZV91bnByZXBhcmUocGh5LT5jZmdfY2xrKTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgY29u
c3Qgc3RydWN0IG9mX2RldmljZV9pZCBxY29tX2lwcTgwNnhfc2F0YV9waHlfb2ZfbWF0Y2hbXSA9
IHsKQEAgLTE4Nyw3ICsxODUsNyBAQCBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBxY29tX2lwcTgw
Nnhfc2F0YV9waHlfb2ZfbWF0Y2gpOwogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBx
Y29tX2lwcTgwNnhfc2F0YV9waHlfZHJpdmVyID0gewogCS5wcm9iZQk9IHFjb21faXBxODA2eF9z
YXRhX3BoeV9wcm9iZSwKLQkucmVtb3ZlCT0gcWNvbV9pcHE4MDZ4X3NhdGFfcGh5X3JlbW92ZSwK
KwkucmVtb3ZlX25ldyA9IHFjb21faXBxODA2eF9zYXRhX3BoeV9yZW1vdmUsCiAJLmRyaXZlciA9
IHsKIAkJLm5hbWUJPSAicWNvbS1pcHE4MDZ4LXNhdGEtcGh5IiwKIAkJLm9mX21hdGNoX3RhYmxl
CT0gcWNvbV9pcHE4MDZ4X3NhdGFfcGh5X29mX21hdGNoLAotLSAKMi4zOS4xCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
