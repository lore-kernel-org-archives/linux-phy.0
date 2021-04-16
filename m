Return-Path: <SRS0=hDbK=JN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-21.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27BDAC433B4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 05:27:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D8E361029
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 05:27:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9D8E361029
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7siTeUraB5ugVJ/EUsKNg9+AKbdgz+MMqyJpV8GyeOs=; b=qllB7dedbyDWIQxOtxrJuNFk5
	AP+QkABhuHzZdtLAi2RPHrPdFY5FQMt1E+0Ps/hWeOdVXV9QGRVN9EMv/JyxAhjRjY2Yvp1bSH8jR
	5AZEmclTXrpdUBQxEDvxffk/i7B5EsQLbJff+HahcTqCm14gW9UfYdMI4mesH7XnZq/sXhZauK3Fu
	WKtsY2Oz+768X4t7iH/mC0kPjMMJodB2nLCR/3uvELE5dqlx7WBMdVa7HLTTHpuu9T7GNdDttvrpp
	RgbMyUm6LwP+QSMANBP1nLwa+qv6jtlGxDwDkJq27PqEnuDHLDuJM4GXOC+OsPjnIigUIr1Oj3W0a
	wXPDP7WzQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXH0W-000sVF-NQ; Fri, 16 Apr 2021 05:27:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXH0T-000sUa-Q1
 for linux-phy@desiato.infradead.org; Fri, 16 Apr 2021 05:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MelUBgWsylW80+RVjogTPjEFvjvSH2ZwkORUG97pKnw=; b=ypMBm9GGIEr8QU1TRYMLtS1w/b
 XLrVe2A9y/b9RkL0nKtCHwFDCuOicWAXe5HfQJuOTIPGRTusJbtErlRvWL+aY5ardy8+Q6Ot5Zu4M
 JnAlKpgomQTm6LGyTOzK2ZU9aI1RXPtJJETG4tY9CYd8WC+fBG+xmYOsTz/GMpkCqtMQmxYqXTe15
 JWBnf0VSVOvtvCwnyiKnGPI1AqGD7G/Az4AFGXjFp/BxoO68f15D/6sCYaIoiomjej8h8WH1O/4FZ
 du0qceHhXe+uSoLi9O695QFl0Bxv5wIwC7BMLgPz//lkbAZAMV5Wy1O6R0c/psIIDoXHefZ3UCCZm
 jTMjz7Yw==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXH0R-0095aV-2s
 for linux-phy@lists.infradead.org; Fri, 16 Apr 2021 05:27:04 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13G5R0l7100431;
 Fri, 16 Apr 2021 00:27:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618550820;
 bh=MelUBgWsylW80+RVjogTPjEFvjvSH2ZwkORUG97pKnw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=X1yWw5EWiM0XJbTWHnERYBIg3AckVLre/S9gFzuP7d55LfMz89td9NW1sqbb1lq1V
 wtP34DcrBZtJh3dxlBtf7ADzu+ZdW5QFOVfvSCS8I0HQDuVw9FL1D5l2kZpv2OXaYa
 EAiuf0/LAWF9gtV9Lr5O9FK8g1FHeyYwBah5bBR8=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13G5R0PJ119159
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 16 Apr 2021 00:27:00 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 16
 Apr 2021 00:27:00 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 16 Apr 2021 00:27:00 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13G5QlLN023847;
 Fri, 16 Apr 2021 00:26:56 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-can@vger.kernel.org>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>, Wolfgang
 Grandegger <wg@grandegger.com>, Lokesh Vutla <lokeshvutla@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH v4 2/3] dt-bindings: phy: Add binding for TI TCAN104x CAN
 transceivers
Date: Fri, 16 Apr 2021 10:56:46 +0530
Message-ID: <20210416052647.2758-3-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210416052647.2758-1-a-govindraju@ti.com>
References: <20210416052647.2758-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_222703_227982_1477534E 
X-CRM114-Status: GOOD (  12.92  )
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

Add binding documentation for TI TCAN104x CAN transceivers.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/phy/ti,tcan104x-can.yaml         | 56 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
new file mode 100644
index 000000000000..6107880e5246
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/ti,tcan104x-can.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: TCAN104x CAN TRANSCEIVER PHY
+
+maintainers:
+  - Aswath Govindraju <a-govindraju@ti.com>
+
+properties:
+  $nodename:
+    pattern: "^can-phy"
+
+  compatible:
+    enum:
+      - ti,tcan1042
+      - ti,tcan1043
+
+  '#phy-cells':
+    const: 0
+
+  standby-gpios:
+    description:
+      gpio node to toggle standby signal on transceiver
+    maxItems: 1
+
+  enable-gpios:
+    description:
+      gpio node to toggle enable signal on transceiver
+    maxItems: 1
+
+  max-bitrate:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      max bit rate supported in bps
+    minimum: 1
+
+required:
+  - compatible
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    transceiver1: can-phy {
+      compatible = "ti,tcan1043";
+      #phy-cells = <0>;
+      max-bitrate = <5000000>;
+      standby-gpios = <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
+      enable-gpios = <&main_gpio1 67 GPIO_ACTIVE_HIGH>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 84ef96a444c3..e666d33af10d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4046,6 +4046,7 @@ W:	https://github.com/linux-can
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can.git
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next.git
 F:	Documentation/devicetree/bindings/net/can/
+F:	Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
 F:	drivers/net/can/
 F:	include/linux/can/bittiming.h
 F:	include/linux/can/dev.h
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
