Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66A43ECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6zKjWEkV0K2zry9ZbPIC/IdhBZ1h5qryvzttEmY+jU=; b=j65oCWNk34q07q
	cgQepCX169ldRjbm0BxpBzFJWFvxndpiTLqUxDfzoq7THXsx60k9ixEbaG93BotDovqtiODeCjP0z
	oEC9bM59oZ54QwM/qdu6Vhllo3TlJtdwBb/RO9Y3NuOz2yWkDO4uwVAyxEoqgy4WOFCDPCSJVFqZG
	Vo1H4YvRt9wK1vhkcKcsqpWnZQR8cDgeBGKO+UHiHw5G36QLURfqUM5wyXX9DAvyb4S80jI+KH4UB
	NB7MLVIhqwSnCFutlXvcbyxW+mr1DWoNOArx94DMcsjp8nm31Psp1rvGoA2v+QSAslyobtojrfx7C
	cQlc2SW6NkruvE73CSxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRZ-00GZdy-Mb; Tue, 30 Aug 2022 11:30:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRT-00GZWu-PF
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C770961563;
	Tue, 30 Aug 2022 11:30:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1067C43164;
	Tue, 30 Aug 2022 11:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859000;
	bh=PsV1H7I2xcbdp4ZG7x9wTuYvt6EoxjXfLIKWptuuQtA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=r6E6mGYd8nf0BMGyrqoeV2Ct6Ok2tRbD+OCkbSYRF7F//Q7S1CmGwMRZmjfBEYYij
	 820MhuQFUasVgPQFkZSAw2/kLVtrmHINPntnbRlmey043iVEBgnLzMKslWdxuNpqNH
	 UrMkCth0+4Wl04b//vBfgylJDzOh5I43W+smC4O0oxbIIYe/yxfCdg/X+xh/mJOXib
	 dwO2UakKr5RS+yk53H0m0V37gURTWScc8IOGZ/T2BvqbKH3rJxCbZCTJhHEpVgE6d8
	 I0R+FNoDjBwdk2wTu9SVk6dRZhnfGJS50fbqf9zTEpkhRdna+FnGY75OLRu0babSAp
	 EOFfg3at0GZcw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRN-00010E-M7; Tue, 30 Aug 2022 13:29:57 +0200
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
Subject: [PATCH v4 10/30] dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate PIPE clock names
Date: Tue, 30 Aug 2022 13:29:03 +0200
Message-Id: <20220830112923.3725-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043003_895945_801A2CE4 
X-CRM114-Status: GOOD (  10.12  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
