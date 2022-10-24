Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5100CFA3748
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 09:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y89rMHygShbRHhuAqrBNlLV8kv8jqhLrHXPe4k7S7ls=; b=CZl58cgxPOYbCx
	2TNVBsInvK27QA5PMSKrzCaNSIsnFu+8T7tAf/X8W2/TstGGZewJEeUV+S5BWaERaIric0k8VnMfc
	qu/sTHU1yXrHyHwv8l3bIYpPANxWAvmoIMTJbehHvqknUxautc8dW+pMoD40lPvTuJ1zAQx6ZvQ/n
	/h4srFj4MQBwHtFQUHc5nmvG7/BR+g9tvfbdKgSYNvArdAi7ZKZcoCuWvPugpTFFJJXxd8gHnME2T
	PdHXEDUbQuNX9qCs18mSRQh3j/ka+7ruvd5+nfKOy4TS6Mbr0xlIG9NET13eEnhHQ6t8EoEye97C3
	I4YRhB57GjQ1BbGDrlHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL7-000Gi4-Mx; Mon, 24 Oct 2022 09:01:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL3-000Gdj-5x
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 09:01:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6342B6109E;
	Mon, 24 Oct 2022 09:01:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1145EC4FEBE;
	Mon, 24 Oct 2022 09:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666602098;
	bh=+WkGHWoLZtDbhsbGRmzXKHjD/rB4ftzUCrvrsjeND8Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JEzrhd5+5POIVX4OipjaIv2tUjNV+1BnXX31ZbFe+6VVJa0QvKcDsPkGPMHXTt9kG
	 B9DmbrTIowiNObhzhPI1E2RcuXzYyzoa1j+hJ4GBDj0i3NFwgKi0qsmPgyvFOR5dyB
	 l94LVPpYUu0WFlSkLMjrKKSClrG9YWAfgDAB5RX9zTt7YDxFU1o06bwY1Z+vPW+SjX
	 Q5K4tJ/Wwcz/+6QYp0qKym6oKBFNEKy/vXEnOBc+hzIAuvbARCVhFV2OXIvbXuW/nh
	 fYx+XwYf+aLevQU/fKpn+PR++WsVuvh4CNJYcZj/67RhAdUTk/snWmfE39kfWiX8bY
	 50kIj+CvzTkaQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omtKj-00056g-Mj; Mon, 24 Oct 2022 11:01:21 +0200
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
Subject: [PATCH 08/10] dt-bindings: phy: qcom,qmp-ufs: fix sc8280xp binding
Date: Mon, 24 Oct 2022 11:00:39 +0200
Message-Id: <20221024090041.19574-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024090041.19574-1-johan+linaro@kernel.org>
References: <20221024090041.19574-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_020141_333109_6CA399CC 
X-CRM114-Status: GOOD (  17.84  )
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

The current QMP UFS PHY bindings are based on the original MSM8996 PCIe
PHY binding which provided multiple PHYs per IP block and these in turn
were described by child nodes.

The QMP UFS PHY block only provide a single PHY and the remnant child
node does not really reflect the hardware.

The original MSM8996 binding also ended up describing the individual
register blocks as belonging to either the wrapper node or the PHY child
nodes.

This is an unnecessary level of detail which has lead to problems when
later IP blocks using different register layouts have been forced to fit
the original mould rather than updating the binding. The bindings are
arguable also incomplete as they only the describe register blocks used
by the current Linux drivers.

Add a new binding for the UFS QMP PHYs found on SC8280XP which further
bindings can be based on.

Note that the current binding is simply removed instead of being
deprecated as it was only recently merged and support for SC8280XP is
still under development.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         | 10 +--
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 83 +++++++++++++++++++
 2 files changed, 87 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
index 438f9606414a..be41acbd3b6c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
@@ -22,7 +22,6 @@ properties:
       - qcom,msm8996-qmp-ufs-phy
       - qcom,msm8998-qmp-ufs-phy
       - qcom,sc8180x-qmp-ufs-phy
-      - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sdm845-qmp-ufs-phy
       - qcom,sm6115-qmp-ufs-phy
       - qcom,sm6350-qmp-ufs-phy
@@ -122,7 +121,6 @@ allOf:
             enum:
               - qcom,msm8998-qmp-ufs-phy
               - qcom,sc8180x-qmp-ufs-phy
-              - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
               - qcom,sm6115-qmp-ufs-phy
               - qcom,sm6350-qmp-ufs-phy
@@ -159,7 +157,6 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-qmp-ufs-phy
-              - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
               - qcom,sm6350-qmp-ufs-phy
               - qcom,sm8150-qmp-ufs-phy
@@ -214,11 +211,12 @@ allOf:
 
 examples:
   - |
-    #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
+    #include <dt-bindings/clock/qcom,gcc-sm8250.h>
     #include <dt-bindings/clock/qcom,rpmh.h>
+
     phy-wrapper@1d87000 {
-        compatible = "qcom,sc8280xp-qmp-ufs-phy";
-        reg = <0x01d87000 0xe10>;
+        compatible = "qcom,sm8250-qmp-ufs-phy";
+        reg = <0x01d87000 0x1c0>;
         #address-cells = <1>;
         #size-cells = <1>;
         ranges = <0x0 0x01d87000 0x1000>;
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
new file mode 100644
index 000000000000..dde86a19f792
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP PHY controller (UFS, SC8280XP)
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
+      - qcom,sc8280xp-qmp-ufs-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: ref
+      - const: ref_aux
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: ufsphy
+
+  vdda-phy-supply: true
+
+  vdda-pll-supply: true
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
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
+
+    ufs_mem_phy: phy@1d87000 {
+        compatible = "qcom,sc8280xp-qmp-ufs-phy";
+        reg = <0x01d87000 0x1000>;
+
+        clocks = <&gcc GCC_UFS_REF_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+        clock-names = "ref", "ref_aux";
+
+        power-domains = <&gcc UFS_PHY_GDSC>;
+
+        resets = <&ufs_mem_hc 0>;
+        reset-names = "ufsphy";
+
+        vdda-phy-supply = <&vreg_l6b>;
+        vdda-pll-supply = <&vreg_l3b>;
+
+        #phy-cells = <0>;
+    };
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
