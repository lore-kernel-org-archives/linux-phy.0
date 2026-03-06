Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AFBFF01822
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 10:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GG0Ro+Q33IbYTxAXjQnPFCWiQoOk20xAg2OdBpk57xI=; b=B+FtoVqG1jFEy7
	DfUv4Yw2N3cbs8VknpAw9h7R7AiJ93zDu4F+H19S7cdJSoqQMN7ypBTUvgM6NhdJVUXpKtr7nRyex
	T+bBk8xhtMV3xCeXEOZsjHRIx4esAcjS8PMnqhI+RiT7Z0WMtdKNaHX+XhWhcv5yNLlH28K/2yW2f
	aT7TbdnmOacsMA/nrf2+YIvfLQzfGhuZ+wkHAcVfk2T5/eqDj03nrp3kBCAbrMf8B8AA3YsQF6VrN
	6SahDSugc5BMeBSyv/IO1jjS0KtDp//0Ddma1+YHdFOqh+no5m9aSmQaQ/39dPoUmDSFyibwqga4p
	JETC1V0NZ9l/uPWUn5fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySLv-00000003RIs-1yma;
	Fri, 06 Mar 2026 10:24:15 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySLr-00000003RIY-2com
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 10:24:14 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 6531F4E4258B;
	Fri,  6 Mar 2026 10:24:07 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 392385FF92;
	Fri,  6 Mar 2026 10:24:07 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9988D1036991C;
	Fri,  6 Mar 2026 11:24:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772792646; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=vvms8os0Db8p9kw4wcOWZOZmv0C6Az1ptb21jcBPIYw=;
	b=sVXHyXLCY5Erp2gsraYrnuT3PAf2FtOWyALYFzrsMWHSduI/Qbm4jiv2pS2AP51cC6CoCD
	wUZPjze3EKR8422EHxrcBaTQIUZ1y2ujAoPjZtz1wmc06riMjiO3Dguyeh7ogMBdXyZ4pi
	KqIIB8gjM3ybpnKQkDFdR6BYonC66OCRT2Fx4yZWeaVS/Nn7W5UZ0q1MTWhPdvaXhHO0wN
	5IbJu2VjquyHhs6cm/ORpC3yMVF1BUCZ3DOVGOxOrOofL2m9SKR0dvbfwPh2hTqU6t7YeP
	vR3cA8k7+VpEsKVr63LcSK0TQDjqcaHu0pixvZnAf5sUUPisa6NQWJ2gIxkbng==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Fri, 06 Mar 2026 11:23:58 +0100
Subject: [PATCH v2] phy: cadence: Sierra: Do not modify register when
 getting parent clock
MIME-Version: 1.0
Message-Id: <20260306-fix_sierra_get_parent-v2-1-cafe89ee5382@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAD2rqmkC/4WNXQrCMBCEr1L22UiTmv745D2klLiu7YImZROKU
 np3Yy/g4zfMfLNCJGGKcC5WEFo4cvAZzKEAnJwfSfE9M5jS1GVVWvXg9xCZRNwwUhpmJ+ST6rA
 9VRaxttRA3s5Cubh7r33miWMK8tlvFv1L/xkXrbRyDeqWOqrRtpdbCOnJ/ojhBf22bV/M/bUfv
 AAAAA==
X-Change-ID: 20260305-fix_sierra_get_parent-9c8435cc65e7
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aswath Govindraju <a-govindraju@ti.com>, 
 Swapnil Jakhade <sjakhade@cadence.com>
Cc: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Gregory CLEMENT <gregory.clement@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_022412_128510_491B69E9 
X-CRM114-Status: GOOD (  10.09  )
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

VGhlIGdldF9wYXJlbnQoKSBjYWxsYmFjayBmb3IgdGhlIFBMTF9DTU5MQzEgY2xvY2sgd2FzIGlu
Y29ycmVjdGx5CndyaXRpbmcgdG8gdGhlIHJlZ2lzdGVyIHdoaWxlIGRldGVybWluaW5nIHRoZSBw
YXJlbnQgY2xvY2sgaW5kZXguIFRoaXMKdW5pbnRlbmRlZCByZWdpc3RlciBhY2Nlc3MgZm9yY2Vz
IHRoZSBQSFkgYmFjayBpbnRvIHRyYWluaW5nIG1vZGUuIElmCnRoZSBQSFkgaXMgYWxyZWFkeSBj
b25maWd1cmVkLCB0aGlzIHVuZXhwZWN0ZWQgY2hhbmdlIHByZXZlbnRzIGl0IGZyb20KZXhpdGlu
ZyB0cmFpbmluZyBtb2RlLgoKUmVtb3ZlIHRoZSByZWdpc3RlciB3cml0ZSBvcGVyYXRpb24gdG8g
ZW5zdXJlIHRoZSBQSFkgcmVtYWlucyBzdGFibGUKZHVyaW5nIHRoZSBnZXRfcGFyZW50KCkgY2Fs
bGJhY2suCgpGaXhlczogZGEwOGFhYjk0MDA5MiAoInBoeTogY2FkZW5jZTogU2llcnJhOiBGaXgg
dG8gZ2V0IGNvcnJlY3QgcGFyZW50IGZvciBtdXggY2xvY2tzIikKU2lnbmVkLW9mZi1ieTogR3Jl
Z29yeSBDTEVNRU5UIDxncmVnb3J5LmNsZW1lbnRAYm9vdGxpbi5jb20+Ci0tLQpDaGFuZ2VzIGlu
IHYyOgoKLSBSZW1vdmVkIHVudXNlZCB2YXJpYWJsZSBzcG90dGVkIGJ5IHRoZSAwLURBWSBDSSBL
ZXJuZWwgVGVzdCBTZXJ2aWNlOgogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL29lLWtidWlsZC1h
bGwvMjAyNjAzMDYxMjM1LmhybDI3SnZqLWxrcEBpbnRlbC5jb20vCi0gTGluayB0byB2MTogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI2MDMwNS1maXhfc2llcnJhX2dldF9wYXJlbnQtdjEt
MS1hN2MxOGU5ZTZjNThAYm9vdGxpbi5jb20KLS0tCiBkcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1j
YWRlbmNlLXNpZXJyYS5jIHwgMTEgKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvY2FkZW5j
ZS9waHktY2FkZW5jZS1zaWVycmEuYyBiL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2Ut
c2llcnJhLmMKaW5kZXggOTJhYjFhMzE2NDZhZS4uZGJlZGE3ZjAxY2JiMiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS1zaWVycmEuYworKysgYi9kcml2ZXJzL3Bo
eS9jYWRlbmNlL3BoeS1jYWRlbmNlLXNpZXJyYS5jCkBAIC02OTgsMjMgKzY5OCwxNiBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IHBoeV9vcHMgbm9vcF9vcHMgPSB7CiBzdGF0aWMgdTggY2Ruc19zaWVy
cmFfcGxsX211eF9nZXRfcGFyZW50KHN0cnVjdCBjbGtfaHcgKmh3KQogewogCXN0cnVjdCBjZG5z
X3NpZXJyYV9wbGxfbXV4ICptdXggPSB0b19jZG5zX3NpZXJyYV9wbGxfbXV4KGh3KTsKLQlzdHJ1
Y3QgcmVnbWFwX2ZpZWxkICpwbGxsYzFlbl9maWVsZCA9IG11eC0+cGxsbGMxZW5fZmllbGQ7Ci0J
c3RydWN0IHJlZ21hcF9maWVsZCAqdGVybWVuX2ZpZWxkID0gbXV4LT50ZXJtZW5fZmllbGQ7CiAJ
c3RydWN0IHJlZ21hcF9maWVsZCAqZmllbGQgPSBtdXgtPnBmZGNsa19zZWxfcHJlZzsKIAl1bnNp
Z25lZCBpbnQgdmFsOwogCWludCBpbmRleDsKIAogCXJlZ21hcF9maWVsZF9yZWFkKGZpZWxkLCAm
dmFsKTsKIAotCWlmIChzdHJzdHIoY2xrX2h3X2dldF9uYW1lKGh3KSwgY2xrX25hbWVzW0NETlNf
U0lFUlJBX1BMTF9DTU5MQzFdKSkgeworCWlmIChzdHJzdHIoY2xrX2h3X2dldF9uYW1lKGh3KSwg
Y2xrX25hbWVzW0NETlNfU0lFUlJBX1BMTF9DTU5MQzFdKSkKIAkJaW5kZXggPSBjbGtfbXV4X3Zh
bF90b19pbmRleChodywgY2Ruc19zaWVycmFfcGxsX211eF90YWJsZVtDTU5fUExMTEMxXSwgMCwg
dmFsKTsKLQkJaWYgKGluZGV4ID09IDEpIHsKLQkJCXJlZ21hcF9maWVsZF93cml0ZShwbGxsYzFl
bl9maWVsZCwgMSk7Ci0JCQlyZWdtYXBfZmllbGRfd3JpdGUodGVybWVuX2ZpZWxkLCAxKTsKLQkJ
fQotCX0gZWxzZSB7CisJZWxzZQogCQlpbmRleCA9IGNsa19tdXhfdmFsX3RvX2luZGV4KGh3LCBj
ZG5zX3NpZXJyYV9wbGxfbXV4X3RhYmxlW0NNTl9QTExMQ10sIDAsIHZhbCk7Ci0JfQogCiAJcmV0
dXJuIGluZGV4OwogfQoKLS0tCmJhc2UtY29tbWl0OiAxMTQzOWM0NjM1ZWRkNjY5YWU0MzVlZWMz
MDhmNGFiOGEwODA0ODA4CmNoYW5nZS1pZDogMjAyNjAzMDUtZml4X3NpZXJyYV9nZXRfcGFyZW50
LTljODQzNWNjNjVlNwoKQmVzdCByZWdhcmRzLAotLSAKR3LDqWdvcnkgQ0xFTUVOVCwgQm9vdGxp
bgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5j
b20KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
