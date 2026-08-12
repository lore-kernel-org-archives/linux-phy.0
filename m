Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 449F0C5DF66
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Ty+27gG3dtucbe7YYAHOMse1IsPZEQC5W/GnSMn/h0=; b=Q28V3LyewclLXK
	HsKgsvPwv1/baTVa3CKpkHUAwbbcyldKi/ZU+c+yUSq9BvXQMJHVa/pVvgFbL2EyWM09PD/k59/pT
	XPO6wbh0X/t66NkexDpry/px0N80Va9gAF9YnOSGN+dZdMlFYDaR8h2mspA9jZcfxorA8Erx+m4AU
	xJny2Nm6WgxbNk4jqO0Z1jWykXNkY8GELc/Y007wcU7eDsUc6nWCLZapC9o+n379sDftM2YmRM/Un
	bvLZK5BIsQTsCW3/BB8ilK4wJGUKnyUe852marTDCwlEGYtlSQgAk5vIiPQmUpJoYPtYomIqGv5Ae
	YMxsu+V8Ugdfvro7yFFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ML-0000000Flkf-3Ksh;
	Wed, 12 Aug 2026 09:34:53 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ME-0000000Fler-12QB
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:34:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6EDDA45044;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3DFA5C2BCB9;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527285;
	bh=7Zgspg2cpl6a219QZ8lKlBpC1rJx9A4XKCi4EwWakz4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OerUFEAxmp1R9K2WcROdmtYEG50/RQvzrOp9B5RxAzjK3sQAIezncrTUgqZgaNn6T
	 qxVTU3ECVjgmXcNzoV9GCW06Bn+71uO1SnI75NUIox6jPoe51XFM4LiMfuBYrHD4rb
	 azWjRDDdJN7HB8yEsvr56eUzzQOyLwNnf+WQ+nERh0+6oTVklcVurW5/18rqtXtiGP
	 MssRhuMZMShcf0oasjAr8276cWR2NAZxHidzfHnENZKw4IyY6Fqlif7UYZ6GX5jcoa
	 hRrv2ZsSeoi8WNZVYIGfT3FEvALmWxtou7mcHyeR/YJKhvcvebyIpP2OrQfuzaHvYP
	 0M+NQlMDk7OcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C3DAC5CFEE;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 12 Aug 2026 13:34:48 +0400
Subject: [PATCH v2 13/14] arm64: dts: qcom: ipq5018: Enable USB Super-Speed
 PHY
MIME-Version: 1.0
Message-Id: <20260812-ipq5018-usb3-v2-13-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786527282; l=1078;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=mqT4fUHiS6tNRhSdjnTI3aemIVcVL9vUJPPDNDpgcvM=;
 b=qybIHF+s5v1NyNyS8IxUiy4ByiNmC5uvk2E2MxcCfRck+On3NOjNpbgSzSuOLekr36997faes
 fk0HgB6X4OuBweXUd68uRBwhjQAcHkf+Cp2PaeVJ1IR7k9uB1GmwqU5
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
