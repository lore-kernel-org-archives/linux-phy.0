Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A05E1CCA48E
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMhFpltdwoO581Nk1iCk05MoiGepCSWHM8p8mD3Yhko=; b=veQtoSC89GRG7g
	xIb3J43T3Dy6HOxOVyn01anBHZUPNunn3ZQHuRtpcR5sGuVq890g/08RXfVog0829y9ekLHPNu5UW
	2lNHBlxMNUFG0E+CgENZXyNFY95KC2uny5WKQuyjA/UIlASEDWdbAvMWTkgJDxixcpSqeaAnrDp65
	KOo+xZLG95tEGqCxHnl3uBVHrGgXbsE2xrwppaD+BKBqeQDO/nax8O8nQgXzSvwE41j28Y0JOlJFU
	FDZxHaAeX51VSkdWYzWKZErgmOsd1Ub/FS07ovvI8knu4xPMJ+afmgmFgf50ESS1i8Q2QPYRz3hsa
	v4ZQry1dH/Qg1U4WUi/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrI-00GKra-7k; Thu, 07 Jul 2022 13:47:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr5-00GKcl-2c
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 292F4B821E3;
	Thu,  7 Jul 2022 13:47:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85568C341E3;
	Thu,  7 Jul 2022 13:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201659;
	bh=IgzH4oqror/MFqSJ+VvgYEjCnBg367NQ22g2bUgcfic=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Vjgz7iE5W4BW2xflygDBd5i3ygM5b5Fho2lCSLHMqZwKyqAeEVZmPAyL/tWapp+w1
	 zkDfLileU2pdolalyQ9igyjgih0Gzg5g6rQ49OKA/RtOjhAtd2Rl9b4uIGSkWRXgnL
	 4oZLgrgskJhkOFdl6Fce4zT5my7lfdOgsI6oZhKaSP9lpo/TQ9kfoD7zkavTV32J5I
	 l6KwhnkSse+Gt+SVNx5O+db5T01R/7mVsbA7kuCeA2Phgj2rPTeXYc4Tn1sw5CH4a1
	 yUg0u51rB+15+r2pYlDekqlOD7MRgjQu1CUF35CL4oPZmF4rCynenoZ2+m/8HBpnDG
	 8c9RnMLQOObjw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr4-0000wQ-I5; Thu, 07 Jul 2022 15:47:42 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 11/30] dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate reset names
Date: Thu,  7 Jul 2022 15:47:06 +0200
Message-Id: <20220707134725.3512-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064743_284727_4DF99065 
X-CRM114-Status: GOOD (  10.60  )
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

Deprecate the PHY node 'reset-names' property which specified that the
reset name should have an unnecessary "lane" suffix.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
index b7b115e021d4..4e710ef75523 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
@@ -78,9 +78,10 @@ patternProperties:
 
       resets:
         items:
-          - description: PHY (lane) reset
+          - description: PHY reset
 
       reset-names:
+        deprecated: true
         items:
           - enum:
               - lane0
@@ -100,7 +101,6 @@ patternProperties:
       - reg
       - clocks
       - resets
-      - reset-names
       - "#clock-cells"
       - clock-output-names
       - "#phy-cells"
@@ -152,7 +152,6 @@ examples:
 
             clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
             resets = <&gcc GCC_PCIE_0_PHY_BCR>;
-            reset-names = "lane0";
 
             #clock-cells = <0>;
             clock-output-names = "pcie_0_pipe_clk_src";
@@ -167,7 +166,6 @@ examples:
 
             clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
             resets = <&gcc GCC_PCIE_1_PHY_BCR>;
-            reset-names = "lane1";
 
             #clock-cells = <0>;
             clock-output-names = "pcie_1_pipe_clk_src";
@@ -182,7 +180,6 @@ examples:
 
             clocks = <&gcc GCC_PCIE_2_PIPE_CLK>;
             resets = <&gcc GCC_PCIE_2_PHY_BCR>;
-            reset-names = "lane2";
 
             #clock-cells = <0>;
             clock-output-names = "pcie_2_pipe_clk_src";
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
