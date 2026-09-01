Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5549C624D2
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 12:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/tbitOLOVlqTRTXIXkXLpajXxR+y3XpIT6b1opcZJc=; b=lcHwjLKzqrcyQT
	kav6AyotQMtBoggbkMh0R4pdnxGCnIXwrN+Dcu5hHkvLG5SWUIPzhsUkwqldS+uUt/+5dQ4pBckjQ
	kzRvI6yE7JBGiwz5tIO+D95RqYa2Oy6YHF4aaqC1kL7aURsZjrabgz66QtcX51Irtbv2uxP6Cn/BJ
	YGtG1n+fm9WyuLnnNmhUvtvTcVJ14WRVzRhNT4mrfwDN0Lr/hCbT6AG1kIrhEuWXNxsunLYlD1Er/
	+8gLAhd878MY8EOxz0O43qbeE8EYBxQs6lm3oEOemOZIcwjZnY+WEEu+yJD7uZb8cF6GAZ444KEyk
	ylyANobWt4LlqGBATfwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NmH-0000000C88G-2NZl;
	Tue, 01 Sep 2026 12:39:49 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NmF-0000000C86t-0ISo
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 12:39:48 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-49b9320423cso46871575e9.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 05:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788266385; x=1788871185; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=53RowTVrDzh07Xu8pdx1LUWteAHWJvlkzmcm0Nvqkwg=;
        b=E7xnu338YstUxd8EbZgvpJikN2L2YJvcBLF6HQLZpEGaj4SzW/qWhQU1eVgihul9+j
         QhGxZqGKkWRQWhiy3ElJGl8k/qQdzs1GaRPJB0bFIseLQkjP5zn0xO7CmLhUU0tprgIk
         z2G2lFnNgBojGX+JyZpQxRHPLQzKOaxIFj/kNam8pHO6EM1z3Nq/CU2Y44kCJiWkPglo
         4g/LLxLqUhLMFQsUZ1Ass7wPweFvk6J1eJiRqeCG3cxuKHlPdftcglECA40kfKzVe3Oo
         X5WNIq4HNzzTeUJr7Xwn0guZZx4g4hEcddgT1+CHKZUF8ol6YOMDkEvLz1xCINOzVlb0
         4FZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788266385; x=1788871185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=53RowTVrDzh07Xu8pdx1LUWteAHWJvlkzmcm0Nvqkwg=;
        b=MU0wjImwauRXRUwf6X/GfFWrbk6Jo1h9vUaxVN5x4QiUDPKnIUXNBdDlmj9wdIfor8
         6kP6lIzHQEzhjiYRux+sVrJpSFZuQUyxUxgy2Vu9VlF16HbXmD/0fQFCNLJZ8e5+xm7z
         KB5ti4lHAng0S+8iCc3a2XPbgMRMm7Dwtf40rEiBuiGSs06D8jGFO6Wo4qKKEpEh0edo
         ulpqe8CcBd1GPTxjRl2tvtl5Ci57tO0wf0Mf/N/QrmkHR5AAblh2hEal+gMAaHzex8yC
         VprHGJ9zLxHtSfRo4bT7kbfrosXxkfN/K8Y7S4i/BZo+vrVZHz9SItHR6R58tn3Ghhzx
         auTw==
X-Forwarded-Encrypted: i=1; AHgh+RoUSECGlAMXSVLqmLPuuJm6Z0hLeUR9SruP+NBroRTebdv1T/R6KHrCfKALToVYXFzuXocAwTq8bf8=@lists.infradead.org
X-Gm-Message-State: AFuF++lTmx1dzLf3CsdVbxgRQQMcdj2rEE1FYWdYDczqlnFHwzJk82tT
	ufvkEuzyZ/jrgXOnpqxUf3I1DZ0Ne9DKknrUgmY61YkgLsB4dsWFOr2Cq3HKwwR2
X-Gm-Gg: AR+sD10B5RJGE/+IqrYKCo5voFnyE+tDJIssa7k8XPrpA43sYxly6NOZ/v6XSM5l6ds
	rhO6S/uPfumWrEcwCYxxXz3++ihWJ2mz9yoevIxc4hB+zyKmj5RDu8OyR1Be8X35lAe+/9H3GsU
	Q9+/ylrw9Wbgk+Xt5rRhe4e05rfrYJowuGw0Xg6k9Hyctihm/P7SGRG0FF7+POZUw7xm1JPa97g
	YRmKwKqBGxrR6dA8TXpVv1iWE0z4khFv6qnxrwejO0TltzWAqE5GKnHK+tGtIWmwCl/Un+bDKYY
	uBite+rIEhICig7cJ7tVkKdR01L4sDY6ikBTF00nmScqU8cxnmfTZZ1wUs0xoPw8lYBZBEN4Bu4
	uIMDMd9dq+FfYdnDPu2Zrorrw13IW9qKgCEp6Qse+7MA6A9sYfx7/eoBuV7xgJcN31dOFn6wF+Q
	fhxEAvR1aixkY0Q38psiyhU70CWDn2OXPPGuY3AC3XffnNKaXP4eeR/6T+dvYynfx6pHa09sWU2
	5512Sj+at6A6+LKv3q1NhT5+3fB35sdc002+dYTLoZwG/fXgYOsYw==
X-Received: by 2002:a05:600c:8011:b0:496:bbce:fc with SMTP id 5b1f17b1804b1-49cdc5660bamr157788235e9.12.1788266385067;
        Tue, 01 Sep 2026 05:39:45 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-48442d3d2eesm4644130f8f.15.2026.09.01.05.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 05:39:44 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] dt-bindings: phy: airoha: Document support for AN7583 USB PHY
Date: Tue,  1 Sep 2026 14:39:31 +0200
Message-ID: <20260901123933.15388-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260901123933.15388-1-ansuelsmth@gmail.com>
References: <20260901123933.15388-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_053947_131999_274ADEAC 
X-CRM114-Status: GOOD (  18.46  )
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

Add documentation for Airoha AN7583 USB PHY that describe the USB PHY
for the USB controller.

Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
always supported. The USB 3.0 mode is optional and depends on the Serdes
mode currently configured on the system for the relevant USB port.

To correctly calibrate, the USB 2.0 port require correct value in
"airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
selecting one of the 4 monitor clock for calibration (internal clock not
exposed to the system) but each port have only one of the 4 actually
connected in HW hence the correct value needs to be specified in DT
based on board and the physical port. Normally it's monitor clock 1 for
USB1 and monitor clock 2 for USB2.

To correctly setup the Serdes mode attached to the USB 3.0 mode, a phys
property is required with the phandle pointing to the correct Serdes port
provided by the SCU node. Providing the phys property is optional if USB
3.0 is not used.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/phy/airoha,an7583-usb-phy.yaml   | 133 ++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
new file mode 100644
index 000000000000..f1a5d83e8968
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7583-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7583 SoC USB PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  The Airoha AN7583 SoC USB PHY describes the USB PHY for the USB controller..
+
+  Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
+  always supported. The USB 3.0 mode is optional and depends on the Serdes
+  mode currently configured on the system for the relevant USB port.
+
+  On Airoha AN7583 there is an unified PHY implementation where a single
+  PHY provide support for both the 2 USB 2.0 port and
+  optionally one 3.0 USB.
+
+properties:
+  compatible:
+    const: airoha,an7583-usb-phy
+
+  reg:
+    items:
+      - description: phy register
+      - description: ana register
+      - description: pma register
+      - description: dig register
+
+  reg-names:
+    items:
+      - const: phy
+      - const: ana
+      - const: pma
+      - const: dig
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  usb3-phy:
+    type: object
+
+    properties:
+      phys:
+        items:
+          - description: phandle to Serdes PHY
+
+      '#phy-cells':
+        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+          as defined in dt-bindings/phy/phy.h.
+        const: 1
+
+    required:
+      - phys
+      - '#phy-cells'
+
+    additionalProperties: false
+
+patternProperties:
+  '^usb2-phy@[0-9a-f]+$':
+    type: object
+
+    properties:
+      reg:
+        enum: [0x0, 0x1000]
+
+      airoha,usb2-monitor-clk-sel:
+        description: Describe what oscillator across the available 4
+          should be selected for USB 2.0 Slew Rate calibration.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2, 3]
+
+      '#phy-cells':
+        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+          as defined in dt-bindings/phy/phy.h.
+        const: 1
+
+    required:
+      - reg
+      - airoha,usb2-monitor-clk-sel
+      - '#phy-cells'
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - '#address-cells'
+  - '#size-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    phy@1fac0000 {
+        compatible = "airoha,an7583-usb-phy";
+        reg = <0x1fac0000 0x1200>,
+              <0x1fa6f000 0x100>,
+              <0x1fa6e000 0x400>,
+              <0x1fa6a000 0x900>;
+        reg-names = "phy", "ana", "pma", "dig";
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        usb2-phy@0 {
+            reg = <0x0>;
+            airoha,usb2-monitor-clk-sel = <0>;
+
+            #phy-cells = <1>;
+        };
+
+        usb2-phy@1000 {
+            reg = <0x1000>;
+            airoha,usb2-monitor-clk-sel = <1>;
+
+            #phy-cells = <1>;
+        };
+
+        usb3-phy {
+            phys = <&serdes_phy>;
+
+            #phy-cells = <1>;
+        };
+    };
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
