Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFDEEC46467
	for <linux-phy@archiver.kernel.org>; Fri, 16 Dec 2022 14:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iiN6xgnZjHurbnuJIgjHsoyahTZj1cOOZ0hLYq2k5V4=; b=z0IPnd3sSWAbfA
	9eUG9Ezt/KGL0EUw1fYTdFVAzYZPQ+u+GRf7oamuK94fDT6N8huKyfmKk04RyrpMSGYoPBzF+JB4J
	REmPNsn4yBp3f6A56uXf9wA0fQxJLG6dsZrhZiGQLvH2mRh0ANzP0vuXw37SqZBeSksmC6tfEwBwH
	lbd/euGt6X87sBtS3ZUZTDKJbF2uUC0lTnLgeWedEbOJrzvBDnuTPO1vzKFYjGPKzy2TzPBi0WjnJ
	zQ8mi9HULtWA9c12NwturER35LuXsL5d0YYG1ygZ+qFgRxEuib4Qkt4UFD3tC02UFkN+3UqfJiRXw
	xixkCtdw7B7u3LxnHPWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6BqQ-00Fiok-Sn; Fri, 16 Dec 2022 14:37:50 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6BqI-00Fihd-NK
	for linux-phy@lists.infradead.org; Fri, 16 Dec 2022 14:37:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1671201462; x=1702737462;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=f1429pE37vPzm/QaDn2aIzqyLLPfeKnNy8zqX601ltg=;
  b=XoX0qFBR6cajkJxPf3W4PGcKR9u1nVS8GyHAXcSuzfUt1/3vYD2ZyYRR
   uXu0Y2vXoZNja4kU1ejBhVDL0/v9dT4OqIq+ctyCe01U+oHonzEcW5FFN
   +7o5cB8kn/NY9ezMu+uSXKrchuoK5R4yPjtgwkAU/iG4tViGJWcZ5MOav
   58F5+iXHhqAxRzSgKrSHu79KMyeUQH+pTFp/eQZgbXtlLxCtU5yaEUanq
   rxzSUoHEFXKpacy84kddtxXz0fEHQbE1QQN88xzUz0X3tVV2F9t9k5miC
   1uPPtV9VzHxlYfmBWVk+TDC6atyLxeg1FJLpgjjAk7V8sRqwp20O7Use9
   A==;
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; 
   d="scan'208";a="128506515"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 16 Dec 2022 07:37:30 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 16 Dec 2022 07:37:28 -0700
Received: from ROB-ULT-M18282.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.16 via Frontend Transport; Fri, 16 Dec 2022 07:37:26 -0700
From: Eugen Hristev <eugen.hristev@microchip.com>
To: <linux-media@vger.kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <luis.oliveira@synopsys.com>, Luis Oliveira
	<Luis.Oliveira@synopsys.com>
Subject: [PATCH v5 2/4] dt-bindings: phy: Document the Synopsys MIPI DPHY Rx bindings
Date: Fri, 16 Dec 2022 16:37:15 +0200
Message-ID: <20221216143717.1002015-3-eugen.hristev@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221216143717.1002015-1-eugen.hristev@microchip.com>
References: <20221216143717.1002015-1-eugen.hristev@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_063742_944058_5A28BBE1 
X-CRM114-Status: UNSURE (   9.37  )
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

From: Luis Oliveira <Luis.Oliveira@synopsys.com>

Add device-tree bindings documentation for SNPS DesignWare MIPI D-PHY in
RX mode.

Signed-off-by: Luis Oliveira <luis.oliveira@synopsys.com>
---
 .../bindings/phy/snps,dw-dphy-rx.txt          | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt

diff --git a/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt b/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt
new file mode 100644
index 000000000000..ffb64fe5cbd1
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt
@@ -0,0 +1,29 @@
+Synopsys DesignWare MIPI Rx D-PHY block details
+
+Description
+-----------
+
+The Synopsys MIPI D-PHY controller supports MIPI-DPHY in receiver mode.
+Please refer to phy-bindings.txt for more information.
+
+Required properties:
+- compatible		: Shall be "snps,dw-dphy-rx".
+- #phy-cells		: Must be 1.
+- bus-width		: Size of the test interface data bus (8 bits->8 or
+			  12bits->12).
+- snps,dphy-frequency	: Frequency at which D-PHY should start, configurable.
+			  Check Synopsys databook. (-kHz)
+- reg			: Test interface register. This correspondes to the
+			  physical base address of the controller and size of
+			  the device memory mapped registers; Check Synopsys
+			  databook.
+
+Example:
+
+	mipi_dphy_rx1: dphy@d00003040 {
+		compatible = "snps,dw-dphy-rx";
+		#phy-cells = <1>;
+		bus-width = <12>;
+		snps,dphy-frequency = <300000>;
+		reg = <0xd0003040 0x20>;
+	};
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
