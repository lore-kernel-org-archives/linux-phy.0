Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2026C3ABB2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 08:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3TdX6TjfhcpQvqs7z8JmCYcpKUapRYBOQcPF9IjujA=; b=H8jPx7zjKoHaxg
	2gO0RlXmea4oY5NfMOBz8POKuRJdOKLrzMP6hYPCGwpF9HsU9W8eJSP29gsRAIpSVAHjVIyci1rEg
	aXm8bvUiokkUPH/DJFSRal4L/AGsZqYXzLRxGJgpHo5ktiBxHVgr4SZ+gc+Aa/hWYXA9S+gXRzO94
	1U1Jyrv5sQq7mViwP+Q1nT0KGegFnGJDzRsX0aUEuD+nU18Vtieq2G/da7eqSBGv3vQhuyCTVrWfC
	YWO9KFapjKfTYzEz9S+old1Uth9uPV27vF7/Qo7nT7W8uq45Y1pUllT9BSR6Hj1ovR+zZLbFE/Y3z
	tCmFjD/BJz8o3Gfs/YmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq72C-00000003Q3O-1I4q;
	Mon, 16 Sep 2024 08:24:36 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sq729-00000003Q2L-2LXp
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 08:24:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 41474A41A00;
	Mon, 16 Sep 2024 08:24:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFC69C4CEC4;
	Mon, 16 Sep 2024 08:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726475071;
	bh=Wf9INyT23C7eoSKjjaTEvngtr5T3HeKJz+9JAevCrC8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OUgM59wJasBz3eLuDLU6O0zMzVv5u1WHPn39kX09el4fFG24DLDi+RqczjlRUYD5x
	 LEKSF/VguDsYKBOc8eZBi0OlqJE7N1Ffp2Qh2Q7R0G8Oth6Gk+dAfj02vBVpBghYF9
	 lLDlr7nv5Zcj3imZjSI2fuTGjAq0pMwZUd5R20sDgWNoJO4eMwovoa6/5pZvoN1yck
	 mIpJzESdvC/q3oL5RI0MU6LmTF09K8zDWxpcEWi6kAmahF6SA1qvb/3nNgYQ8qFY9l
	 kgtqV1U9zAhOSAuNSBO6KBCR3GOhqxHdEHD+XIX6wOzMSulOyO4xyrarbckNG1x8f5
	 zQPdl5M8Mr4Ew==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1sq72P-000000007hI-2aFR;
	Mon, 16 Sep 2024 10:24:49 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: qcom: x1e80100: fix PCIe4 and PCIe6a PHY clocks
Date: Mon, 16 Sep 2024 10:23:06 +0200
Message-ID: <20240916082307.29393-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240916082307.29393-1-johan+linaro@kernel.org>
References: <20240916082307.29393-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_012433_683176_DB929C4F 
X-CRM114-Status: UNSURE (   8.29  )
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

Add the missing clkref enable and pipediv2 clocks to the PCIe4 and
PCIe6a PHYs.

Fixes: 5eb83fc10289 ("arm64: dts: qcom: x1e80100: Add PCIe nodes")
Cc: stable@vger.kernel.org	# 6.9
Cc: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 0cf4f3c12428..53e7d1e603cb 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2980,14 +2980,16 @@ pcie6a_phy: phy@1bfc000 {
 
 			clocks = <&gcc GCC_PCIE_6A_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_6A_CFG_AHB_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&tcsr TCSR_PCIE_4L_CLKREF_EN>,
 				 <&gcc GCC_PCIE_6A_PHY_RCHNG_CLK>,
-				 <&gcc GCC_PCIE_6A_PIPE_CLK>;
+				 <&gcc GCC_PCIE_6A_PIPE_CLK>,
+				 <&gcc GCC_PCIE_6A_PIPEDIV2_CLK>;
 			clock-names = "aux",
 				      "cfg_ahb",
 				      "ref",
 				      "rchng",
-				      "pipe";
+				      "pipe",
+				      "pipediv2";
 
 			resets = <&gcc GCC_PCIE_6A_PHY_BCR>,
 				 <&gcc GCC_PCIE_6A_NOCSR_COM_PHY_BCR>;
@@ -3232,14 +3234,16 @@ pcie4_phy: phy@1c0e000 {
 
 			clocks = <&gcc GCC_PCIE_4_AUX_CLK>,
 				 <&gcc GCC_PCIE_4_CFG_AHB_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&tcsr TCSR_PCIE_2L_4_CLKREF_EN>,
 				 <&gcc GCC_PCIE_4_PHY_RCHNG_CLK>,
-				 <&gcc GCC_PCIE_4_PIPE_CLK>;
+				 <&gcc GCC_PCIE_4_PIPE_CLK>,
+				 <&gcc GCC_PCIE_4_PIPEDIV2_CLK>;
 			clock-names = "aux",
 				      "cfg_ahb",
 				      "ref",
 				      "rchng",
-				      "pipe";
+				      "pipe",
+				      "pipediv2";
 
 			resets = <&gcc GCC_PCIE_4_PHY_BCR>;
 			reset-names = "phy";
-- 
2.44.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
