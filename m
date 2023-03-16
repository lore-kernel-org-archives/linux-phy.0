Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D199C6FD19
	for <linux-phy@archiver.kernel.org>; Thu, 16 Mar 2023 13:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oI1P2qgId3vLW0QyGHWOpgccY4EjxmwjUSOfMXPsTak=; b=PdFyJDHIiqSqik
	1FL7UhJ4gMa7lOrnliwYsSCufkHY/19MmyN+91qK5ZrRSRfbt2LjWGv/2shGwE9JdDmQQ2pk1ikGl
	9ALNoauvfVAiG6spdwmy57MEoG82JmVcmjp/IfGNXiF2ag36JRqc+XxqeHWQUAqAHLIw6DCglfKey
	YYNPvylZIreok+L7gpyLSwEUrVlpZ7/vCBSW3TuyW4mmJZ3Kv7RXL9uh5GFeJUk9/LurUFl6mnyfe
	4qdC/NaiSaJZPHytFuwRZ/jz9NBlo8DjeqyV9FBp40rZrjmi2SEiMBIbfm/MfWS/zf0lIy49MjSoR
	0C9yzCiKi/kMKLPi4KvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcnSe-00GUYp-29;
	Thu, 16 Mar 2023 13:16:04 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcmNE-00GKer-2k;
	Thu, 16 Mar 2023 12:06:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678968384; x=1710504384;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references;
  bh=6rBESeZoUuzvAaQxJVei2uSeyWpzwOtmPdchwrLHNMk=;
  b=DmA2Iy8CEkOXxGpLaJeR6Rkwx/b5bxcXLLFbpHjbU8GZ2oqfPgbvV9Rc
   88EX81paNSBWdOcCNUG7w0pCqJwY7fxFa6WDkYDJCUetKlmJok4wg4mf8
   yICiHEDXA7AjKDCCXCGCvaRblFUN4SYyGcQ5sHhjdaBOzh0EOJuRtTq3G
   b0weRmIILzB2FF1ltiDqkrqXxaF96RQ2o0vUGOlzDFrgcLX4Fw0glwoh4
   VFBWl6JYo/OJOxfQRBHdZZ88EufHIA2PiSYEekAOQ/59+Q/We+pbxcrhS
   rp3LvGtokx5IO6ZQ2Qpmb3JWhSrze4wm+JtCPkcQ1tpg7BRK14h/PNWKY
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="365657091"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; 
   d="scan'208";a="365657091"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2023 05:06:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="768911732"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; 
   d="scan'208";a="768911732"
Received: from coresw01.iind.intel.com ([10.106.46.194])
  by FMSMGA003.fm.intel.com with ESMTP; 16 Mar 2023 05:06:14 -0700
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
Subject: [PATCH v2 4/4] dt-bindings: phy: intel: Remove Thunder Bay eMMC PHY bindings
Date: Thu, 16 Mar 2023 17:35:49 +0530
Message-Id: <20230316120549.21486-5-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230316120549.21486-1-rashmi.a@intel.com>
References: <20230316120549.21486-1-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_050624_988319_2AC61288 
X-CRM114-Status: GOOD (  10.95  )
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
Acked-by: Rob Herring <robh@kernel.org>
---
 .../phy/intel,phy-thunderbay-emmc.yaml        | 45 -------------------
 MAINTAINERS                                   |  7 ---
 2 files changed, 52 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml

diff --git a/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml b/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
deleted file mode 100644
index 361ffc35b16b..000000000000
--- a/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
+++ /dev/null
@@ -1,45 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/phy/intel,phy-thunderbay-emmc.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Intel Thunder Bay eMMC PHY
-
-maintainers:
-  - Srikandan Nandhini <nandhini.srikandan@intel.com>
-
-properties:
-  compatible:
-    const: intel,thunderbay-emmc-phy
-
-  "#phy-cells":
-    const: 0
-
-  reg:
-    maxItems: 1
-
-  clocks:
-    maxItems: 1
-
-  clock-names:
-    items:
-      - const: emmcclk
-
-required:
-  - "#phy-cells"
-  - compatible
-  - reg
-  - clocks
-
-additionalProperties: false
-
-examples:
-  - |
-    mmc_phy@80440800 {
-        #phy-cells = <0x0>;
-        compatible = "intel,thunderbay-emmc-phy";
-        reg = <0x80440800 0x100>;
-        clocks = <&emmc>;
-        clock-names = "emmcclk";
-    };
diff --git a/MAINTAINERS b/MAINTAINERS
index a3b14ec33830..17882b1e1de3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10442,13 +10442,6 @@ F:	drivers/crypto/keembay/keembay-ocs-hcu-core.c
 F:	drivers/crypto/keembay/ocs-hcu.c
 F:	drivers/crypto/keembay/ocs-hcu.h
 
-INTEL THUNDER BAY EMMC PHY DRIVER
-M:	Nandhini Srikandan <nandhini.srikandan@intel.com>
-M:	Rashmi A <rashmi.a@intel.com>
-S:	Maintained
-F:	Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
-F:	drivers/phy/intel/phy-intel-thunderbay-emmc.c
-
 INTEL MANAGEMENT ENGINE (mei)
 M:	Tomas Winkler <tomas.winkler@intel.com>
 L:	linux-kernel@vger.kernel.org
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
