Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0150CFA3746
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1oZA+K+PqV/t8pyZ+RO2CjMEBQ+Dt1icb/27x36FXI=; b=tDhz2sf2u1uX0h
	tT8zV9CCedHfYsF4ZxyUVwormZQrY81/l3JY9v5lPFCrFXDsq7o3fdIOHol7ZkxShMJUsErzRLuy1
	Mvnfo6f91AdEdT21df4DU6ppuikIWozzvTgx5CWVIxD7vHQkpQgJk8rM0ehlSSHh2WLVVTkecUKCx
	+/IRJJTU8U792U6Rua7INoeUabb5GbDW5xlqIcXeE4LmEQ91LB4cmnAutzudhoQSmD0jAhK706Oqd
	qUvqAFU+uk47b2E9jArwk9Zi5DEYmhREQPV9shTdsToyYBT5NQYo6Kj9S7TmHPz6H1HskVAhOvxEm
	2oReLFw0FehGnl9YDbkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPXm-00HOBx-8T; Fri, 28 Oct 2022 13:37:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPXa-00HO45-Ko
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:37:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A3E086287E;
	Fri, 28 Oct 2022 13:36:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5709AC4FF08;
	Fri, 28 Oct 2022 13:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964209;
	bh=mYIbphH61ygAshc0/AeTkkmyeoct/Novzft8mwHEBDU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ts0wMsSbijgMNoPwccyMviMwaXjukyT4SUPruUjedLnOqNlKOfzO0dumIADDEW7/n
	 OQWd8Xqv06KsZCYZauASvzKxxarhvcXWe4o1kSheaMVCZ56qVVjAtUXD539BTeZxrl
	 Za6bnsq2hWUWrIoQ66EY4t9GkDGkh38memcdWD8gZkoG5m/Zt+54jO4PbOQaaJ17hE
	 pMwaF7ewQWDyGj0lxFLHNbMr1wRdJTrjHpNOaxPIR1NW4EOQhyvgZiY3FQXUZce+Zu
	 gTO+QuI/X3o8Bsbjs4FhbXmjVUzr95ELVPJ95vfOHPZ4KB67zwO/8gGYVdV3GoQR4c
	 iUcnkg3JGxpsQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooPXH-0004rN-NM; Fri, 28 Oct 2022 15:36:35 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 11/16] dt-bindings: phy: qcom,qmp-pcie: add sc8280xp bindings
Date: Fri, 28 Oct 2022 15:35:58 +0200
Message-Id: <20221028133603.18470-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028133603.18470-1-johan+linaro@kernel.org>
References: <20221028133603.18470-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_063654_805353_0EA02649 
X-CRM114-Status: GOOD (  14.32  )
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

Add bindings for the PCIe QMP PHYs found on SC8280XP.

The PCIe2 and PCIe3 controllers and PHYs on SC8280XP can be used in
4-lane mode or as separate controllers and PHYs in 2-lane mode (e.g. as
PCIe2A and PCIe2B).

The configuration for a specific system can be read from a TCSR register.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 165 ++++++++++++++++++
 1 file changed, 165 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
new file mode 100644
index 000000000000..80aa8d2507fb
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -0,0 +1,165 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP PHY controller (PCIe, SC8280XP)
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  The QMP PHY controller supports physical layer functionality for a number of
+  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
+
+properties:
+  compatible:
+    enum:
+      - qcom,sc8280xp-qmp-gen3x1-pcie-phy
+      - qcom,sc8280xp-qmp-gen3x2-pcie-phy
+      - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+
+  reg:
+    minItems: 1
+    maxItems: 2
+
+  clocks:
+    maxItems: 6
+
+  clock-names:
+    items:
+      - const: aux
+      - const: cfg_ahb
+      - const: ref
+      - const: rchng
+      - const: pipe
+      - const: pipediv2
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: phy
+
+  vdda-phy-supply: true
+
+  vdda-pll-supply: true
+
+  qcom,4ln-config-sel:
+    description: PCIe 4-lane configuration
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle of TCSR syscon
+          - description: offset of PCIe 4-lane configuration register
+          - description: offset of configuration bit for this PHY
+
+  "#clock-cells":
+    const: 0
+
+  clock-output-names:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - power-domains
+  - resets
+  - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
+  - "#clock-cells"
+  - clock-output-names
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
+              - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+    then:
+      properties:
+        reg:
+          items:
+            - description: port a
+            - description: port b
+      required:
+        - qcom,4ln-config-sel
+    else:
+      properties:
+        reg:
+          maxItems: 1
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
+
+    pcie2b_phy: phy@1c18000 {
+      compatible = "qcom,sc8280xp-qmp-gen3x2-pcie-phy";
+      reg = <0x01c18000 0x2000>;
+
+      clocks = <&gcc GCC_PCIE_2B_AUX_CLK>,
+               <&gcc GCC_PCIE_2B_CFG_AHB_CLK>,
+               <&gcc GCC_PCIE_2A2B_CLKREF_CLK>,
+               <&gcc GCC_PCIE2B_PHY_RCHNG_CLK>,
+               <&gcc GCC_PCIE_2B_PIPE_CLK>,
+               <&gcc GCC_PCIE_2B_PIPEDIV2_CLK>;
+      clock-names = "aux", "cfg_ahb", "ref", "rchng",
+                    "pipe", "pipediv2";
+
+      power-domains = <&gcc PCIE_2B_GDSC>;
+
+      resets = <&gcc GCC_PCIE_2B_PHY_BCR>;
+      reset-names = "phy";
+
+      vdda-phy-supply = <&vreg_l6d>;
+      vdda-pll-supply = <&vreg_l4d>;
+
+      #clock-cells = <0>;
+      clock-output-names = "pcie_2b_pipe_clk";
+
+      #phy-cells = <0>;
+    };
+
+    pcie2a_phy: phy@1c24000 {
+      compatible = "qcom,sc8280xp-qmp-gen3x4-pcie-phy";
+      reg = <0x01c24000 0x2000>, <0x01c26000 0x2000>;
+
+      clocks = <&gcc GCC_PCIE_2A_AUX_CLK>,
+               <&gcc GCC_PCIE_2A_CFG_AHB_CLK>,
+               <&gcc GCC_PCIE_2A2B_CLKREF_CLK>,
+               <&gcc GCC_PCIE2A_PHY_RCHNG_CLK>,
+               <&gcc GCC_PCIE_2A_PIPE_CLK>,
+               <&gcc GCC_PCIE_2A_PIPEDIV2_CLK>;
+      clock-names = "aux", "cfg_ahb", "ref", "rchng",
+                    "pipe", "pipediv2";
+
+      power-domains = <&gcc PCIE_2A_GDSC>;
+
+      resets = <&gcc GCC_PCIE_2A_PHY_BCR>;
+      reset-names = "phy";
+
+      vdda-phy-supply = <&vreg_l6d>;
+      vdda-pll-supply = <&vreg_l4d>;
+
+      qcom,4ln-config-sel = <&tcsr 0xa044 0>;
+
+      #clock-cells = <0>;
+      clock-output-names = "pcie_2a_pipe_clk";
+
+      #phy-cells = <0>;
+    };
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
