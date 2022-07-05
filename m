Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46693C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3Sa2rKDr8zdNtxwpeG2fsroo55gdF7okkuOvkImxiM=; b=CqNnQG85igEec7
	3sYHKmwjSyEAdxvvtl9w1+yAYTJDzv6ebJJPbXM8KGxVeBrzXBH57D3ODkB/QXQq5CCr8LUDeL052
	nuTHFSqy/PKyi8PLnZvvsRI816PnoUvu7HcCrI79VQ8KD92I1ljwFfojt209TM5IHofXiUpr77yBB
	6c2GKVP4STyPoP7Krxqz7C0NFv/5a+6VfMe1QlZO4sgmhiQMyljpCBuqWgjIRndwcGyszGPBK1Rqs
	Q/t3Dw/joCeJNLUnw9XqLsPEXqh000Z2QpawLEXeGLw8JIjA8HOADTKRHWOW5d1SgQe62aJYPgCQy
	FIzQ9FdCdnPATGH5Ih7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8grK-00HSQA-M3; Tue, 05 Jul 2022 11:36:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fO2-00H219-UG
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6qKKQwjq9QdNFpSceWlYhwl2L9b5HwDuhBW45YHeZBU=; b=hfgVmmb/UWruV1VUK40CwHTzcu
	9aq40maExTVf3wWpR4QwoyRrrHSAdHOwB3VlYCgGRoxB04wBTMmi1DmqUQnmu2Oiq3H1Ua+0KwQQh
	9Vq5Ee2UqbnzJ+gmJRL86NrWUnHiX4Mw8TV5lOfggSoy4Kq5Sj5X0u9VBLJDvSFt9SLt+KaHfXqA/
	I9/nBmne4DqFmd99OEfT7kEKeHhGAowsQKJ1ZfikboOjPzpIKQpkxcfxKyQnwAgwY/eMCJql6KMkI
	OBoyvoY9Ch11KpKTCtaT0I7v9VRDdGXeD9YNKaSBP1Zxrb1ZeLrrB3Go+eD+lMU5wgcWEMSTl8QhW
	681hycXw==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBC-00HV6R-Me
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 90E86B8170E;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EBD4C36B0E;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=rhNsOHQahugNBTZT3MMRtc7ithk9F73meRh37KBt6SU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tyQz+Wgym2AuX6jhwblsZldHtml7BDtJLxw2NcC+GDqXof0E1X5EBrvteaFpWZ921
	 jheWa3VyJ8cfhSlx8fSXG2TcnJSlzRZJQDJx2NXTzexUmwsXkASJBGwh1GdR9Gss8+
	 OkMBuaAPA0Z9vAtI9Ivp6hFCXgKp1w3gfB8BCxmisjM1M2L9mDoS7ci8tD/DEKHyN+
	 RfT7gJTZb0wPTJ6rtPO2Ky5PXJ6WDLfGSwEsbH7yU2SjA3m6Zgo79Ax1wgbtDxvpdq
	 pA56yVKZ8aJ2YZ5FNrpP0R03YgIlphTDAcbJuXbnVYLYqIg7xhKSdk+HQi1qzc+QjV
	 O/XUzoEt3G40A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB2-0004Xg-4g; Tue, 05 Jul 2022 11:49:04 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 18/43] dt-bindings: phy: qcom,qmp-pcie: add example node
Date: Tue,  5 Jul 2022 11:42:14 +0200
Message-Id: <20220705094239.17174-19-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104915_666305_927993CC 
X-CRM114-Status: UNSURE (   9.64  )
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

Add an example node based on a cleaned up version of sm8250.dtsi.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
index 5a1ebf874559..3fc08af41144 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
@@ -262,3 +262,44 @@ allOf:
             properties:
               reg:
                 minItems: 4
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-sm8250.h>
+    phy-wrapper@1c0e000 {
+        compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy";
+        reg = <0x01c0e000 0x1c0>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0x0 0x01c0e000 0x1000>;
+
+        clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
+                 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+                 <&gcc GCC_PCIE_WIGIG_CLKREF_EN>,
+                 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>;
+
+        clock-names = "aux", "cfg_ahb", "ref", "refgen";
+
+        resets = <&gcc GCC_PCIE_1_PHY_BCR>;
+        reset-names = "phy";
+
+        vdda-phy-supply = <&vreg_l10c_0p88>;
+        vdda-pll-supply = <&vreg_l6b_1p2>;
+
+        phy@200 {
+            reg = <0x200 0x170>,
+                  <0x400 0x200>,
+                  <0xa00 0x1f0>,
+                  <0x600 0x170>,
+                  <0x800 0x200>,
+                  <0xe00 0xf4>;
+
+            clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
+            clock-names = "pipe0";
+
+            #clock-cells = <0>;
+            clock-output-names = "pcie_1_pipe_clk";
+
+            #phy-cells = <0>;
+        };
+    };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
