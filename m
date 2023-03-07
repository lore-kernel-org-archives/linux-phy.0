Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79744C678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jY2sO9uPkU4XsXZITqtAuWwpGc+lf5qhQr6c/+S1MI=; b=1ZEbaKapJVuaje
	VnpAcPTObmRTbiRxsZF/5stxf0Ju8nAEX+dMwLV34l8ADylGMb34scCTTlpWKm0TKeK4n2Hur+TRW
	ORbp6KA8Q+zQDNQS9kRpCjJBQxgdgVJUkllnWDI7PLO5SnpurB7MzyENqbalbnp063YrDbPUOLdfd
	qaR9aHLHeNDTvYcKtxBxKIzxZ65zs4ZttGcjuHoO9vM11zZZ1OatMUqqeUDNI4dnJFeZRZEO2A3hi
	P3ku9iSIHs1zRtl8n/4tAVYDm9iKtr2H52VsA08z8eOzSKnsSV6ZcRgONr4F9Vk6T43JeLaVekQTE
	jBd9kIA+WVETtzoMV+mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVzM-00HZbJ-PI; Tue, 07 Mar 2023 12:00:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVye-00HZAw-Ho
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6O1WdzPj6Ft5B5O9E9+sInpxHghYZ0PyneOQ4Hoxwk4=; b=U+BOk/KmxfWX0geZquC4mn9NBZ
	m141rLUhC3nAPGppWLvfjBuF6riXbrULsRb+gDNYRSW+9OfuTDCPFzsEom9mQO8G6N5ybq8hpCvU/
	L09lGfLQKECY7k6piXnTRiRELL2ZVUAXLdXqViwQaPCWP/h0Ef54A+bVm1xNB8KXoa6JAKNrN2+vc
	Hg00Etvvru+lAfByeG39DojdmWRTof4lSJeOFmHLLQdJcumhmNSFVjF5UTpJFhJgpoy2vB3S2lr6v
	XxZ1PcKXvTupX/822pyFS1kqhZhMUH/opKaLnZdKD118msNbpU/485ThbzepaOTy0GNkx0pvXyXhE
	Sw7RUrUg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyZ-00H2AE-2w
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyM-0006eh-9t; Tue, 07 Mar 2023 12:59:14 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-002TGg-QJ; Tue, 07 Mar 2023 12:59:12 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002ykL-Je; Tue, 07 Mar 2023 12:59:11 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Allison Randal <allison@lohutok.net>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 27/31] phy: ti: phy-dm816x-usb: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:56 +0100
Message-Id: <20230307115900.2293120-28-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1619; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=rP419vYQFNJjNg4XeVQc/ig2aLrWTQ9D4XEUzDiLPYE=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBybtu5/SV/UYPdf3doTL0pzQgOVwUxCIUJMF8 WnACfsz1tiJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm7QAKCRDB/BR4rcrs CSclCACS+rPau3qlP7ZyiF5BDytx4ghlo6eu9OVqlbBeXllJGfXUXDRFBM2GKEfihYvx4BOcjuW 3E/dqwlLK7oSJxVEVjUlAKbVLIsgWfPR1Y+lAAuidrjT2Rkz59uVGSlakJukumYLyUq4oo9z9bc TXDU9c+vrRGk4l3Ke4gN/QJJjYzscqUo14Kv1x5joegZ7oFV/uwSvewr86WjDie5BvhfsJ746s9 6MZR/UD3tto7av0lOs4/t0Q7c7MhUR4pEpay7QIy+Qfmk7gZeEIga1dhTiDYOMHXV3ZsjZYCshR GKx3/Hlag4Ed7BrA5Ir0ru+2nc0RV7iFewhQOLy+WtPJ0d5g
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115928_135159_5FF4D636 
X-CRM114-Status: GOOD (  15.68  )
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
dmVycy9waHkvdGkvcGh5LWRtODE2eC11c2IuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3RpL3BoeS1kbTgxNngtdXNiLmMgYi9kcml2ZXJzL3BoeS90aS9waHktZG04MTZ4LXVzYi5jCmlu
ZGV4IGZiNjE5OTA4ZjkxMi4uZGIxNTNhNTVmNGUxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS90
aS9waHktZG04MTZ4LXVzYi5jCisrKyBiL2RyaXZlcnMvcGh5L3RpL3BoeS1kbTgxNngtdXNiLmMK
QEAgLTI1NywyMCArMjU3LDE4IEBAIHN0YXRpYyBpbnQgZG04MTZ4X3VzYl9waHlfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gZXJyb3I7CiB9CiAKLXN0YXRpYyBp
bnQgZG04MTZ4X3VzYl9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitz
dGF0aWMgdm9pZCBkbTgxNnhfdXNiX3BoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIHsKIAlzdHJ1Y3QgZG04MTZ4X3VzYl9waHkgKnBoeSA9IHBsYXRmb3JtX2dldF9kcnZk
YXRhKHBkZXYpOwogCiAJdXNiX3JlbW92ZV9waHkoJnBoeS0+cGh5KTsKIAlwbV9ydW50aW1lX2Rp
c2FibGUocGh5LT5kZXYpOwogCWNsa191bnByZXBhcmUocGh5LT5yZWZjbGspOwotCi0JcmV0dXJu
IDA7CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGRtODE2eF91c2JfcGh5X2Ry
aXZlciA9IHsKIAkucHJvYmUJCT0gZG04MTZ4X3VzYl9waHlfcHJvYmUsCi0JLnJlbW92ZQkJPSBk
bTgxNnhfdXNiX3BoeV9yZW1vdmUsCisJLnJlbW92ZV9uZXcJPSBkbTgxNnhfdXNiX3BoeV9yZW1v
dmUsCiAJLmRyaXZlcgkJPSB7CiAJCS5uYW1lCT0gImRtODE2eC11c2ItcGh5IiwKIAkJLnBtCT0g
JmRtODE2eF91c2JfcGh5X3BtX29wcywKLS0gCjIuMzkuMQoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
