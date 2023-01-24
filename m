Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80195C25B4E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 05:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSsZGgoMdKkwpN+zmmrqvoJOdvxskdyJHbBVEoJK3y4=; b=fH//n5Va5ciHTI
	Lj4gp1Ho13knDCwH/20yGlfRyVjC2/e6HVcOF1USrqOJd0OrhPN1ve9WIJhWF425dZAy/zgWDXitg
	/Gzmwclp6AxFVR5V8x2/H4KJVZDdEA3n4GU75hncfqFvM72bR9mQNu5yeWBiPbH+tdxoFDpD5vAsc
	mVJYJJNQUL+MG+VYfbyd7lRxiZIgUM4jvXT1vhFy3MoxYE5HNh+WICEfY+OChqKk902Jk6BaZXpen
	mWYsh9zpQF2TfZZ0ADZ/m/8lS/x2E2VCoqQ6jpthc466YsRFF5hRtDn9jdydK3+guBwXx1wk5YBjc
	3d9ESy8VjFnQ9DzA590A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKC7N-002OT2-Ss; Tue, 24 Jan 2023 05:45:13 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKC75-002OLr-Js; Tue, 24 Jan 2023 05:44:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1674539095; x=1706075095;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references;
  bh=LKVw2yOOeRpF1A8gySOnDNhea0uoF/YrAVMAwjlZ9Dw=;
  b=Kq+sO+JKj2PfL/1SqRMv3eTPgjf7Ky3md1fet1j0nVrSAo1f1uCIFoib
   Ldr5nur4TkA18Gqps8YQHhkU0Y6yMmiObRRn7Z+STJwK/0+dMAT1Zc/Fr
   ceo9sb9ewaMIAVQ6OcM4LRfB6EHiHw/7j3SmQHpd0YZAoxQssWpzMQn62
   sBIW8te6bNDvF8l9rb5cUBEQUT3C2dLycNFCYVWm2KpoOKu0Xm7xtRZ7m
   4mmqygr1EJ16Adu+JZkB9JNvsFMSajgyEA59X6Jf89MSiPprDH3POUlc8
   ZNcvyjfxwLR5S1tb+WMcFJ+kiGjSMO9qP2pvwftGb8gGdtgyHVCo07KJP
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="305895533"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; 
   d="scan'208";a="305895533"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2023 21:44:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="655307231"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; 
   d="scan'208";a="655307231"
Received: from coresw01.iind.intel.com ([10.106.46.194])
  by orsmga007.jf.intel.com with ESMTP; 23 Jan 2023 21:44:48 -0800
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
Subject: [PATCH v1 4/4] Revert "dt-bindings: phy: intel: Add Thunder Bay eMMC PHY bindings"
Date: Tue, 24 Jan 2023 11:14:27 +0530
Message-Id: <20230124054427.28808-4-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230124054427.28808-1-rashmi.a@intel.com>
References: <20230124054427.28808-1-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_214455_717353_E15508AB 
X-CRM114-Status: UNSURE (   8.82  )
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

This reverts commit efb6935dd786a9d213ee542ed77d47ece700357c.

Revert Thunder Bay specific code as the product got cancelled
and there are no end customers.

Signed-off-by: A, Rashmi <rashmi.a@intel.com>
Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>
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
index 123216b76534..e9ca0b6364b0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10550,13 +10550,6 @@ F:	drivers/crypto/keembay/keembay-ocs-hcu-core.c
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
