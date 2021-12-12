Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57736C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 12 Dec 2021 14:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TjTNSSerFqKik+402A2w1xB5KS9O2RDZ0l4703dmFuE=; b=1M3CA6OvxZWGMS
	2FB3f5suoxRwcghNAvpFaN1+f0e+nzjPw3xOQ9wQGrvQFUejuKJdge4aJKCR5I5Jei7RwoBtU1UqE
	VLKsfDNxffsSRD40dzWYoOvh0G6xYxDiq2X9kW12cpFRMkLfrUJY6zRW6tsCrJ+0xDwEWbTj51NvY
	hw1jFqSJIefaGnzrf97UzsoJnB3SAxMUtAcS/TU+dc9kdNEqrwPqR9fVvl+ncD4S6kcfFSbC2J/8Z
	d7FD8kbFMPIwnc82BQzsSpuub2F7kCPDwSGlaP4ZL1/utY0hUaVwbQmvY/fEckR7yzC4/0CGuXNJY
	7nD9Dmhs15C+XP483Iwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwPkK-006ee8-Mt; Sun, 12 Dec 2021 14:22:36 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwPkI-006edI-0D
 for linux-phy@lists.infradead.org; Sun, 12 Dec 2021 14:22:35 +0000
Received: by mail-pl1-x634.google.com with SMTP id y8so9452283plg.1
 for <linux-phy@lists.infradead.org>; Sun, 12 Dec 2021 06:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=ZWrvl8F+5ZsZqqN1/f2CJOo+5n6LcVWRAabb8RZsrIY=;
 b=eGgJyxTzHAZ68924wqTozbqQkO7+kdcouG86WxzM2zKxAzzHtk6ibtz7IUyXaGoZNi
 GHQJJLE/qxW6OVtD6C3kRN1yzKhJ4niGziNW+0sz30j1MJ4dQemOZcVjLtG5qqkYgED8
 z3egKzAir1dLekkw/LeJZrnz0VgCMiHHGwiI2dONGv2CeVuZyLF1AJG8km8RHS0B2kdM
 vj4BBVpVyb+uRdJ3Vvq/rgykC+0dTU2cn2JcVw3UdHmJ8lJOZpTa4lX1tTwiPGqEQO85
 xseBQKSKDkwKKHNvRID0R4s3nl8H2HWNOMHuw9Ciwjo5jJNLeZGcFviWRHgJWSed09ZH
 8pAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZWrvl8F+5ZsZqqN1/f2CJOo+5n6LcVWRAabb8RZsrIY=;
 b=LhEnQvjSZf4tP4IwoBozKoYjuoa7XuOTLg5uGwvDzLb9Xnm9nZobqYABC6t78LycZ8
 lcCU17mQK2y/YodnO7oU0nR4guKz9ptaBlzJkNz/ltLRGJvx+G7hbSY5ty8SkCSA1ids
 QvcYfDRpcOyG0Q4TFqkGu5NZeqJdoLjJvrzJi9Ju/BJoeYX1d0me8eD/yWbZLAHdrJY+
 dC0yH2xyWX3TWXoT7vseUjJmBcapmd9ViyLHxPwT8mhYmXsDVbs3C5OzSOdY9VTpTYyq
 AkuOT3coLY+677wXiQFcT74E97jawsT/ZRkj+KcJLagJZc8mQ+MlwRxYPfhRdAbcQCv1
 b24g==
X-Gm-Message-State: AOAM533r6O5E5bBIX17981N38aIeFSsv4uqHoPCfvVMqJGynk6X1t/+Y
 o8cxLHmovYyBp9N1K6NycGY=
X-Google-Smtp-Source: ABdhPJz/4LNqrQx02YorlMGDlqCE2XkkIuzbZvDKDHVytuJtqywQlPeE4YGlaHCq1lQkqRSNSl01zQ==
X-Received: by 2002:a17:90b:1c87:: with SMTP id
 oo7mr37033855pjb.159.1639318951549; 
 Sun, 12 Dec 2021 06:22:31 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id x3sm178091pgl.79.2021.12.12.06.22.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Dec 2021 06:22:31 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: 
Cc: linmq006@gmail.com, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] phy: ti: Use IS_ERR_OR_NULL() to clean code
Date: Sun, 12 Dec 2021 14:22:21 +0000
Message-Id: <20211212142226.23674-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211212_062234_085302_C0F8E6E3 
X-CRM114-Status: UNSURE (   9.17  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Use IS_ERR_OR_NULL() to make the code cleaner.

Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/ti/phy-omap-control.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-omap-control.c b/drivers/phy/ti/phy-omap-control.c
index 47482f106fab..76c5595f0859 100644
--- a/drivers/phy/ti/phy-omap-control.c
+++ b/drivers/phy/ti/phy-omap-control.c
@@ -26,7 +26,7 @@ void omap_control_pcie_pcs(struct device *dev, u8 delay)
 	u32 val;
 	struct omap_control_phy	*control_phy;
 
-	if (IS_ERR(dev) || !dev) {
+	if (IS_ERR_OR_NULL(dev)) {
 		pr_err("%s: invalid device\n", __func__);
 		return;
 	}
@@ -61,7 +61,7 @@ void omap_control_phy_power(struct device *dev, int on)
 	unsigned long rate;
 	struct omap_control_phy	*control_phy;
 
-	if (IS_ERR(dev) || !dev) {
+	if (IS_ERR_OR_NULL(dev)) {
 		pr_err("%s: invalid device\n", __func__);
 		return;
 	}
@@ -202,7 +202,7 @@ void omap_control_usb_set_mode(struct device *dev,
 {
 	struct omap_control_phy	*ctrl_phy;
 
-	if (IS_ERR(dev) || !dev)
+	if (IS_ERR_OR_NULL(dev))
 		return;
 
 	ctrl_phy = dev_get_drvdata(dev);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
