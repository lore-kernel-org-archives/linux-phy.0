Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A2FCFB44C
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 16:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/augY+49kH7IjBhv8jGBrr51H27XXpQtENc6DZImEkM=; b=BtwWwWbMakYqJp
	wmdv1QkVWhc2mn5T1bU8UoB/WbDpgynxPmUz1IK8iBWpzDDD1LsAZcinJo0e7qUj6czRGvbZqPs6K
	soj7SkkhI2vXUVIzdljmKBgK2VyOtI+UjDmRb5Shz6Wmnyh2y3P1A1Q7zqqVhZYmgvRMjejXMoG62
	kwYzTTgEGG4Nayhy/YyqxSQ7aYppuEPR7W7+4oYxfvWxbyVNLOBPDV3cwkT+delnyN1y+i3e0wnXO
	lyeBLwTKtUsHMPVpQVuRr7DN9zk9vm73qP23BG9mErwaerLdfENcQBR3QJ0dHs1d4iXqewF0wQZGq
	q3I4Dz7ORDIcuen0rkyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxqiv-00000003BK4-171b;
	Mon, 07 Oct 2024 16:36:41 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxqis-00000003BIg-08rw
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 16:36:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728318987; x=1728923787;
	i=markus.stockhausen@gmx.de;
	bh=eI7B3H1kM9l/F0e/aAoAvcsmb01pTlz5gkdZxevrjnA=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=jTfYNm2dbn5eteafDYTedEwTDv4djBkgFTzpPJJ6dlcgduerYYEmFsMZHBMJn+t/
	 2PAhUpp/SDI1EnKSnT9s8pCptdfOULvZLa/TsYTj/vurvNpqh1IoPBNosZ5N9NYgo
	 HmmMGbF+6muZ81XCWMbTmD+O8iyg4oXJg+UjKG79mDc9IeR47b3YVjYU3apKeK2Co
	 tYwZgBjDm0dnwvFdwfTDC5A8WnZcp3dnU+4SdbxG/pT8CfZYRZtDGWVeNmWrTy8kj
	 Vmk5WFXYbgW5fJVXj4zf0Nhxm+Pk8EJHINI/dERWgNsNKrdxInBaOb5iTJRkWaS0Y
	 SzaTAa/KzNMNvzxa9g==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.45]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N6KUd-1u4ZTW1C3N-012iC3; Mon, 07
 Oct 2024 18:36:27 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: linux-phy@lists.infradead.org,
	chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org,
	krzk@kernel.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
Date: Mon,  7 Oct 2024 12:36:21 -0400
Message-ID: <20241007163623.3274510-2-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:b8ai1Secb/R+8ttxjYNmhJeAGRwY2RN4Wyd3/RQkxRheIhEJZgb
 iWgqEUh5QPPw6NpaCMIsBHl+A/Nmcv2zJvemOIN4//NI8U7mhH+2Y6ifki/cv5/dIs5xiFs
 t1ef9/RIbZIA4mtSzhMdtLm2HvjqK6+QXBVp/QfbDMWh2R4vRbIPDzGlLnXaqz4HmK8G6w0
 tDpWEFtECmm1Ctyy8heJQ==
UI-OutboundReport: notjunk:1;M01:P0:UrLD4xwrL5o=;h0REF7bu43I1gSKPXrEpORf/i3m
 5CaLPjCtz3E3Dz9Y9pA9qrx0zW8pUawDqdh6EMgA7SPU4vsA3x9Z74mg1/1wnUmGOhRowxH4/
 DefnUpjVxuK5442o0nZ+/dqzK5EqS874OfpM7Uff0098GmqCZJBw4eEv3kScOfgQIANrBMOTX
 xXJX0o4PJb0CoUdo1KKWbGBmO6cz4YdoS0sjI5NRzo9/P48eZTu7Z56m6ol4p7SooYX5NOG7q
 i32Y0edhcW2PVGGr8QjPhjm115GdUZ6VHeRtOrI6IrkbRwnLYaQ+4CN9q1sqCNrZwyuMk+gVL
 9CTSUSVmkat9KiAFsrITJ1BNddE1cR04dGMjx62/+gBFWp2rTeXjCpMuHR6cXc9bcIPNplI4u
 SBhIYeV+aafhUKVd0oZWmn6cjMERkgiQC4CkRfgLeTnVk1NfvMm2hsxlnhDsBBF/PcnWbcI94
 qf90X/z/PLro4e7CzAVbrps5P2VFz2zi58n5dvI955wZXIDcNeD6a/1jxxwz0jF0e3LZV5IMn
 V8bwgTTmLXXtdjjW/hRpE5MoI5Hr2rmuJWiHP9hKmFcHh6bBpZAfwbsvCGQNYQ8Y35IO0meII
 1qX35El4jXyYKs6EfZW+EI8TfdCTdmB5Se/A+Rt0Ayxn4VASqDJ+Mg2LDrsBDsxin4Dn9Ky+3
 BaTOohbqW2SUCIXs+yhVt0c6/CGspiivQivHYwrUgG3uWkk/aR1taEFQPGA8Nbay85r6sfCeG
 0EnrHzMSUHsP8EgO9mMhLwel3qxG1OULnLxunV7lr0EjEzkxIbzawtzOS7rB4WuI3FUyyX4fq
 VWnwlZ6OgASWy73cPYVF2yMg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_093638_390691_6A36119E 
X-CRM114-Status: GOOD (  15.40  )
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

Add bindings for the SerDes of the Realtek Otto platform. These are
network Switch SoCs with up to 52 ports divided into four different
model lines.

Changes in v2:
- new subject
- removed patch command sequences
- renamed parameter controlled-ports to realtek,controlled-ports

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
---
 .../bindings/phy/realtek,otto-serdes.yaml     | 95 +++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
new file mode 100644
index 000000000000..a72ac206b35f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/realtek,otto-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek Otto SerDes controller
+
+maintainers:
+  - Markus Stockhausen <markus.stockhausen@gmx.de>
+
+description:
+  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x and RTL931x series
+  have multiple SerDes built in. They are linked to single, quad or octa PHYs like the RTL8218B,
+  RTL8218D or RTL8214FC and are one of the integral part of the up-to-52-port switch architecture.
+
+  Although these SerDes controllers have common basics they behave differently on the SoC families
+  and rely on heavy register magic. To keep the driver clean it can load patch sequences from
+  devictree and execute them during the controller actions like phy_init(), ...
+
+  The driver exposes the SerDes registers different from the hardware but instead gives a
+  consistent view and programming interface. So the RTL838x series has 6 ports and 4 pages, the
+  RTL839x has 14 ports and 12 pages, the RTL930x has 12 ports and 64 pages and the RTL931x has
+  14 ports and 192 pages.
+
+properties:
+  $nodename:
+    pattern: "^serdes@[0-9a-f]+$"
+
+  compatible:
+    items:
+      - enum:
+          - realtek,rtl8380-serdes
+          - realtek,rtl8390-serdes
+          - realtek,rtl9300-serdes
+          - realtek,rtl9310-serdes
+
+  reg:
+    items:
+      description:
+        The primary SerDes paged register memory location. Other SerDes control and management
+        registers are distributed all over the I/O memory space and are identified by the driver.
+
+  "#phy-cells":
+    const: 4
+    description:
+      The first number defines the SerDes to use. The second number a linked SerDes. E.g. if a octa
+      1G PHY is attached to two QSGMII SerDes. The third number is the first switch port this
+      SerDes is working for, the fourth number is the last switch port the SerDes is working for.
+
+  realtek,controlled-ports:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      A bit mask defining the ports that are actively controlled by the driver. In case a bit is
+      not set the driver will only process read operations on the SerDes. This is just in case the
+      SerDes has been setup by U-Boot correctly and the driver malfunctions. If not set the driver
+      will control all SerDes.
+
+reguired:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties:
+  false
+
+examples:
+  - |
+    serdes: serdes@1b00e780 {
+      compatible = "realtek,rtl8380-serdes", "realtek,otto-serdes";
+      reg = <0x1b00e780 0x1200>;
+      controlled-ports = <0x003f>;
+      #phy-cells = <4>;
+    };
+  - |
+    serdes: serdes@1b00a000 {
+      compatible = "realtek,rtl8390-serdes", "realtek,otto-serdes";
+      reg = <0x1b00a000 0x1c00>;
+      controlled-ports = <0x3fff>;
+      #phy-cells = <4>;
+    };
+  - |
+    serdes: serdes@1b0003b0 {
+      compatible = "realtek,rtl9300-serdes", "realtek,otto-serdes";
+      reg = <0x1b0003b0 0x8>;
+      controlled-ports = <0x0fff>;
+      #phy-cells = <4>;
+    };
+  - |
+    serdes: serdes@1b005638 {
+      compatible = "realtek,rtl9310-serdes", "realtek,otto-serdes";
+      reg = <0x1b005638 0x8>;
+      controlled-ports = <0x3fff>;
+      #phy-cells = <4>;
+    };
--
2.46.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
