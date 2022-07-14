Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64AFBC43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKsT4B3pn3+1KL08jHg5cFw1pa4QeZbNPFR1vaKFu7I=; b=Us8N0Ii6SGHIR8
	iMOh9qFUQwhsuJccn2dzva5rygfvKBlwuDG4etZJftQrW0AWD51aGnIoVgm1N+53cgHujB56ACiHd
	xldXWUbXUHHcKNQWlao4h4WycOF8Dko3lTm5ApPKMywRbfrlSKABTJFPSnim0zKjYrAuu7HDH8Pgw
	qUcRjRmLIRSS5r1LbFrJ4FSxLLCmsrCp+00tx6LSA6YdF26p+Do3XdjUi9EmT+aF8hBbVZmAY/YWc
	S7DXJKb00pHN9VnmCOnJcUQhavHaQ1t70cVpZCKAXxiy9JQpnIDE4PzHk8FhzaXcO8Zb/+GGLxkHF
	Hhq1/DR5Lzcew4MUZ+0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFE-00ENDi-79; Thu, 14 Jul 2022 12:47:04 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCN-00EL5u-D6
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 026B6B824EE;
	Thu, 14 Jul 2022 12:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51E59C341E7;
	Thu, 14 Jul 2022 12:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802644;
	bh=tBb3TBcfg9s+9Nc73d6Io6kUB8boSCIbXgoJx8j5hJE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NY9+/TnIkUpxV+x8FQaV+/zdNwONZuqc+Ggv4HhrsDh7QTXvH+34ZrJLBv1gro5S6
	 C/oaNEGd1WU5Ih12JGjcE19PrOK5PoLEdLAoNiTEDeKpL58NNnJGFM88SdCP0+wN3q
	 wsACciJSBOd7zAqJiAKkMd3YUH5k4Xri29qZdeK+5itJifGqbxahD9jLpc2+bqVJ/l
	 VZsR8/bAtfATRLtpwsjYGNOu4EgizYrXNfAUK1wQTDliD3Cwm4mdXvdtqQXgUpsXFo
	 ZT44ro08Qu0MyToBojo6xPud3V9Tlfq70EBJfqpdB44Smcr2mCRu1DVzCxpyjpzf+p
	 gacoLusart4Gg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCP-0007DY-MC; Thu, 14 Jul 2022 14:44:09 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 11/30] dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate reset names
Date: Thu, 14 Jul 2022 14:43:14 +0200
Message-Id: <20220714124333.27643-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054407_780440_FF9F4EA3 
X-CRM114-Status: GOOD (  10.13  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
