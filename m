Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDAFDC0502F
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKsT4B3pn3+1KL08jHg5cFw1pa4QeZbNPFR1vaKFu7I=; b=xG95Vo6K4tep6e
	lTGo0pshrW9zMenpxcWpEFFq6E2k7azmGEX+oix5e/2SU47FxF9IyJp4fqLK0GKKaASnXbUXHQZQu
	WIFsuxFmEKg7NuXnRKaxHtiq1IFC03fa3oO9KzTsDms3hxPJCaDoTvGt7t23ZISvcP6kcbGXDFuab
	vjP3mvlTm7ETig2zsFT4CM9v9cBskWAxZqxBwX89L5PeGWoYe8iCHxG6a2CSXa3CLWNvcMjOvBa2m
	2ctHVgEPMoM/ogMPtJY1F5qAfKIlzAbaq8QLTO3jXEk9fVaq+H8rRTQwkP3jpb7HblJA75LMicKfG
	oSZ2+iAmt95mREBP/2pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRa-00GZeM-87; Tue, 30 Aug 2022 11:30:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRT-00GZWv-PF
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DEFE36157F;
	Tue, 30 Aug 2022 11:30:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31C0FC4FEE4;
	Tue, 30 Aug 2022 11:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859000;
	bh=tBb3TBcfg9s+9Nc73d6Io6kUB8boSCIbXgoJx8j5hJE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mYUW4WJ6oFhclkHRIZrHdHo1qTYxxrhLkh1VytqN3E4nMGHyAasRFvO+oOizqPFPT
	 qjilFBWQEu4x6DYUiv3zqKU9eEYfnUB16cc3ANmihGySYToCXg0KpT8GbxQGG9wXgS
	 kNYCDE6nvTlKBWhyg1F7RLeJ+4OWNBYHOKV5A3YvNUjLO8fVREzzpwcHdXMlA70Uvm
	 SMVEtnUD+GJiUeVB9ndFeQSVQH7a64dQI7x4RLh6fYrkqWbiB9MpnbeMp/VuydVYrt
	 c6Z/5VuvknMN5xrMZDgiJgjTx45vc09Xfe3EKkC0I/4qiFJfcL/9anLWz5y4+DkBfr
	 BW0nlJ3FWamww==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRN-00010I-P0; Tue, 30 Aug 2022 13:29:57 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 11/30] dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate reset names
Date: Tue, 30 Aug 2022 13:29:04 +0200
Message-Id: <20220830112923.3725-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043003_933202_21648C7C 
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
