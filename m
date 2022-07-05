Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F7D5C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEnu9DO29H8ZR6ivKiZEBbLrY4StIPXRqom77J5GjLY=; b=1brQK78pOlNnco
	K6HUv9H3g4Rolo39mg7foR9oZrvZ4hphP1Rlh0S8AWqRgQQ0LU2o79Ymynxg8Wvcn8modTYYPAfCe
	j2nXqpxkM6iweq0RN1H9YWG9kJDh6Q2ZpsM6oGxHojrBBgBUcu/3kOd8lnx6UCjWhGFvKfqtu3X+e
	qAGXwXHNlGPV7hknIvanWeAOjURjumhXkzV6TowjQf5UX78VdMvxFBtubhyf9uSgMC3ESEA2osov2
	llBILiaHM6VinCp16rfIF3efI9V5COV32XPP+HaeKKQzkX/uv1FxWicfrff3I1XHledLL+buWsNIy
	iPz3qOp58BmQ1z6Zx8QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDd-00GwWA-5Q; Tue, 05 Jul 2022 09:51:45 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB9-00GuYI-UE
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 14170B81722;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96A04C341EC;
	Tue,  5 Jul 2022 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014542;
	bh=aA6pajJ5L/dtpPo1Rt6dHR4KQMCmecjywy0+jWwynWo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AaAvgydX5jn9wkq3FKkJcT0kQdHTL0XkAvTfGY3NPO27XtIfm/Y60Van1YWO/shz3
	 cmfHUnAJ/Pf9VFP5remsO3MvCop2ijhCR7KIQ0z0UBpDEpSvvzI+Dsx7ITLTFrVnno
	 dwVNiqoUYVeAtnjQAwABUCdQ+mSnVX33E2s1IhDtRt4Q2vAedvYWKLilUJLTp2PkTy
	 I+rgL2qjhZm26ZtXgY3+oOZgp7e9VGfFEsu+jFMI8Qtf2llFollqwHa8RKD+VQ5X9U
	 5gRmnUskCpbkHZCr9Si+CLgGkLZYiR1SoB/NgvhgQJT9z3+BWQ/vDGCXBhjoDlEgX0
	 yI+uexoDLFU7Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB1-0004XL-Gn; Tue, 05 Jul 2022 11:49:03 +0200
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
Subject: [PATCH 11/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate reset names
Date: Tue,  5 Jul 2022 11:42:07 +0200
Message-Id: <20220705094239.17174-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024912_397498_9BAD60DC 
X-CRM114-Status: GOOD (  10.34  )
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

Drop the unnecessary "lane" suffix from the PHY reset names and mark the
old names as deprecated.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 20 +++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
index 7931b1fd1476..0bea8270b37e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
@@ -94,11 +94,15 @@ patternProperties:
           - description: PHY (lane) reset
 
       reset-names:
-        items:
-          - enum:
-              - lane0
-              - lane1
-              - lane2
+        oneOf:
+          - items:
+              - const: lane
+          - items:
+              - enum:
+                  - lane0
+                  - lane1
+                  - lane2
+            deprecated: true
 
       "#clock-cells":
         const: 0
@@ -166,7 +170,7 @@ examples:
             clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
             clock-names = "pipe";
             resets = <&gcc GCC_PCIE_0_PHY_BCR>;
-            reset-names = "lane0";
+            reset-names = "lane";
 
             #clock-cells = <0>;
             clock-output-names = "pcie_0_pipe_clk_src";
@@ -182,7 +186,7 @@ examples:
             clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
             clock-names = "pipe";
             resets = <&gcc GCC_PCIE_1_PHY_BCR>;
-            reset-names = "lane1";
+            reset-names = "lane";
 
             #clock-cells = <0>;
             clock-output-names = "pcie_1_pipe_clk_src";
@@ -198,7 +202,7 @@ examples:
             clocks = <&gcc GCC_PCIE_2_PIPE_CLK>;
             clock-names = "pipe";
             resets = <&gcc GCC_PCIE_2_PHY_BCR>;
-            reset-names = "lane2";
+            reset-names = "lane";
 
             #clock-cells = <0>;
             clock-output-names = "pcie_2_pipe_clk_src";
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
