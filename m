Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 564E5C4167D
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 14:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhKgrgTAKlffT6+Uxzur62oLTBexNxnCMuko41Kt2E0=; b=a/nZ5F6ukV2U1z
	Ig0JgAQjzwcqLUe2ca4/1BK+8S731HpvJWIUUSZXWNo7uv3Rb/0TOr/M2wAg3KUTVpgGlksbg3vNy
	HpGuWqZDjHGCQZwOy3lBwLO5WV3tcumtCuPV3ckx3sIjkB7UyWDspWOyTHM9zi8qN7WCmUBY/H9pW
	9irV9CxVD2qaJPt2c2eW/VdTWxqg27Gbho1a+7vm7aMxNNjGn4GblNFupryVgA92VHLN0nAAVzfz8
	3UqBJKlSbmZ0I8D6SzOwwGRVSCwmiDwWdPu8LzjaBsAaNg8NJToytkScuajS3wzqTsRRvxj+JkPyZ
	XsUdQbqv7P3QGGo4K3aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVu-00Czy4-Iq; Mon, 17 Oct 2022 14:54:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVp-00CzsY-Jg
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 14:54:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2D35A611B9;
	Mon, 17 Oct 2022 14:54:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3EECC4FEBF;
	Mon, 17 Oct 2022 14:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666018479;
	bh=rz8fkhT/28SK0LWbE4TDTsA6NbqUhkVH07HK1EaxE7A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=non9TE2QXq3J2BOLR9Yk0lakRaF+0R3WBGxDO+3xzDXKt6wb35i7sdY45FqJNzL43
	 7OT5AlDvSGQc0iMUdBRKz/QRQTNXNJVec7/GT/W2Veg3wLelrOpNWe+s4F80N2huIm
	 vs6TJp8OMo02nMALSb6Wd0ZdQtqHSnbPsmqzywBNdbAKWknEkZjiz2UKgqP5Mp3yHh
	 Ri/syqF6nofsF55uPwCFBTNPG8Z1Fese1AXa289ZyPgI4ACT1Tr21a+AEKLf+9661/
	 vk2Qrl2Ea1PjGf8t0eE1MYPnHMiZwy/8tfMwS4G0ny5n0jlnGnIbIv2ZLjDbDgrnVa
	 3gzgy+NmhV3wQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okRVd-0005mN-AS; Mon, 17 Oct 2022 16:54:29 +0200
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
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 10/15] dt-bindings: phy: qcom,qmp-pcie: add sc8280xp bindings
Date: Mon, 17 Oct 2022 16:53:23 +0200
Message-Id: <20221017145328.22090-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017145328.22090-1-johan+linaro@kernel.org>
References: <20221017145328.22090-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_075441_819825_D7378020 
X-CRM114-Status: GOOD (  14.33  )
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

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 163 ++++++++++++++++++
 1 file changed, 163 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
new file mode 100644
index 000000000000..82da95eaa9d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
@@ -0,0 +1,163 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,qmp-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP PHY controller (PCIe)
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  QMP PHY controller supports physical layer functionality for a number of
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
+    description: 4-lane configuration as TCSR syscon phandle, register offset
+                 and bit number
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      maxItems: 3
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
