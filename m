Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5089BC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 02:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxHR1pw1wK1bXyQ2XG4x0jRC/qpyreOURxrSJ1TvKUE=; b=iDLsPsWKrkDTAI
	11fvxp9a6cfiLIN6H0rOUw3JXrBBRkClHThYWk3UrWLyxJNDoMSa9bmCIBw2oxA20dktEaurGNpMc
	9zSx7SPsFwE/d42bLVeCi0bliv3DjZa0KxA9QkaRHXiLGi1YWm6wUzOGLVyUFyw5XYAcxSTNLB9cD
	VqX/OPTWNn3OMVP8PgkMhKY5QCQXQBHZN2rgSaJHGGNlpwA/0OYrZTSaxn+IxKN5qaPY457SedH8v
	oZkMKUrIbe6mtEC9q4tBL5s6bgQLwEX9QSIrUJjrmqf7Cr0p+/MK525Vfg/7/Q3t7tYfasGhSf3dQ
	wCBxDJDsFO3tbiJWxVoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mumtA-00AiF3-QA; Wed, 08 Dec 2021 02:41:00 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mumt7-00AiDt-FZ
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 02:40:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 37BE5B81F47;
 Wed,  8 Dec 2021 02:40:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 836D9C341C5;
 Wed,  8 Dec 2021 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638931255;
 bh=kLMB/kIPySxFjVyqYi4uXxir4ZGCxn3/YdAnNX6Xses=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o8Vprq3ZlnUtttzvMaInGDkTShZBn6zM3eZbUwtf/IFvawJVVRT3NOSEKQWzi2ILB
 8b0hNfAJPuXhk/P9otR6Xza+gXc/x+Qmckp8Q9AwEkzafui3pyNk0gPXWDUP1fMXnE
 WGVvO9czbXCKu4WiAe5xEgsn8fIIWhdHwCjt0gAY4wiAMV8xmc50ttioyJTLtxKV2q
 bUhjn0xfMXCULOHKEhFQYaT0NGjRiRkauo1G3xljznoAlJjJgXLONZUXXouGDupxqI
 M4MNJtzBUUs9kKwFUyaEudv+E63R/bYsTz9tNLNaVfgaf623Z7DYTehQt9Fit3RxKn
 JZWioxBNhd5XA==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH phy v2 6/6] Revert "PCI: aardvark: Fix initialization with old
 Marvell's Arm Trusted Firmware"
Date: Wed,  8 Dec 2021 03:40:38 +0100
Message-Id: <20211208024038.8797-7-kabel@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208024038.8797-1-kabel@kernel.org>
References: <20211208024038.8797-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_184057_685425_74ADF13E 
X-CRM114-Status: GOOD (  10.86  )
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
YjBjNmFlMGY4OTQ4YTJiZTZiZjRlOGI0YmJhYjljYTEzNDMyODliNi4KCkFybWFkYSAzNzIwIHBo
eSBkcml2ZXIgKHBoeS1tdmVidS1hMzcwMC1jb21waHkuYykgZG9lcyBub3QgcmV0dXJuCi1FT1BO
T1RTVVBQIGZyb20gcGh5X3Bvd2VyX29uKCkgY2FsbGJhY2sgYW55bW9yZS4KClNvIHJlbW92ZSBk
ZWFkIGNvZGUgd2hpY2ggaGFuZGxlcyAtRU9QTk9UU1VQUCByZXR1cm4gdmFsdWUuCgpTaWduZWQt
b2ZmLWJ5OiBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBNYXJl
ayBCZWjDum4gPGthYmVsQGtlcm5lbC5vcmc+CkFja2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1
ZWwucmF5bmFsQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFh
cmR2YXJrLmMgfCA0ICstLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFy
ay5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwppbmRleCBjNTMwMGQ0
OTgwN2EuLjRhODQ1MmRkNzNlMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2ktYWFyZHZhcmsuYworKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5j
CkBAIC0xNDgyLDkgKzE0ODIsNyBAQCBzdGF0aWMgaW50IGFkdmtfcGNpZV9lbmFibGVfcGh5KHN0
cnVjdCBhZHZrX3BjaWUgKnBjaWUpCiAJfQogCiAJcmV0ID0gcGh5X3Bvd2VyX29uKHBjaWUtPnBo
eSk7Ci0JaWYgKHJldCA9PSAtRU9QTk9UU1VQUCkgewotCQlkZXZfd2FybigmcGNpZS0+cGRldi0+
ZGV2LCAiUEhZIHVuc3VwcG9ydGVkIGJ5IGZpcm13YXJlXG4iKTsKLQl9IGVsc2UgaWYgKHJldCkg
eworCWlmIChyZXQpIHsKIAkJcGh5X2V4aXQocGNpZS0+cGh5KTsKIAkJcmV0dXJuIHJldDsKIAl9
Ci0tIAoyLjMyLjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
