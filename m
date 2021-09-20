Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78915C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E19360F93
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1E19360F93
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dh/ll4NV1UHx9D1L2yhnJ2o8MRLiU65WyOv/qkAS/U=; b=e9uFEjHrqOclzm
	I0VBZdmpVHiJ0vH9Hwgqf/7vS0t3cJKU+FxGjyw0JdtrLLGX2wVq1SNURjO37G+Jb0fuQa4iBxY2y
	oFqKWRUc7/kXlmHkALbu0jO/KmKM1EEb1Sf+7z11UJ39UdsPfLf+usQ2Qfu1pHAvr/POPczWWz2bD
	VYcZN8aLxjGRKBsi3ADbcmHKxgFtozQOx0tYZt/QfXn9oDzgfRmbHfyAorZpYOEUlo6Sv+3pwxPAK
	jgUd86jxcT3QwQPF9sKcIs6Cvse1L+dW8Tx2pQ3Z62+0hv74/xarwlVY+aAEiYuS8OCAkXyfYa5q+
	7bOcTbkyZiksi17tiWwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSFxQ-001Bc5-LQ; Mon, 20 Sep 2021 09:51:28 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSFxO-001BXp-JS
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 09:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632131486; x=1663667486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=epnho9O5xG1dOE7FuOlq6UtUNvkMiFANBOevGHC00ZQ=;
 b=I0qijL1BWMDeavkjxwrzwgDme1eXZmK+QkAVSvg4/jugJmGZkKtrfbDv
 tk3qySqot45MVJbWV2WQ99NUTZ10+lER8Omo6O8UhqD4OBlHS91rIfYNc
 B100JO/BjgqR4EpJuJTgfaoWAd46h7iPe1ZRHKC7r5fFpqrZ36XLQ/5Nv
 LQX/Q7wsSBktiNxPTxe51uXUz4kfnaTST4ZwRh26dlwdFoSrCbRz9xCMj
 VhE5Jx5dJzkm9S/XaR4fYFeyNj8B2fvEdnakr+zw4WRC8R1Ith9JN9w3Y
 10f5Vn1iumwFrufoaIcJLfCEwQkruOi1XGse3uEaegROUZMgp5VJXnnJX w==;
IronPort-SDR: NN3n1DQFdaLsdSeLWhSkemH3KPp5v4kIcA2aZjl1TUXQfM+F0zlmBw1AYGV2p3a8IznIpGn2E6
 4Jy6VUPoAhOx/JX/hTvf6jV0HCVg9jq+/Y8e29JK2eE9dmEmJ8wvLvQ4PYbO1ICBn7n+S3dxa/
 g5aZYnWUrmXcrGOCWtP9KK/oQUszWHRM19sGUnj25ym2+4h7wQf2F/22GWIvviwJkWXb1xGloo
 u9Dzzezr/K0ke8F1ms2Wfr56Yxiqwnuspy7L4JKq/SLPaqbXLSKmDRxmRWYoEsyMUY61rZsLML
 11nXe+A1CFal8t9WMXe6JlA2
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="137192382"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Sep 2021 02:51:25 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 20 Sep 2021 02:51:25 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Mon, 20 Sep 2021 02:51:22 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [RFC PATCH net-next 04/12] dt-bindings: reset: Add lan966x switch
 reset bindings
Date: Mon, 20 Sep 2021 11:52:10 +0200
Message-ID: <20210920095218.1108151-5-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_025126_689520_8A8EF655 
X-CRM114-Status: GOOD (  10.18  )
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

Document the lan966x switch reset device driver bindings

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 .../bindings/reset/lan966x,rst.yaml           | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/lan966x,rst.yaml

diff --git a/Documentation/devicetree/bindings/reset/lan966x,rst.yaml b/Documentation/devicetree/bindings/reset/lan966x,rst.yaml
new file mode 100644
index 000000000000..97d6334e4e0a
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/lan966x,rst.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/reset/lan966x,rst.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Microchip lan966x Switch Reset Controller
+
+maintainers:
+  - Horatiu Vultur <horatiu.vultur@microchip.com>
+  - UNGLinuxDriver@microchip.com
+
+description: |
+  The Microchip lan966x Switch provides reset control and implements the
+  following
+  functions
+    - One Time Switch Core Reset (Soft Reset)
+
+properties:
+  $nodename:
+    pattern: "^reset-controller$"
+
+  compatible:
+    const: microchip,lan966x-switch-reset
+
+  "#reset-cells":
+    const: 1
+
+  cpu-syscon:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description: syscon used to access CPU reset
+
+  switch-syscon:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description: syscon used to access SWITCH reset
+
+  chip-syscon:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description: syscon used to access CHIP reset
+
+required:
+  - compatible
+  - "#reset-cells"
+  - cpu-syscon
+  - switch-syscon
+  - chip-syscon
+
+additionalProperties: false
+
+examples:
+  - |
+    reset: reset-controller {
+        compatible = "microchip,lan966x-switch-reset";
+        #reset-cells = <1>;
+        cpu-syscon = <&cpu_ctrl>;
+        switch-syscon = <&switch_ctrl>;
+        chip-syscon = <&chip_ctrl>;
+    };
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
