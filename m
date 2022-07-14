Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C16D3CCA480
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDv2oG9q24GKT2Hl7lnY7/ojY34sYSJCLrNvlHnOBZs=; b=UAPynTpoIRwh59
	YW1//i8iPRfOti06mMhxSbSgxO7K9xbR15z4zbplA+WQ0kiyG4pAyGTUFEcNWgV1HPcGEY5pAr8Hl
	K86Uu9dh4DUg7nPuz5b4K/Q2UbdF9c3r0trmMTb8rC0xfMc9LWhHjcMMqDQ8LpzMrMHfPMHeBVGfM
	zRBK+07H27gp9KI4cYEu04OzHnmLV5qvYvvN+HdEW5rSFYE3OThCdduw3dzFzYk4kdvsbCI/Mocl0
	KsPb2qk2npmfSfnd96FJ/iyDgriVIt5CDNM2sHRyJ10KuQ8svUBckx7bxoOajyznAAmbmYBS87aCC
	or8bdlgTkzppgrJrTKyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFC-00ENC5-QW; Thu, 14 Jul 2022 12:47:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCL-00EL3a-Mm
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8F45361F6B;
	Thu, 14 Jul 2022 12:44:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF4FAC385A5;
	Thu, 14 Jul 2022 12:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802644;
	bh=1lEs817FEx5CwA48EnKrDeW2WIjzBg83Q+nAjMtNlDA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=E4VZICxAg63a/6xqsUdXvr7LJj9b31NSb9pX17ypqb1fiZhTyDi90d3JHm13DsZr/
	 t6sbGjpbl6Z5SVhcKHJWbA7Cr+yWNMBSOxB7oKCcf5bfAt4KjG9d9cqTbR09uwX2DL
	 A9DMCMZHcabSPgEDexzjhXkfQyU11lrpH1eOmO/XpQ7/FOlqLtIcLRlFO97jIgZE4O
	 fhpBPtT96DH2hIrIQDjhJNi6WCOY2SfwQuIaGGJrhocNk7MxoxRsu0M3Ef+vZWmxAo
	 P0ikHo4WwidL5fjERaEl65IuKm5zGajGUILkcnwwTN00qgEbaO+t2ix7QhH5z3/Rfw
	 B/m05YWjMZyZw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCP-0007DH-88; Thu, 14 Jul 2022 14:44:09 +0200
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
Subject: [PATCH v3 06/30] dt-bindings: phy: qcom,qmp: clean up example
Date: Thu, 14 Jul 2022 14:43:09 +0200
Message-Id: <20220714124333.27643-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054405_853028_D5D440A9 
X-CRM114-Status: GOOD (  10.27  )
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

Clean up the example node somewhat by grouping consumer and provider
properties in the child node.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 189618dedb00..6269a8667a90 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -428,10 +428,13 @@ examples:
                       <0x400 0x1fc>,
                       <0x800 0x218>,
                       <0x600 0x70>;
-                #clock-cells = <0>;
-                #phy-cells = <0>;
+
                 clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
                 clock-names = "pipe0";
+
+                #clock-cells = <0>;
                 clock-output-names = "usb3_uni_phy_pipe_clk_src";
+
+                #phy-cells = <0>;
             };
         };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
