Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1AC9D374BC
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 16:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIlfV3ItUpfmAd8mmdb1BOp9brJWTuX6x2Edxf/2aF0=; b=s5cYJL44Ns6cna
	WidwSHE+OxWMo9K+kbRkGuzwql++Ez4WjXpgO11bTXgRUMohRMR88JaYuLrBRGWhPASv9uen80xNy
	1+AxGFB/TFrG9kpGXhtPs+eT/CCcxBHdCisv1q/1Y02OB2O/4lqUKTeQsrX7+qY4KGwiSyYoK5+kr
	lfnz3mvLNh4WNQWLsMAFSzXhNrmHM9xxwuR7L7tRZUr7JWckb2dcHRcKi9AASrXNdvBUZcP71LDPy
	jJDwW8Ye006Kr0akGgbPjg9ALQiqs4559m46dTFXIWVSj7JGUoBC0Dpi25BMQbcdFhfY3Ph/eAuhA
	yfKeckcJGBFTF/A0U+Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1TIc-0000000FTji-1Ux3;
	Thu, 17 Oct 2024 16:24:30 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1TIV-0000000FTgZ-33eg
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 16:24:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729182250; x=1729787050;
	i=markus.stockhausen@gmx.de;
	bh=rsEM6pkScqZXc/O/H2irSgUFn1YqF4g1ahj+Fr45UGk=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=DDCv7+c2RTw8al8joLfoBHXEQVO64Boml3H/5CSRdKVuYJ8J72rz5SnkAO5R4EjE
	 tkm9kiTblYlMV+nnSQtoQvCCKYOw98DZAYbz9lvzuSuxaNhaOAByyzF/FBb9M9gjp
	 Nnle8bzF/znS8GwdUX2DyBS++RZwNSIMUhLMMpjgqrsB2NJ5a6pr+J7FaLVql7poy
	 JlNz+6BB/OlYnYXdLbOrT9ln+CbbKPq2FdDNN7ccIYRs0qcJO28/eg+YzBfmopr4c
	 QmPN61CSeyiNOKzi/3eqL+kDH9IHppoEHD3kkAvmf91/e32Rc629nsQ7/R1H7Ruah
	 T3x2h+mN/TY/8bBaug==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MBm1U-1tDX2U3CGq-00C9aA; Thu, 17
 Oct 2024 18:24:10 +0200
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
Subject: [PATCH v5 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Date: Thu, 17 Oct 2024 12:23:59 -0400
Message-ID: <20241017162400.3881609-2-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ynSWfNF+bgGXXq5q/SucCt9nhqR25RtffNca/Yt+jhxbi7+UMlj
 UuJgBiXCZyKyJeaehEL/583rmLFWtwXbnJDVlxpdwBDzo9boLAlwci5/ymzQjOueEFkdnOA
 w4nggjS5y1CT867zlWxPByqS13f36G/s9td6ZImp/zbkcQ/JCIntnYTDWCUOkd4tDXbcOy6
 14CwsQJnM7n92iYZmMS1w==
UI-OutboundReport: notjunk:1;M01:P0:7BjoQXa/BMk=;na65O8nDDrqa/omJMiPItQxExXp
 dmUK3NwCCXC9pJgTneOsCzblIBn0sPxJqXUbK3E3YzvUI0DN1rftq/zgdsNQH+28Np9DXneqX
 WhENU7GJH76MDm+KfhJ0rkS7FbX3HWR1lWzivexG7qZAD9jmBbSfA8fpDZa4lW3V9vZXQ9UGi
 sWG+wTFfkvZUXzAOuZ5iKtvdvX2cR9pCVmUYAhj7gsCSc0OGPz0YeTKwnv9vhniIzlzsadlwB
 f/6bmjrgqJrDtyCyT8aEoNrxEbJ6QTYtGaTSu/08UKLXE4du0nvQs9y7Cb2/8HtpmF2alBcT6
 aji/a1hXvIn/xi6RCmOzckC7zy5P6vnclZEeY0cqVNKWNP8zWMVBnbBK4q8/J6IDowMfHflF9
 21tOg54pA2PqGt+14YvlStBNdTEQ5nBhTdUgCVQKIfo+WoMWKn2fZCbzebPgOb+ABXjBDNZd3
 nHg7zcCOCJsFHyEtel4PPUShgc8dT5eefWfGgaKBTcvGUjsBXKkr+iB3gX8gwtwAFQcPL36+S
 gOAz85eW++Gt2uIUZt9JpsblZdYgYL1zTAMm51fg+RXetUIMikRtpCuo28VtMZ3bs6So4Ca1j
 b6J7mBLc9uxdwBQtr4/XEW8ktvVwuOMY2M1KoWUonw78/nXB2jqB/pj31KLObf41Q8/YvnNuU
 Ni3JYinEw6ztt3nQxWtC+bwpzXhAV1kr7VAypHMfZdK2IFrYCqHfH8e2i3YSe9eZBGJVzbHhV
 pipx9npB7c/8ZVc0K29d1JLOQBv/2EAfE+kdK2nAHTh0Q0lydznJiH+4wdN0dO/3njtDpJjtA
 MTrBJAf9EjdYg9ycfw7x5azg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_092424_146599_C1502F30 
X-CRM114-Status: GOOD (  11.51  )
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

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
---

Changes in v5

 - drop nodename
 - drop items from compatible

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
---
 .../bindings/phy/realtek,rtl8380m-serdes.yaml | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
new file mode 100644
index 000000000000..13b11c011153
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
@@ -0,0 +1,59 @@
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
+  compatible:
+    enum:
+      - realtek,rtl8380m-serdes
+      - realtek,rtl8392m-serdes
+      - realtek,rtl9302b-serdes
+      - realtek,rtl9311-serdes
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
