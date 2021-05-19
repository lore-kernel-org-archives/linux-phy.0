Return-Path: <SRS0=Qy0S=KO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 660C2C433ED
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 10:45:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2CC426124C
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 10:45:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2CC426124C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AF97AR2x5nzM8jAkWfYFWMjUaca1oKynWByDawgtBVM=; b=pCotnVCle/1m2/xyTLanUuMIfy
	qlpeqDjjO2EcpK5VU/GeTlXqh8OZ7FmcNcNAAL5Jg2zToDDi2l+79QrnGPkJuHOjGFz55NzC6rEdM
	w6o7QRerRa9hF1vjTpszjaZOCjzJ3tePXydYGxsF1dBwfWyADattk7/lz5uq05FwfJLNq3a47vTd1
	ssSmcdFV4A6WrDiS6JNy/mWfgAQQLvaop76PqIOXR/ymsT4hktkSYVaRPJ/1W0Dj/ki6YmjauiRyX
	V4JFEgbHukNTJbwyS26lrtDe0Rqspjl/CuytD6a/DIpr25b03d3YwsBhe80Iamt4Vj8PDGhgMlj/Q
	kM7SsT5Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljJhq-003dTB-Es; Wed, 19 May 2021 10:45:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljJey-003cIN-9e; Wed, 19 May 2021 10:42:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lhhnwZRFPlTRKuMQM8+8bNe1XCKa3I3YGdyoM5r18Hs=; b=ZDW94uXA//m4p/RolhCrK21lXE
 k+lLF871DsBS28wRVJMh5oT6TYsYbvPs/BR/J6YkXE2yuvpQ9073pQgbPTs6I6RvK0ZN9SeGeawOF
 gq3Oo5O/Xb7FY1V17NYd2Ldw0PsZBSlihvsKY7hff61uy/vssBMwrIU2lnrujgYJFsap06cdbIx+i
 I2L3NoOo0CTbl5Ydq95rjAhylCsOqNqctwz1LWLrdWxsv6oUuc7byO1wQwcC1RsgTEv+1lSNkU2Al
 WXNaXKdj/f0MOnRgFSX/Ys2EL+1cPcmv5Ns1zCtESHxkG9S7gmvjUmGdWLEOKQgZTNc2aCjzfDQ9k
 16M0WUfg==;
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1ljJev-00FMW2-Ki; Wed, 19 May 2021 10:42:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2069914FF;
 Wed, 19 May 2021 03:42:37 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE4B43F719;
 Wed, 19 May 2021 03:42:34 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Samuel Holland <samuel@sholland.org>, Ondrej Jirman <megous@megous.com>,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH v6 12/17] phy: sun4i-usb: Introduce port2 SIDDQ quirk
Date: Wed, 19 May 2021 11:41:47 +0100
Message-Id: <20210519104152.21119-13-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210519104152.21119-1-andre.przywara@arm.com>
References: <20210519104152.21119-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_034237_743770_C3D7156B 
X-CRM114-Status: GOOD (  14.71  )
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
 drivers/phy/allwinner/phy-sun4i-usb.c | 29 +++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index 126ef74d013c..ed7b9cc5a424 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -120,6 +120,7 @@ struct sun4i_usb_phy_cfg {
 	u8 phyctl_offset;
 	bool dedicated_clocks;
 	bool phy0_dual_route;
+	bool needs_phy2_siddq;
 	int missing_phys;
 };
 
@@ -331,6 +332,27 @@ static int sun4i_usb_phy_init(struct phy *_phy)
 		queue_delayed_work(system_wq, &data->detect, 0);
 	}
 
+	/* Some PHYs on some SoCs need the help of PHY2 to work. */
+	if (data->cfg->needs_phy2_siddq && phy->index != 2) {
+		struct sun4i_usb_phy *phy2 = &data->phys[2];
+
+		/*
+		 * This extra clock is just needed to access the
+		 * REG_HCI_PHY_CTL PMU register for PHY2.
+		 */
+		ret = clk_prepare_enable(phy2->clk2);
+		if (ret)
+			return ret;
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
 	return 0;
 }
 
@@ -785,6 +807,13 @@ static int sun4i_usb_phy_probe(struct platform_device *pdev)
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
