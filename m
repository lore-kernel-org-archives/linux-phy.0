Return-Path: <SRS0=iPW2=LI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6207C48BE8
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jun 2021 16:18:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B2AE2613DB
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jun 2021 16:18:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B2AE2613DB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4o1o8lzzcn7Ey8GekhHuT2kkTv7XQtxQkMxr3XucMw=; b=EzhVjM6blJca07
	FrxtutyJtjMb54c4784+5k0PDP73xtTSmD37Jp1fEg8+spKKMf6H33MR4wXwZgi+Yk4e4nUAKPg1n
	Mv+YqG9+8iuW942QKhp0XJyJw1/XBUxEoj/h1BtHVBnthM3pL4i1UJPhVuUd14Oz+fUpP1z5CGbS8
	DHVYaH+o4VH0hJnMjjwC9CdL4fHrNUSuM4/7uM8Ea5idy9gKxMm+1RlV14ka3JK69LM3Y4MMuVIw+
	oT3/K7msIgseUJDZlwBX5l03p8W3YeY00Fjo2eIaj7VTHI/svJbw5lpkN62xchj4jV8fqus/Q8Xa8
	XhVQNFpGEDHtG1eYLWXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lspIb-00F4I3-QJ; Mon, 14 Jun 2021 16:18:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsol3-00Epjr-Dm; Mon, 14 Jun 2021 15:44:16 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:1f5e:e45f:238:7e73])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B783A1F42B1C;
 Mon, 14 Jun 2021 16:44:10 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 pgwipeout@gmail.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 3/4] PHY: rockchip: USB2: Allow 64 bits reg property
Date: Mon, 14 Jun 2021 17:43:58 +0200
Message-Id: <20210614154359.805555-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210614154359.805555-1-benjamin.gaignard@collabora.com>
References: <20210614154359.805555-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_084413_652441_2BAF3081 
X-CRM114-Status: GOOD (  12.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

In rk356x device-tree "reg" property could be coded on 64 bits.
Change reg type and of_property_read_ to make it works.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 46ebdb1460a3d..45518f96d7217 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1068,7 +1068,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	struct rockchip_usb2phy *rphy;
 	const struct rockchip_usb2phy_cfg *phy_cfgs;
 	const struct of_device_id *match;
-	unsigned int reg;
+	u64 reg;
 	int index, ret;
 
 	rphy = devm_kzalloc(dev, sizeof(*rphy), GFP_KERNEL);
@@ -1098,7 +1098,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 		rphy->usbgrf = NULL;
 	}
 
-	if (of_property_read_u32(np, "reg", &reg)) {
+	if (of_property_read_u64(np, "reg", &reg)) {
 		dev_err(dev, "the reg property is not assigned in %pOFn node\n",
 			np);
 		return -EINVAL;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
