Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EFD8CCA48A
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKJ3CGqV2kZo/XcqS0R+gnhd7CqVzaxWywS0O44+5jI=; b=Lklf+fzdo0p5Cz
	xWv0f4Pvy2Zhdn7QiI3dKFMGFqUUvVoVI5CvMnJ0ea0xwyYmQYNTp67LPfNGyHOBam2Mgawi+AyTU
	/I4HN189RHQXfI/plOYRCjqwcVgrBeijWV87Nnwi8JIHe04kM5BpyWYgFvrgLzI6Z00Xsv1iGN6l1
	0g3zG/MNaRj0akW5XeGetdpc8iSdCu0tel+2BuYGx0DLmzYO7BvYMAP/yqogCxO+ku9h5K68+gmwf
	uPJSovKUoT0y1y2Sep+0/syw4Ms0Q8L0jq994ovQ6y2QiJX5qudQwgFn0PTVEThFY1IdFLrzdQEJd
	LuMn3yCTBtXCJ0IOJu0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrQ-00GL0W-Jv; Thu, 07 Jul 2022 13:48:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrC-00GKg6-JC
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8DD3B621ED;
	Thu,  7 Jul 2022 13:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C51DAC341E5;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201660;
	bh=VLucXHRqWL3zmSG00uG/qSsNcmRZu+Qeqo9nN4NPPBI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=u/k0Qn7Fw6qoJxR9Q7B1eR5/jzSDUYZdgOk+PtIwMCi20Ii5vKQOYy7DOpYalihiS
	 vjto0tjslm1wq6YFC6bvBLmFrd0JLHOk+2vpHF7jC6zVpq9DoWRX8fdn8ZOMIWF3m+
	 NwUM/Kl6RUBnnEkTTzkBJyBcQdGP0az7uvQo+Pv78r2UE9xgozaR0qvA1VTBvXjM25
	 spcdYqEA63r78uUoG28Lu4Pd2n1a8UCtEvlRfl3DP2/YtzyIkrqGtUBnynlAkZlQFF
	 oPfGc5AyApMbeItserqhTunxGcQmK3Z+21C5WTlOxCSjl3gFWcO7Q1+Apd+lMopKi/
	 GrnoFZoEEgtdA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr5-0000yN-OS; Thu, 07 Jul 2022 15:47:43 +0200
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
Subject: [PATCH v2 24/30] dt-bindings: phy: qcom,qmp-usb3-dp: deprecate USB PIPE clock name
Date: Thu,  7 Jul 2022 15:47:19 +0200
Message-Id: <20220707134725.3512-25-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064750_747756_51E5FDAF 
X-CRM114-Status: GOOD (  10.86  )
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

Deprecate the USB PHY node 'clock-names' property which specified that
the PIPE clock name should have a bogus "lane" suffix.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml          | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index 86d64c61bca3..5f0ff078e831 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -96,6 +96,7 @@ patternProperties:
           - description: pipe clock
 
       clock-names:
+        deprecated: true
         items:
           - const: pipe0
 
@@ -112,7 +113,6 @@ patternProperties:
     required:
       - reg
       - clocks
-      - clock-names
       - '#clock-cells'
       - '#phy-cells'
 
@@ -192,7 +192,6 @@ examples:
             #clock-cells = <0>;
             #phy-cells = <0>;
             clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
-            clock-names = "pipe0";
             clock-output-names = "usb3_phy_pipe_clk_src";
         };
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
