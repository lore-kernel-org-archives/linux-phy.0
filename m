Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 686A1C6FA99
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ap5b70k8NYpb8NKsP3T56XRU77Gxunek9mTMjOJcwTk=; b=yS8mnU89SZDD2N
	tVg1981WYL6fubxt7uhn4pQqSBt3/8b0CXMmTiaAecYkzRx+gMxvXgf7UuCNzjTRUWq+KGHHC45xe
	cTUpuDzdqTjbGW5OtU4ez8WGgB06UoSqqAgyvM35PrNqAMpGrpotC0w9i9IjgPfhhotTN3+jqhgWf
	EzT3REDg7kzrEhS78MBpwXfkDjaY65YNLMTpOg2skWmvh6UY8SxSjkuhKZpi6oJlWe2grpwqtMlT7
	Q3z4LQFtIBB3mWv1pWdsm9lMeVfuvbrmzFLYnsxAglEGuwbXOAoZN3Z5ouEij6XCfZt69/jxktpcU
	xm1cJBIflK6ODU7Akt5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW0a-00HaRi-Lq; Tue, 07 Mar 2023 12:01:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW04-00Ha4J-LV
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 12:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=l2Ghp56EMaOZZPscEh751n4IhYOFDVHyuupf+MnmW+o=; b=HKmtZMnFO75xbM+vHk3ItJXf8y
	BjwNGxU0jAQUdnHLH6IA62Rt0HnmvWoKVKKK0hC2/46UyIinxntabn1AfqGgojP/3cNfi9w8jHudS
	b3aDYb9C5PdLAERlTyWxXRIQe7RRTNvta1HrYQ4zaVZuOfatrFlFq8qyl615tTSQkG8sa0FPa4loS
	EPA8UE35bci7CX1+C6Dbsm6fPnDx8Iy0arOPwWN3pDmM4LImMivA/41T9hFlBoMg7ZyP5jPsjKtbH
	ftyh1JgLrnfsoniAUrNlo6RM1Pr9aslXWMVDS8yKJrALpDx+EYjd8mfbIr+fYZ1TFCpwPzL6bM+ff
	5AAusf9Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVya-00H2A9-1G
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 12:00:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyL-0006aS-5K; Tue, 07 Mar 2023 12:59:13 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-002TGI-7w; Tue, 07 Mar 2023 12:59:12 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002ykH-ET; Tue, 07 Mar 2023 12:59:11 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 26/31] phy: ti: phy-da8xx-usb: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:55 +0100
Message-Id: <20230307115900.2293120-27-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1858; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=mMfXWqIDOZggfPCErpet+D9puaN7vsI3m8+NLchnfuk=; b=owGbwMvMwMV48I9IxdpTbzgZT6slMaSwq72UnmoQ6SCoXOpQd2Dh0t2LMhkytkZt5njY7H5YZ bLbv38enYzGLAyMXAyyYoosdUVaYhMk1vy3K1nCDTOIlQlkCgMXpwBMJKyO/X/GtWw5icn796ZZ VIqsVnNS19312tZu7aXo+mr++Q58ZTXmZRknvF6nuuzRt2vemdx46b78wXKhlcL+BR3MOhbCWbr qUyW//9svqTvvtElXYxvDEuey99nnLiS/trI+pM24sOMV/7+j8j+2hLP5fZz+v2uyu7xhrMqDjr qHRyffKE0r6fgtG3O2kfNCUdC9W2IF+y1V73JuWpFr8+HZl1dXlU5YmmqZK8qVKBbVuF/UuFFYZ SXLodzIxX5p+Wyhda+uRvGppLt3mLHO4TRQ2dZnuVZvRufyabf07r5KXet7WHCy/7ObRmzX6kv3 cv898jTEqtx2xt2HEV4xjPP3h+bLS91fanp4TpxGzsHrAA==
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115929_173614_971D5F40 
X-CRM114-Status: GOOD (  15.62  )
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
dmVycy9waHkvdGkvcGh5LWRhOHh4LXVzYi5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
dGkvcGh5LWRhOHh4LXVzYi5jIGIvZHJpdmVycy9waHkvdGkvcGh5LWRhOHh4LXVzYi5jCmluZGV4
IDgzYmMwYTlhZmUxMi4uYjdhOWVmM2Y0NjU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS90aS9w
aHktZGE4eHgtdXNiLmMKKysrIGIvZHJpdmVycy9waHkvdGkvcGh5LWRhOHh4LXVzYi5jCkBAIC0y
MTEsNyArMjExLDcgQEAgc3RhdGljIGludCBkYTh4eF91c2JfcGh5X3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgZGE4eHhfdXNi
X3BoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIGRh
OHh4X3VzYl9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3Ry
dWN0IGRhOHh4X3VzYl9waHkgKmRfcGh5ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAK
QEAgLTIxOSw4ICsyMTksNiBAQCBzdGF0aWMgaW50IGRhOHh4X3VzYl9waHlfcmVtb3ZlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCXBoeV9yZW1vdmVfbG9va3VwKGRfcGh5LT51c2Iy
MF9waHksICJ1c2ItcGh5IiwgIm11c2ItZGE4eHgiKTsKIAkJcGh5X3JlbW92ZV9sb29rdXAoZF9w
aHktPnVzYjExX3BoeSwgInVzYi1waHkiLCAib2hjaS1kYTh4eCIpOwogCX0KLQotCXJldHVybiAw
OwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBkYTh4eF91c2JfcGh5X2lk
c1tdID0gewpAQCAtMjMxLDcgKzIyOSw3IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGRhOHh4
X3VzYl9waHlfaWRzKTsKIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgZGE4eHhfdXNi
X3BoeV9kcml2ZXIgPSB7CiAJLnByb2JlCT0gZGE4eHhfdXNiX3BoeV9wcm9iZSwKLQkucmVtb3Zl
CT0gZGE4eHhfdXNiX3BoeV9yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSBkYTh4eF91c2JfcGh5X3Jl
bW92ZSwKIAkuZHJpdmVyCT0gewogCQkubmFtZQk9ICJkYTh4eC11c2ItcGh5IiwKIAkJLm9mX21h
dGNoX3RhYmxlID0gZGE4eHhfdXNiX3BoeV9pZHMsCi0tIAoyLjM5LjEKCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
