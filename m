Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E02FC433F5
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 21:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9z/1cIr25Wpw0kgrNO8H+mUxQ49JtkJKniujqy1VBU=; b=CzvLFSC19gMLn2
	BlJF1RYRRBEQUzirip4Q3LepG55FGqCir5X4EUKkcEtq0tZZkwtEsn1wz1TMhGZUe9I06djzLonHg
	XZIBQiAQDj7J3sAzKWaTZ4zLZYEQHZcXfePIg5/NK3Bpk+ZHrnTQX9LDqB/cxjIhudPtlhAJwCWRs
	szMiAu3+mVO/KxJRCO8brbs9GL21aoOl89xsA2qGlyst7GDr4REJN9pT9m+/WLznY+xN2VRQVv67j
	8cC9YjsViYYnC0vmeDpu9YdvNUPWpo2youlX2FfCehv04vHdEx0zMxiLxhsvr3WRr3m58jdCqqbCe
	rdVWNb0CmW51JshA/RFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFjua-002zej-3n; Thu, 03 Feb 2022 21:45:04 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFjuW-002zd7-L7
 for linux-phy@lists.infradead.org; Thu, 03 Feb 2022 21:45:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3C042B835A7;
 Thu,  3 Feb 2022 21:44:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A067AC340EB;
 Thu,  3 Feb 2022 21:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643924698;
 bh=dD/dahhK4YN+UdwY8mA2ff+G8pyn2M10R+sHvINGFFY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aXURb0gUhGAEvEwTHHxqNeeHFrBTyjohdx8Q7qMzX79YxUi8OzBI7aK7RZzD1rhtO
 WhH2xWPxKb4RYgTq57CXyKUCKcLKFGtZCOyl9RgXxiVrW26Uih/XXiMGsVRrAXx2v3
 +puL7WROaTaMaIkJTxEK4gKxvBd20NmJXpnjLfUEzlwhuNVryUTn8aT9IlP0+Q6TVi
 wM1+77IXuUgAkmixpXfwP9CLXCCoXXkn+y3E2qpe8eJk3BTYDgN4AKaXTNKxwRXW91
 GOYutVhnszEEm+4PevRHfxs1H7HaPc71f9XL1bp0wUITqYzRJmFOtMBCTmyKs2ydS3
 e2NK8ibY4vjYQ==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH phy v4 5/5] Revert "PCI: aardvark: Fix initialization with old
 Marvell's Arm Trusted Firmware"
Date: Thu,  3 Feb 2022 22:44:44 +0100
Message-Id: <20220203214444.1508-6-kabel@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203214444.1508-1-kabel@kernel.org>
References: <20220203214444.1508-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_134500_860478_EF14408E 
X-CRM114-Status: GOOD (  11.26  )
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
ay5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwppbmRleCA0ZjViNDQ4
MjdkMjEuLjZiYWU2ODg4NTJhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2ktYWFyZHZhcmsuYworKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5j
CkBAIC0xNDgyLDkgKzE0ODIsNyBAQCBzdGF0aWMgaW50IGFkdmtfcGNpZV9lbmFibGVfcGh5KHN0
cnVjdCBhZHZrX3BjaWUgKnBjaWUpCiAJfQogCiAJcmV0ID0gcGh5X3Bvd2VyX29uKHBjaWUtPnBo
eSk7Ci0JaWYgKHJldCA9PSAtRU9QTk9UU1VQUCkgewotCQlkZXZfd2FybigmcGNpZS0+cGRldi0+
ZGV2LCAiUEhZIHVuc3VwcG9ydGVkIGJ5IGZpcm13YXJlXG4iKTsKLQl9IGVsc2UgaWYgKHJldCkg
eworCWlmIChyZXQpIHsKIAkJcGh5X2V4aXQocGNpZS0+cGh5KTsKIAkJcmV0dXJuIHJldDsKIAl9
Ci0tIAoyLjM0LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
