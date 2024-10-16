Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E403D2069A
	for <linux-phy@archiver.kernel.org>; Wed, 16 Oct 2024 05:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37eNMvc0mrPI9L4eorJJkmsWRgpneN2eWKf+6DDk6oA=; b=KylBj2DEYmCaJg
	35AuN9PhWwNzugPdeT0owtITmwNH4jzARwXBErdMy8jhAGeFF8fAGm/lGyfmI7OQd4r/vwUEX4dHt
	wWsn2I3LHieHxLQO18UsrdMOdq5+cSL0Fx9QX9CBtlcTzpXjHV6+IUqbyjNQFicwbOjjMmGTGEJyF
	FM2wOlZ+99gx8rGSHrAdsiSWkYOi9AImTJ1siplXHXUDUZu8V/KbYcmLTnZRfeTjrtnTgZA9M27Et
	212RfL+TeB/GfI0z5Yr/Vm/rtds7firQEcn2bPc7JKwsoemxRDwnVQlHOV0RHT+dMvy7448oxBNNL
	oGVP1WHh/X48E8qBJcPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0wuJ-0000000Ac3k-1Uw1;
	Wed, 16 Oct 2024 05:49:15 +0000
Received: from mout.gmx.net ([212.227.15.19])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0wuG-0000000Ac1T-0PD2
	for linux-phy@lists.infradead.org;
	Wed, 16 Oct 2024 05:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729057726; x=1729662526;
	i=markus.stockhausen@gmx.de;
	bh=qthnaC1xlaCtP5TW+VejwMu3QW+t/nNgz4ogd/9IRFs=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=mKRke4i9PJ0GhfCC6CeKwRuV//1SK3El+6/JlOv9eGDM18/Z8rAKvjoqvcOv2KF4
	 jED3RCajXNtApX1sZvHE/ytOZz9b13s450e2DbWRb5uA0BZoBpwQmBWJTNcIwo5uA
	 UpCb1XYmJfKvD0w8J+FFLWBQInME+nR7wgAu8eJ9UA282PeFlYFKF/zoiCZy4LRRm
	 QK1LIdttx6qWkABwQiphmSp9OImVNJac4W7PXFvD/oo67XRG5RQSfY9/WvN5PC/gF
	 +R+fmtd0RtH/+bCN7/8Ue6tpFybSEmbqY+YNFpWOu0i1ie35jLoSYXmk3KNLku72U
	 0fOqxEFsmgt0Wj5yMg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MnaoZ-1thkIF2WPd-00bWuv; Wed, 16
 Oct 2024 07:48:46 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v4 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Date: Wed, 16 Oct 2024 01:48:41 -0400
Message-ID: <20241016054842.3435609-2-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241016054842.3435609-1-markus.stockhausen@gmx.de>
References: <20241016054842.3435609-1-markus.stockhausen@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:2hiNAriYrzpr/L4Tnrwtq2AxQxprpW4k6//bYn0vmeiWZ6kj5VH
 ws8JGtOX+ONRrKhKr9DUOvGwd/ngYrC1J+ySESU9uGBRcH+8WgbZ6BNA/x+5CrCictE1tp0
 Wq5vAtD6vlLgzkeUU4QcmLbszYlLazKmZDyOWgyjlrHzu4XC/M8NHYqwKHwcgMtGfuFvVS4
 arZyw5jQsgCLIDijbNLpg==
UI-OutboundReport: notjunk:1;M01:P0:rQIo/1Wvy4o=;rIjP+sS5ukg3i2kl5GBuuhO2r7q
 Loo7rA0YeD/iCNckyU5rMwHoVi8tOUdbuKXD5C/u3y7GbMfcw5fZ+2yYNTVB0G+vZjwhrqJw2
 HUREMQQxtuyl4hr4iM9JGiEdWu4uBdnmZ9t05tIIyr8QCrKwxNo2dERPlr80S/ZAYvpsftXW1
 w8nzexjU2UTOcWebdaruj22i4AKDYoqCQY0wmCuUUGqE+7vu0OYzaUhateknYLNFnjLmQtU7Z
 yeJVO4Sn70wbAr7sMjci0ENNrOZY52S1PtOWLFfaI/WEVKHM4IGV4LmEuleVJzLPFpdPSp4p/
 J1Sbeplawg4QsI3i8GYDRqTOOYhlHXmBYOlajgtYhIJlo5wuQMtzAfvyrdKVWF5C9/0/X0nak
 3odfNPnqYTg5wpvWi1GJWHLJeoiViBMTAw+gCoBL51Gcm79BwAleUCSX3bxl4+kmCW4Zrclkj
 1vUnJlKw3IcGDAta4aw5L2S3aVu2u4gPlQeCD2quNcTnN6Sm+EwnV/MkuogKZz80a+O+nGmEz
 2hbyG5jYqL17xZbgaU0JOTMdTqyaLrfU8fDUtNfD/fPbXqm4UhGvEwAOobwj7udAImH8JrJXv
 7Vr+D2Kejroe2UEz3FUKH88NL59izkCsffz9pKTIqHLINIsub1Nh2/2nM+YsYMaotA2AltCYV
 9SYOaQM09UE24SLiF/xmJzHciUez58a2hVxCQ9Iu5IRJLubJlt9g5BvbieDeLrllygqZDw0Tv
 pTdIMQZsBijXZ1OEDsWDY4yCccPg4x1JHLRv+ogNwE8XqCQYBihOdt8A6hCg+BC+PzTD7+WZa
 XAy1jXHlmCO/cHe+qa8cpMyg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_224912_445207_18D2970E 
X-CRM114-Status: GOOD (  11.43  )
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
MIPS based network Switch SoCs with up to 52 ports divided into four
different model lines.

Changes in v4

 - fixed addresses in example
 - missing firmware-name denotes "skip firmware" instead empty string
 - fixed reg porperty

Changes in v3

 - renamed to realtek,rtl8380m-serdes.yaml
 - removed parameter controlled-ports
 - verified with make dt_binding_check
 - recipient list according to get_maintainers

Changes in v2:

 - new subject
 - removed patch command sequences
 - renamed parameter controlled-ports to realtek,controlled-ports

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
---
 .../bindings/phy/realtek,rtl8380m-serdes.yaml | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
new file mode 100644
index 000000000000..8ccb3a34b221
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/realtek,rtl8380m-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek Otto SerDes controller
+
+maintainers:
+  - Markus Stockhausen <markus.stockhausen@gmx.de>
+
+description:
+  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x
+  and RTL931x series have multiple SerDes built in. They are linked to single,
+  quad or octa PHYs like the RTL8218B, RTL8218D or RTL8214FC and are one of
+  the integral part of the up-to-52-port switch architecture. Although these
+  SerDes controllers have common basics they are designed differently in the
+  SoC families.
+
+properties:
+  $nodename:
+    pattern: "^phy@[0-9a-f]+$"
+
+  compatible:
+    items:
+      - enum:
+          - realtek,rtl8380m-serdes
+          - realtek,rtl8392m-serdes
+          - realtek,rtl9302b-serdes
+          - realtek,rtl9311-serdes
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 4
+    description:
+      The first number defines the SerDes to use. The second number a linked
+      SerDes. E.g. if a octa 1G PHY is attached to two QSGMII SerDes. The third
+      number is the first switch port this SerDes is working for, the fourth
+      number is the last switch port the SerDes is working for.
+
+  firmware-name:
+    maxItems: 1
+    description:
+      If present, name (or relative path) of the file within the firmware
+      search path containing the firmware image to patch the SerDes.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    serdes: phy@1b0003b0 {
+      compatible = "realtek,rtl9302b-serdes";
+      reg = <0x1b0003b0 0x8>;
+      firmware-name = "zyxel-xgs1210-12-serdes.fw";
+      #phy-cells = <4>;
+    };
--
2.46.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
