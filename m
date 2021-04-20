Return-Path: <SRS0=RYiS=JR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8626EC433B4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Apr 2021 11:22:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BAB661363
	for <linux-phy@archiver.kernel.org>; Tue, 20 Apr 2021 11:22:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2BAB661363
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YiTA/GUYBLWwqhoqDJF+DNLyWVw+pltqnvfsdth70Qc=; b=jWauW/2MG1HwxZjdg46Hqi54Z
	9TvjdN9ul7oU7dAvJFvY4vRVMt/tv2yOvWmL12kE2uD8bkDuG/R4K4gcIIMTQlmLk4n5Kc+nth9fV
	yoFHh9NzUUIabEyrby5AZWvsTgAKa4B1y8RaKHb4uaPJReELPH+fkxq+qu7m0fvARkR8xv/KeMoxS
	qhMsRWZb1VPxlHO/UyBpCDOHWMGzLqhxkZZyqtIstLAg8oD2ccEEIJRiT4BrAHfiylfNrIHa1pYfZ
	l/TakMUjynzcryJw2KLhIIt/RJYRVmyeXSqsrvqZ+0S9ZJp7ZZNXloTcq46hNqfT0Di94B6Y/Ahvo
	8Jm6RfaBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYoSa-00Bxi4-6p; Tue, 20 Apr 2021 11:22:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYoS7-00Bxeb-D6; Tue, 20 Apr 2021 11:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=KYz+CpbirkWCNP0I/TaEvka5HPUZ0aLvC8PjGBadgg8=; b=bSn0e7VcqJIhBEHV45oJVbBmEu
 ONx+yL+08TP0HRkEVyoQL5Zb7o+0lqvbj47rNb9XfaVvWHKAml/+0s8lCnuGZVISIjLEaU+7JIbdY
 QlrtqOOXoBhEXTAlXhcTrjpSIEbQ02/IWKLLzo5JmGlqZCRLVQi9ew896C6fsouPxZwN7qJuQaAS4
 6lq7uBwGCvRX9c3nAhRbz9Jkl4KwZ3Fl9OezpM8jZMScM+au/pr+JEe93l7vyRFcUSQn8oq2o3RC4
 votCjWYqR7fFvlnoQ3ATCks2d2WRVSRymT3o1WCR1TQGt9Zq//l98aTANFbNoxDWMUhJDJp2yGHBl
 PVYhsP6Q==;
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYoS1-00C40H-TR; Tue, 20 Apr 2021 11:21:58 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 68450440E57;
 Tue, 20 Apr 2021 14:21:46 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Baruch Siach <baruch@tkos.co.il>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] dt-bindings: phy: qcom, qmp: Add IPQ60xx PCIe PHY bindings
Date: Tue, 20 Apr 2021 14:21:39 +0300
Message-Id: <f787ca496eae2a0d5ff4f17655eaff9f39a14321.1618916235.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1618916235.git.baruch@tkos.co.il>
References: <cover.1618916235.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_042154_204861_124EF64C 
X-CRM114-Status: UNSURE (   8.75  )
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

Add ipq6018 qmp phy device for the single PCIe serdes lane on IPQ60xx
SoCs.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 626447fee092..cb2eb7ac6d28 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -17,6 +17,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,msm8996-qmp-pcie-phy
@@ -294,6 +295,30 @@ allOf:
           items:
             - const: phy
             - const: common
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq6018-qmp-pcie-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Phy aux clock.
+            - description: Phy config clock.
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+        resets:
+          items:
+            - description: reset of phy block.
+            - description: phy common block reset.
+        reset-names:
+          items:
+            - const: phy
+            - const: common
   - if:
       properties:
         compatible:
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
