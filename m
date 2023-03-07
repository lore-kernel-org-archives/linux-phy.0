Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF15CC678D4
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDYxse1+obDgDpTCdE2V3/QUfh+uUwFtU03Y0+L9YG8=; b=bJLPL63ApTDeJp
	x+HocYHB/A4D0DCz7mlS4idz5iEtA5b6xmNqUOibEBucFuvspOfz9h3pHl5PqFQoRUv9vQk1euSYw
	kJ93ZTftLtzJB4Kwig8faCRzI0cyjFTQ5gxR5p9s18ik5funNqRf0Kx67xC0cr36q367C+QdaUypf
	suNh5pZvxqw0c05+0ec4594weVl18l+uuDXz8idcsqENPn6XpHkma3rd8cIyyy4AvI/QvVWR+89s0
	NmWvIgc7vF13WtXf+K8AtAlGMXejgpvIhIeXegx1rnb6dT2VJ68wwhl8vq49U/fr/bxo0MsUk1EoN
	6/TNrP/172ZNnDBDleMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVz8-00HZRm-Bd; Tue, 07 Mar 2023 12:00:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyY-00HZ5w-OD
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyL-0006bk-F0; Tue, 07 Mar 2023 12:59:13 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-002TGM-Cw; Tue, 07 Mar 2023 12:59:12 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002yk8-11; Tue, 07 Mar 2023 12:59:11 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: JC Kuo <jckuo@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH 24/31] phy: tegra: xusb: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:53 +0100
Message-Id: <20230307115900.2293120-25-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1837; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=E3uo38jywnktvSNvAGRANsI8kEJhkfQ9Ly00U4vBCFY=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBybhMO4YTx5uCCpzSiO56pIYF4a85pRbL/tYG WkTAGgRW+CJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm4QAKCRDB/BR4rcrs CRSdB/94UtxtudX+pBQ3YkBMzxE5Ip8dBJfer2GWIFb6V8yJcGdVWaKYm43IuF+0Es5Bp6vg0Ig yxI7dfHdogkmACUNUfKWQLZp4it5ry39d8DjtA2nNjO7rDkGQXvymmzNisOayVmB/UpOuage/Am CBiREKl3y1lnrlUcWN+NdSZ2kJTEiIha6HN3fgSOgmG2on75mWlnyG+DXgs/ew551npdRwlUdqA 7GmfSJcy01zov8C2JQZe3aK4+fVT7S++FCUesI+rMGAY/w4GoMf0G9lowbOSD/ztvk5vaNwNeDo GM+Ghpj2OzBHVyP+1q1OfZJJMlLKWfolKyWEeD7plyA56FSB
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035926_844385_3666D739 
X-CRM114-Status: GOOD (  15.01  )
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
dmVycy9waHkvdGVncmEveHVzYi5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVncmEv
eHVzYi5jIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCmluZGV4IDc4MDQ1YmQ2YzIxNC4uZWMz
MzU2Njg1NjNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKKysrIGIvZHJp
dmVycy9waHkvdGVncmEveHVzYi5jCkBAIC0xMjY3LDcgKzEyNjcsNyBAQCBzdGF0aWMgaW50IHRl
Z3JhX3h1c2JfcGFkY3RsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0
dXJuIGVycjsKIH0KIAotc3RhdGljIGludCB0ZWdyYV94dXNiX3BhZGN0bF9yZW1vdmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIHRlZ3JhX3h1c2JfcGFkY3RsX3Jl
bW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCXN0cnVjdCB0ZWdyYV94dXNi
X3BhZGN0bCAqcGFkY3RsID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAJaW50IGVycjsK
QEAgLTEyODUsOCArMTI4NSw2IEBAIHN0YXRpYyBpbnQgdGVncmFfeHVzYl9wYWRjdGxfcmVtb3Zl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCWRldl9lcnIoJnBkZXYtPmRldiwgImZh
aWxlZCB0byBhc3NlcnQgcmVzZXQ6ICVkXG4iLCBlcnIpOwogCiAJcGFkY3RsLT5zb2MtPm9wcy0+
cmVtb3ZlKHBhZGN0bCk7Ci0KLQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIF9fbWF5YmVfdW51c2Vk
IGludCB0ZWdyYV94dXNiX3BhZGN0bF9zdXNwZW5kX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikK
QEAgLTEzMjEsNyArMTMxOSw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHRlZ3Jh
X3h1c2JfcGFkY3RsX2RyaXZlciA9IHsKIAkJLnBtID0gJnRlZ3JhX3h1c2JfcGFkY3RsX3BtX29w
cywKIAl9LAogCS5wcm9iZSA9IHRlZ3JhX3h1c2JfcGFkY3RsX3Byb2JlLAotCS5yZW1vdmUgPSB0
ZWdyYV94dXNiX3BhZGN0bF9yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSB0ZWdyYV94dXNiX3BhZGN0
bF9yZW1vdmUsCiB9OwogbW9kdWxlX3BsYXRmb3JtX2RyaXZlcih0ZWdyYV94dXNiX3BhZGN0bF9k
cml2ZXIpOwogCi0tIAoyLjM5LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
