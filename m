Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D710C678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvkEuKDIdwHSNuCuF3U9p6/CWCm+cOsWvKaCNx0QZ+c=; b=MBe0l5NebLYLhW
	mrx1ByjtaTGC+EES05ydawQLJE8pu4XrUHIVBUM1a8lotsljA1j/7GbefEbZweY1IqMFk5FpEUJvR
	4AL57yoxAxVm2cWfoHWMu2xwgRoowi+SIaT0UVvlSV0trJ6aShyuo4XFK4wf56B7gglF6ECZIYkDT
	9qj7VGbyLYfOWbBxhqVzNacoF/K29S+ioM01IH8Z/PtYMhg68tQOZW5MKpHb5UbH66ONKGNoFzYWO
	vdlL6jvfodIIeqsEDvQ/9Na4NrUkSOWD2JEurhDGJ3AsfhbL6MzLIzkmLARvWuru6633f6a9CYPVW
	sPA6YLdWDkDGSjL7v2pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW0a-00HaRK-EP; Tue, 07 Mar 2023 12:01:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW04-00Ha4F-JE
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 12:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=YFwavLSe7YCc7tD1Bm547UhW9Ubv0G8+EC15E3408xc=; b=bd2i8OpA7wvP4Z3i2oInI3Xpsk
	077KnS8TbDq7JFpHZh6NMFJBuUeDBSB7X5sfanjhgVnC9I2IjM/ac822d0bZyC2s4FYWvmQ3PxXvX
	P2+ISz7ivAa4bxfmaJyBPNIvx6wg86jzJfRTURKJYq1UuokltR4BnWN4ws5Q26oC/OJlWQTjjlmoE
	MHm0eb7MJ4vYLZmDVpAi5gYblEPhehWCW1LEnZ2nhKpK/2FFMkZz+ZBrmeRg3bZ54p6IzsbbrRvt1
	Ie1Sgr8ixaAQtj72FSkCo6PacgS/1CkE+O7EFZ4rPKunai0xnBAXtw/g2q0c7oTIe99gX8rMIRAHN
	fY1N+G8A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVya-00H2AL-0S
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 12:00:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-0006WG-He; Tue, 07 Mar 2023 12:59:11 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002TFW-NZ; Tue, 07 Mar 2023 12:59:10 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyG-002yjL-EL; Tue, 07 Mar 2023 12:59:08 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 12/31] phy: qualcomm: phy-qcom-apq8064-sata: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:41 +0100
Message-Id: <20230307115900.2293120-13-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1859; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=xYmcyFve/c0FbpaOz5dchKmOAuBz/bovJeKsX3la1pE=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByay9wXJzQAaNNxIc/jrX/U8B7bczddncXxfN ssTXBiIDH6JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmsgAKCRDB/BR4rcrs CQhoB/4inwQB2bdEPQLEyFwkEqfXhGQQupQ5JV08tOD59mGkMMOYms7pacUjREWJ6rwh5iw2H7D WeDLsWmNIKI+QmVFCO9Kg1WGIkmaR14NwFVzdPjAJzhGPlGFDXW+pkTwZ0JtwTHHifZ3t4ktCo+ p5+dtXQrgq6/aMkgYRx4dIhHg3wTAl40b7VH5+ySKnUZjDk1qz0MMdwH9fJYE9cYkajjtA2i6Ch cBXy9n+sn3/s0D9//QGxjcZxGGeA2AivYxSSXZnpcR7nLvdqRQ5pFsO2TfXb7ulezRW+zxBi1gO 95DUC/8m1poDO9rk6slT38zOlfyFqKzVp1Gg0ioxv8W3fCXG
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115929_361304_D4848785 
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
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tYXBxODA2NC1zYXRhLmMgfCA2ICsrLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1hcHE4MDY0LXNhdGEuYyBiL2RyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLWFwcTgwNjQtc2F0YS5jCmluZGV4IGQ0MzdhMjQ5Y2Q3My4u
ODgxNGY0MzIyYWRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1h
cHE4MDY0LXNhdGEuYworKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1hcHE4MDY0
LXNhdGEuYwpAQCAtMjQzLDEzICsyNDMsMTEgQEAgc3RhdGljIGludCBxY29tX2FwcTgwNjRfc2F0
YV9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gMDsKIH0K
IAotc3RhdGljIGludCBxY29tX2FwcTgwNjRfc2F0YV9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCBxY29tX2FwcTgwNjRfc2F0YV9waHlfcmVtb3Zl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHFjb21fYXBxODA2NF9z
YXRhX3BoeSAqcGh5ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAKIAljbGtfZGlzYWJs
ZV91bnByZXBhcmUocGh5LT5jZmdfY2xrKTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgY29u
c3Qgc3RydWN0IG9mX2RldmljZV9pZCBxY29tX2FwcTgwNjRfc2F0YV9waHlfb2ZfbWF0Y2hbXSA9
IHsKQEAgLTI2MCw3ICsyNTgsNyBAQCBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBxY29tX2FwcTgw
NjRfc2F0YV9waHlfb2ZfbWF0Y2gpOwogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBx
Y29tX2FwcTgwNjRfc2F0YV9waHlfZHJpdmVyID0gewogCS5wcm9iZQk9IHFjb21fYXBxODA2NF9z
YXRhX3BoeV9wcm9iZSwKLQkucmVtb3ZlCT0gcWNvbV9hcHE4MDY0X3NhdGFfcGh5X3JlbW92ZSwK
KwkucmVtb3ZlX25ldyA9IHFjb21fYXBxODA2NF9zYXRhX3BoeV9yZW1vdmUsCiAJLmRyaXZlciA9
IHsKIAkJLm5hbWUJPSAicWNvbS1hcHE4MDY0LXNhdGEtcGh5IiwKIAkJLm9mX21hdGNoX3RhYmxl
CT0gcWNvbV9hcHE4MDY0X3NhdGFfcGh5X29mX21hdGNoLAotLSAKMi4zOS4xCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
