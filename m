Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F281FC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B7EA760F9B
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B7EA760F9B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVcOyCy6a2JMFT/rBmfisdF6czsgu+VFRKQ38HKsWd8=; b=HB71H1rqpfP7K9
	bzA/r0sM5wbrRdyg+wCDSkLF/IZd6b/cVE/hkAG8PINLXR9iN/rMpEqSZejnvfWkFRwP5lruLDesW
	Vfx6QSVz3p47yITS+sxAq5SSVjMiFSa0rYQulzrDwEY5tdlik+Z8wquTvitz7ah9lyknPOL2UAFG3
	1GAI9rgOXDXqFjWMqVr61VPX/Ar6LRQdKPfSdl8zivh5n4AMJaZdIcaEOKPFDXNAMTt0zd2W+nxd1
	am307HpF4QzS0/Neg9efvUmkhXRzAUFm1mgmryFCdiRyK/xIci2IdFdLWK6gheJi+VBglueVQTJjM
	IHoL+XrdkI1loJzpqSwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSFxe-001Bq3-9p; Mon, 20 Sep 2021 09:51:42 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSFxb-001Bh8-Em
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 09:51:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632131498; x=1663667498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v2p9zB2T0M+VqtAMlG8d1u3L/QbMvNcyT4xgvitDt3Q=;
 b=qv7IesJ5oO2JlwNLiJpQF9Ffs4YxjBd5fhk0H6pI2Dda0bxH7kNU9Q86
 GEG9hOw6ZhD41ZMAev7WR1gNavWCpO02MdRxqf/0qIm0gzueemNrZobzB
 /h+zcakiyi1Z2gZoVul0B2oxxXycIv8RRH2OQDKaJG++0DNvL9vbOc1yV
 sxdQ60+7o4yzIRjA83hPFoZAUrQtrSf2nkUDPQjkxfzDNybO5pqap6QIr
 +r9xCzMbYvM7GqmQTRrw2CmneMC05/6l1ugsr7cRHnaiFbMWVQNCgj4bw
 UHnCZbCVsyiqofzP7Jh6gVOCIFrV7eWFe3G/NSRRyRXCLhPyKKYaHtTnf Q==;
IronPort-SDR: ycOvQIoYZElp25Zole7n3xeYbOUN6GvZTQAkvL1FUfLT6CfHv2SK/9PN0hoWCidP+u6hIfqA51
 NDpIfYetjSjwwwdWbCet425cXbXwVmXDl5Vncg35v1kX1io5LfkaF6VsRCtPcRhNeH2j2EE0ou
 CXGROvBg5WsPb3e56V6ebzv92Jh+fn5rRwRJ8yVFSVfjIHUAZbq/c3veGRKM5WQQ7pPc69VO8y
 gkMfnhko+4smU5okFlSJPnWrzx02ZK89x1dRJyrzvnEx1EhPXm4fZbB2tQAYbZRYJrvzpw5gSa
 2BpE1XI450dVyMb5SCyD2x7q
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="129913585"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Sep 2021 02:51:37 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 20 Sep 2021 02:51:38 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Mon, 20 Sep 2021 02:51:35 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [RFC PATCH net-next 08/12] dt-bindings: net: lan966x: Add
 lan966x-switch bindings
Date: Mon, 20 Sep 2021 11:52:14 +0200
Message-ID: <20210920095218.1108151-9-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_025139_611415_0F426564 
X-CRM114-Status: GOOD (  10.62  )
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

Document the lan966x switch device driver bindings

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 .../net/microchip,lan966x-switch.yaml         | 114 ++++++++++++++++++
 1 file changed, 114 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/microchip,lan966x-switch.yaml

diff --git a/Documentation/devicetree/bindings/net/microchip,lan966x-switch.yaml b/Documentation/devicetree/bindings/net/microchip,lan966x-switch.yaml
new file mode 100644
index 000000000000..53d72a65c168
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/microchip,lan966x-switch.yaml
@@ -0,0 +1,114 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/microchip,lan966x-switch.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip Lan966x Ethernet switch controller
+
+maintainers:
+  - Horatiu Vultur <horatiu.vultur@microchip.com>
+  - UNGLinuxDriver@microchip.com
+
+description: |
+  The Lan966x Enterprise Ethernet switch family provides a rich set of
+  Enterprise switching features such as advanced TCAM-based VLAN and
+  QoS processing enabling delivery of differentiated services, and
+  security through TCAM-based frame processing using versatile content
+  aware processor (VCAP).
+
+properties:
+  $nodename:
+    pattern: "^switch@[0-9a-f]+$"
+
+  compatible:
+    const: microchip,lan966x-switch
+
+  reg:
+    items:
+      - description: cpu target
+      - description: devices target
+      - description: general control block target
+
+  reg-names:
+    items:
+      - const: cpu
+      - const: devices
+      - const: gcb
+
+  interrupts:
+    minItems: 1
+    items:
+      - description: register based extraction
+
+  interrupt-names:
+    minItems: 1
+    items:
+      - const: xtr
+
+  mac-address: true
+
+  ethernet-ports:
+    type: object
+    patternProperties:
+      "^port@[0-9a-f]+$":
+        type: object
+
+        properties:
+          '#address-cells':
+            const: 1
+          '#size-cells':
+            const: 0
+
+          reg:
+            description: Switch port number
+
+          phy-mode:
+            description:
+              This specifies the interface used by the Ethernet SerDes towards
+              the PHY or SFP.
+
+          phy-handle:
+            description:
+              phandle of a Ethernet PHY.
+
+        required:
+          - reg
+          - phy-mode
+          - phy-handle
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - interrupt-names
+  - ethernet-ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    switch: switch@600000000 {
+      compatible = "microchip,lan966x-switch";
+      reg =  <0 0x401000>,
+             <0x10004000 0x7fc000>,
+             <0x11010000 0xaf0000>;
+      reg-names = "cpu", "devices", "gcb";
+      interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+      interrupt-names = "xtr";
+      ethernet-ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        port0: port@0 {
+          reg = <0>;
+          phy-handle = <&phy0>;
+          phy-mode = "gmii";
+        };
+      };
+    };
+
+...
+#  vim: set ts=2 sw=2 sts=2 tw=80 et cc=80 ft=yaml :
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
