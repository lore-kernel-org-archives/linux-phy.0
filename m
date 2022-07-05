Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F251CCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFYEL4cMwzec2JlneJTVV0cQo7rTj+6eHMaTePTnM+w=; b=GXm1HZd5zWjplL
	04QlonwPkA8O9Ezlx4RMk0k77uRmpw+1UQrLhC3hQK3zPD6/q5jbk3Qdto8NUDolkONxSIhO6yniL
	Prvs3oAM1bTx8h22hQIaebIx2qG2ZB90P5glbrk8PJ5FozLlB14n87Q2nioSTK2RVsMXC0r2YisdC
	+cht/CBBCTGLNIYtE+PBx1vDKJq46oAfLDQ0JpUDuGTdeFikAwVgF453sJzESxE2yLoPgMfKiXtNE
	SUVwH7RG3lSoSNnsO/daWYJYorQln1DlTywTEZ+P+0v9v+91EPkQpCWQK5kBjQksg86lYQV0G3FN+
	GR0HLKj3O46lSufAbBMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDd-00GwWm-Qx; Tue, 05 Jul 2022 09:51:45 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB9-00GuYH-UG
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E9781B8171F;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BD84C341E5;
	Tue,  5 Jul 2022 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014542;
	bh=NMxyyY5EOHfjt1+lyrJz2Sw7j5+cVRS+u/94icaLdxk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fc0zByHa8OBPw8ZPM3aEkjaODp1ACGATqXRzqG/DX8fu/t/gpsp5+LgQcupn/nghK
	 6fql2kkMWoYp/Q+FjrsmvGCrW851LtsziS3NxWDxcMMHOVt2T53ADzXzb1qj6bbcTh
	 WFsXLP2eCaiAsWpSN2Pl7vnCbvmMR6OaWVYf40PNcXOMziit732qGIge7lL7vcInLP
	 ymtsIWrGsNDlIV6SbXTj6CI9MXj2eQyWvulfBZ4+Hs4S0g/bCjFUEKGbCyE063Xqx8
	 KHlPl/4yLGe47B5u1KCzK0id67EmDXgHVbr3Zo2/HTScldI6nbuylM4IkGxjAQGMFV
	 Rdi4RfmRMEk7g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB1-0004XC-7O; Tue, 05 Jul 2022 11:49:03 +0200
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
Subject: [PATCH 08/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: add missing child node schema
Date: Tue,  5 Jul 2022 11:42:04 +0200
Message-Id: <20220705094239.17174-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024912_185477_1A8E55A0 
X-CRM114-Status: GOOD (  11.10  )
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

Also fix up the description that claimed that one child node per lane
(rather than PHY) was required.

Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 51 ++++++++++++++++++-
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
index b73bf5c06358..8aadb25686b2 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
@@ -66,8 +66,55 @@ patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
     description:
-      Each device node of QMP PHY is required to have as many child nodes as
-      the number of lanes the PHY has.
+      One child node per PHY provided by this block.
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
+      clock-output-names: true
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
