Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFED7C678D4
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MhGY/X95Nu2s1tNw4bVs/eVbyBj+DSkSEs52MAK3C0=; b=e8BAu66Nk+5zUO
	JHn6PSkntG6VlPKPi+2iZPu2C2mIivU3tFG33QsH2WYaoN7Hf+c+63Ggd5cR72Cij10liL1Iye2zh
	g36SSCuRsgCcNeeppSLQBcb4C3NW7gDdrrxuBcGJlwezG44pbFGXm7pfnD6wKWKqJFeHzVOFxZd+/
	V0AiKvgqUVJ0STFtrI+DSOkRegDkwcTAq16IlCkp6hH+Ah0n/YmsMYIy1ROdPRq/0V76x+bCGrfUV
	4iaOavJbXNC1AV+M5dVlS0RAoCule9z5fHCGAE9yonB3C8i/thVGAX8/zU9UIuzzHONqk5GWK3hpR
	VOWntjeH6DjZ5b7qL/Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW0H-00HaCy-1o; Tue, 07 Mar 2023 12:01:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyq-00HZI3-MK
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=k7gSYjkSgW2OeTP/mxiN5yskeag+bTTm+dE6+FI1kwM=; b=dE0/mSUvu+EZrko35LrvfrNm5b
	r0UjJnfMM0b0k6IAp3r9U/OpVjtJrDUSr6Wf4ZdAxypntkH8tevVL56G49x91exSm1eIlYtNI8tec
	U//zO7ZxiDyMEZM0v2vAsAsaRIjQWcpgpq9HQghqprfsKSKAL3lQl7buaNXTXLA+jl1wpT46NRRLC
	jOxaxmB2/b7x7dYash4d1PPSCnPNQ6xnvSZF3VIfc2EAsicQfv2rguYfcFbzS8ESN0ujnMyRyUHMC
	hH44zOBkuaemt9FwQ78AySABG50a3xKEKltKLYsgsNQbBX9o+0V38G338yvi8Zfm282MnbfoKhaGU
	5orLRB2Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyZ-00H2A3-2x
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-0006XO-WB; Tue, 07 Mar 2023 12:59:12 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002TFn-6I; Tue, 07 Mar 2023 12:59:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyH-002yjW-10; Tue, 07 Mar 2023 12:59:09 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 15/31] phy: renesas: phy-rcar-gen3-pcie: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:44 +0100
Message-Id: <20230307115900.2293120-16-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1675; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=y70vaES3v+wg7+VuLFw71twzmBM+Nn++B1EKTWYcvuY=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBya+GTLrpDXFK5DRcKdnvJ61jyQ76kWF0l95q SuuOLUCAeyJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmvgAKCRDB/BR4rcrs CUYMB/9u6h3xdEBm6eaGxz71Eq+iZunS//KVBQmvWz033jLzayajxPiFX9994/V2FX4vwsp84kx 4XHHv2fCXXJ1VhtiFFZMvcxqtSrHmtCKE+SK7azC17X9z9bSMqofoL5HkdTMU8+TQ+zpDBCTj6/ H4qhJLv/22dy7tGBshDe4cmNgByL0O506FyZbKpVQi4JBfCSFRVv9Jly5Jzauuoqwcm8GDE3Ndk K80ZsswgxY8NnElfJ5fd+iAxB4Sv2Iu20M+W/IvrQv3PyhupcBFBa/spnDCqYWyGpK9N/O0gIOt Bua7NXjI4CXd/MsARjNLj3ociNtNcrZ3DmmKZcqb+zkcn+IK
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115939_619732_BC03AEEC 
X-CRM114-Status: GOOD (  14.86  )
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
dmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXBjaWUuYyB8IDYgKystLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy1wY2llLmMgYi9kcml2ZXJzL3BoeS9yZW5l
c2FzL3BoeS1yY2FyLWdlbjMtcGNpZS5jCmluZGV4IDRkYzcyMWViOTU3Ny4uOWNmNzg2YTdkYWFj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtcGNpZS5jCisr
KyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy1wY2llLmMKQEAgLTEyNiwxMSAr
MTI2LDkgQEAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3BjaWVfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gZXJyb3I7CiB9CiAKLXN0YXRpYyBpbnQgcmNhcl9n
ZW4zX3BoeV9wY2llX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQorc3RhdGlj
IHZvaWQgcmNhcl9nZW4zX3BoeV9wY2llX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQogewogCXBtX3J1bnRpbWVfZGlzYWJsZSgmcGRldi0+ZGV2KTsKLQotCXJldHVybiAwOwog
fTsKIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcmNhcl9nZW4zX3BoeV9kcml2ZXIg
PSB7CkBAIC0xMzksNyArMTM3LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcmNh
cl9nZW4zX3BoeV9kcml2ZXIgPSB7CiAJCS5vZl9tYXRjaF90YWJsZQk9IHJjYXJfZ2VuM19waHlf
cGNpZV9tYXRjaF90YWJsZSwKIAl9LAogCS5wcm9iZQk9IHJjYXJfZ2VuM19waHlfcGNpZV9wcm9i
ZSwKLQkucmVtb3ZlID0gcmNhcl9nZW4zX3BoeV9wY2llX3JlbW92ZSwKKwkucmVtb3ZlX25ldyA9
IHJjYXJfZ2VuM19waHlfcGNpZV9yZW1vdmUsCiB9OwogCiBtb2R1bGVfcGxhdGZvcm1fZHJpdmVy
KHJjYXJfZ2VuM19waHlfZHJpdmVyKTsKLS0gCjIuMzkuMQoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
