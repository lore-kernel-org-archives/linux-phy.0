Return-Path: <SRS0=aWzV=LJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B581C48BDF
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jun 2021 19:09:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 25504611EE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jun 2021 19:09:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 25504611EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4FXvS+JxbTZvvWzGqSuqXekdEU7RMpSegp1u+hjZf6A=; b=wUyn6dSmejQ4jF
	qTXclPMIKNT6M3kMlZw9YyRfgZot+y3rClL7c8Djn7aw4YxfGDxdMl0zC1ecszhbRSy19FoZk0qCR
	i2Snar2FjWLaAGaEYAaf5MNhlSKsauE6YENnvMxh56n2ToZ7OsF1OlUfsvhXlhqgGFG2CPk5yQZxc
	u+mbs2elqkWXVswVKpqgjnSnWuNEY9ulaf00B/S3rmLab9FUeomhz6fVfneTLIdMBO36yn+m6/piC
	/phJPNOg2j+N5Kk1J98yzk51leCz+oFLruMMSgd0QtCmqg8wqWJd+wDyBVtyGPbtXX+z5NBWnq4io
	2h9JD8wCwX9te+4e+1Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltERY-002L7J-Ei; Tue, 15 Jun 2021 19:09:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9GD-000DDm-4b; Tue, 15 Jun 2021 13:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=References:In-Reply-To:Message-Id:Date
 :Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=snehl87cAIr9Cpohb6RagTYh4ofnOzEjNE2UDTiAUL8=; b=ApYIYId0duCLUbHTMEXHLandBd
 2B34CNmdlrGYAbnyC3NSA+X6ee4icFlBDYuPN/PYhtoIIyoXlFM9+apWWpHjZPuLE9DUL/1rdr87d
 0yTH+dodkfdbfu5mSlkPffZDr40N1ddSmB0/QMt4tmLodXMn1hLeAAdJ9HsqVAfaxeBQtVOEOzYHW
 pmmT+wcIaAGY0hUydXcIFthKdKJ+0yGOun0b8bteL3pF4QnRT9agYjdL2wAJk3xTdBW3xUt9ek/RL
 Kh1jenPidYRxeW6bT+PkZN8kIF4IgIG2GgiKcxy7CYP6wfhhvLeZicRKSKZkOo6Q71mUF/j8MTVHW
 5y9E4v4A==;
Received: from foss.arm.com ([217.140.110.172])
 by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt6ul-007lCD-Ng; Tue, 15 Jun 2021 11:07:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D2581476;
 Tue, 15 Jun 2021 04:07:33 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 469393F719;
 Tue, 15 Jun 2021 04:07:31 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Samuel Holland <samuel@sholland.org>, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Ondrej Jirman <megous@megous.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH v7 14/19] phy: sun4i-usb: Introduce port2 SIDDQ quirk
Date: Tue, 15 Jun 2021 12:06:31 +0100
Message-Id: <20210615110636.23403-15-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210615110636.23403-1-andre.przywara@arm.com>
References: <20210615110636.23403-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_120734_867792_D2FA54A1 
X-CRM114-Status: GOOD (  14.36  )
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

At least the Allwinner H616 SoC requires a weird quirk to make most
USB PHYs work: Only port2 works out of the box, but all other ports
need some help from this port2 to work correctly: The CLK_BUS_PHY2 and
RST_USB_PHY2 clock and reset need to be enabled, and the SIDDQ bit in
the PMU PHY control register needs to be cleared. For this register to
be accessible, CLK_BUS_ECHI2 needs to be ungated. Don't ask ....

Instead of disguising this as some generic feature, do exactly that
in our PHY init:
If the quirk bit is set, and we initialise a PHY other than PHY2, ungate
this one special clock, and clear the SIDDQ bit. We can pull in the
other required clocks via the DT.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/phy/allwinner/phy-sun4i-usb.c | 59 +++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index 126ef74d013c..316ef5fca831 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -120,6 +120,7 @@ struct sun4i_usb_phy_cfg {
 	u8 phyctl_offset;
 	bool dedicated_clocks;
 	bool phy0_dual_route;
+	bool needs_phy2_siddq;
 	int missing_phys;
 };
 
@@ -289,6 +290,50 @@ static int sun4i_usb_phy_init(struct phy *_phy)
 		return ret;
 	}
 
+	/* Some PHYs on some SoCs need the help of PHY2 to work. */
+	if (data->cfg->needs_phy2_siddq && phy->index != 2) {
+		struct sun4i_usb_phy *phy2 = &data->phys[2];
+
+		ret = clk_prepare_enable(phy2->clk);
+		if (ret) {
+			reset_control_assert(phy->reset);
+			clk_disable_unprepare(phy->clk2);
+			clk_disable_unprepare(phy->clk);
+			return ret;
+		}
+
+		ret = reset_control_deassert(phy2->reset);
+		if (ret) {
+			clk_disable_unprepare(phy2->clk);
+			reset_control_assert(phy->reset);
+			clk_disable_unprepare(phy->clk2);
+			clk_disable_unprepare(phy->clk);
+			return ret;
+		}
+
+		/*
+		 * This extra clock is just needed to access the
+		 * REG_HCI_PHY_CTL PMU register for PHY2.
+		 */
+		ret = clk_prepare_enable(phy2->clk2);
+		if (ret) {
+			reset_control_assert(phy2->reset);
+			clk_disable_unprepare(phy2->clk);
+			reset_control_assert(phy->reset);
+			clk_disable_unprepare(phy->clk2);
+			clk_disable_unprepare(phy->clk);
+			return ret;
+		}
+
+		if (phy2->pmu && data->cfg->hci_phy_ctl_clear) {
+			val = readl(phy2->pmu + REG_HCI_PHY_CTL);
+			val &= ~data->cfg->hci_phy_ctl_clear;
+			writel(val, phy2->pmu + REG_HCI_PHY_CTL);
+		}
+
+		clk_disable_unprepare(phy->clk2);
+	}
+
 	if (phy->pmu && data->cfg->hci_phy_ctl_clear) {
 		val = readl(phy->pmu + REG_HCI_PHY_CTL);
 		val &= ~data->cfg->hci_phy_ctl_clear;
@@ -354,6 +399,13 @@ static int sun4i_usb_phy_exit(struct phy *_phy)
 		data->phy0_init = false;
 	}
 
+	if (data->cfg->needs_phy2_siddq && phy->index != 2) {
+		struct sun4i_usb_phy *phy2 = &data->phys[2];
+
+		clk_disable_unprepare(phy2->clk);
+		reset_control_assert(phy2->reset);
+	}
+
 	sun4i_usb_phy_passby(phy, 0);
 	reset_control_assert(phy->reset);
 	clk_disable_unprepare(phy->clk2);
@@ -785,6 +837,13 @@ static int sun4i_usb_phy_probe(struct platform_device *pdev)
 				dev_err(dev, "failed to get clock %s\n", name);
 				return PTR_ERR(phy->clk2);
 			}
+		} else {
+			snprintf(name, sizeof(name), "pmu%d_clk", i);
+			phy->clk2 = devm_clk_get_optional(dev, name);
+			if (IS_ERR(phy->clk2)) {
+				dev_err(dev, "failed to get clock %s\n", name);
+				return PTR_ERR(phy->clk2);
+			}
 		}
 
 		snprintf(name, sizeof(name), "usb%d_reset", i);
-- 
2.17.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
