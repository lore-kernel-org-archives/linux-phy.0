Return-Path: <SRS0=wp9D=MW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B820C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 06:33:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2098B60F9B
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 06:33:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2098B60F9B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Afi0cEOBNQ7Vc750UCbh4xULFd9OXVUtc1EBkEqX51c=; b=eV7HaEu5+cYMw4
	jFgu86K9M4pJhEDgMeslCDdNxamGNzVNJUgqJdtC7AleIC+fnobhSVUsC06aTnvW83OAAJmUCt5Ff
	DbbhgJddPyTskO72mu0Jdwqz13t3CD/A0CU5Ixg4llmRokylGFqF5EYcvM2N1mnc2qPapVs0ZRXuL
	9sObZt9XFfhxymDArjcm191YPyXE+Bcvb9Z5708J2gbSsXXXLEJqSWujtqogHJlx5tXO8lLBI1A1l
	pXxK44TbcfmruHtt2j76r1zvp89ktlJNc8FWQyqWHbxqJA+V4/W3Lr0gD45X4A2tZaGxRaqONNFXH
	p+v2Ymg1z/x/pXtRKbRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9M5W-007UJo-Jl; Fri, 30 Jul 2021 06:33:42 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9M5A-007UF2-U0; Fri, 30 Jul 2021 06:33:22 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="276816854"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="276816854"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 23:33:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="664714887"
Received: from coresw01.iind.intel.com ([10.223.252.64])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2021 23:33:15 -0700
From: rashmi.a@intel.com
To: linux-drivers-review-request@eclists.intel.com, michal.simek@xilinx.com,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kishon@ti.com, vkoul@kernel.org, andriy.shevchenko@linux.intel.com,
 linux-phy@lists.infradead.org
Cc: mgross@linux.intel.com, kris.pan@linux.intel.com, furong.zhou@intel.com,
 mallikarjunappa.sangannavar@intel.com, adrian.hunter@intel.com,
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com,
 kenchappa.demakkanavar@intel.com, rashmi.a@intel.com
Subject: [PATCH 1/3] dt-bindings: phy: intel: Add Thunder Bay eMMC PHY bindings
Date: Fri, 30 Jul 2021 12:03:07 +0530
Message-Id: <20210730063309.8194-2-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210730063309.8194-1-rashmi.a@intel.com>
References: <20210730063309.8194-1-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_233321_047153_147ED037 
X-CRM114-Status: GOOD (  12.43  )
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

Binding description for Intel Thunder Bay eMMC PHY.
Added the newly introduced files into MAINTAINERS file-list

Signed-off-by: Rashmi A <rashmi.a@intel.com>
---
 .../phy/intel,phy-thunderbay-emmc.yaml        | 49 +++++++++++++++++++
 MAINTAINERS                                   |  7 +++
 2 files changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml

diff --git a/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml b/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
new file mode 100644
index 000000000000..5b764095746e
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/intel,phy-thunderbay-emmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel Thunder Bay eMMC PHY bindings
+
+maintainers:
+  - Srikandan Nandhini <nandhini.srikandan@intel.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: intel,thunderbay-emmc-phy
+      - const: intel,thunderbay-sdhci-5.1
+      - const: intel,thunderbay-sd-phy
+
+  "#phy-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: emmcclk
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+     mmc_phy@80440800 {
+     #phy-cells = <0x0>;
+     compatible = "intel,thunderbay-emmc-phy";
+     status = "okay";
+     reg = <0x80440800 0x100>;
+     clocks = <&emmc>;
+     clock-names = "emmcclk";
+     };
diff --git a/MAINTAINERS b/MAINTAINERS
index bd7aff0c120f..44533319c900 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9278,6 +9278,13 @@ F:	drivers/crypto/keembay/keembay-ocs-hcu-core.c
 F:	drivers/crypto/keembay/ocs-hcu.c
 F:	drivers/crypto/keembay/ocs-hcu.h
 
+INTEL THUNDER BAY EMMC PHY DRIVER
+M:	Nandhini Srikandan <nandhini.srikandan@intel.com>
+M:	Rashmi A <rashmi.a@intel.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
+F:	drivers/phy/intel/phy-intel-thunderbay-emmc.c
+
 INTEL MANAGEMENT ENGINE (mei)
 M:	Tomas Winkler <tomas.winkler@intel.com>
 L:	linux-kernel@vger.kernel.org
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
