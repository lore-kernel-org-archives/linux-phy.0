Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D761BCCA483
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wojey88jCZuq4pHnpEgToH+rKVVhQY5/7G2YcSUsvAo=; b=1bMOUOJJ9dyNsZ
	JNdcvomO3oPug0chzohXpeO0yXbZ0bVr3WY8jmVMrWYOM8u0iCJNZ6jdOj1gIqsLo5mhTvSpxaR68
	Wf2FyaG0a/woZ0c4PIG2TUiQR8bwrZwRnJygVkb9PakuKLv/3u+1VYObCDCFhZBzh9Yq69XkQltNb
	QdnzPly3gqDdBUVwmcuzq5HUHuYP1YlZW3EupcD1St/qzIxvxudp5msrFA7hxWylKY4ERP6cMvTf7
	pkPI5YIx39tQLr7YoBM8ATABLxELrJBf0Xj9LYpO3ALvRpBWWJreFgqK1D5RdnY0MFd6vVNSJtEDh
	unlf/M4KnBbRGDMWd8dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFD-00ENDD-Rj; Thu, 14 Jul 2022 12:47:03 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCN-00EL5I-61
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 72C24B824D8;
	Thu, 14 Jul 2022 12:44:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECB86C3411C;
	Thu, 14 Jul 2022 12:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802644;
	bh=WT1TCwY0xDzD9LpBao3oeoK3FF0oDsG1iAFQ3ub/Rk0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HZpAJmI/WkwKb3aSVlExVSx7d4rb0VPdIKCFnoG/SNjLUdBeaa66+itb5TWJi9aGY
	 ITIy/Jziq1iOL1mBUWsTX8cDYVD6tOtpUVeYcmDjfY9i5Bh5uqv90IaC7ZnDnixuU6
	 3OIod/zO2uC4M2nJpKsXSNloCO3jASemIZ8X0r7hmZTRDx61GSwddl2KZKj81KQpA7
	 fIMh4VYq1B5J432bgoNitLyqNcuxeXqVLv+pC1ziDTT8pDnNuBEaJRoxyI62dA4L51
	 S8Ncr/5opkjjjDQQBCLdldBWajWDXlCQkQA5bmbFzuUaJwgZ9xcSG9MJ60W6Be9wAw
	 VWgOWnJxc00sg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCP-0007DF-5S; Thu, 14 Jul 2022 14:44:09 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 05/30] dt-bindings: phy: qcom,qmp: clean up descriptions
Date: Thu, 14 Jul 2022 14:43:08 +0200
Message-Id: <20220714124333.27643-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054407_419452_157981F5 
X-CRM114-Status: GOOD (  10.77  )
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
index ad52bc1c2e1b..189618dedb00 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -11,7 +11,7 @@ maintainers:
   - Vinod Koul <vkoul@kernel.org>
 
 description:
-  QMP phy controller supports physical layer functionality for a number of
+  QMP PHY controller supports physical layer functionality for a number of
   controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
 
 properties:
@@ -64,8 +64,8 @@ properties:
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
