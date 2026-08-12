Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3ED5C5DF65
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Wr9Kz596Xfxe0GJvyDy624CEPCxTsrl8L+BQP/hXKw=; b=Xv0vSyVNzH297k
	IHh72+FR65mYFrGmZa8MeiT9WTD8q3k8/boRE+3Lo90ye4hRFiMpcag4DduJMySyXdKSb8WlOrQKT
	W1JRbu09dsSTowE6SwOYz4VT/H/+7+XcQmPWyAKvoxTQ713lgfhpzU20p51EKd5Gl0IHCIoxugHxO
	dPK+hErEmRsKc80ALbllHMykuCYtRxHSf37VJp9Vyh/dVM8T1vES+MFMZXo0I5tJ2HdnEUO/ru/fk
	juP3LmlpV2xB5V5RH9ZJzioF16YDODvO9pEerYTPw7kHM0yUcqZ0BEh8S9RvCm5xL22OuB0c/TNCo
	+1OsPxM9g4uod6lZOT0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ML-0000000FlkO-2kZC;
	Wed, 12 Aug 2026 09:34:53 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ME-0000000Flf0-0cu7
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:34:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 51BB045008;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AC17C4AF53;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527285;
	bh=bdcHVjGUYXlwDPdIUGyb7URJPOBK/wdIe1BITYbbxZ0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=VwMUx0eurBLMsHQQrzlRKk75Wfu8UDea9SImWA6kEZLDxoUzx97k1vHKtLdAIMVeF
	 xaW8Q7KSiZKypCCjkw3SPwnJDHpfKaE16ZYrN9C+3QfSYjQSoIHM+ODwsAqaHheC39
	 Tl3iazBr49qc/VqQoEcBMG6/5UH7vnVOU6lO5u2UBVlS/7lnzb2D9HrlAtRU8YMrb8
	 PWfs9xKeIZB3O5BrOQBxeWftMefhSfT1Fap0D8wADczvoNoFLeY3nTzGZ88c3V04Ss
	 +LzpTwxodEEtyXII0hJCLJx/bZ4OIuk9S1ETOHtJr4JpjBNdUliNNpU7k4sveUn0aP
	 A7eJ3Hobju5Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8E6DC5DF60;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 12 Aug 2026 13:34:44 +0400
Subject: [PATCH v2 09/14] arm64: dts: qcom: ipq5018: Add clocks required
 for USB3 support
MIME-Version: 1.0
Message-Id: <20260812-ipq5018-usb3-v2-9-8f355d7ff0ef@outlook.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786527282; l=1362;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=cXGdcodsZoWixVoo93oDnydVyYvzvkTVsXin55/V6T0=;
 b=q8LqsvAPD9RMUfUfZ3cmz4YJm+UuhTA7CUNrJlRjIRe4IbzcZzUr7lq01dWZpUNOdvGLLJ817
 qhAeEhYFx79B5PEqAE7Bn5NUBvmqSeea7adT76AEN7r2ac9x2JJZRI9
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

Add aux and lfps clocks to USB controller node for Super-Speed support.
These clocks are required for USB3 mode only and are not needed for USB2
mode.

Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index 965649db36f3..c98889a7c26c 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -604,11 +604,21 @@ usb: usb@8a00000 {
 			clocks = <&gcc GCC_USB0_MASTER_CLK>,
 				 <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,
 				 <&gcc GCC_USB0_SLEEP_CLK>,
-				 <&gcc GCC_USB0_MOCK_UTMI_CLK>;
+				 <&gcc GCC_USB0_MOCK_UTMI_CLK>,
+				 <&gcc GCC_USB0_AUX_CLK>,
+				 <&gcc GCC_USB0_LFPS_CLK>;
 			clock-names = "core",
 				      "iface",
 				      "sleep",
-				      "mock_utmi";
+				      "mock_utmi",
+				      "aux",
+				      "lfps";
+			assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
+					  <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,
+					  <&gcc GCC_USB0_MOCK_UTMI_CLK>;
+			assigned-clock-rates = <200000000>,
+					       <200000000>,
+					       <60000000>;
 
 			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
