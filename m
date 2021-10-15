Return-Path: <SRS0=Q62d=PD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5898C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 12:40:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A64086109E
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 12:40:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A64086109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4b2UVS9mXoySStDGzNtWAlU7AeA198jsk2Q/LudQNo=; b=E9JObWCxT7yJ9Z
	VS+qnF/64QoUsT9isQvZ31gSkAxlkLTfgKpKbFLPNuP2xZfAGJRZMVFkpyxeqpG4CV1kWZbsmshLP
	v9rXZd8pC8RGMFhVIjRKDWowSCpdd7GhcSDTeq0IDzwD+2UHYw9qdYozcELU19cuvryHId9sqjBKA
	YzBTJnMKKF6cPEhpli7vbDDwm9nKbj4Ix+jgsnnmdN3zeah/FJl/YMUKBxIHkFEhdJBxZd/emFCL0
	M+Fn0hqy+hvS8WU1PJw9i9kWY8BSPd/AXzQg+TkY8iFO+Dcdp3AwQOzD6SI9aUdwVFKKHUTm9Senr
	sFjy2/770Asuo7ZQSTtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbMVO-006x1a-20; Fri, 15 Oct 2021 12:40:10 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbMVH-006wwj-Ie
 for linux-phy@lists.infradead.org; Fri, 15 Oct 2021 12:40:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1634301603; x=1665837603;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FFhnSGyMQDVLLTdJBAuezExujaSNKafiTG09LfRK2zA=;
 b=lAi05Kw3vVfRHllutsA87BoMeGSnA3GPdl77byHG+v7ADGMgrG4BoTza
 WrKji2FY8pHxPG3NtsghyU9T4qYW3gIYakC2b5oxoW1IloqkbIksTQjNe
 DUZo7HzBNjVqOIzW1n3ZTgAaI0uUhgffZFuwwTaaDruaNDwNOlwLViKv4
 cz/huxKPpbs+WCXMgOi7QvZG70HEfjfMCvedb6I8rgVX/MO95YjjNhvvu
 Akp04hH7LCXB2C8/5kA9g9XiGFvxLkI/oP3WZ3BJL+XvzBPd6CZZXNb/n
 bkb5JmgKiB0m9DpOH+1XmYKqvCLdPiKfd33+xRJMPBCfzClf+E9MGxNUr w==;
IronPort-SDR: UapXFEetIrlcNLwdnSOYDsjB+xKztjNIjiotAGYk/V9MX3gGfcl1IUQ53wFhVBUxmHh87UXvSG
 +AG9ok3CZhNLeR8H5T2sDy2CxdRLJwGP4eohaSeGsUilbV4oTgZDUaxCOKYwdizLl/FKj/HcGJ
 2GaGR7im+jG28QavjIWCgahKrZtziG5+1aK5rWAWqOnDK4jUcBb8fk30mH1W8M1EZ/4wUZ2Bjp
 wOuclpUW/78ClNTl4V/YGO93o69Vbx6Kwvg2d0QovBw4iwfnVZwyTsnGzUYbcdWhs/7QSksefg
 kfxWqgLFb4iN/mfmeLe7PG3m
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="73070427"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Oct 2021 05:40:02 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Fri, 15 Oct 2021 05:40:01 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Fri, 15 Oct 2021 05:40:00 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v3 1/3] dt-bindings: phy: Add lan966x-serdes binding
Date: Fri, 15 Oct 2021 14:39:18 +0200
Message-ID: <20211015123920.176782-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211015123920.176782-1-horatiu.vultur@microchip.com>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_054003_729752_60078F5B 
X-CRM114-Status: UNSURE (   8.77  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Document the lan966x ethernet serdes phy driver bindings.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 .../phy/microchip,lan966x-serdes.yaml         | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
new file mode 100644
index 000000000000..8902466831c1
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/microchip,lan966x-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip Lan966x Serdes controller
+
+maintainers:
+  - Horatiu Vultur <horatiu.vultur@microchip.com>
+
+properties:
+  $nodename:
+    pattern: "^serdes@[0-9a-f]+$"
+
+  compatible:
+    const: microchip,lan966x-serdes
+
+  reg:
+    items:
+      - description: HSIO registers
+      - description: HW_STAT register
+
+  '#phy-cells':
+    const: 2
+    description: |
+      - Port index
+      - Serdes index
+
+required:
+  - compatible
+  - reg
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    serdes: serdes@e2004010 {
+      compatible = "microchip,lan966x-serdes";
+      reg = <0xe202c000 0x9c>, <0xe2004010 0x4>;
+      #phy-cells = <2>;
+    };
+
+...
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
