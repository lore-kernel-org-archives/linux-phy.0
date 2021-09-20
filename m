Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDBBC43217
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 68E9060462
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 68E9060462
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puxdIPOTT97fDg7GpiYUEmLVwaGntXtmDEWDM3Lgnt4=; b=DQ4Kxn5uK6262S
	cZ5zhZ0cDnTSB7i1TeADyxSm23YztODAqa1xQl7MQZuLMJeT2g+dt6BsDb9ucjQ1LlhhWjjzktDm0
	LgtiKfv1xI/2QHdp0/4aO5gggVKWi7iq9nDg5pXBMQ+K4uO014tGeXvdzXTrBo7eH9gfleWaS8VMT
	Qzw7GfIVg3hC/b6posUYjwPFmK5lp0J+leJEd13rjbl+VaD7fFUimXeH5OOVQo/DsxdAw2oM9iv5Y
	/J6UvoOW0aBgOAGImHlAlrLyuqwOxOV6r4AhPgDMMnlCw9noDGxfZ8Do79uUChFjKcZKCJHaJ7iJE
	5ZrRVf2YLQU0CIsdyrJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSFxW-001Beh-Um; Mon, 20 Sep 2021 09:51:34 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSFxU-001Bcy-LH
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 09:51:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632131492; x=1663667492;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZEHpommCSL8ojew2FKcV/eSvyPSOisfjZXiNWmXORXQ=;
 b=uAxNDDin+q8p2ErUHeNFaepLceXUxu4NJkNTk7Hc5hF0Qtz05/JsKYXY
 qauiAuzbaxGC0sTtdK+Ht3kr9nS7oPKRsgTaLTBsj7kCxrZUwJFHCrAfy
 TfY6vdMIhbKQXYJ4FwHFtKPyGblhGBsX/lRPeLOL5Sv6ZB0hIWVGcPsT0
 l1YroYFFAzs8gUbB4fxqkzrZwZLdEsOovO0QHetWXv7ZZAkbuk/YTTqlr
 xlohoi5dL6jdmQ9qr/u5L2MQGRGIC7k7YDREY0HNV4eqRH8F3neI9ir3U
 tfMfpYGM41mkIn/LMjVQtUFoq11dQACq6/FLhx2EIQtfkDTc9SKNY91fA w==;
IronPort-SDR: /VIa/E1EPeAc4amqqBCs797uYYeQ+iKJohFqTZvxAroYcVpxBMbeOkpgo292OGc3PMDu71kYZ1
 U03DqAils8YMz5lDMtCUjWg8/gxs56rcJBiIruPTIOI4+UrDi1Njpmn7mEiYAU1DTI6t4+9HZX
 o7ZCp8EpBlYpC16ddMldHeonBlQZVMzQQqDFhGKG0yuOH+F/sy+DvYBtwLueRguTD2Ulg7ryVN
 sQTl5n7X3jNDuB09rCIppRhF7lj3dqHabddfb0II40yH0b7qz01PcHMdI/CHHYky4usJgHPFge
 +1wI3BT7DaGSVuJJTAbIlkKF
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="137192394"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Sep 2021 02:51:31 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 20 Sep 2021 02:51:31 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Mon, 20 Sep 2021 02:51:28 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [RFC PATCH net-next 06/12] dt-bindings: reset: Add lan966x power
 reset bindings
Date: Mon, 20 Sep 2021 11:52:12 +0200
Message-ID: <20210920095218.1108151-7-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_025132_748799_263046F1 
X-CRM114-Status: GOOD (  10.33  )
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

Document the lan966x power reset device driver bindings

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 .../bindings/power/lan966x,power.yaml         | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/lan966x,power.yaml

diff --git a/Documentation/devicetree/bindings/power/lan966x,power.yaml b/Documentation/devicetree/bindings/power/lan966x,power.yaml
new file mode 100644
index 000000000000..d10eec10089b
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/lan966x,power.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/power/lan966x,power.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Microchip Lan966x Power Reset Controller
+
+maintainers:
+  - Horatiu Vultur <horatiu.vultur@microchip.com>
+  - UNGLinuxDriver@microchip.com
+
+description: |
+  The Microchip Lan966x SoC provides power reset control.
+
+properties:
+  $nodename:
+    pattern: "^chip-controller$"
+
+  compatible:
+    const: microchip,lan966x-chip-reset
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
+required:
+  - compatible
+  - "#reset-cells"
+  - cpu-syscon
+  - switch-syscon
+
+additionalProperties: false
+
+examples:
+  - |
+    reset: chip-controller {
+        compatible = "microchip,lan966x-chip-reset";
+        #reset-cells = <1>;
+        cpu-syscon = <&cpu_ctrl>;
+        switch-syscon = <&switch_ctrl>;
+    };
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
