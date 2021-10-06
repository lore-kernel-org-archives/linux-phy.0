Return-Path: <SRS0=SQnc=O2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 015D8C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 06:35:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA3E3611C6
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 06:35:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CA3E3611C6
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7j5WM9BHTU8wP1SZqBphTMY/+vYRU8O4+JhBVoJ+8Ak=; b=NB+ZGQA5ZLrlSv
	YEwkgmgUA1Uw2xbgDecrakCGCZ5vOUH7my08nx4HT74iYdoNeQvZMfu/uBDf1NJiao5PASc9vR9sk
	bEOTu0lGZSstZ+xVmRH+AgMTZsphkb/aZpUzXcOmJMu333awGymFd7Q51jKfzLyINQUwB+rZjzOZs
	PUa6Cdqtn7IHtUhmBMh+Bhlzmklrr15tM7YFBbDvE3dAVzCcPrVrEVczqVnTtgLZQIpLkboM0avaW
	9efZaYKAacy/Slh5eS+Gt2Z6/o8j2QLvupe/K94CkjAJxBS4Y8u7bg1vn0O9UQoYtLgl53fc5kJ7q
	HWjtY949I7bnq+jdGQMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY0Wv-00D2XP-AB; Wed, 06 Oct 2021 06:35:53 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY0Ws-00D2SB-EH
 for linux-phy@lists.infradead.org; Wed, 06 Oct 2021 06:35:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1633502150; x=1665038150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Z8Bi3LZdhbpISPdz6t8hDlpDNz6bqK9X6f2otpmq+s=;
 b=lMJEa7ObBlriQMcljcYGEvMfq5D7f8BUYjEJE01LecWogUloeTzP0i8e
 rG7ZgM5qCBCWYGecJbDkNvfuaXA9Rxm5pQGOXk+KoERPS75RhNjvl5bTO
 EmV9m/jjuis56LXiHvwtjV7ZeeHFyEghozpnqiXt7vUaHFJUw+MOW4pVv
 yZSiZqwJLNEUaE0Cm/SPu2g4py5l2sfai7uVMtRrUy4XHP4AeAWvjmAZu
 HbeJqWeRznN1o2Eni1VNyrEECztGmHX9dRJSCwlKVSJA4TKOBHIF9dFBv
 7VeENMIe9k5I6i/Z81ovJYe5wv67Fw3CsrPggEc4xNlDtsg9HKzvHORLD A==;
IronPort-SDR: qG4M2D1EIUtd2ynFZjagv7lZFwcuXwRKmyhoBIqbSfVfjy2m/a5H8/LHl2svwLkJjlPdlNGBWE
 /MwMvzVIQNXeQq2KI1uPFKWYPFFVGzoQ6Dy4XpKM57X37gRS52EoNPE/XoFte6ho9WjyQfLZ8S
 tnmEYHJ9bFLQbLTCylavGdwtLGIUmfbyaHLd+K9re8Q0AGOaSkwnAUNWtIm9nmBp0r8mwMOSkJ
 vHPbmQLC/jtr1PWKyOHdf1ST6jrz+e92zwDyG11NRg8BfXIMg/z5gyByl2UgRvNvf2hNn6aQiK
 5+aDlhn4Mie2f2nl2eWS9VhY
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="134419736"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Oct 2021 23:35:35 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 5 Oct 2021 23:35:33 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Tue, 5 Oct 2021 23:35:30 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <linux@armlinux.org.uk>, <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v2 1/3] dt-bindings: phy: Add lan966x-serdes binding
Date: Wed, 6 Oct 2021 08:35:21 +0200
Message-ID: <20211006063523.3962427-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211006063523.3962427-1-horatiu.vultur@microchip.com>
References: <20211006063523.3962427-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_233550_599349_068112CF 
X-CRM114-Status: UNSURE (   9.23  )
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
 .../phy/microchip,lan966x-serdes.yaml         | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
new file mode 100644
index 000000000000..451e78c4a172
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
@@ -0,0 +1,43 @@
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
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
