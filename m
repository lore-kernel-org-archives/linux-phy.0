Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD264CCA497
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82kyNObfK9XzedE+iZDs359CjlCdtkaili3DOJRFEY4=; b=FV0dXsWGZQpwdr
	66DDEIWBEIdAznWjvYxJZs7hl1vnspaOuD43SUwXMod951rg3RjHbzdplhStxhPDRfiDvfH7Wtrty
	+sbtqJU8XTKvN/BMesRQEqrRQDPQvLg3tWhgDYNVAxfx/8PnYChlUBlvu5NT2e0PH+YVrAJ1AYKSn
	IpP3A18sP+cRWDvVoqfPUiV/cYkp7IwDym3CGzIzuAVsgkWDUTv6PSg6+eLSC08HJAnJqo82HNBZk
	zvp0kR+97r+yYF/n6SB3F6viquRerWEasqOHK12KGzenDI9AS46yj8/mYb0F0pFV20MOM+eBfCAqE
	wtbi/CTe8/ynV4A6C73A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrL-00GKuu-Pg; Thu, 07 Jul 2022 13:47:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr7-00GKg7-8U
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3BA69621B6;
	Thu,  7 Jul 2022 13:47:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BB60C36AF2;
	Thu,  7 Jul 2022 13:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201659;
	bh=qBf0wcLz/LdfsVz1XN93cwCxAidfoW7gmCoV+rfdsyc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a9N+H3mKSIstbB7YMkHGJv4IuhhPxUuu2MKuB1pTDD8kpLHu3JgXFewc8LzTINin2
	 B4K2uVP90FJmgc1oF374dJ+7BGjYfrgi3z74qQ+rAHM+II790J6oYkGmAsk+xWqGbq
	 FibU5leaia7gnnLxFGFBM7HT7KnGhUTsB88LkeebEsCF6Eas94n2ixx1iPehGIXYPU
	 B9NLAMH7hT3jv6zFRakVJoD6oKCbdJdsvvW9Yh5yv5U3W1BVV/shw6j0MPfRhR8nJy
	 +tgC+8FM/54f892fQOBxUfseNRV59j4W1rRxe7DIzySrCb2RpHaBP035nEMCzoqvxa
	 49A2A9Z0cIS5w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr4-0000wO-Ep; Thu, 07 Jul 2022 15:47:42 +0200
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
Subject: [PATCH v2 10/30] dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate PIPE clock names
Date: Thu,  7 Jul 2022 15:47:05 +0200
Message-Id: <20220707134725.3512-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064745_435298_D2C39793 
X-CRM114-Status: GOOD (  10.37  )
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
PIPE clock name should have an unnecessary "lane" suffix.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml   | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
index 8125a91a3591..b7b115e021d4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
@@ -69,6 +69,7 @@ patternProperties:
           - description: PIPE clock
 
       clock-names:
+        deprecated: true
         items:
           - enum:
               - pipe0
@@ -98,7 +99,6 @@ patternProperties:
     required:
       - reg
       - clocks
-      - clock-names
       - resets
       - reset-names
       - "#clock-cells"
@@ -151,7 +151,6 @@ examples:
                   <0x1400 0x1dc>;
 
             clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-            clock-names = "pipe0";
             resets = <&gcc GCC_PCIE_0_PHY_BCR>;
             reset-names = "lane0";
 
@@ -167,7 +166,6 @@ examples:
                   <0x2400 0x1dc>;
 
             clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-            clock-names = "pipe1";
             resets = <&gcc GCC_PCIE_1_PHY_BCR>;
             reset-names = "lane1";
 
@@ -183,7 +181,6 @@ examples:
                   <0x3400 0x1dc>;
 
             clocks = <&gcc GCC_PCIE_2_PIPE_CLK>;
-            clock-names = "pipe2";
             resets = <&gcc GCC_PCIE_2_PHY_BCR>;
             reset-names = "lane2";
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
