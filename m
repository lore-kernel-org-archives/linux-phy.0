Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DFA0ECAAD4
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1hwMkUKLxhFlQ+x7dpDskSFYTpiXImTUyHnbUcGdbI=; b=Ubrfmw4YZV8fHC
	9sHqnQs6SPSv5T1lpB1gJyrWuXNg5y2mxxY9xJsFEhBTp8TVSjISbvbiv+Yg1j/9mmoPsLMXtOVRZ
	oMJENzT8ArwABMLfnNZL2bNChm8FLVIR/VhnnYFXlsRoJVUK7y3J0vqbC5+hyPlvvRke+BrmK32Bs
	dQljwNXOoASPwVAaaQX2ke3LfO2EmYLbw7KDUSrhAiXwSvqgO0HXFVyZriexf5Qee1WAAhrba2HyJ
	WL3gFtz1ZfYkKFhkQbdMps3JnjiAfvOOkmQ5Jdsh9XleVANOtdyzGBkdTZmbdcZZzjkulpGrGC5r2
	BUgXc3QIkEWTHN3hZTMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRV-00GZYC-2M; Tue, 30 Aug 2022 11:30:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRR-00GZUy-VZ
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EFD2C61547;
	Tue, 30 Aug 2022 11:30:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4A3EC433B5;
	Tue, 30 Aug 2022 11:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661858999;
	bh=btBM/lw889YzrV8unkE/SmF0HeMiLG8bwnVYwR4ufYQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RoNRsFSSFSKBM5i5PD+mBdwPvUTtBH6mwCI4qePjF0jcEnihlZJn2SD15IELKmt9y
	 yi9P7O6IUbxSEwrLcUXYJGDyvTRG9hVT6XjsU7vhblL/R0QNGuvx9dOyBNyBn12Z8v
	 txqid5PeoAY+fy92rSQnZAVL+33+4Pp0I6uZQy3DAJuk6zfOaOLeKvgVGWWImuALkW
	 KMNmR//MDotQRVNYKBrt2idEjFRse6jIAQ3qYUtXzzuklQisLbeRPpuJ1rbv/IegpS
	 mwUZw2xy8NJajSDXr88eRveGhkEmrSa5Xq9gR8cpc6zmHdZiXFGsbly1CxK4QEQc4z
	 swt4fgF4QWjWA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRN-0000zy-9L; Tue, 30 Aug 2022 13:29:57 +0200
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
Subject: [PATCH v4 05/30] dt-bindings: phy: qcom,qmp: clean up descriptions
Date: Tue, 30 Aug 2022 13:28:58 +0200
Message-Id: <20220830112923.3725-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043002_106136_11C1C323 
X-CRM114-Status: GOOD (  10.78  )
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

Clean up the remaining descriptions by using uppercase "PHY"
consistently and dropping redundant information from the register
descriptions.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 370a7e55622f..d2b35562b9cb 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -11,7 +11,7 @@ maintainers:
   - Vinod Koul <vkoul@kernel.org>
 
 description:
-  QMP phy controller supports physical layer functionality for a number of
+  QMP PHY controller supports physical layer functionality for a number of
   controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
 
 properties:
@@ -65,8 +65,8 @@ properties:
   reg:
     minItems: 1
     items:
-      - description: Address and length of PHY's common serdes block.
-      - description: Address and length of PHY's DP_COM control block.
+      - description: serdes
+      - description: DP_COM
 
   "#address-cells":
     enum: [ 1, 2 ]
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
