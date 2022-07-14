Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8072CCA480
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3g6XguU8tiWmAliK3KhC4uokcJscSi98aCrOZXcFtg=; b=WurfpTn57d8i+a
	/T+1CZ7u0G6x768aXhjQ9MC9/rvS1HYxGZd8zFSxnvhfnO2KfNUYVUCZRzeXSzQS5k/uYGRMnu9Lw
	Jaakn/77t52HIHV8yQClOKSEWCP92nyGOG4q17rkaEtHyPzpVhzBRLD8njAgAhZeVwoCSsBkd/h4X
	hhXO/+axG4vCcsKAKPREIGm4Mc43KBhxS7YG9wlXSx8qiiSVMIj9IWrFE330LimAVUfRvE+N307Ux
	m7rUFnaz/tlRgxxjBMOykil35r0TQ9ucpncRbJo311gF5iGICloH0Qr7qRNtSdQgZT7HZzGs1OEvv
	ZlJr9HLlaFrTUP2p8aFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFM-00ENMU-B8; Thu, 14 Jul 2022 12:47:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCP-00EL94-S4
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B155861FA7;
	Thu, 14 Jul 2022 12:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48FE3C36AF3;
	Thu, 14 Jul 2022 12:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802645;
	bh=whKOsHJQeMHVrofhdeytcdGoOgRf8f8ARs/poCrPxXQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FkYNqMNhjObZmODgQpO8n4b3/bhWu7uTTl3wbW72vF8IhwuFw22r5hyfZG9iYSYln
	 6o1M3LGEOICB3I6/P+t3nDS4WtZtCyDMCQ+eyCx+VlYtscE95nK8mXqOThvXYFcyCN
	 XRMmYy+stXHiKbPInrCByXMrEwdSOMj8Ih2IY489HDUxZxn/KPwL12FhKNBtq9XvLS
	 QvYmNgwX80iZK5yb1s8GYubsKbhsGvJehD3HBVfYgJ2fMXqjosHJy5G+O2yg60U0JU
	 kAmsLtw9pCyD43OCXSuzcOL7lvzvgqFWPu0K8yO5LdIXjOGxjgGBxv2CBryF6Ow6yu
	 XzF986rK5+9dg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCQ-0007E3-Kf; Thu, 14 Jul 2022 14:44:10 +0200
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
Subject: [PATCH v3 21/30] dt-bindings: phy: qcom,qmp-usb: deprecate PIPE clock name
Date: Thu, 14 Jul 2022 14:43:24 +0200
Message-Id: <20220714124333.27643-22-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054410_022420_EBFBA188 
X-CRM114-Status: GOOD (  10.36  )
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

Deprecate the PHY node 'clock-names' property which specified that the
PIPE clock name should have a bogus "lane" suffix.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index 883ee7cb23d5..604d22f47a56 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
@@ -83,6 +83,7 @@ patternProperties:
           - description: PIPE clock
 
       clock-names:
+        deprecated: true
         items:
           - const: pipe0
 
@@ -98,7 +99,6 @@ patternProperties:
     required:
       - reg
       - clocks
-      - clock-names
       - "#clock-cells"
       - clock-output-names
       - "#phy-cells"
@@ -354,7 +354,6 @@ examples:
                       <0x600 0x70>;
 
                 clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-                clock-names = "pipe0";
 
                 #clock-cells = <0>;
                 clock-output-names = "usb3_uni_phy_pipe_clk_src";
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
