Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85E2CC6FD20
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e8aZzcNmbttfE9g5rvw/95L0JEvOUeY2pJiqSC0I1p0=; b=ZBZOHaguqgVP/X
	EUMF4Yern0Hhmx8LfCkDp/eTKBDjKHJlFXv4uVbsRBWw9s/bct6tY+00Hd934t/FAy8Xh+Q+EgYzW
	JS+q88Md2Svmay9+6/gZW+/CNIKUpvmNVFpnTiFSty7kdWNZk9qyUmp4XmJ9wTzf4UH2VtoZqsp2g
	PQumYLxJ9BIElVymX6pt2eewjItFnqGwSOz7V5p+ugfhoK7hd8dR/uK8jSk4fUPrMydsLIEfKuGOG
	0nDOvXOYZStdgn7HaurHb3qOtDtXxJc2MO+Dt3s0BQ+wSrPBl0lPuTerSJgni8E7M0QhV3j33DhO7
	mLZYT8zJ/vqQtqylIGVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW0H-00HaDl-NH; Tue, 07 Mar 2023 12:01:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyv-00HZLE-EJ
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=r9t/oyCIhPJGiDlDAOdkA3OMVafiJbPgTbFkCOtCQrE=; b=QhxQ1VJ5MZND7loipSmGmEw3Iy
	Zqd5xsMhqzRDIpB+0s4aqm+YcTpFEKFjfT4UqLqTvXRt95XDkAXEY0t3zc8ZceUFH5JMK+dbeXY26
	3fP0leMJ6otnqrVkUVbiHmqOF05ItzKyW0K8brD+1NLB2hL63swTfRUT/VWXCaSTDb5Xz/mH0LxzR
	vDgMAcfkwHtOWZmU8aLqrsSF+nfGxPNZ5d1nLMNvf9JbmmqFCPaKdLsSaEnatly4/zs7nqJYy6uRH
	ESMLr+CMEyu4mFwnDbwbCrNl10psYO5HtRccCT9eVRVtrH4JfE2FC7bUPSzJ8F+qkMhfinW7Vvulx
	Zshcnqbg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyZ-00H2A8-2x
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-0006WH-Mg; Tue, 07 Mar 2023 12:59:12 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002TFX-O0; Tue, 07 Mar 2023 12:59:10 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyF-002yjB-Pv; Tue, 07 Mar 2023 12:59:07 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Allison Randal <allison@lohutok.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 09/31] phy: motorola: phy-cpcap-usb: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:38 +0100
Message-Id: <20230307115900.2293120-10-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1782; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=InvjGlzi7qF/1RQ0GQsZV8YjqcFjrherMdeoWPZ2VNk=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByai6Thoat5iJSq+VALbJDjpG+wjJjMFC8XoZ AEYs8w03XSJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmogAKCRDB/BR4rcrs Cb2bB/4lEqQOdMmPHgMDMueXJSzGWa+o3ZiBPIQcG39zrK4A/aPnAdgJQPH8jCGHWa4Q4ZMte3Y q9+0H8vLijHBkxWjKT6eVUjtGNwBC0eFCBL1MMYUKzq50gPYir1x7xmyryuujxx3BUJmVFLgwBH eutjIBgDJFyrP58SBzEb5WJFdRF3j6izOpX9plFUT3HlY8/fFNUXD9DYG905imHbqYR/Iqq0oWd m6LJqyQCoMoxgN9FTtDbPZOkMycqaJwcgH61vrXfxzl9TZaXwl1Y0eYLc0dvwkPIEOYch86zfH4 7p//bvdd4o93PSx7LSN3jwi3Mjs4J7aqcLwje1PpSfAlPHTt
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115946_538228_4B1FF400 
X-CRM114-Status: GOOD (  15.66  )
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
dmVycy9waHkvbW90b3JvbGEvcGh5LWNwY2FwLXVzYi5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvbW90b3JvbGEvcGh5LWNwY2FwLXVzYi5jIGIvZHJpdmVycy9waHkvbW90b3JvbGEvcGh5
LWNwY2FwLXVzYi5jCmluZGV4IDJmODIxMDE2N2I3Ny4uNzQzMzNlODE0MjIxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3BoeS9tb3Rvcm9sYS9waHktY3BjYXAtdXNiLmMKKysrIGIvZHJpdmVycy9waHkv
bW90b3JvbGEvcGh5LWNwY2FwLXVzYi5jCkBAIC02OTIsNyArNjkyLDcgQEAgc3RhdGljIGludCBj
cGNhcF91c2JfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJu
IGVycm9yOwogfQogCi1zdGF0aWMgaW50IGNwY2FwX3VzYl9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCBjcGNhcF91c2JfcGh5X3JlbW92ZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCXN0cnVjdCBjcGNhcF9waHlfZGRhdGEgKmRk
YXRhID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAJaW50IGVycm9yOwpAQCAtNzA3LDEz
ICs3MDcsMTEgQEAgc3RhdGljIGludCBjcGNhcF91c2JfcGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCXVzYl9yZW1vdmVfcGh5KCZkZGF0YS0+cGh5KTsKIAljYW5jZWxf
ZGVsYXllZF93b3JrX3N5bmMoJmRkYXRhLT5kZXRlY3Rfd29yayk7CiAJcmVndWxhdG9yX2Rpc2Fi
bGUoZGRhdGEtPnZ1c2IpOwotCi0JcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZv
cm1fZHJpdmVyIGNwY2FwX3VzYl9waHlfZHJpdmVyID0gewogCS5wcm9iZQkJPSBjcGNhcF91c2Jf
cGh5X3Byb2JlLAotCS5yZW1vdmUJCT0gY3BjYXBfdXNiX3BoeV9yZW1vdmUsCisJLnJlbW92ZV9u
ZXcJPSBjcGNhcF91c2JfcGh5X3JlbW92ZSwKIAkuZHJpdmVyCQk9IHsKIAkJLm5hbWUJPSAiY3Bj
YXAtdXNiLXBoeSIsCiAJCS5vZl9tYXRjaF90YWJsZSA9IG9mX21hdGNoX3B0cihjcGNhcF91c2Jf
cGh5X2lkX3RhYmxlKSwKLS0gCjIuMzkuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
