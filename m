Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA0E0CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 12:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AdWsHfAT3tf1U+YoXSAhRKiTmW1NVEzPElEhSMSS2M=; b=VQfLd79VkjRlRP
	Tqfj+7Rb2nOH4nfYu0ICDa/Uf9HWOukxk824r+qnNNwXXZ7VHRhaUde8EI4UlZhm+ghdc4UNPQPd9
	4/zDwh2t5wzgilljM4SNRIHsd78d4RL9kch8ltiISLQ8JysINQhD8u5HIXHiBhI9H27geEQG9+dzG
	ts1hvKghrPt4DDSJjUoqdtvASOyRlCgt62yMUX5LBguiqutprXsb0eefPUNbvYLSzJKct4x1+Qo3W
	ty+HJyBC/3V3/3+lcF11sAeDu3nOXMS6FcK4aT19ByWxNNIWIwulQkESzH3Ol2zAjQuUu+OUi7q7J
	M21/Rq2XrHy6OU5cffIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHfp-00000007cAp-1t5o;
	Wed, 10 Jun 2026 12:04:45 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHfo-00000007cAf-2W2p
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 12:04:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 11B3460261;
	Wed, 10 Jun 2026 12:04:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D95A51F0089A;
	Wed, 10 Jun 2026 12:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781093083;
	bh=uKld6mtpOAHOyUMP6+sCh+13il3I0Ttuj9CS6qy04Q0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=gQ/noQHJjHau+cQfA7znZdFUPUKda2/ysrQnTRe+jRtP+WekSeG4OzqfBGM3o96Md
	 6oRlXWKtSnHYCYnla40eUs/hSgtmkhQtKCqqE7x+ANgpcK/9aANooL+nMJP/hzERbN
	 7sck2bPPvZ0OM4E9eiK69ifEeHCoDQvIqTYsKbT3WTbA9KYPPiQ5OTGKP8dvDRjmzo
	 K8pASL2EKWYPnhjs5kmY6HeoA86X2EOQQ+/SqWQHo5/IAM0GB8QeE8lzt2vPqgDK43
	 Ezd4C7mFKbevAzAx6KbKde7uDfqMAA0GIojCIazOfnX/jIe1z5VoaFXiMEQR1k+4S9
	 tX1epyfW/WPBQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Wed, 10 Jun 2026 14:04:16 +0200
Subject: [PATCH 3/4] arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
MIME-Version: 1.0
Message-Id: <20260610-topic-8996_61x5_qusb2phy-v1-3-d7135980e78f@oss.qualcomm.com>
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Iskren Chernev <me@iskren.info>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781093064; l=1095;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=9ndZtXkmqXo1r/bpwIA6jBPYTw6ttBiubHvsJ0cp8u4=;
 b=xsEvEhhKA18OgnoIAxsGvKjnXq2ahSZ8va0geoaWMJQGSNKXsDUBlv+EbutsWuW/i5ybHSiiR
 yznMZvMT/T9BwUY0uaTaq4JpnF0/630KvdM4PSVlD16HY693zOnpizn
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

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 2f67e665996f..b7cd1928335c 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -3192,7 +3192,12 @@ hsusb_phy1: phy@7411000 {
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
 
@@ -3206,7 +3211,12 @@ hsusb_phy2: phy@7412000 {
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
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
