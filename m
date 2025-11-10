Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33099CCFA13
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 11:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeC88x/egZ/J7nJH4UgGhSjatymlSVFHcEFVwTA3h18=; b=beDVhcNoDJ/ITy
	bjyVnUvlZNhWZlsLc+zT05MGDiv7k52RakQQSQ/b9sK2r1nC8JxjChfkWPtxttV2pWsAX2YXe6sxB
	LYVfKkQ3HPiRrBqIhZ6YObYX1HV4MLugd3Gxk1juw1XohFiWiC9FdW+pNWdM7oikkaDV0bUzHyo/h
	LI6qZFx/YeMCNnl/9DBhIUZjjK2zy2567uFUqzw7pPJm1k+5ay7pGuMbFsZKldHa4kZT3HGtNFXcO
	H3jIpOwYJ8gVOMPlBkyoG4QkNnXDH4DGdyWduzjz0f+Hsj4MEFqeYg0sNTlgOTvYV1mVuxvELiOYg
	Kvs/8JxCOBRFNbVZ2xEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIPkU-00000005GVe-2qTU;
	Mon, 10 Nov 2025 11:07:51 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIPkS-00000005GUh-1RdW
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 11:07:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1762772867; x=1794308867;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SKw8CC1n2UF3Pi49EJY3Kpovsl0gwIppiQVUNgYN7ms=;
  b=2pOmaCqc2PRsgnaxDJIQFSLiFCtItVuKtSUcsMISOWuorcpj4GNhMG/+
   WW+XfpfkPBgYx1af7Igb7LrDFw2UHvDFWqIPZysLPgL+V7CxRbeE/FB/E
   4FX4rj6S6bFt29DAm5UPo+4hF1rAYpCucCRJyQVKsLmIHpVNRKsKq8hlT
   E9naWz0SEL5Qvz4Y4oZDWGBLtfWoSOyBeN3i3BxVd7jd8iPxU77HX4clW
   WVxOSQj3Mxu9uPg6AsN4aIw+NYABc2+CzZDYx9es73BaAyJX1FuamJMzL
   xCN8kdvamyYZ0OCiL0v/Lx+dOD46avmZGqKk3W/yd+ripvI0BLnv4H7AY
   w==;
X-CSE-ConnectionGUID: 8SH01HuiQpObZsvMkVgz3A==
X-CSE-MsgGUID: 46V5nKipS9ywXMWXczz15w==
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; 
   d="scan'208";a="55314297"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Nov 2025 04:07:45 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 10 Nov 2025 04:07:28 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 10 Nov 2025 04:07:26 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH 2/2] dt-bindings: phy: lan966x: Add optional microchip,sx-tx/rx-inverted
Date: Mon, 10 Nov 2025 12:05:36 +0100
Message-ID: <20251110110536.2596490-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_030748_556460_C8773117 
X-CRM114-Status: UNSURE (   8.63  )
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

This allows to invert the N and P signals of the RX and TX Serdes
signals. This option allows the board designer to trace their signals
easier on the boards.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 .../phy/microchip,lan966x-serdes.yaml         | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
index 6e914fbbac567..21b19e06a75aa 100644
--- a/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
+++ b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
@@ -41,6 +41,30 @@ properties:
       - The macro to be used. The macros are defined in
         dt-bindings/phy/phy-lan966x-serdes.
 
+  microchip,s0-tx-inverted:
+    type: boolean
+    description: Invert the TX N and P signals for Serdes 0
+
+  microchip,s1-tx-inverted:
+    type: boolean
+    description: Invert the TX N and P signals for Serdes 1
+
+  microchip,s2-tx-inverted:
+    type: boolean
+    description: Invert the TX N and P signals for Serdes 2
+
+  microchip,s0-rx-inverted:
+    type: boolean
+    description: Invert the RX N and P signals for Serdes 0
+
+  microchip,s1-rx-inverted:
+    type: boolean
+    description: Invert the RX N and P signals for Serdes 1
+
+  microchip,s2-rx-inverted:
+    type: boolean
+    description: Invert the RX N and P signals for Serdes 2
+
 required:
   - compatible
   - reg
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
