Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6BB0C25B4E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 05:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhtMR+TxFPPX2P619/Sj73NIqLyu+MO3c3Nq4QbbLaQ=; b=I6uKWYctBLAhZo
	nA3x9OhoZtjGW5HtG96CJqw79gWejZ7r/eMTKSjxQuUQBuvBbuF0FV/MTonLfxxQUSsW4OmIhSORr
	P5m5zbHVdLxbxcZdZm/KVWArpIbx9hUmzjJt38cZ12XgyjJnoLK3KRaMBxWyiKnx8EeCV47p2KXwX
	4btbiWX/e4yKflEgEZantj/aRjzMod1TzImG5PiSFKMDcHeVBfsa5jW3ytypCwawy4fTGxdOsxdHC
	TiJY7EbitljYh6xizCiDQVyfUU4/O81cdE847JZDlWYNHUzX+lpODnkWJH9R2m4xsKH27PCILGnFD
	EpwrFNHOw+V5G1fRUuoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKC76-002ONH-2o; Tue, 24 Jan 2023 05:44:56 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKC6s-002OIU-Fy; Tue, 24 Jan 2023 05:44:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1674539082; x=1706075082;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references;
  bh=mRV+dnA3SRMEAqJffKv61NWDnzHInh5cxWCpGNICJYg=;
  b=WlY22kSduumO+wetpv5MXV1DFkoEt0QQ89IkbymRXKKqzHmEEK9yMIE/
   lrUmvpGz1dcO1F8z0djfbOb1nibF3m9o284GQnBw8xD+uf80OnU3KHHoV
   bqrsEXkW6CTQ/4ZMkJJZ10PayqqH7ywnwxCMPvsSqhGuiQTzpIEEZPnpj
   y3/UJZWHr72r4yEHRDfyH2+tjjy/vaA+fjDOWqyDfq5kR3JSkHY2noehJ
   YpIXaKfBIZZkzWkoChTELu7GpJHbVQD1e0g0S110tNnaez5qoTa/5hd7z
   y3ZcOmmXFkwjfKGxo8vOn4202HmACdw+T4KWK36bvQz0bWnhuoDM+fuoc
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="305895488"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; 
   d="scan'208";a="305895488"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2023 21:44:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="655307165"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; 
   d="scan'208";a="655307165"
Received: from coresw01.iind.intel.com ([10.106.46.194])
  by orsmga007.jf.intel.com with ESMTP; 23 Jan 2023 21:44:35 -0800
From: rashmi.a@intel.com
To: ulf.hansson@linaro.org,
	michal.simek@xilinx.com,
	linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kishon@ti.com,
	vkoul@kernel.org,
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
Subject: [PATCH v1 2/4] Revert "dt-bindings: mmc: Add bindings for Intel Thunder Bay SoC"
Date: Tue, 24 Jan 2023 11:14:25 +0530
Message-Id: <20230124054427.28808-2-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230124054427.28808-1-rashmi.a@intel.com>
References: <20230124054427.28808-1-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_214442_571360_5ABF2DA4 
X-CRM114-Status: UNSURE (   7.22  )
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

This reverts commit ab991c05c42853f0b6110022db9bf30fcc6323dd.

Revert Thunder Bay specific code as the product got cancelled
and there are no end customers.

Signed-off-by: A, Rashmi <rashmi.a@intel.com>
Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>wq
---
 .../devicetree/bindings/mmc/arasan,sdhci.yaml | 25 -------------------
 1 file changed, 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
index 4053de758db6..0d5d21dd30bb 100644
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
