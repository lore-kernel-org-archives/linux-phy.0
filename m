Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94BE7C54E64
	for <linux-phy@archiver.kernel.org>; Mon, 25 Mar 2024 14:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9aWe74VDKiWfD+cPU71VGQYDl5GUNJirl1Wsgh5vTs4=; b=e3EXlD//uhHPls
	nbG33yik11TeLUXXes8nfA9EWdPc3QGY8UpXgfsKJDYsTtbdDBu89vZ8xSdtaBSbasSEj1DXOfVpa
	4eQSjlZT/a6BOoVvlQzLHh/jyFQSr1qgXz5oLrVTl/ZCl0HJXLtDNsm+5UkjT4ZvFBniiojEleF6Y
	3IebWTLB49Gbp6yg2EzPEX0Lav/p4R8MXk1M+YxiTEyhsbBb/Am1rq4R7xXngiQ2KLm5kauDx0qf8
	TECq1fwQnfyJnmfebSmX+tLtj/qlYGU+SnM5BdUB1WzsQBUvkNTvEqe5mCzcZyKrfWgFlO9o5phkk
	Gd4fuvm0WEIYccnkDwAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rol95-00000000AiE-0uRR;
	Mon, 25 Mar 2024 14:17:51 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rol8N-00000000AMi-2z6n;
	Mon, 25 Mar 2024 14:17:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711376217;
	bh=t+Zps2/0vSceUv6LE6EZiuGiX/pPNy+d+dQxryQePbw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=meineDDs5MI7/8coW/a3dmwgW3+GUOjJPoX+rLMX2qHVRlZZyPWjlgTcNlJ8BqJa3
	 ikPPzSFS8iaxhEd8+Lxoari9LzQKAFwNDTAzdf6ZzFl2tVpi5I5P1bVz921a8Prhlf
	 jWww6zvHSq7s8zRYqsj9igU4+rqem3c0DD5w1qnCMAuQCL9LVNz59d2qEvTNvAKuHD
	 E405+QFe89olteyMwlHQkucKdz43OxqKJC9Hy4YPkGvJJ51cpsTBq7zj4SF2B+LXJK
	 J4n0wYmfwyxzSuSjzJU2anmXu1w+JhsuGNO6xx0EV1ps8KkZF4ApRNZvX0O3Zviytm
	 m/oIt61lqB6OQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 8B12D37820D9;
	Mon, 25 Mar 2024 14:16:57 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 9A8704800D2; Mon, 25 Mar 2024 15:16:56 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v4 05/10] arm64: dts: rockchip: reorder usb2phy properties for rk3588
Date: Mon, 25 Mar 2024 15:15:35 +0100
Message-ID: <20240325141653.84910-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240325141653.84910-1-sebastian.reichel@collabora.com>
References: <20240325141653.84910-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_071708_185908_1D731A93 
X-CRM114-Status: UNSURE (   9.76  )
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

Reorder common DT properties alphabetically for usb2phy, according
to latest DT style rules.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5ed0d8c95427..36e0f198f6bd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -546,13 +546,13 @@ usb2phy2_grf: syscon@fd5d8000 {
 		u2phy2: usb2phy@8000 {
 			compatible = "rockchip,rk3588-usb2phy";
 			reg = <0x8000 0x10>;
-			interrupts = <GIC_SPI 391 IRQ_TYPE_LEVEL_HIGH 0>;
-			resets = <&cru SRST_OTGPHY_U2_0>, <&cru SRST_P_USB2PHY_U2_0_GRF0>;
-			reset-names = "phy", "apb";
+			#clock-cells = <0>;
 			clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>;
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy2";
-			#clock-cells = <0>;
+			interrupts = <GIC_SPI 391 IRQ_TYPE_LEVEL_HIGH 0>;
+			resets = <&cru SRST_OTGPHY_U2_0>, <&cru SRST_P_USB2PHY_U2_0_GRF0>;
+			reset-names = "phy", "apb";
 			status = "disabled";
 
 			u2phy2_host: host-port {
@@ -571,13 +571,13 @@ usb2phy3_grf: syscon@fd5dc000 {
 		u2phy3: usb2phy@c000 {
 			compatible = "rockchip,rk3588-usb2phy";
 			reg = <0xc000 0x10>;
-			interrupts = <GIC_SPI 392 IRQ_TYPE_LEVEL_HIGH 0>;
-			resets = <&cru SRST_OTGPHY_U2_1>, <&cru SRST_P_USB2PHY_U2_1_GRF0>;
-			reset-names = "phy", "apb";
+			#clock-cells = <0>;
 			clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>;
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy3";
-			#clock-cells = <0>;
+			interrupts = <GIC_SPI 392 IRQ_TYPE_LEVEL_HIGH 0>;
+			resets = <&cru SRST_OTGPHY_U2_1>, <&cru SRST_P_USB2PHY_U2_1_GRF0>;
+			reset-names = "phy", "apb";
 			status = "disabled";
 
 			u2phy3_host: host-port {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
