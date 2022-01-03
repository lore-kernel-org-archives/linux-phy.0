Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A93DCC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jan 2022 14:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkRDoh2mJsIBBbhrLJ654UcLX2SUX403/r0xFGn/JGA=; b=YUgxYyHd9Cpd/p
	7pEMnVhfDTP/K1ZrFCMcu0Cwx8doeMR/Nff/beeA5e1+t8sjY9fwfV5pi+7CmHF08N7T135yX0csb
	sgVSO/ckZkFgcQQBfUl0XqyBhfQK9ibXSrf3yuKOQmsDRfyeZammmcCtxKs1pU7XbtWv/baLlqpt8
	gABJD0nxZgoXaPLOr8wAiE2+QUKJV2G3BtLvOA81tvauYumQPItLK+gBOVAltwuXIx/jGQWl1ZEoy
	BRqMznByHFLUkVr5AOkAi4Zlw5TTzx61qPda9jAfJCf0LRWtZQywdiUr5e95l7y+FVbcGhFfMEFza
	ecKt+i+ab5T/Ox/bvFrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4OO7-009CP6-2n; Mon, 03 Jan 2022 14:32:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4OO4-009CO6-Pi
 for linux-phy@lists.infradead.org; Mon, 03 Jan 2022 14:32:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 54F526113A;
 Mon,  3 Jan 2022 14:32:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A09C6C36AED;
 Mon,  3 Jan 2022 14:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641220356;
 bh=c8/AwhHCvUapCITvr7UjO+PcgfZQDF66eZu1Hl7lDj0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BGrzl6pffQ4uZRUutTmQbjaNiDo9nP6d0ng6g7YwHcC6w1hq2daZvVbLssT+hOvFY
 aLK6tYVDRjTruZCE5PUBLxMTNUInzR5NdurBANc4b7Mu7zieB3qfD0T+EsJX3MtoiQ
 wN9qqVj+6oJHF3gB9S9TDe/HlKy+p9LyVfgQFnRRpCfAIYRpMetXULlcLWy1SjnoRx
 nUdtrRJ4fQt9SJQ/nFHG8QTSrsbS56ziXXuKTRyd36KpVMyAv2Ac6B9PL0IzndwFCU
 nbAudGrXMTUGf8gpHVm7AqCq1f6YPlDZCDJ1Q9x2/SNyLPvvNq/22RrnP+IZtbud+m
 Eux20/U8a01Xg==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH phy v3 5/5] Revert "PCI: aardvark: Fix initialization with old
 Marvell's Arm Trusted Firmware"
Date: Mon,  3 Jan 2022 15:32:20 +0100
Message-Id: <20220103143220.13070-6-kabel@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220103143220.13070-1-kabel@kernel.org>
References: <20220103143220.13070-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_063236_894743_15EE4954 
X-CRM114-Status: GOOD (  11.21  )
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
ay5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwppbmRleCBjM2I3MjVh
ZmExMWYuLmUzNzk0YWJlNzhiMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2ktYWFyZHZhcmsuYworKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5j
CkBAIC0xNDczLDkgKzE0NzMsNyBAQCBzdGF0aWMgaW50IGFkdmtfcGNpZV9lbmFibGVfcGh5KHN0
cnVjdCBhZHZrX3BjaWUgKnBjaWUpCiAJfQogCiAJcmV0ID0gcGh5X3Bvd2VyX29uKHBjaWUtPnBo
eSk7Ci0JaWYgKHJldCA9PSAtRU9QTk9UU1VQUCkgewotCQlkZXZfd2FybigmcGNpZS0+cGRldi0+
ZGV2LCAiUEhZIHVuc3VwcG9ydGVkIGJ5IGZpcm13YXJlXG4iKTsKLQl9IGVsc2UgaWYgKHJldCkg
eworCWlmIChyZXQpIHsKIAkJcGh5X2V4aXQocGNpZS0+cGh5KTsKIAkJcmV0dXJuIHJldDsKIAl9
Ci0tIAoyLjM0LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
