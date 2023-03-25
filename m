Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 508A8C6FD1F
	for <linux-phy@archiver.kernel.org>; Sat, 25 Mar 2023 12:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zd6hGAm69SJwjNIHOMpQDkQH6j6mlgUltXBOE8c9nDo=; b=fNBRiLy5k/wgkC
	MTaynvQDKMPlPGKeGKO+WZkGEZQF7AT2Bp7tikRDao8ZGA3PFS6UxVvZXhvVGo1va6l/qBXWDYdAl
	uhkyhdcpj6jxIdmPindn90z4VaxtQVUN7nnbosQwA2TFUaiCgL9mvoe4TvEfJ6dVWoI43u8FNxgOA
	ZbAUoL4piXTViALAhgSsIE9VhrPMcBLQXi+pMgfk9y8ckfsXpB5SfKOjHopPT/cFU+ezmRmZdLoai
	0XEd1KMIR89J0W+eK/zdxot6ODebnNQLhDiMNG4KvdIAX31si4HK5WveA+ze7CToz2eZ4lCtms/j1
	iFczNFDZAkKVzlVy1x5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pg2xa-006gKd-37;
	Sat, 25 Mar 2023 12:25:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pg2xY-006gJf-0E
	for linux-phy@lists.infradead.org;
	Sat, 25 Mar 2023 12:25:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 96CB460C48;
	Sat, 25 Mar 2023 12:25:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5852C433D2;
	Sat, 25 Mar 2023 12:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679747122;
	bh=A9ymok+/CGMkt/H6RYi5QK5yyXAyJGJdWyfhM1XUAiM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YfEIAHke1Ikv5j5kihtoM3VuyFnZYaO8dTG5uniNGHfkj+0HrqV3eHd2TDaH2iq7l
	 J4LEVx5fUOoyNYuknR8EgfnDWTZnUg/VMLAhAzdil9qC0aPJDDbO9ABfww8WA9IjZA
	 xQRNR0MeS4Sbh70slR4jZlBbm/lqB3XFA3NhdaZKbn9uZ0Bz0IFG7vIoso6coHs9Q+
	 C40VoNreOOdWiK73cc1Gc/RYl20Nil20Mczs8kmtr7ehNSnmD4iV80SAminKGo53Cx
	 deU5q/C/WQSMY2hdpsPyix0tAQemNwtUwAWyLb3B4lj1vSe3NtnPQ7pXtfv6TjjoV0
	 oCocmylHV4jkA==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/12] dt-bindings: phy: qcom,qmp-ufs: fix the sc8180x regs
Date: Sat, 25 Mar 2023 17:54:39 +0530
Message-Id: <20230325122444.249507-8-vkoul@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230325122444.249507-1-vkoul@kernel.org>
References: <20230325122444.249507-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_052524_145089_828412F0 
X-CRM114-Status: UNSURE (   9.17  )
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

sc8180x ufs phy requires to describe five reg areas for the phy to work,
so move the description to the correct place documenting tx, rx lane
1, 2 and pcs.

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 .../bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
index 80a5348dbfde..881ba543fd46 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
@@ -160,6 +160,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc8180x-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
               - qcom,sm6350-qmp-ufs-phy
               - qcom,sm8150-qmp-ufs-phy
@@ -178,23 +179,6 @@ allOf:
                 - description: TX lane 2
                 - description: RX lane 2
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sc8180x-qmp-ufs-phy
-    then:
-      patternProperties:
-        "^phy@[0-9a-f]+$":
-          properties:
-            reg:
-              items:
-                - description: TX
-                - description: RX
-                - description: PCS
-                - description: PCS_MISC
-
   - if:
       properties:
         compatible:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
