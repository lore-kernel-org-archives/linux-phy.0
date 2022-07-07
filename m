Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4589FCCA485
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTpa+nl6bfuPWPJecKMW54Q1gymv0hGeHTb8+hEu0KQ=; b=XSPNZ2tsDsmEsw
	slb4e6JJHVhvEvcL9OHCdBSRuXf+t4avEiqkxQJOzq1u2KRtKj2YpdgMpnylcd2G0dhvhZbrpnJqY
	fEFdgctNgO7IhT0X82N4uWUKE9aw63MI+S8QWvJvJVLDEC/X/DQuvFtljbYLW9q18APNsChf+52wY
	5avDq1qgmXpQcsUuA3xK1uzbIOX9JpGZkgT7BTe79dM1wsXP/kVIKF+G52xuRe1QMzaYi5WFXUyFn
	zZK14GxYAAUkMh8h9oFygYS1JOdhos9PGRuu4CoCZRnTf1G6mSY7gX5n9HEqtsAl/7Gw3+xuUq6jj
	nR4TvJKjzceA7PIypeHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrM-00GKvx-Oc; Thu, 07 Jul 2022 13:48:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr7-00GKg4-86
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BC1DB621B5;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76B6EC341E4;
	Thu,  7 Jul 2022 13:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201659;
	bh=/G961bIHsqvM18T2+pLeKjiHascL9V+Rmbh5mQi0vu8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EZfl5ehh1KxBJxzHoj6ZUnQzNSPbLB4LxVKP/xnLX1Rl3q6J86rl1KEycNhHrGGd9
	 EWXUU6lfKISTWkYhXg5CEyMPQZHf52aRXQNKeu0ZeFkytJEKlIaSsVKl6gd9lFqORk
	 DuLR0lRs6slplKD7rFgE2kV1n2mu1I9phVYvBOGLIw5Urpger/1eRHCWZMK9K256A9
	 5IMl2MnBQh7ZPf267Bx9/vbbSwP1p4dzt+FdOvbv5FdrXmuEVpeXMv7iJLs5DDSNXb
	 fd850BZGSy6DS7mP2XB571cjws9zN2jf4ZJUt3a5RZ89kPJedUxiA90BSNyM709GPX
	 IztM7aTARwgLw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr4-0000wL-Ba; Thu, 07 Jul 2022 15:47:42 +0200
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
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 09/30] dt-bindings: phy: qcom,msm8996-qmp-pcie: add missing child node schema
Date: Thu,  7 Jul 2022 15:47:04 +0200
Message-Id: <20220707134725.3512-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064745_521022_FDD606F2 
X-CRM114-Status: UNSURE (   9.53  )
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

Add the missing the description of the PHY-provider child nodes which
were ignored when converting to DT schema.

Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
index accbcb8b5c6f..8125a91a3591 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
@@ -57,6 +57,55 @@ patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
     description: one child node per PHY provided by this block
+    properties:
+      reg:
+        items:
+          - description: TX
+          - description: RX
+          - description: PCS
+
+      clocks:
+        items:
+          - description: PIPE clock
+
+      clock-names:
+        items:
+          - enum:
+              - pipe0
+              - pipe1
+              - pipe2
+
+      resets:
+        items:
+          - description: PHY (lane) reset
+
+      reset-names:
+        items:
+          - enum:
+              - lane0
+              - lane1
+              - lane2
+
+      "#clock-cells":
+        const: 0
+
+      clock-output-names:
+        maxItems: 1
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - clocks
+      - clock-names
+      - resets
+      - reset-names
+      - "#clock-cells"
+      - clock-output-names
+      - "#phy-cells"
+
+    additionalProperties: false
 
 required:
   - compatible
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
