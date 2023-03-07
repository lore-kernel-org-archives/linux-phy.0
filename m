Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45CD5C6FA99
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUfUJzR/P44YuWQiT/nWNHA6nKzxA63g079fG0pbwFU=; b=dlV1nxB4c+oens
	gVLHrVpNrvYdUx+PCOWEV9MQeOAalnkKgzIZBURoZXL3rAo8pl9H9u41IE0+PySCmh3OEJIAcqFcK
	QhE19A8/g6Y6wGMQFTQQCjVBu4NA3x9dWcZdNCy19CXpQJrYyvuWrTO1YIcRkLSBEQbSMO4kjVDnk
	YhkK4+41xEAIvQ3FZ/RMWOIKnwftqqZG9OJCbLVO5WFBrP8bvFmxhiQG9JoPstfVDZbV2PigsYYZP
	YtVvse+uFSKsApua9OqwTA2VtRVx6o15N1MDr4v+Uv9b7vCruoOYlaFBdUu9snDJPO9RrvPlk4kSN
	ZaNZkICaomU9RvUCvtYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVzM-00HZb4-JH; Tue, 07 Mar 2023 12:00:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVye-00HZAx-Hp
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=90Gv8H6x5EfnObxJbVxDkZprFlrJCzmmwTzAylQXPp0=; b=jBv8CHMiOJb+0S1dbLRJQh2bz0
	YjkbD7cCaMiPbhSeCbPNzfpV0jxwLQHQSrFq9INW3kcFIg18cp75OVm6oc758HFYnXVWLY72GJ6mB
	efHc7+m65bu1Qg5IJKvUwnyMwGpN+CmIY4IPfFLdyrvn+ysMVbTSGOlVaoCz5tkFw2IvNuIwpwgLZ
	XOuSuxxA8lBYfAa+5NvXtC69KSxBvj9sw1eQd6m7q6FFARc8hn4uh0daIUQy2IckiGz/BehntUozu
	WhKG3OoSeZV2wJ8/5OS24IiTH+J99MBc6tqLhuQGAcr5TuNxLkCJGxZB9l98atBY/hNZtd/aZ+/ho
	LjFGTanw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyZ-00H2A4-2x
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-0006X3-Sx; Tue, 07 Mar 2023 12:59:11 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002TFj-3J; Tue, 07 Mar 2023 12:59:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyH-002yjZ-7t; Tue, 07 Mar 2023 12:59:09 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 16/31] phy: renesas: phy-rcar-gen3-usb2: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:45 +0100
Message-Id: <20230307115900.2293120-17-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1897; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=WisVgHy/RqhTnCNgdYwPxuA+rXdOAoFKX4xzSp7mOGM=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBybCf172hI2FEdzd6qcjfdpKwuPcNTNkKt/lI ild1Mld8mSJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmwgAKCRDB/BR4rcrs CaB3B/9htB59Zb6+vGy4TZi/SsjCvK6NYDRBH9UiQc71SXPB/xbdpjGYJDHbPJZofbS2qiU9+ER 7sbxsXdf7gvad6zxhkNr0suFzP1fbGI7dNrywWSfHw2xU6c5FmTUVrsO/hFipBvNPumQq4DPFkJ n4St9UoN81F72l1LPJ1151EaMRAHaAQxE1Irnv7rSTEewEPFaZ8+aapCXuz2BQAuH0uusCXnEaD fp7xcyU3kopv/dNmK9xAV19QHTRSrESNJfBZ5rj8QQktqdhEUCNE4ACeT55EBCIT7sdy9J22l3K ZV5qiYX0/1PPke74RAg9eks12djalhaMfZfDyDQkYfAvBy4p
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115928_204076_CA950042 
X-CRM114-Status: GOOD (  14.92  )
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
dmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyB8IDYgKystLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMgYi9kcml2ZXJzL3BoeS9yZW5l
c2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCmluZGV4IDlkZTYxN2NhOWRhYS4uZDRlMmVlN2U0ZWZi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCisr
KyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKQEAgLTc1NSw3ICs3
NTUsNyBAQCBzdGF0aWMgaW50IHJjYXJfZ2VuM19waHlfdXNiMl9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCXJldHVybiByZXQ7CiB9CiAKLXN0YXRpYyBpbnQgcmNhcl9nZW4z
X3BoeV91c2IyX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQorc3RhdGljIHZv
aWQgcmNhcl9nZW4zX3BoeV91c2IyX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQogewogCXN0cnVjdCByY2FyX2dlbjNfY2hhbiAqY2hhbm5lbCA9IHBsYXRmb3JtX2dldF9kcnZk
YXRhKHBkZXYpOwogCkBAIC03NjMsOCArNzYzLDYgQEAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5
X3VzYjJfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCWRldmljZV9yZW1v
dmVfZmlsZSgmcGRldi0+ZGV2LCAmZGV2X2F0dHJfcm9sZSk7CiAKIAlwbV9ydW50aW1lX2Rpc2Fi
bGUoJnBkZXYtPmRldik7Ci0KLQlyZXR1cm4gMDsKIH07CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZv
cm1fZHJpdmVyIHJjYXJfZ2VuM19waHlfdXNiMl9kcml2ZXIgPSB7CkBAIC03NzMsNyArNzcxLDcg
QEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcmNhcl9nZW4zX3BoeV91c2IyX2RyaXZl
ciA9IHsKIAkJLm9mX21hdGNoX3RhYmxlCT0gcmNhcl9nZW4zX3BoeV91c2IyX21hdGNoX3RhYmxl
LAogCX0sCiAJLnByb2JlCT0gcmNhcl9nZW4zX3BoeV91c2IyX3Byb2JlLAotCS5yZW1vdmUgPSBy
Y2FyX2dlbjNfcGh5X3VzYjJfcmVtb3ZlLAorCS5yZW1vdmVfbmV3ID0gcmNhcl9nZW4zX3BoeV91
c2IyX3JlbW92ZSwKIH07CiBtb2R1bGVfcGxhdGZvcm1fZHJpdmVyKHJjYXJfZ2VuM19waHlfdXNi
Ml9kcml2ZXIpOwogCi0tIAoyLjM5LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
