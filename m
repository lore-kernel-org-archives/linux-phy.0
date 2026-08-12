Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A58F0C5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZarfFqExKf8wNfHGAflNOH5MiG2mZKZQiA7xzVwEn4=; b=qTJPYRwbt+iz5F
	UKuKvylNLopz9BLrjCTq4v2MrzDhHksQhvuFyhqCdKsY+1MQRWZSEh4hes31rG0L0IUlDbVXlLMLj
	EwUBDqQvhweagTee1438PwCrPHEGck9HL0QmzDaDI2rJQM5tx+Evin0Jp64vPx6cSPpy8c+2ebxpf
	6HulfrGbYNbzVVt9GyrVxxW7+u8xEsLrD526V65Aspm6RZDdN8+6SRO7wX0YEMfcqrSJqyP7t6vKo
	glWnbnusZ4h1UV29TE0QEwdjltEypjhAdogygqhDhI7Doe8RGqk/1UIcYOCG0ZkTFNtJY69nYxmy7
	aR0kR9xpe+36q7D1f/kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5MO-0000000FlmL-1Nc0;
	Wed, 12 Aug 2026 09:34:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ME-0000000FleU-2Svu
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:34:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0775D600E2;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F488C2BCF7;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527284;
	bh=LSfYikDoqHEoxEu2HqS9POp3ebLZgDBY+1ET9FV+7jA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=SlO2V2DXA2WXDdzKd2Zmw2BlmlFZqk0P8voEk7AmA5CHvp1hUq4PtnTyDUMtq0PXr
	 oXfP993ZNSrjJ8PwjYhXtSajqBIvDw5DJOokgouCMLvkCeBkyuxEmMeuaiyMV2GSik
	 2nWKwZOje/YzuXdK8GRyLyyJzT14eOgj2wCtd4yU0ygbGH7dVshsqpcj/a1eHnijlW
	 /na8PIrWDCrgCZSr/OoRF8xamlKrxsVruz3DDfN1aZKFLrjuqq8rhBvIUx6C+XJFa8
	 NiaaE63HAaQwwlYltLMAzGF6qEtKdFczPL9f6z9k/uSWv+9MNWH4pI8prrjT8DXFZj
	 R27zH24ylN7Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 798FDC5B56A;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 12 Aug 2026 13:34:36 +0400
Subject: [PATCH v2 01/14] dt-bindings: phy: Document the Qualcomm IPQ5332
 UNIPHY USB Super-speed PHY
MIME-Version: 1.0
Message-Id: <20260812-ipq5018-usb3-v2-1-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786527282; l=3396;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=x/XHiKaOymN+lw7axxWZFamZVeggR0D96mkqLpOTeXo=;
 b=QaT7K2ge1/yTg8FOi/whyzpy6jxBvE41hSl6F+6pqHKy/8vz7btgew/2phtKJFFdV+Fzttmge
 L7fDr4dsVtyBWD7XfDRcIHaqb1t+k74biRnYt9B2vq1K+WQCqKTzmfM
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Praveenkumar I <quic_ipkumar@quicinc.com>

Document the Qualcomm USB3 22ull UNIPHY present in the IPQ5018 and
IPQ5332 SoCs.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 .../phy/qcom,ipq5332-uniphy-usb-ss-phy.yaml        | 111 +++++++++++++++++++++
 1 file changed, 111 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-usb-ss-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-usb-ss-phy.yaml
new file mode 100644
index 000000000000..cc9eccac51dd
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-usb-ss-phy.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,ipq5332-uniphy-usb-ss-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm UNIPHY USB Super-Speed 22ull PHY
+
+maintainers:
+  - Praveenkumar I <quic_ipkumar@quicinc.com>
+  - Varadarajan Narayanan <quic_varada@quicinc.com>
+
+description:
+  USB Super-Speed UNIPHY found in Qualcomm IPQ5018 & IPQ5332 SoCs.
+
+properties:
+  compatible:
+    enum:
+      - qcom,ipq5018-uniphy-usb-ss-phy
+      - qcom,ipq5332-uniphy-usb-ss-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 3
+
+  resets:
+    maxItems: 1
+
+  vdd-supply:
+    description:
+      Phandle to 5V regulator supply to PHY digital circuit.
+
+  qcom,phy-usb-mux-sel:
+    description: |
+      Mux selection for USB PHY. The USB3 and PCIe PHY pads are muxed and the
+      mux selection is done via a register in TCSR syscon.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle of TCSR syscon
+          - description: offset of PHY mux selection register
+
+  "#clock-cells":
+    const: 0
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - resets
+  - vdd-supply
+  - qcom,phy-usb-mux-sel
+  - "#clock-cells"
+  - "#phy-cells"
+
+additionalProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq5018-uniphy-usb-ss-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: USB3 PHY CFG AHB clock
+            - description: USB3 pipe clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq5332-uniphy-usb-ss-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Shared PCIe/USB3 PHY AHB clock
+            - description: USB3 PHY CFG AHB clock
+            - description: USB3 pipe clock
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
+
+    phy@4b0000 {
+        compatible = "qcom,ipq5332-uniphy-usb-ss-phy";
+        reg = <0x4b0000 0x800>;
+
+        clocks = <&gcc GCC_PCIE3X1_PHY_AHB_CLK>,
+                 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
+                 <&gcc GCC_USB0_PIPE_CLK>;
+        resets = <&gcc GCC_USB0_PHY_BCR>;
+
+        #clock-cells = <0>;
+        #phy-cells = <0>;
+
+        qcom,phy-usb-mux-sel = <&tcsr 0x10540>;
+
+        vdd-supply = <&regulator_fixed_5p0>;
+    };

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
