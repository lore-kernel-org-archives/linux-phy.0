Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E5E4C6FD1F
	for <linux-phy@archiver.kernel.org>; Thu, 16 Mar 2023 12:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UP8WqHiZcpPftIsQkDsH6YggTLTEHe/kM5l+PG0a8kw=; b=VIxGQwa7QM7frU
	b1rQiWVX08NdcY1Mp76HdIa9q7gNpnjhn2mDcOQrOQIcVGyGteei7GSLsQxS+s/mNYo1amSnNtU2A
	MLt+L+KxIycnqtZqR86cFoQ2x02Rzq9bGeBREwgjQHCvEQNOlrb9C3f7OtMMdoWu4uMicUC3P9gN5
	Yn08YS+UKU2qgkCkiTeOu1rtzfHJPEhlS6SmDk5X3jTKgK5gC73crUpHnpd4VD1nYhiwWd5wkv4+f
	XLIhiRsR4lEGBtCvk9cIRHeCzyOVSDc8b/SEoOmrhN0fNsFICgiYo27/QqGOf+RHKZXFX85iPzGf4
	wmsuJP7rFN+MPR1qQTqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcmN9-00GKcq-1W;
	Thu, 16 Mar 2023 12:06:19 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcmMy-00GKYn-1l;
	Thu, 16 Mar 2023 12:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678968368; x=1710504368;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references;
  bh=AAkIyD03JWq98B5q2PySf/dtvQYYtxwz6wy6gqs1xJw=;
  b=nBzlkq+0otQ8i85QyY5MeQdY88CntIiREIx+oDx6/vG4Qa+SUSoiVKSh
   y1GLwpRX8JpJ29pbFqQZWPAXY6l2rmcpXBSSSqlrc+Gs7CXM1DNF/HyCV
   PjMfB0N2y8fa+9SQWVRZjZu0f1voRCksHTy2B5Sn06UnJ2CzWjpXGb+24
   rqoBPG6aRA2Qlgdbrpmqxw5qghrfp2xOHLjqf8xMKoXPS+4OXE1K9SkCS
   H3yAzHdO6iSAvN0euObhtv94FKfkteXYuLLJ7EVLDrljAqwfPRd9t5/zb
   pdIOUpd6qwi8dDW97APZPk0Jg/Xhz3ANptmlOlG0cX/8aZJZ6mtMHKBB7
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="365657027"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; 
   d="scan'208";a="365657027"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2023 05:06:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="768911674"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; 
   d="scan'208";a="768911674"
Received: from coresw01.iind.intel.com ([10.106.46.194])
  by FMSMGA003.fm.intel.com with ESMTP; 16 Mar 2023 05:06:01 -0700
From: rashmi.a@intel.com
To: ulf.hansson@linaro.org,
	michal.simek@xilinx.com,
	p.zabel@pengutronix.de,
	linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	yuancan@huawei.com,
	andriy.shevchenko@linux.intel.com,
	linux-phy@lists.infradead.org,
	mgross@linux.intel.com
Cc: kris.pan@linux.intel.com,
	adrian.hunter@intel.com,
	mahesh.r.vaidya@intel.com,
	nandhini.srikandan@intel.com,
	vasavi.v.itha@intel.com,
	kenchappa.demakkanavar@intel.com,
	furong.zhou@intel.com,
	mallikarjunappa.sangannavar@intel.com,
	rashmi.a@intel.com
Subject: [PATCH v2 2/4] dt-bindings: mmc: Remove bindings for Intel Thunder Bay SoC"
Date: Thu, 16 Mar 2023 17:35:47 +0530
Message-Id: <20230316120549.21486-3-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230316120549.21486-1-rashmi.a@intel.com>
References: <20230316120549.21486-1-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_050608_598746_CDD6BCE5 
X-CRM114-Status: UNSURE (   9.24  )
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

From: "A, Rashmi" <rashmi.a@intel.com>

Remove Thunder Bay specific code as the product got cancelled
and there are no end customers or users.

Signed-off-by: A, Rashmi <rashmi.a@intel.com>
Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>
---
 .../devicetree/bindings/mmc/arasan,sdhci.yaml | 25 -------------------
 1 file changed, 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
index 8296c34cfa00..e8e8b48dc5e5 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
@@ -88,12 +88,6 @@ properties:
         description:
           For this device it is strongly suggested to include
           arasan,soc-ctl-syscon.
-      - items:
-          - const: intel,thunderbay-sdhci-5.1   # Intel Thunder Bay eMMC PHY
-          - const: arasan,sdhci-5.1
-        description:
-          For this device it is strongly suggested to include
-          clock-output-names and '#clock-cells'.
 
   reg:
     maxItems: 1
@@ -309,22 +303,3 @@ examples:
                    <&scmi_clk KEEM_BAY_PSS_SD0>;
           arasan,soc-ctl-syscon = <&sd0_phy_syscon>;
     };
-
-  - |
-    #define EMMC_XIN_CLK
-    #define EMMC_AXI_CLK
-    #define TBH_PSS_EMMC_RST_N
-    mmc@80420000 {
-          compatible = "intel,thunderbay-sdhci-5.1", "arasan,sdhci-5.1";
-          interrupts = <GIC_SPI 714 IRQ_TYPE_LEVEL_HIGH>;
-          reg = <0x80420000 0x400>;
-          clocks = <&scmi_clk EMMC_XIN_CLK>,
-                   <&scmi_clk EMMC_AXI_CLK>;
-          clock-names = "clk_xin", "clk_ahb";
-          phys = <&emmc_phy>;
-          phy-names = "phy_arasan";
-          assigned-clocks = <&scmi_clk EMMC_XIN_CLK>;
-          clock-output-names = "emmc_cardclock";
-          resets = <&rst_pss1 TBH_PSS_EMMC_RST_N>;
-          #clock-cells = <0x0>;
-    };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
