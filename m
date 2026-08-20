Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 607B7C5DF81
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 14:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vW3/zmLkygjs0stXCTiHV0hyqnh9grYGofnMZvV8tCc=; b=urjLyBehfAgLp8
	tH+3IPlnbZhrDylv/PrIMjkYXRUEd4SQPyQxw29P0MrePpZU0tzgVsYQfogT92ArGMajuzAasQg5Z
	suJShyHkfmQLlhTPFd6ntkQRFOdvKfWW3QBO7NSJMLyoo/I6i3Wb5v8sfHw/WTU07SuwmC09FpQSF
	pm4VITl+7nrmVKeqqqgEMSxBNBZzgYWo408TkE84w+nBgx6AY0Nd84UpVlWU/PmSBUjeSkrO+K41j
	piUrgC3ba/uMscp0d7e4Z4ZUXzAotYJsTHoAuVlijg4wfXzI6mlwDQhFbyo3Q0oPHr14DbMu7nzeo
	QG38AKJirgmOiC2bSdmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3hJ-0000000BhCL-0AIF;
	Thu, 20 Aug 2026 14:24:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3hH-0000000BhBU-1Ckr
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 14:24:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C41BF401FA;
	Thu, 20 Aug 2026 14:24:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B5BD1F00A3A;
	Thu, 20 Aug 2026 14:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787235886;
	bh=xKYz+iyUJ7D8aXLCEzfJSofxHvev8MRiekI3GPvcDKE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=BsT75KT3yAbuOFRT07b9yh14rMq66QQt2QPH4ohDl41LGwV3yzqhhZ7WWeHmmY4Q4
	 +3BN1As6A6EQC9tdXGsEqfSENOja1WbJ5uobg6KlsfldKNXeLEMbScJr2CTstRvZPN
	 Ed7Sk+Tc/Cwceh/PN0JxXrduzy63rhg/3vQH/Zk6lCUK/ouI0qb6DvK+Ta+lUO0BMu
	 QY3DAFlcta50eNifGXpniDHYTwn/MchhnZt2ZDFr6oV5H1ZaU9eNqhQ2wChD8kzC03
	 ij2zRcw+uFGVYXm+tWTTKkQvtQWPfNe/R0RgDCyz+wrbdbAB6G1xzkWn+75Evl0/VO
	 dYac+KBRanT+g==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 20 Aug 2026 16:24:14 +0200
Subject: [PATCH v4 5/5] arm64: dts: qcom: hamoa: Extend QMPPHY description
 for USB4
MIME-Version: 1.0
Message-Id: <20260820-topic-usb4phy-v4-5-aec9d2cb31f6@oss.qualcomm.com>
References: <20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com>
In-Reply-To: <20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 usb4-upstream@oss.qualcomm.com, 
 Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, 
 Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787235854; l=2242;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=1Y4QL2IvKdhr8co3E6ksVFTcg4K1mp07QkMtVRBoBxw=;
 b=XvRFlREVvYzX0XCiJOxDvZZRPQcU54jNk28jx5xbH2GtZjNmAR97vddjhiIVbtx5l6cXDTV1O
 PzkMbjOuyV4B1SMwcGFhqtp+01eUoJ0UZlwLFJg2NgIL3H/O2h6ACuz
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

The USB4 part of the QMPPHY requires that one more GCC clock (P2RR2P -
PHY-to-Router, Router-to-PHY) is enabled for the PHY to initialize
successfully. Describe that.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index 8a96ea1bdb9c..17a7fbaaedc0 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -2833,11 +2833,13 @@ usb_1_ss0_qmpphy: phy@fd5000 {
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
-				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>,
+				 <&gcc GCC_USB4_0_PHY_P2RR2P_PIPE_CLK>;
 			clock-names = "aux",
 				      "ref",
 				      "com_aux",
-				      "usb3_pipe";
+				      "usb3_pipe",
+				      "p2rr2p_pipe";
 
 			power-domains = <&gcc GCC_USB_0_PHY_GDSC>;
 
@@ -2904,11 +2906,13 @@ usb_1_ss1_qmpphy: phy@fda000 {
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
 				 <&tcsr TCSR_USB4_1_CLKREF_EN>,
 				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
-				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>,
+				 <&gcc GCC_USB4_1_PHY_P2RR2P_PIPE_CLK>;
 			clock-names = "aux",
 				      "ref",
 				      "com_aux",
-				      "usb3_pipe";
+				      "usb3_pipe",
+				      "p2rr2p_pipe";
 
 			power-domains = <&gcc GCC_USB_1_PHY_GDSC>;
 
@@ -2975,11 +2979,13 @@ usb_1_ss2_qmpphy: phy@fdf000 {
 			clocks = <&gcc GCC_USB3_TERT_PHY_AUX_CLK>,
 				 <&tcsr TCSR_USB4_2_CLKREF_EN>,
 				 <&gcc GCC_USB3_TERT_PHY_COM_AUX_CLK>,
-				 <&gcc GCC_USB3_TERT_PHY_PIPE_CLK>;
+				 <&gcc GCC_USB3_TERT_PHY_PIPE_CLK>,
+				 <&gcc GCC_USB4_2_PHY_P2RR2P_PIPE_CLK>;
 			clock-names = "aux",
 				      "ref",
 				      "com_aux",
-				      "usb3_pipe";
+				      "usb3_pipe",
+				      "p2rr2p_pipe";
 
 			power-domains = <&gcc GCC_USB_2_PHY_GDSC>;
 

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
