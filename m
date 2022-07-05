Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2166C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=McWcC88tda3oT3ihQ1OTetBvQcG6OE4abin1Rl9BcGU=; b=MudRKoZ5p+YF5S
	PdkppS8PDGZ4zfHnN7XpmxV/5fe0F54ti89aA+2EceJrKgoy5bNcIOmO0DdFbaiDJ6aY70Fen4iXP
	Zabp+sWEWguKcek8ALZ1AJMG8OpJPeuA0NHZY7ZVs31D2bBS8qRpjZQ0JaXhqZVdI0/nbTprc+hsP
	SpW5+IRRzEIvEwx8D7oBPLCRUGlkgco9e6P6iRtHFTsUDaEvrUg2QKINHBpWhgH39CoJc2lLCR8LC
	TtpwWC5vLGQdkm/nQ7FiyHNKHj19J6NP/IzFKw0xhWvyfENsMVWFr4xXrB9BT4YTEyRNHOWY9Gpr3
	i5uMA76eInyOuBmrhkZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gvr-00HUL9-CI; Tue, 05 Jul 2022 11:41:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fO9-00H219-52
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Rn3gAt93uEesyTN1rjCivUV8ZyKMd2LDDn0MO7j4Dh8=; b=QXXrFT0OU1ZEe/ysP/itHP3wMz
	/YLMg7vwaXUBmOrnojfPln7I7WookYh/w5xS+eX2my5RXV+o/cNSQz9BAbSAc93bRHh+cd0qLAjrH
	b5eBO+jK3OY5GXfuZlTHF6TwafoxIA0n/CewuI4Ti/nILFLnZain9Zz5rSxc/P1BswO/Q1Fx5SImB
	ntKATtsfdYnkA9IHfWeK97fH2iFhiyp+LMapQKgbwv0DVdRF90tEk525WG1k6UVW9GSqZ84bh2JQG
	eyCKHXHWy7KWEuCGVCADYCIEo9U9jS0BuZe1SR2FRD/Y0QTTrDGljcnFmf1VcpjHUrB6tfFqZ1E+m
	wfWcGuug==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBA-00HV5b-0E
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E391961937;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 969DAC341CE;
	Tue,  5 Jul 2022 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014542;
	bh=6PIq6E5IaCm16IQAMjZXZR5xejvClm6y5jWgrc0y/xs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=P3awIUsbzmwLD6QRDlPOJcqT6OrDahzk0Vn6MaJ97hWJlBQ7SKd+ZRpS0mWhWrmJI
	 mdZPyVYcW/omzwhYAFJ0dWiCo/AgWRqX3+QR2eF7xq6z0qmmKfHpCCuKlFga6uL/Nq
	 /dLEODfwmoWqY99TEDLAh7DVgdEr87HxzQzNC5GRAXSkM6bxBzHOLxfT+3/HCrel1s
	 ALScvVzCltHuwEXgP5MFEqEDLEUJVZhRDuqlN8IzKSEhrQmobP/8t7bYiYdtL5Wv8u
	 wKVPQjFnmP3uJnRChsF30O6UsrjuLl52r7M5Qk9TOpTW5E432q8AlYPShwxq2jRgDl
	 54ZdtQIz/i1Jw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB1-0004XJ-Dt; Tue, 05 Jul 2022 11:49:03 +0200
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
Subject: [PATCH 10/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate PIPE clock names
Date: Tue,  5 Jul 2022 11:42:06 +0200
Message-Id: <20220705094239.17174-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104912_463421_B1875DD5 
X-CRM114-Status: GOOD (  10.05  )
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

Drop the unnecessary "lane" suffix from the PHY PIPE clock names and
mark the old names as deprecated.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 20 +++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
index 45f7bb7a632a..7931b1fd1476 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
@@ -79,11 +79,15 @@ patternProperties:
           - description: PIPE clock
 
       clock-names:
-        items:
-          - enum:
-              - pipe0
-              - pipe1
-              - pipe2
+        oneOf:
+          - items:
+              - const: pipe
+          - items:
+              - enum:
+                  - pipe0
+                  - pipe1
+                  - pipe2
+            deprecated: true
 
       resets:
         items:
@@ -160,7 +164,7 @@ examples:
                   <0x1400 0x1dc>;
 
             clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-            clock-names = "pipe0";
+            clock-names = "pipe";
             resets = <&gcc GCC_PCIE_0_PHY_BCR>;
             reset-names = "lane0";
 
@@ -176,7 +180,7 @@ examples:
                   <0x2400 0x1dc>;
 
             clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-            clock-names = "pipe1";
+            clock-names = "pipe";
             resets = <&gcc GCC_PCIE_1_PHY_BCR>;
             reset-names = "lane1";
 
@@ -192,7 +196,7 @@ examples:
                   <0x3400 0x1dc>;
 
             clocks = <&gcc GCC_PCIE_2_PIPE_CLK>;
-            clock-names = "pipe2";
+            clock-names = "pipe";
             resets = <&gcc GCC_PCIE_2_PHY_BCR>;
             reset-names = "lane2";
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
