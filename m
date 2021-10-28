Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1AEC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 18:43:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 75D6460FC0
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 18:43:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 75D6460FC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4APUqMTGRmYx1usA6IuhMSbw0GD8IBxxrW4GH7rssuw=; b=zw5UIkPROP8uPF
	zCKGunVX2vN7sHO2ZMnzbwkt+uSNyyDrURka2z2Scf5POk/MUc2g5i6S2f21XCzAUXSBjciIT+hUt
	LZyJdSt6sJ37TgysgsBL5/LJiVT6HwFSmNsCq/HcRb3kkVm1hK6R6e7/In0/WdW/DJ/6z8tbuWKYT
	KAyhq/tZIXTVlK6idWrS+0SiTKGMFcbO3Z95xnVBK23QdSLN86v5FMloG5g8/fa0VxerGxHAXVZ1S
	rHoySbw1wZkQ/W6n8omu7dm8ZGDt163v6E9ggWqssYwGts3zUa0rKNj4QJgfbd9bktzJz6NS648t7
	ao98HcQec9nwtuni1Q+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgAMd-008v4t-Sy; Thu, 28 Oct 2021 18:42:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgAMY-008v2e-NX
 for linux-phy@lists.infradead.org; Thu, 28 Oct 2021 18:42:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id CCD75610EA;
 Thu, 28 Oct 2021 18:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635446574;
 bh=syC5kPXBLfaaIJPGwPq2wqJBE2j58GdF6QrpX89v6fQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=h+fXMm8kpnpd7bfk5HEKILfrddAzjQp9QZ3wp0t2xg+OPaqXrqF8liTRRlf35W+iE
 dYA9mfXC72g4Cac8Jnq7F/CRYocdaoWWRfVA816lvCyoBpu5P5wEIDg7JVRCEPALBt
 Xka2UbA0Z4Ba6E2HD4WzjvOS3q2RkHTu/FYz/ciJCwAxl7148WuNsJZ7z88cuBQJlI
 pEDPGkKLJaVtKv7T0vwf8vasWSiGvw6xo7zuSGHSpZiaOvhRYsUFnMHzzsY5iIurnW
 fFUn6ZfTSEIQyrJtrLfVHNxH2qm1ZVMNT1eokgctgAQAUXSrmvgCfsmMLk10nWSXIY
 3J8dyAT8CzUVw==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, pali@kernel.org,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH phy 4/6] Revert "ata: ahci: mvebu: Make SATA PHY optional for
 Armada 3720"
Date: Thu, 28 Oct 2021 20:42:40 +0200
Message-Id: <20211028184242.22105-5-kabel@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211028184242.22105-1-kabel@kernel.org>
References: <20211028184242.22105-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_114254_837001_6A4F1166 
X-CRM114-Status: GOOD (  11.57  )
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

RnJvbTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KClRoaXMgcmV2ZXJ0cyBjb21taXQg
NDVhZWZlM2QyMjUxZTRlMjI5ZDc2NjIwNTI3MzlmOTZhZDFkMDhkOS4KCkFybWFkYSAzNzIwIFBI
WSBkcml2ZXIgKHBoeS1tdmVidS1hMzcwMC1jb21waHkuYykgZG9lcyBub3QgcmV0dXJuCi1FT1BO
T1RTVVBQIGZyb20gcGh5X3Bvd2VyX29uKCkgY2FsbGJhY2sgYW55bW9yZS4KClNvIHJlbW92ZSBB
SENJX0hGTEFHX0lHTl9OT1RTVVBQX1BPV0VSX09OIGZsYWcgZnJvbSBBcm1hZGEgMzcyMCBwbGF0
IGRhdGEuCgpBSENJX0hGTEFHX0lHTl9OT1RTVVBQX1BPV0VSX09OIGlzIG5vdCB1c2VkIGJ5IGFu
eSBvdGhlciBhaGNpIGRyaXZlciwgc28KcmVtb3ZlIHRoaXMgZmxhZyBjb21wbGV0ZWx5LgoKU2ln
bmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTog
TWFyZWsgQmVow7puIDxrYWJlbEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvYXRhL2FoY2kuaCAg
ICAgICAgICAgICB8IDIgLS0KIGRyaXZlcnMvYXRhL2FoY2lfbXZlYnUuYyAgICAgICB8IDIgKy0K
IGRyaXZlcnMvYXRhL2xpYmFoY2lfcGxhdGZvcm0uYyB8IDIgKy0KIDMgZmlsZXMgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvYXRh
L2FoY2kuaCBiL2RyaXZlcnMvYXRhL2FoY2kuaAppbmRleCAyZTg5NDk5YmQ5YzMuLjk1NGNmNmNh
NmE3YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9hdGEvYWhjaS5oCisrKyBiL2RyaXZlcnMvYXRhL2Fo
Y2kuaApAQCAtMjQwLDggKzI0MCw2IEBAIGVudW0gewogCQkJCQkJCWFzIGRlZmF1bHQgbHBtX3Bv
bGljeSAqLwogCUFIQ0lfSEZMQUdfU1VTUEVORF9QSFlTCQk9ICgxIDw8IDI2KSwgLyogaGFuZGxl
IFBIWXMgZHVyaW5nCiAJCQkJCQkJc3VzcGVuZC9yZXN1bWUgKi8KLQlBSENJX0hGTEFHX0lHTl9O
T1RTVVBQX1BPV0VSX09OCT0gKDEgPDwgMjcpLCAvKiBpZ25vcmUgLUVPUE5PVFNVUFAKLQkJCQkJ
CQlmcm9tIHBoeV9wb3dlcl9vbigpICovCiAJQUhDSV9IRkxBR19OT19TWFMJCT0gKDEgPDwgMjgp
LCAvKiBTWFMgbm90IHN1cHBvcnRlZCAqLwogCiAJLyogYXAtPmZsYWdzIGJpdHMgKi8KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvYXRhL2FoY2lfbXZlYnUuYyBiL2RyaXZlcnMvYXRhL2FoY2lfbXZlYnUu
YwppbmRleCAzYWQ0NmQyNmQ5ZDUuLmQ0YmJhM2FjZTQ1ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9h
dGEvYWhjaV9tdmVidS5jCisrKyBiL2RyaXZlcnMvYXRhL2FoY2lfbXZlYnUuYwpAQCAtMjI3LDcg
KzIyNyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYWhjaV9tdmVidV9wbGF0X2RhdGEgYWhjaV9t
dmVidV9hcm1hZGFfMzgwX3BsYXRfZGF0YSA9IHsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBhaGNp
X212ZWJ1X3BsYXRfZGF0YSBhaGNpX212ZWJ1X2FybWFkYV8zNzAwX3BsYXRfZGF0YSA9IHsKIAku
cGxhdF9jb25maWcgPSBhaGNpX212ZWJ1X2FybWFkYV8zNzAwX2NvbmZpZywKLQkuZmxhZ3MgPSBB
SENJX0hGTEFHX1NVU1BFTkRfUEhZUyB8IEFIQ0lfSEZMQUdfSUdOX05PVFNVUFBfUE9XRVJfT04s
CisJLmZsYWdzID0gQUhDSV9IRkxBR19TVVNQRU5EX1BIWVMsCiB9OwogCiBzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCBhaGNpX212ZWJ1X29mX21hdGNoW10gPSB7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2F0YS9saWJhaGNpX3BsYXRmb3JtLmMgYi9kcml2ZXJzL2F0YS9saWJhaGNpX3Bs
YXRmb3JtLmMKaW5kZXggMDkxMDQ0MTMyMWY3Li4yNTBiODJlMzBhYTMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvYXRhL2xpYmFoY2lfcGxhdGZvcm0uYworKysgYi9kcml2ZXJzL2F0YS9saWJhaGNpX3Bs
YXRmb3JtLmMKQEAgLTU5LDcgKzU5LDcgQEAgaW50IGFoY2lfcGxhdGZvcm1fZW5hYmxlX3BoeXMo
c3RydWN0IGFoY2lfaG9zdF9wcml2ICpocHJpdikKIAkJfQogCiAJCXJjID0gcGh5X3Bvd2VyX29u
KGhwcml2LT5waHlzW2ldKTsKLQkJaWYgKHJjICYmICEocmMgPT0gLUVPUE5PVFNVUFAgJiYgKGhw
cml2LT5mbGFncyAmIEFIQ0lfSEZMQUdfSUdOX05PVFNVUFBfUE9XRVJfT04pKSkgeworCQlpZiAo
cmMpIHsKIAkJCXBoeV9leGl0KGhwcml2LT5waHlzW2ldKTsKIAkJCWdvdG8gZGlzYWJsZV9waHlz
OwogCQl9Ci0tIAoyLjMyLjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
