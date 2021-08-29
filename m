Return-Path: <SRS0=/UzO=NU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94C9C432BE
	for <linux-phy@archiver.kernel.org>; Sun, 29 Aug 2021 18:25:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E17A6023D
	for <linux-phy@archiver.kernel.org>; Sun, 29 Aug 2021 18:25:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8E17A6023D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCT3BNIFYHv6HLVdOu6TdpHjdHb0LefT6gdjlRkqPUA=; b=X9WC1c/KJUkV9N
	fxXGkTMMWrNZO0V9onIcPxY2/c2kHZScRyoMGEdb26wnzKzy6Zn8NT6a4KX14iCHPlLtOIFQD5Vfg
	Yh4JnpVNH6fSm8F0cdWUO9rvUHvaNs7jxSZPgLOgRrByiVdx03g8EB45BciuN21Li5vqc8JlHUqMK
	sBNjlAnqE/KhCoBSLSEnny/GECLPfz+6FfrOAs7yUqVRlIon3ouEanwcXagBxq3P2q/Y/4rK/1Vpj
	ki36c28tIBBaBjKn3swFs26mVF/fe3ZGpmKxzdyrob0OlSzqORnp0t3/B/lRgy0Z3wUh9dediNJV9
	4eQabwGNeCX1R1BWk6cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKPUk-00FsO6-3M; Sun, 29 Aug 2021 18:25:26 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKPUJ-00FsIb-5g; Sun, 29 Aug 2021 18:25:00 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10091"; a="218212283"
X-IronPort-AV: E=Sophos;i="5.84,361,1620716400"; d="scan'208";a="218212283"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2021 11:24:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,361,1620716400"; d="scan'208";a="445519095"
Received: from coresw01.iind.intel.com ([10.106.46.194])
 by orsmga002.jf.intel.com with ESMTP; 29 Aug 2021 11:24:54 -0700
From: rashmi.a@intel.com
To: michal.simek@xilinx.com, ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kishon@ti.com, vkoul@kernel.org, andriy.shevchenko@linux.intel.com,
 linux-phy@lists.infradead.org
Cc: mgross@linux.intel.com, kris.pan@linux.intel.com, furong.zhou@intel.com,
 mallikarjunappa.sangannavar@intel.com, adrian.hunter@intel.com,
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com, rashmi.a@intel.com
Subject: [PATCH v2 2/4] dt-bindings: mmc: Add bindings for Intel Thunder Bay
 SoC
Date: Sun, 29 Aug 2021 23:54:41 +0530
Message-Id: <20210829182443.30802-3-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210829182443.30802-1-rashmi.a@intel.com>
References: <20210829182443.30802-1-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210829_112459_279604_F0E38F00 
X-CRM114-Status: UNSURE (   8.86  )
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

From: Rashmi A <rashmi.a@intel.com>

Add documentation for Arasan SDHCI controller in Thunder Bay SOC.

Signed-off-by: Rashmi A <rashmi.a@intel.com>
---
 .../devicetree/bindings/mmc/arasan,sdhci.yaml | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
index 37a5fe7b26dc..23abb7e8b9d8 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
@@ -88,6 +88,12 @@ properties:
         description:
           For this device it is strongly suggested to include
           arasan,soc-ctl-syscon.
+      - items:
+          - const: intel,thunderbay-sdhci-5.1   # Intel Thunder Bay eMMC PHY
+          - const: arasan,sdhci-5.1
+        description:
+          For this device it is strongly suggested to include
+          clock-output-names and '#clock-cells'.
 
   reg:
     maxItems: 1
@@ -301,3 +307,22 @@ examples:
                    <&scmi_clk KEEM_BAY_PSS_SD0>;
           arasan,soc-ctl-syscon = <&sd0_phy_syscon>;
     };
+
+  - |
+    #define EMMC_XIN_CLK
+    #define EMMC_AXI_CLK
+    #define TBH_PSS_EMMC_RST_N
+    mmc@80420000 {
+          compatible = "intel,thunderbay-sdhci-5.1", "arasan,sdhci-5.1";
+          interrupts = <GIC_SPI 714 IRQ_TYPE_LEVEL_HIGH>;
+          reg = <0x80420000 0x400>;
+          clocks = <&scmi_clk EMMC_XIN_CLK>,
+                   <&scmi_clk EMMC_AXI_CLK>;
+          clock-names = "clk_xin", "clk_ahb";
+          phys = <&emmc_phy>;
+          phy-names = "phy_arasan";
+          assigned-clocks = <&scmi_clk EMMC_XIN_CLK>;
+          clock-output-names = "emmc_cardclock";
+          resets = <&rst_pss1 TBH_PSS_EMMC_RST_N>;
+          #clock-cells = <0x0>;
+    };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
