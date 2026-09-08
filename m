Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DF34C79FB6
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 09:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSUg2oov5KXa8ff5ygKDMBQfacu5/fVzNHNnpGX+kUE=; b=wi+kcz923EEV6D
	20vXFTUZymnlHATPmY5Bv7ixuRmqVNmiY/OgYafOYreUNLCBw/0WfFsc2FOnorLxSPRHJSZN0EqYd
	aDBWSnbZHdCvXlHr6kcecNTii0UjPUiWurgqXGJnGt6nYI0lLOTM6jkMbNZo0skBGzp+5exFEr5j3
	yrgT6X3UWCIav22ONuY9uY+DI/yC8gTr4+nnp2QnHHjIuNiPoIcSTxjnFUrngIxuwTq3RGUazkimP
	huXl8LVGK8j6bhovr92v8yBFX5qSdGWtodx+imvpjoeLkPta8UA9PlOUEmIgX++tHh/5oxhjQOynx
	Dhrv5hX9H7sll9iZAtZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sL0-00000008dvP-1LcD;
	Tue, 08 Sep 2026 09:41:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKy-00000008drJ-3ike
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 09:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CC12E444FE;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC02C2BCFB;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788860516;
	bh=L6/tHcGjjx80t8rzbIBaij+88GgQawCNtisJ0JSOs4g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=hQVSYbS+lpKq2pz6y/Y7umrKVPHXoVKr2Fbv/2IqR3/KZRhzfZjj5j+OPYkVIfIHE
	 QnRivaZYoLF1JxnYTRaQPWYDHX/id41t7p6HBRrnY+qBWoSdVu31zi2rlRFPfvZ6Ui
	 81gyTiZrY7GRiVCa0Fo7x07ZfjF1xAF2AP25AJ07/po+vfXJu6NZsxMcjXV9Tdy26e
	 E63YRHjFVZcbGn3u6RNq3rfCOL1oJXU6r4+SfIn5t1daQR3QlYWHgBWu+XbXxmX6TX
	 jGjn251OoG2aW/umOjba1pErhQx7e3Iy+hslBOCIr7c0Mpk9uiPedRJAcFE3hxfFxY
	 F8ZR5Ot+D7hvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5CAC79F82;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 08 Sep 2026 13:41:06 +0400
Subject: [PATCH v4 13/13] arm64: dts: qcom: ipq5018-rdp432-c2: Enable USB
 Super-Speed PHY
MIME-Version: 1.0
Message-Id: <20260908-ipq5018-usb3-v4-13-b789702f0695@outlook.com>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
In-Reply-To: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Stanislaw Pal <kuncy7@gmail.com>, 
 George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788860513; l=1184;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=55+OVTWKoDEF3wFthbSUFmewrmNa0eMnoTEShtYSUqE=;
 b=7ZYFYqUEweAtZ4nB5oD6JUvuE6pzxgG0QSFyde93gD0Xb4pnc7NncPC4g/lv/YdjfWRAuQQ+T
 6LUVZWGdY9xCIkpncL1xBsS/Ja2ivIPl4+oWlRWEdXa+yynBBhj4Ss5
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: George Moussalem <george.moussalem@outlook.com>

Add the 5V supply regulator and enable USB Super-Speed PHY support.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Stanislaw Pal <kuncy7@gmail.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
index 8efb2b21ed9e..ca29f271e673 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
@@ -22,6 +22,14 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	regulator_fixed_5p0: regulator-s0500 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "fixed_5p0";
+		gpios = <&tlmm 24 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &blsp1_uart1 {
@@ -119,6 +127,12 @@ &usbphy0 {
 	status = "okay";
 };
 
+&usbphy1 {
+	vdd-supply = <&regulator_fixed_5p0>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-div = <4>;
 	clock-mult = <1>;

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
