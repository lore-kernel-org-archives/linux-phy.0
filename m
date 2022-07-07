Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE341C04E88
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BM5gFSfO4lzGD7zNklZD5BpcB8EE3J/rVV5XA77iEU=; b=32w7Pz1fDk3iy+
	qGpasYIvhFn+bfyW5PsFUPBgeM7oQHtkSrT/J2Kxi2A8b4ZOquxyt6GkB40KkBP4Xm95OWwe3D9qB
	tEJReAGcKZ2nCB+nUE1prwgVi5iiWE/gWZEz4om+bRHhKFHVzN2GQThmTgbgFeepQRmo0UrJJVwr8
	53OAnILdQtRlRXS6bQj0LHd/wsck7YLZuQ8OXqwLZryM5pVy8JoIT8l6kSiyvnUYfe0GhlGqsJQq4
	f/LulBkf3SiFlboeLvAwPOsZGi2DPc9+36trH+0ZmH0SP87R4TppD1+A3G4azMl7otMn+HHCX+L+3
	LVduZvuy2K9iPdU0AMyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrR-00GL2N-U6; Thu, 07 Jul 2022 13:48:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrD-00GKlO-8J
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 791986220D;
	Thu,  7 Jul 2022 13:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 780FCC53FD0;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201660;
	bh=u94lrqzZCL2U43fE56CPQFg5fcc+j1jnnHfeDdjY1bQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=haw1fVwQDA6p3t8NsgMjG19kWsOhf3RHml6pYurmFoDa9z+oPE9CgULMO4qyuvb6u
	 9pxeOibzQYbgrat4rQtpW9r64gJnLFiFAgy9kwjdW9WW81qNnjBoTcSl+PMsraCMuN
	 miJC3OfJFOm203e7oOcOWeV9Ur97Xl+S0AokCeSrquP0RMIFf/z72Dg4So2f15MBHY
	 1W42CCCCfhrOmSm88lADT/OCZw2h9xWr5C0nVKVGUI5tXuCPhjA+pCfjyJoFLsBEtk
	 65rwTSPtPiS35ebTW38keg5spBzUr0V/qNuUn2vqDQSuG6mIBWnWgc2VaEOHCApxi/
	 rduNmVmRmwbGA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr5-0000yL-LY; Thu, 07 Jul 2022 15:47:43 +0200
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
Subject: [PATCH v2 23/30] dt-bindings: phy: qcom,qmp-usb3-dp: fix bogus clock-cells property
Date: Thu,  7 Jul 2022 15:47:18 +0200
Message-Id: <20220707134725.3512-24-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064751_427018_6A9B470F 
X-CRM114-Status: UNSURE (   9.63  )
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

The QMP PHY wrapper node is not a clock provider so drop the bogus
'#clock-cells' property that was added when converting to DT schema.

Fixes: 59351049ad15 ("dt-bindings: phy: qcom,qmp-usb3-dp: Add dt bindings for USB3 DP PHY")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml        | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index 60dc27834e1d..86d64c61bca3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -30,9 +30,6 @@ properties:
       - const: dp_com
       - const: dp
 
-  "#clock-cells":
-    enum: [ 1, 2 ]
-
   "#address-cells":
     enum: [ 1, 2 ]
 
@@ -147,7 +144,6 @@ patternProperties:
 required:
   - compatible
   - reg
-  - "#clock-cells"
   - "#address-cells"
   - "#size-cells"
   - ranges
@@ -169,7 +165,6 @@ examples:
               <0x088e8000 0x10>,
               <0x088ea000 0x40>;
         reg-names = "usb", "dp_com", "dp";
-        #clock-cells = <1>;
         #address-cells = <1>;
         #size-cells = <1>;
         ranges = <0x0 0x088e9000 0x2000>;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
