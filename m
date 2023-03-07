Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 872AEC6FD1B
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjsxFE7x3UInKwJULH3XFNpA1Ibldnce6LHRZe9u7fY=; b=jQdPfMOSecaTAb
	+qCuMBgpXUQx/me1BLIgPNRPYkNTt4DMX1v6LB6IgLJ6L9zeUOj6Im2JnhQfuXpEQDRy40qOXD8iO
	IsC6+PVLwN7HPzckGPIlsQlFza/lTdj7ftHGgHsSlFdLIfRx1dYvffCwn9/5RKe65LvKQrH7XySSo
	Keu//mwXxZl3aT3VRHgZixVfODcJuHfBO7ejy0DSYHb4FDBeOBze+aV/Wqt1owxpEycyfDoq8tHjy
	7wRNUBnvaozbOmV0MqvD5huGh9HLU+lzbv2ZW8vZJLmA0G/opl6XkvISo5MUEM/odpKEJCfj/tADV
	Z8jwkkJQsCoHwQei3S1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVze-00HZnD-P3; Tue, 07 Mar 2023 12:00:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyf-00HZBm-U2
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=4w27L5ujD/FwVkCu+hJGrgo+8FZKisxWRRC2P2Fhwqw=; b=P7YX6rfKxB9A69kO/9kQYxX0eE
	RtPvNNrjzi2oKgr5sLYoSQgXQ72n0ob+mPScIQHgtwm6dhRQYOd3pFMAsXYW6txf2OY4O2mAq7UMI
	ZuTy73WOG+Y0AdQqqjU0or74GgtV1Z6GTLlC2EvScHGOcF0p7wg1AvSqAHFpK3J3NKK8XrCkIsIi7
	bx1xpvdxPpzguGQ4buewkX0doEz9w7RSyvUxSoxZo0KO9rFj8B3QnagETgJ644np3PDbDKNxhw9n+
	xj+MMjnwQ2b+fWj76q9HoA4Hd2R68o4G2xJSPyeXNfOhO3V4sXSNMWj8mcuGFMH63Fe+seADUNTNC
	XHFYgixg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyZ-00H2A7-2w
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyM-0006eT-9d; Tue, 07 Mar 2023 12:59:14 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-002TGa-Ob; Tue, 07 Mar 2023 12:59:12 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002ykC-7s; Tue, 07 Mar 2023 12:59:11 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Miaoqian Lin <linmq006@gmail.com>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 25/31] phy: ti: phy-am654-serdes: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:54 +0100
Message-Id: <20230307115900.2293120-26-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1644; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=jkMFopIcJ4EtP2LEu/hmChl02kCwmZx5sBqjSFzJ+94=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByblPaeCKfNc0G+nixpUOl2rwYuGLlWyICtPX 1HjdrMl5MCJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm5QAKCRDB/BR4rcrs CWnaB/40YLMQg8A+qzF+4tCtPqKwYXuU9f6yVzKsEUkDYm+GbUMf8vlsVydr6LVPCqMNjsJulil fnvB3P/jQG2pKzacAvkDA0ZlUOy3lEbpsEjSVWWgp1DM/cFjjouAXDhVE0JD1U8XT/t5cV3CIDh tkTc2WEc92AFZ7qh84WQAxmTrFnrQDDE+3DCi/Vl8mRBzx9XLSqtdx9sW+Fm8OkfDJAbk2zYfHH HIs8BUAm4YoTdDkjvBpE80QunlVjJGygLrPtrq9poI332NRnjSIBOGJk7B2er8yNf0wZMgQVN/y 5/1mzwly8Sm7dhs8ItyWLVE+i26Wi4tT6UY5nluce4qV2u3R
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115928_424168_BE7A88C1 
X-CRM114-Status: GOOD (  15.35  )
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
dmVycy9waHkvdGkvcGh5LWFtNjU0LXNlcmRlcy5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvdGkvcGh5LWFtNjU0LXNlcmRlcy5jIGIvZHJpdmVycy9waHkvdGkvcGh5LWFtNjU0LXNlcmRl
cy5jCmluZGV4IDBiZTcyN2JiOWY3OS4uNGVkMmQ5NTFkM2RmIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3BoeS90aS9waHktYW02NTQtc2VyZGVzLmMKKysrIGIvZHJpdmVycy9waHkvdGkvcGh5LWFtNjU0
LXNlcmRlcy5jCkBAIC04NDIsMjAgKzg0MiwxOCBAQCBzdGF0aWMgaW50IHNlcmRlc19hbTY1NF9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiByZXQ7CiB9CiAKLXN0
YXRpYyBpbnQgc2VyZGVzX2FtNjU0X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQorc3RhdGljIHZvaWQgc2VyZGVzX2FtNjU0X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQogewogCXN0cnVjdCBzZXJkZXNfYW02NTQgKmFtNjU0X3BoeSA9IHBsYXRmb3JtX2dl
dF9kcnZkYXRhKHBkZXYpOwogCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9IGFtNjU0X3BoeS0+
b2Zfbm9kZTsKIAogCXBtX3J1bnRpbWVfZGlzYWJsZSgmcGRldi0+ZGV2KTsKIAlvZl9jbGtfZGVs
X3Byb3ZpZGVyKG5vZGUpOwotCi0JcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZv
cm1fZHJpdmVyIHNlcmRlc19hbTY1NF9kcml2ZXIgPSB7CiAJLnByb2JlCQk9IHNlcmRlc19hbTY1
NF9wcm9iZSwKLQkucmVtb3ZlCQk9IHNlcmRlc19hbTY1NF9yZW1vdmUsCisJLnJlbW92ZV9uZXcJ
PSBzZXJkZXNfYW02NTRfcmVtb3ZlLAogCS5kcml2ZXIJCT0gewogCQkubmFtZQk9ICJwaHktYW02
NTQiLAogCQkub2ZfbWF0Y2hfdGFibGUgPSBzZXJkZXNfYW02NTRfaWRfdGFibGUsCi0tIAoyLjM5
LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
