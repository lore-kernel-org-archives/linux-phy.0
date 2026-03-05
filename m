Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A30F3F3D319
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 15:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zx9uVvg4zlpraEk1Vw/wmDiZWGEL3fwTozy/pjjqFp4=; b=wThzLwLe8SGpUk
	No2N7S/tsN8L5MPBkLkpaR8UJKGBEJYvGTf0VGyeNLeugD+LCi9PNrKgQVM9GsRA7Sns9RxMIVJA8
	HzIR7kkTh9wNYKrnhIJOqBVv2SeZ1GkxLhNLmv/hVBhUOvfyd17wYVDHjBkQbwpvI4XaW+Tmi69SN
	aAqo/oiI5bKrLL8aaehqSsCpkzyIMqiR4uTZCcODpsI/BzjK24T8j87WMXoH/clZje02mumzC54To
	ZKZZS9ciNQew16s8bYTtsxo213wqFPQM6hAPB1jZ/XHBdRASW3zPPtnjlHCdvzG2RJ3jD2t+uyg9R
	eHRZlL5bUvcdLCx/nO6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyB58-00000002ALR-065n;
	Thu, 05 Mar 2026 15:57:46 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyB53-00000002AL8-39xk
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 15:57:44 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 365B9C4041B;
	Thu,  5 Mar 2026 15:57:57 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 8A68D5FF89;
	Thu,  5 Mar 2026 15:57:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8A19510369758;
	Thu,  5 Mar 2026 16:57:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772726257; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=L9gUCJRXsHA1q2oaEh9yELbHN3zEBr7zj1d5W7vHJAs=;
	b=MuwUcQh7ZeMSlUZUsfM45WmvScWSjOqb6zBxmBvwPjfk0s8yNZUhlUfm1yHlDk2v9ZdnUp
	0gZGEvTYPQ1IqrlmFLqXtqek1EgrV9EsWXxGkaMiSKI2MYouHSUG2WrhvYL8wE/5lxYth2
	SKR7nH+K8MsDV+f1aTfJlJjuXpRo3s8IpjXTI4ninda/Y0V4/cRzOHb9fJs6x3bG6ScWDi
	3A+CTMDTP1n8kIAj6kSlYDran8KXvtXlUlsJPysx+YTrS9Pnvg33ANcej+zcXQ2U8UPSUC
	duAJ/v/NN4Fvre+BgBWmWq4cOPqDtp5iJiUx2d/nMH3C22AmLouhH3uKl/jaVg==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Thu, 05 Mar 2026 16:57:32 +0100
Subject: [PATCH] phy: cadence: Sierra: Do not modify register when getting
 parent clock
MIME-Version: 1.0
Message-Id: <20260305-fix_sierra_get_parent-v1-1-a7c18e9e6c58@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAOunqWkC/x2MSwqAMBDFriKztlA/9XcVkVLqU2dTZSoiiHe3u
 AwkeShCGJGG7CHBxZH3kKDIM/KbCysUz4mp1GWjK23UwreNDBFnV5z2cIJwqt53dWW8bwxaSu0
 hSOL/Haf3/QB7Dg/7ZwAAAA==
X-Change-ID: 20260305-fix_sierra_get_parent-9c8435cc65e7
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aswath Govindraju <a-govindraju@ti.com>, 
 Swapnil Jakhade <sjakhade@cadence.com>
Cc: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Gregory CLEMENT <gregory.clement@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_075742_308616_AEDBA0BE 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
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
Z29yeSBDTEVNRU5UIDxncmVnb3J5LmNsZW1lbnRAYm9vdGxpbi5jb20+Ci0tLQogZHJpdmVycy9w
aHkvY2FkZW5jZS9waHktY2FkZW5jZS1zaWVycmEuYyB8IDkgKystLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2Utc2llcnJhLmMgYi9kcml2ZXJzL3BoeS9jYWRlbmNl
L3BoeS1jYWRlbmNlLXNpZXJyYS5jCmluZGV4IDkyYWIxYTMxNjQ2YWUuLmQ0ZTg5NzljM2FiYmEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2Utc2llcnJhLmMKKysr
IGIvZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS1zaWVycmEuYwpAQCAtNzA2LDE1ICs3
MDYsMTAgQEAgc3RhdGljIHU4IGNkbnNfc2llcnJhX3BsbF9tdXhfZ2V0X3BhcmVudChzdHJ1Y3Qg
Y2xrX2h3ICpodykKIAogCXJlZ21hcF9maWVsZF9yZWFkKGZpZWxkLCAmdmFsKTsKIAotCWlmIChz
dHJzdHIoY2xrX2h3X2dldF9uYW1lKGh3KSwgY2xrX25hbWVzW0NETlNfU0lFUlJBX1BMTF9DTU5M
QzFdKSkgeworCWlmIChzdHJzdHIoY2xrX2h3X2dldF9uYW1lKGh3KSwgY2xrX25hbWVzW0NETlNf
U0lFUlJBX1BMTF9DTU5MQzFdKSkKIAkJaW5kZXggPSBjbGtfbXV4X3ZhbF90b19pbmRleChodywg
Y2Ruc19zaWVycmFfcGxsX211eF90YWJsZVtDTU5fUExMTEMxXSwgMCwgdmFsKTsKLQkJaWYgKGlu
ZGV4ID09IDEpIHsKLQkJCXJlZ21hcF9maWVsZF93cml0ZShwbGxsYzFlbl9maWVsZCwgMSk7Ci0J
CQlyZWdtYXBfZmllbGRfd3JpdGUodGVybWVuX2ZpZWxkLCAxKTsKLQkJfQotCX0gZWxzZSB7CisJ
ZWxzZQogCQlpbmRleCA9IGNsa19tdXhfdmFsX3RvX2luZGV4KGh3LCBjZG5zX3NpZXJyYV9wbGxf
bXV4X3RhYmxlW0NNTl9QTExMQ10sIDAsIHZhbCk7Ci0JfQogCiAJcmV0dXJuIGluZGV4OwogfQoK
LS0tCmJhc2UtY29tbWl0OiAxMTQzOWM0NjM1ZWRkNjY5YWU0MzVlZWMzMDhmNGFiOGEwODA0ODA4
CmNoYW5nZS1pZDogMjAyNjAzMDUtZml4X3NpZXJyYV9nZXRfcGFyZW50LTljODQzNWNjNjVlNwoK
QmVzdCByZWdhcmRzLAotLSAKR3LDqWdvcnkgQ0xFTUVOVCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51
eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
