Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E11E0C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 18:43:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC0C560FC0
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 18:43:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AC0C560FC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLaDF45SNAJRx5WughpKwKQnKVOw0C+nG9IJMYftun0=; b=v6MC69aDpO+/+0
	A6xbu92EBLBr0y7YAbJf4nKerFFJM/llIYHBFhottwaxx3Olcv44C+1BZfd2fTd495qosNpwmhbl9
	UVkt734JzIeB+hUiB8sANvq40XmXeuM7TjB8XU4PUuXmI2y0/FmwV0jdds9SoobLXmAAq7Th9qfSS
	SSTA6x1QMF3zq5NeNVauc6y+MZ8BxwsK8np9ji65ibCXm6fCrEx29baTOTUD15tSHPg/d3pKq4QfC
	Yp1rHvLd+khaxBe/ROJainyfKNayNjZ26v0hMq4//kppPjvlorn2HZbQng+7ROGX8ZMCm3svjBt4c
	DdyWVyE70ALZpma/hfhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgAMh-008v6D-5M; Thu, 28 Oct 2021 18:43:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgAMb-008v27-7Z
 for linux-phy@lists.infradead.org; Thu, 28 Oct 2021 18:43:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E4ACA61106;
 Thu, 28 Oct 2021 18:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635446577;
 bh=tHTCucTQ1Ekwp0IefbR9Iw3WLKxoQOTqZVwyUhTXt70=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k7Aww2FogOuXcFHazKMCsy3MJ+Mt6HMYzlHQp4jinhs+C7Tingu7apJVUUbziJTh+
 YclFlQanDg+L2rXNA1cCLfzyBMXsYib8rOL73U61xJpnqnxUFcqfr5XANRaD3Z/v6h
 ls9om/1BQm3Q+cGG9uC1sE0/xMVWen6cqPuTIWoDMzPFmKZkg15xCXmzaNNp4UIj1Q
 QnC9AdZ0LpBqIpPRGza4EZ+x0ZbPGn4R3lk1iq4pmZu6XmCN9X+1RebobaVmBzcKeN
 HOTlMmiW90Ro7+eW0uvz6WtZHzudcjMiz9FdNiLV77ZhXlB5pvDkcciflNcQaowPZ/
 8kd4jKEwXbHog==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, pali@kernel.org,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH phy 6/6] Revert "PCI: aardvark: Fix initialization with old
 Marvell's Arm Trusted Firmware"
Date: Thu, 28 Oct 2021 20:42:42 +0200
Message-Id: <20211028184242.22105-7-kabel@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211028184242.22105-1-kabel@kernel.org>
References: <20211028184242.22105-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_114257_338411_C5A1C1FD 
X-CRM114-Status: UNSURE (   8.49  )
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

RnJvbTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KClRoaXMgcmV2ZXJ0cyBjb21taXQg
YjBjNmFlMGY4OTQ4YTJiZTZiZjRlOGI0YmJhYjljYTEzNDMyODliNi4KCkFybWFkYSAzNzIwIHBo
eSBkcml2ZXIgKHBoeS1tdmVidS1hMzcwMC1jb21waHkuYykgZG9lcyBub3QgcmV0dXJuCi1FT1BO
T1RTVVBQIGZyb20gcGh5X3Bvd2VyX29uKCkgY2FsbGJhY2sgYW55bW9yZS4KClNvIHJlbW92ZSBk
ZWFkIGNvZGUgd2hpY2ggaGFuZGxlcyAtRU9QTk9UU1VQUCByZXR1cm4gdmFsdWUuCgpTaWduZWQt
b2ZmLWJ5OiBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBNYXJl
ayBCZWjDum4gPGthYmVsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2ktYWFyZHZhcmsuYyB8IDQgKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFh
cmR2YXJrLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jCmluZGV4IDU5
NmViY2ZjYzgyZC4uYjMyZmMxZWZkNjMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaS1hYXJkdmFyay5jCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2
YXJrLmMKQEAgLTEzNDksOSArMTM0OSw3IEBAIHN0YXRpYyBpbnQgYWR2a19wY2llX2VuYWJsZV9w
aHkoc3RydWN0IGFkdmtfcGNpZSAqcGNpZSkKIAl9CiAKIAlyZXQgPSBwaHlfcG93ZXJfb24ocGNp
ZS0+cGh5KTsKLQlpZiAocmV0ID09IC1FT1BOT1RTVVBQKSB7Ci0JCWRldl93YXJuKCZwY2llLT5w
ZGV2LT5kZXYsICJQSFkgdW5zdXBwb3J0ZWQgYnkgZmlybXdhcmVcbiIpOwotCX0gZWxzZSBpZiAo
cmV0KSB7CisJaWYgKHJldCkgewogCQlwaHlfZXhpdChwY2llLT5waHkpOwogCQlyZXR1cm4gcmV0
OwogCX0KLS0gCjIuMzIuMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
