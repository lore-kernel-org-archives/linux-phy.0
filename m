Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D83DC6FA99
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdJAozLQM3p2T1f+PpMYVzqWCaXfli0wdHdnJ03jHBw=; b=wGmjx9MhviAmKw
	NgBQcnmo3FqKWsvYUGK2cDJGjSazJrPm1icydFVA84edeFup9ka6taBrfZM4rRTLmht40NRG7h0Ml
	j9LR0coSk1Rh0jh8p9AlbiSf5JrH9vlGsQtA9p4NuO87i7cSPzeTOvQq4VP4g/9mLzr0E66W8JX93
	ekp0hk0RJtj5hszfGhSK3mfRPq8oGmx2LHbnbSOyMV9y+xIO+NamKH97ONgJHBHqDRSUmw7IadhQa
	saxVZBfPyFd05w9mwbfSUIhOWe0tLZvmbu8Sa/IFnEcFQWDomlpSAVlSR/mti4gdBSr1Y0yHHgE0z
	hJlVlNkIxbw94jp5fxRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW0F-00HaAu-Br; Tue, 07 Mar 2023 12:01:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyk-00HZDd-UG
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=WmU01RHtNCHqmqo1vnvsBz3bmSDGztLibSd1kwZqCa0=; b=oYzjWIPN0FNjE42zZrOUnJkW9m
	/BBSnOBkM5aSq0QRzuwTFzXqwJ/5hKs5P6PE+xWOBAjBWnLn67eaATrMMO5HSqr28/We5FJERlIjp
	zEG1ujkxqU+32oNIobFjIyFupCVwzuiBvrWb6blt8sKKfuBPIWykIqLQbXfHJ1dRZcc5mVhqdKkHk
	p5414Z9Aql5PvPOwDapd1cMpdm8qqzn+iQb1UM7b4vmwO3GSivqVNJl1E2qbLTBMeoLgmEqjs2nJl
	JhnJVQ8E9pXXzCPtDKtEQFzWEG6noNdObzWRIZ9tjvP1/V9xcXoReASCvfmEs0t7BQA/rkUemh+zW
	XUxxzzFg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyb-00H2AF-2b
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyL-0006Td-5o; Tue, 07 Mar 2023 12:59:13 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyH-002TF2-AV; Tue, 07 Mar 2023 12:59:09 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyF-002yj4-FD; Tue, 07 Mar 2023 12:59:07 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Yuan Can <yuancan@huawei.com>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 07/31] phy: intel: phy-intel-lgm-combo: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:36 +0100
Message-Id: <20230307115900.2293120-8-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1794; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=w6U8EGhEf+KUuIPQ4gAiN1msM5rGGw8Sp5cxLpxzHvQ=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByaXjEgKIFuoPnT8L3vpdDZYWkJzLjcOFg8tz c21KbrpEDiJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmlwAKCRDB/BR4rcrs CeygB/0RFT8XkIX4PNufWhjd413EFXe2XYvXOZ1Ikjj2KYJdqqTqLvHJcYUL5VEDG3x19Cih8ZA /JMna7nXEd2s8WIj5QxDlH0XnPPECuxO8eAfZZfTnguFVQm5BYc7MqKdrRwIAi+0GkVHhv34rhs MfqAVyM4K/drAplDwjXA355oXIpuA8TrqryYmgW4V95rWd+6f80cykhJ14AAudrvFYYNt3ySob/ rlI9+XJ5Tt6ttgbibBYwCifNOg9H+7rQM4bFX6U+cMdk359DmD+k6yCpDC1YRJXgx1Wm2xtRK78 qSqn2c5IRW4Jv+hejH8vL29KtVQmX0o8DLcx02ru+ZfuyC/N
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115931_757297_C7C3FD7B 
X-CRM114-Status: GOOD (  16.24  )
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
dmVycy9waHkvaW50ZWwvcGh5LWludGVsLWxnbS1jb21iby5jIHwgNSArKy0tLQogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9pbnRlbC9waHktaW50ZWwtbGdtLWNvbWJvLmMgYi9kcml2ZXJzL3BoeS9pbnRlbC9w
aHktaW50ZWwtbGdtLWNvbWJvLmMKaW5kZXggNjAxMGUyNDZkNTJlLi5jNDlmMzdlN2I3NWQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L2ludGVsL3BoeS1pbnRlbC1sZ20tY29tYm8uYworKysgYi9k
cml2ZXJzL3BoeS9pbnRlbC9waHktaW50ZWwtbGdtLWNvbWJvLmMKQEAgLTU4OSwxMyArNTg5LDEy
IEBAIHN0YXRpYyBpbnQgaW50ZWxfY2JwaHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIAlyZXR1cm4gaW50ZWxfY2JwaHlfY3JlYXRlKGNicGh5KTsKIH0KIAotc3RhdGljIGlu
dCBpbnRlbF9jYnBoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRp
YyB2b2lkIGludGVsX2NicGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQog
ewogCXN0cnVjdCBpbnRlbF9jb21ib19waHkgKmNicGh5ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEo
cGRldik7CiAKIAlpbnRlbF9jYnBoeV9yc3RfYXNzZXJ0KGNicGh5KTsKIAljbGtfZGlzYWJsZV91
bnByZXBhcmUoY2JwaHktPmNvcmVfY2xrKTsKLQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQgb2ZfaW50ZWxfY2JwaHlfbWF0Y2hbXSA9IHsKQEAgLTYwNiw3
ICs2MDUsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBvZl9pbnRlbF9jYnBo
eV9tYXRjaFtdID0gewogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBpbnRlbF9jYnBo
eV9kcml2ZXIgPSB7CiAJLnByb2JlID0gaW50ZWxfY2JwaHlfcHJvYmUsCi0JLnJlbW92ZSA9IGlu
dGVsX2NicGh5X3JlbW92ZSwKKwkucmVtb3ZlX25ldyA9IGludGVsX2NicGh5X3JlbW92ZSwKIAku
ZHJpdmVyID0gewogCQkubmFtZSA9ICJpbnRlbC1jb21iby1waHkiLAogCQkub2ZfbWF0Y2hfdGFi
bGUgPSBvZl9pbnRlbF9jYnBoeV9tYXRjaCwKLS0gCjIuMzkuMQoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
