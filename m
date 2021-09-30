Return-Path: <SRS0=P1CX=OU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A23CC43217
	for <linux-phy@archiver.kernel.org>; Thu, 30 Sep 2021 07:39:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E97146187A
	for <linux-phy@archiver.kernel.org>; Thu, 30 Sep 2021 07:39:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E97146187A
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJJBibaVmp1bYIbb6RHfOK+HHpE5S2g5dsEd9OguKS8=; b=jjfFIpjfrvfuMt
	C4vhZGuqqcwEyJS1I1OmA4W9uLVL7HNnd8SoSNAPUBIpgtUd7jVp6hphsP5W1U89a3K5nb/eNcgSd
	ua2DaCXv2awhHdsr0J/HodiByZmhAE5CshkG96H3Dd6PrFlOYxAjlpr/62/GYtngOXW9pnHTTk3Sh
	ODzF+HSY0v0WZoemDxLpcfsN211urZV9JnGIst6CxTNWmqKp32N05cwr/w1uv0VGeygqjKKSITPo8
	B4Y43HWVPJNzE9ISNKBYS63v5rCYTqX11bPgZ6Lgw3BPljikCvxvwAn5Hs6SzP8MxeacZLBnZGxFd
	ycFHgYt5Y71A3/fdjeLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVqfN-00DDOz-FF; Thu, 30 Sep 2021 07:39:41 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVqfK-00DDNY-LN
 for linux-phy@lists.infradead.org; Thu, 30 Sep 2021 07:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632987578; x=1664523578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n/f7Tvos+nOKVB4h/HYfwf4TdPoy8XxtG9ZvPV5MKsw=;
 b=Vj9MLZhPtydNWvlLxNawFe5N+Uk94/9UJbWonc0oYqjBP4oj5V4J9OPX
 4vVvWRE0xh9IX3N9C55JBdICJWatAQ2sNu0mS4FmgP8IU9mUoXDXb5pls
 Md2luTrIPLjoYTE5P2npi7Axh6r700PA9g88c1N6SLSUa4GnEiNomX85O
 pjeaWJVUGwQrVQ0b6Na2RX38TWN8f/ofRwiRC0cjUrWjRrg1foMONisLK
 I4YpDfOT7M8Y7tEkVUmJiBVnNfnzuQrcoaI/8p2QeZ9m7DcUR05bbuuJL
 65fNDhKpgJ21ezKopU+TbLqohEnyfIihII3Wl22DW6RUvrFI9FWcjdnsb w==;
IronPort-SDR: 7/xcplz3vwQAs9yDrccZ9nJsDKZkvkKuG2jSHbRK4y2KkguZnMdCcaNzGz/+EWbGjyoEKuEAsM
 BYMYfAIrxn7paQiGUh8cJZ/H1/TW9DrSkZGQuFAyRjcKzPACH5C3cIb66ksbRgrl7lxFx2f0EX
 dK2+SXmhqbZDFDt0rM71dwfkcx/r8jG0P4myqQiGONufG3EOSU4zIiE69XfTHzo4G2oaS66tCz
 iquUex6rkHcnUv8SVBJJflIW2MBLewqjlmUNN5dZQ+nL20D/YSxn0q8XMdFpg8G2IAZTOuq2JF
 xS28cf8S9g22dzTw3Vn8buU0
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="146229522"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Sep 2021 00:39:35 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Thu, 30 Sep 2021 00:39:35 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Thu, 30 Sep 2021 00:39:33 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <linux@armlinux.org.uk>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH 1/3] dt-bindings: phy: Add lan966x-serdes binding
Date: Thu, 30 Sep 2021 09:38:20 +0200
Message-ID: <20210930073822.2709955-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210930073822.2709955-1-horatiu.vultur@microchip.com>
References: <20210930073822.2709955-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_003938_729776_3CBFFB11 
X-CRM114-Status: GOOD (  10.52  )
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
index 000000000000..03a2854a2b09
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
+    pattern: "serdes"
+
+  compatible:
+    const: microchip,lan966x-serdes
+
+  switch-syscon:
+    description: |
+      Handle to general configuration block
+    maxItems: 1
+
+  '#phy-cells':
+    const: 2
+    description: |
+      First argument represents the port index,
+      the second one represents the serdes index.
+
+required:
+  - compatible
+  - '#phy-cells'
+  - switch-syscon
+
+additionalProperties: false
+
+examples:
+  - |
+    serdes: serdes {
+      compatible = "microchip,lan966x-serdes";
+      #phy-cells = <2>;
+      switch-syscon = <&switch_ctrl>;
+    };
+
+...
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
