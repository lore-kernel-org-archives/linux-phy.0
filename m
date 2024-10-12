Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64A0FCF2566
	for <linux-phy@archiver.kernel.org>; Sat, 12 Oct 2024 13:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlEouhifV2PHNL6DCehCYFFunOSMvLcTz1jj5u8ZmJE=; b=kx+C6+0nTsiYSz
	SlAZEPMRVBTsaoz4ExAoqoqY6HR10gxIKT+5jstXoLDawPlDVv2mjvgaUGg/toqN4AyX01WUSKk52
	na6Bn8jW/3qKCucL5Ed8zV2O4//wr/tobnrqKzrywxkxWuCZEn1H78IXXYHqKgBhs+0JfNcp3mEdb
	8UeBvvqW40TTTu7MOFn/SNlaC0+5AZojLWqyqOq+FRkNTFJ1zIICY1dFcpMtFjv0VowT17mNlZmZe
	ONo5ql5y7XNdWSlAtTD7VIZXUyFGFsMu9diPvCK/hsU3Fi6ByYmLAhgq/6xbl/o/4Eo/mw6pI+xwE
	OcCVhZxViV9MfdbDJ5hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szcUT-00000001I8Y-0VXa;
	Sat, 12 Oct 2024 13:49:05 +0000
Received: from mout.gmx.net ([212.227.15.18])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szcUQ-00000001I7j-1b7a
	for linux-phy@lists.infradead.org;
	Sat, 12 Oct 2024 13:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728740918; x=1729345718;
	i=markus.stockhausen@gmx.de;
	bh=GYj5Y8dYhOKGETE0dKfWIyajVQoJN4CpNoHfjXbDEw0=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=eSZg2bNWfIOZ/GwPF5WKUmEib+CiafTTHmabaYMmpS9aIXBTt/gMabrwcYgvUFHc
	 vFpllSAbKmzIK2+ZI6JDMzt4tUYGS22kAin5B+RfTxNLJYZCVtU4S/SmiyhYvRN2e
	 i+5rOtZkumtxrH1XyaxFykUm5fNCJmpFBy2q+qFmqqqkU4zg+UofeXYNya1xvdOdf
	 e0OXtd5ZpKxCeLomQKoEWJ7CKB8mlU1gmX98uylbHo5C7W1BPWDUDTd1fBglHECYq
	 yaZl1mQTDvgWv9C6/u9lRalS7FXL5fvoekUvM5tBBKQlmjzL51XMscSaJDQmkuv9f
	 iOxmI1Q2UWLhoAMcbA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MJVDW-1tEwRi2yUa-00JZeS; Sat, 12
 Oct 2024 15:48:38 +0200
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
Subject: [PATCH v3 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Date: Sat, 12 Oct 2024 09:48:33 -0400
Message-ID: <20241012134834.1306992-2-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241012134834.1306992-1-markus.stockhausen@gmx.de>
References: <20241012134834.1306992-1-markus.stockhausen@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:xPlqO6n/Cw0yXYnx4nmw5uYX2LUN0f8/ahCnFjTfIsppaB24i1h
 o5ilD3MEXm2yBtsXgBfSwdWEv9+bkv9gekGBtKV9ZzYEf2Ne9wUWzdVetxKH4K3v5nPq3lf
 SoxGl53rtjkweVRzuxWSLOYYXeGZYE41giDd6I5sboIjyO65zFsmcHK7ts+dO7NeWcswPmB
 dm5rxXEfZzceD8olLzK5w==
UI-OutboundReport: notjunk:1;M01:P0:vw5mg7WeZQw=;e9lhV4cdZ7dGzOthZEypc9Rjbpx
 ZzE2ubHcng7Qi6MiG33eU19D+wqkkHELvUEJi2q1Ob4WMXN57H3+yCzV2GXefRBPh6MFfmjQI
 oBanb5Wt/dta3cTfMFjYo+2VJHlgF9NIpCWsoqHCv/MFAwDODLzTApqo99hYjYItrExm+7AjA
 LTh699sVdNp/o2fFiB7Dxzv8uWNCCpH/L7HpyBlRMHOfZoMpFgUsW1LwFFBOPMtHRQkwaB8mR
 lwqXpsEo+jNIYj+U8QNINRA329zzTUUPorrxZDje8+YsGx9/44+uSOV8BvRY0T4ckIRoiUzJY
 tQwl99xRfcuF2VPzpmFBgHL551O8VyRa7MnYKc4OdhTI5CPw5zn3yeeu2EAVskohtU8kGJc7Z
 J7YgosHoBeRBasEywSSQU6CjkOpCWJiPGZhftOl3W16dqbM/8Pfyg5SCM2IxguNNo2fayUJIJ
 q1ZGa96y/nA2I92MxJALRa23T+dVjpLQuaK2bUQOHutf/w+mkc7wX9EfGSoe6KfL/ae7R2nFG
 nLG4xouS9yzeJ3UjNC7JmxRc7d3qhoE/M9LL9kAxxedYDu8tf04Wl8hTpOtZL21F++vKM7SK/
 pplJpMPAHVl/tyu59uCDwmI/v/nx+ufHsXRdPZ6HgzqWUbs5ZzIoq7Aq4k7NDWXbMZTPeJpgH
 azu7JlH2alV6EQ60wzaRR8rEzkebgckj3mojGvBbaCOBFzBZZ0W2SjI1EgHBZ2KRX4HfALU3a
 At5mKperEWp/ItH1tmQmfeGocB10h60UlMvQwFiCEg9QQl990wuSHMydYyzQHPSLJFoy9jFxN
 /0LSB5He8DrF/uguurlv0UIw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_064902_730658_AF38BEDD 
X-CRM114-Status: GOOD (  12.13  )
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
 .../bindings/phy/realtek,rtl8380m-serdes.yaml | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
new file mode 100644
index 000000000000..c1deef8ec63c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
@@ -0,0 +1,67 @@
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
+    items:
+      description:
+        The primary register memory location. On RTL83xx devices this is the
+        address to the I/O register range, on RTL93xx devices this is the
+        address of the MDIO style command/data registers.
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
+      An alternative name of the SerDes firmware image file located in the
+      firmware search path. Set to "" to disable firmware loading.
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
+    serdes: phy@1b00e780 {
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
