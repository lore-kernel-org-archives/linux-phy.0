Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46F41C6FA99
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 11:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fh8w53Ls6J2ltnoIoy2RLjNxKj4g2He96/s6COR+YRg=; b=sPMbnucXTCKq8B
	5vJ7bknBX0ODF9DO2HCevyarcIo7rIxdwaE7B8BJMlu0tj1ArQWrQnHkdAV/rdtDRYirYQectl60/
	WdV6+bFtgZDvx7R/qlgV8NbLcdJ8+zFMW3p1AAincTqEkT5yWAcE8ym3WsCCWC+iGoIAZH1CMU6D4
	j41Ns6yHueGzkqEqELxpetygCI2BaWewqU0Wg9U8iR3UqrIqc864f4i2C6PnuDbJ4xB0T1xFk+UPn
	55sHW6Or5hHFCgCXSGgMrZwe81G42tv9WtOwwQ8QtXKG/PztoXp1D+pCtFB7GHuBr8I6AqG3fL/2z
	T5mjEG9vTSxP0MFiOh6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyl-00HZEO-Ee; Tue, 07 Mar 2023 11:59:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyU-00HZ0V-21
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyM-0006ib-M6; Tue, 07 Mar 2023 12:59:14 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyL-002TGs-Fs; Tue, 07 Mar 2023 12:59:13 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-002ykb-E8; Tue, 07 Mar 2023 12:59:12 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 31/31] phy: ti: phy-twl4030-usb: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:59:00 +0100
Message-Id: <20230307115900.2293120-32-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1778; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=x76+uAh/aCN0r+XL8kn2KmvnQxCd4vTYcPtI3jbitnc=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByb9luHNrS2UNsryvX2ZXGp51qdHA3H20lfAy Ojaht0Z1YqJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm/QAKCRDB/BR4rcrs CUpFB/9mCQhPFCAw9X/M6gd8sTYoU24P4tgxBpJs/ohEt5tCsjaEaqINRHrEs7zgD6SURfU9AL3 GgVTs6z1yNrL1RGFzzFgqeMSgZ8xZLdV1jqa51lB/j6WXQvxNgS27WdpUbfcQwPMwe3yNkZfEKp gFTbi6wxrk5nVsRoU9IZtqosO3f2JKWBTs4r0QgdtcuSDdYbRU1j4A5rORaqNAiBoe5lFAOj6ei lFsgRsyiXgptOHXElooSEHAMPQaxIaSSZETtpe3F8T4sqO32/GPgAkZS+z7S4GsEmBHSfQiEtiU 3vs9Y9TYM5v+LzyAXyNibFwwu5RzZQMKV+MbKu9gqZEVr6YS
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035922_183706_F366CBA6 
X-CRM114-Status: GOOD (  15.38  )
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
dmVycy9waHkvdGkvcGh5LXR3bDQwMzAtdXNiLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Bo
eS90aS9waHktdHdsNDAzMC11c2IuYyBiL2RyaXZlcnMvcGh5L3RpL3BoeS10d2w0MDMwLXVzYi5j
CmluZGV4IGFjNzEwMTdhMGJjMS4uZGE1MDczMjYyNWQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3Bo
eS90aS9waHktdHdsNDAzMC11c2IuYworKysgYi9kcml2ZXJzL3BoeS90aS9waHktdHdsNDAzMC11
c2IuYwpAQCAtNzg3LDcgKzc4Nyw3IEBAIHN0YXRpYyBpbnQgdHdsNDAzMF91c2JfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIGludCB0
d2w0MDMwX3VzYl9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2
b2lkIHR3bDQwMzBfdXNiX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewog
CXN0cnVjdCB0d2w0MDMwX3VzYiAqdHdsID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAJ
aW50IHZhbDsKQEAgLTgyMSw4ICs4MjEsNiBAQCBzdGF0aWMgaW50IHR3bDQwMzBfdXNiX3JlbW92
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiAJLyogZGlzYWJsZSBjb21wbGV0ZSBP
VEcgYmxvY2sgKi8KIAl0d2w0MDMwX3VzYl9jbGVhcl9iaXRzKHR3bCwgUE9XRVJfQ1RSTCwgUE9X
RVJfQ1RSTF9PVEdfRU5BQik7Ci0KLQlyZXR1cm4gMDsKIH0KIAogI2lmZGVmIENPTkZJR19PRgpA
QCAtODM1LDcgKzgzMyw3IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHR3bDQwMzBfdXNiX2lk
X3RhYmxlKTsKIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgdHdsNDAzMF91c2JfZHJp
dmVyID0gewogCS5wcm9iZQkJPSB0d2w0MDMwX3VzYl9wcm9iZSwKLQkucmVtb3ZlCQk9IHR3bDQw
MzBfdXNiX3JlbW92ZSwKKwkucmVtb3ZlX25ldwk9IHR3bDQwMzBfdXNiX3JlbW92ZSwKIAkuZHJp
dmVyCQk9IHsKIAkJLm5hbWUJPSAidHdsNDAzMF91c2IiLAogCQkucG0JPSAmdHdsNDAzMF91c2Jf
cG1fb3BzLAotLSAKMi4zOS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
