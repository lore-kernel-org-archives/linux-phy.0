Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F232FC61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 14:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eetrr1nhuAEqu9zdsVo6Y94K3A56R4PIk2N88CH58Lg=; b=YSg3qFh3f4v3CW
	9/01loyAvDvyki47Od0we226sAI9sYSfjjeWcNPC3tMwArFFg+KeTvOJkq8la6X59Mvq34eN58VYd
	xLwq57tq3mkESD1HCRVqdugmqSAHHKRq+/yf/qKXUBvq/q82AUvIffmOH3uTdL6e9kMQTgk76kg9z
	WPxkFntrxlpdXHkxletzDFPJD+vImn35sbTz/NKI332ZJbILcGglus/DXjBaYqmCLSRDzkfE9QVa2
	IWuPpRg45rtu3XpsTGJVUEhvXcYuZetrwnopbp2zNUJkFcnSHlsS4Bb0SOHhMVLmgDG9acjt4Lz+/
	lqK/5GfI9DgpL0OSeIPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28ON-0000000HVoS-2x2S;
	Thu, 03 Sep 2026 14:26:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28OL-0000000HVnk-2cQ6
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 14:26:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 04C196053D;
	Thu,  3 Sep 2026 14:26:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72AA31F00A3D;
	Thu,  3 Sep 2026 14:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788445572;
	bh=neRbU9LB3Xemki7gzCW5yXCFDaWy8dIX25VeagDVLmA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=lsfmEqqlxSeJ7faIAfwyZGPVcWq1w/O1ch81KPFoKeNfzAJJHV89W6wwQnv9+eKkJ
	 WFPfkVP1tsHuvF/4Te2bORFgqAo/1sqHVLLENTPgT70eTNvvuwqaa/znuaeiNv0Nod
	 6tqNNCoUf0JWi5fLiy0+QIMwWEGbyjJsgqty5CFm/tRQ9zXlGzVCnVIPBFIhm/WeFG
	 +8OswQhQlMqXWwLa8pEyS78S9QnsL/seCcpU/+CyJST9r/GBifI4gKM5JRy/TQXWij
	 TodE5eQqh+sX1nGmjvEJ3RDbt12dPfYVnSDAVuKr3wot2nbUGTA5V5CvrnMThOujNo
	 F0o69tWErlhxw==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 03 Sep 2026 16:25:31 +0200
Subject: [PATCH v2 4/5] arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
MIME-Version: 1.0
Message-Id: <20260903-topic-8996_61x5_qusb2phy-v2-4-4c3f980a4560@oss.qualcomm.com>
References: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
In-Reply-To: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Iskren Chernev <me@iskren.info>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788445548; l=1162;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=72aq6zdogIVPhFTOVVc3SSaAPJKqzNxzekc641wndko=;
 b=L/IVNJHtX8+XZYw855/myqRIYs1Y21XX5/1bTi7uFAbIdUpSTzBGtEBS0LPa1YpNW1JAEH92/
 yR/R49TZSIzCRI79aIGtxp8EHs/nZ2SgjLPqL6qxsX6lUtF0wzAzhtK
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

The QUSB2 PHYs are powered by (among others) the VDD_MX power rail.
Describe that in the DT.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 818e5660df91..cf17dbbacad0 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -3216,7 +3216,12 @@ hsusb_phy1: phy@7411000 {
 			clock-names = "cfg_ahb", "ref";
 
 			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+
+			power-domains = <&rpmpd MSM8996_VDDMX>;
+			required-opps = <&rpmpd_opp4>;
+
 			nvmem-cells = <&qusb2p_hstx_trim>;
+
 			status = "disabled";
 		};
 
@@ -3230,7 +3235,12 @@ hsusb_phy2: phy@7412000 {
 			clock-names = "cfg_ahb", "ref";
 
 			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
+
+			power-domains = <&rpmpd MSM8996_VDDMX>;
+			required-opps = <&rpmpd_opp4>;
+
 			nvmem-cells = <&qusb2s_hstx_trim>;
+
 			status = "disabled";
 		};
 

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
