Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C71BBC0502A
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 12:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTpa+nl6bfuPWPJecKMW54Q1gymv0hGeHTb8+hEu0KQ=; b=sK5cfwBxvu9ehp
	otAnAGxup+khIJwK4H933DaM62yFRcJ683qk/SLnh9hh0gGevjXHIwdRhRsyRnfigyRFzzl+1Evd4
	8R922Mt2U4BdU22AMnnymJVbWa+9k7tegIDekx1CrzIOHgo01ZQh6XpoHteYLEOjnz6crwC16sXih
	Ed0QVQUkL8JgZLjbGtn5i5dOhmHwqWAXffp/UHk5YsB+rIXT02gnmq0tGDPmlifryS4G2cSP7QXR7
	UQfiv68YastaAKmyI4Y9vf8Hx9B6jUFI2IIo1U+MuSaSNHJlB8X4DMxxgayHqmeyZQJKQ3E0/BFpt
	/rT01yWlikFHDc1U5OCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT0SR-00GrIk-5R; Tue, 30 Aug 2022 12:35:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRT-00GZWn-Hg
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 991F16156B;
	Tue, 30 Aug 2022 11:30:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB063C43159;
	Tue, 30 Aug 2022 11:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859000;
	bh=/G961bIHsqvM18T2+pLeKjiHascL9V+Rmbh5mQi0vu8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cz8Uak87fR9DUX4SSFN053x/3PrgN0zfIsWOvj1PZfMxOWsavDRvM+L7oiX5zgd9k
	 yQgC6+WEee6LSVGr6NQaRSr2I2/EDtRMjIDEmg4HOd4IALFOUQDNIgXP1Tps0w3abQ
	 v+fwOpowppItH4lLVSb7MmHxLAD9sKoU9bditM8tYZgHxzYuQWDxAU/LKX1SGisJc4
	 BSRteXTk5yX/hE6OLEi/NvHUbEvBVl09KFdOpbHK1Yw3RbxOxTAAGYOwRi6ix0COdH
	 nMmBl+4lSrP+Pgmfg0cHiw1lMSslePE41FKZEcc2Kkbk4YzWoCa7cByunQXJqpKQms
	 Vq0hCBZODzBTg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRN-000109-JR; Tue, 30 Aug 2022 13:29:57 +0200
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
Subject: [PATCH v4 09/30] dt-bindings: phy: qcom,msm8996-qmp-pcie: add missing child node schema
Date: Tue, 30 Aug 2022 13:29:02 +0200
Message-Id: <20220830112923.3725-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043003_672085_9976510D 
X-CRM114-Status: UNSURE (   9.37  )
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
