Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 806E8CCA490
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 08:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRgmamM+5VNb/xOUyPoMcP5eaHfH7RW8PExR44ZqMOI=; b=SszQAg4oRzKNh9
	KrwZiBAEql5OsnVGWAofbC3LFRneeJSMtSTSnqYPa/H5yFWEGfX2QRuC7EhsTR0vMiikriiK9wHNp
	9cj2Xb3q3wlfXiZvzFo6Xc3yt3HCkzOKItifjeu8+VV3Ii3A8HV/1KAU0RMnv23gosPZ+20qmyqMV
	hHcFQIJrgN3zxyeNMaLi+ky1GmT5EfpbMDN+RhTpvg0T/T0DYqynZ3YNecNzCbX1NXSSjjymPnSdD
	8TK5ZngIqOqjzJgDA9dtzpdmfCRxroSUqSLz+64NTDwErZX5LL1bxnEsEKawm8gzJQM98qWCsgyKj
	S0y3doyT9yi/8eljPjmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdks-00000002Otw-0b5l;
	Fri, 16 Oct 2026 08:57:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkk-00000002OiB-13qV
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 08:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=VuOlYqld5kQKP6/uNDvi8w+JMtWorT85t5I6G7jNhHs=; b=SWdx77TtN1er844YZfaegJ5vTQ
	KiU2h0vQKId+XuhRNQDslkO2KrnxOx5p2z/xX3iWRzZHwj8BP/TN0in0cK08yycKYCgVQOcZpqHHO
	1cJ3wy+WPvX+b4nCb3sWRs1etvsr8dGtkaXCAf2qTj6fiRvojEDFY6kQPIISBzeGuZpss0eCLNCrp
	MMzzWi2znoryd3LAR9PTmB370fOuhLeuJtK/xaMkQBRgT0xWbPFPkNW1NrsYp5K9W0O8S070ArW88
	NObuv5qgMrRos0dcuerSUDUzVxTa5y+yWnlUTIo03ceQdkDbyRtoBMoW7HFolCbqQAUYqLj8mF474
	TLTvDaVA==;
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHdkh-00000001HyD-0jy2
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 08:57:25 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2e9400d26b5so2551085ad.3
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 01:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792141041; x=1792745841; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VuOlYqld5kQKP6/uNDvi8w+JMtWorT85t5I6G7jNhHs=;
        b=gIXYfaFNootugc56eSEHn8K4BEaGH9uW8eqqjBs1oswj40otCIDioqH/CUxf8RfAuA
         IRAbst0RWr+Ps7iSI2JIgN1vaETHk9QuqIurmeM+JR7m8u3n9Nu9Vb+JjLi7BjF+dA7f
         bKEAgWGx7TJSgdW0Iu9tigLPQ3uMKPJ5+gDNOeXufJ8suzhHsjrgkRdUr/+t61z3xmJd
         4aU9QHlX2pF9lYcLdLX4td/U5eIR4Q1At74BL6kY6Fca48f7H7qNjF7rHGfcF/OvHmx6
         syfLQtuIuor4oLsWnl9Gq9K8wtAYXsKrdSzkHDPhNCZNzGcOK/CmKaBaT+VgRaElBp72
         3v8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792141041; x=1792745841;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VuOlYqld5kQKP6/uNDvi8w+JMtWorT85t5I6G7jNhHs=;
        b=gCOXvXma4u8GIyAzw/yhXLvEO7z5biy217bx6+Hjg4MVtg5v2sseXV0vR7wqRaJELO
         PdJwTTRv9JMN2E/5zsyot8ybjcfD8jo1xTXtPmAWCeSUB26+3vwbuBRDTyQYau8zk4fO
         GSUXfvbMRY/6yCcJw81ScI8TK8rTgWLRTy+8GyyfsdtyTuBGtM2t2VWA0ZXfJoxfo3P4
         Doc4iPCawB+RsYs/wY4ibXQtQqFUtHjr2mnr7PM5++AuYKoGkkz8h30X/3JCM4AhfrjM
         D+QWdICXqtATboE6wKodnHgE2wvzF0xEtua8vAT7s3Gtl9DTRGEWteQEiY9vTdavZzuv
         N6bw==
X-Forwarded-Encrypted: i=1; AKwUvBx0+QBTjhCvTD4SgK7ldBcwg4RcyvjTwnZaM9VrTCsenrHMk+M0cW5lvuEBrPfHbZ+uAfgydvxG8nk=@lists.infradead.org
X-Gm-Message-State: AFq9FYLmlzeJsSrEYG//x29TltWdIuRACZ5VqjbnOlCkf+YhylYJ+StT
	qIg5vgbSrX8kPPTnMGvDlD4ivVovmhK03bzuHXAkcjnZnXSlAc38GWvQ
X-Gm-Gg: AYBFou3YCeQcPpYZvDRB4mtHJ3b3Ipf4Oxotpq0XIAi3yDy6CiIicCpUPkPFhWcyLGE
	7Gls6TXlwqouIjqvMGKSnToYxjmBuyP5yoyfPECU3zzPzoiPjwyNqJ6a7dnimyRnb4v1Qcwe28r
	CLWzqQGn4V79FZwZySf9r2tNTA1FakCj2Je/0iw3YH/9P36V0J0rjP1bc649Dp0rLlcKx0NjW82
	MP6POOmWX1XGOH1EK7jMcRBiTmtjbNtSpcY1Low0fcp4VlYJ48kx+FM2B4/ilqSjTdaVnYzcQsM
	LleFZFaBXccPnrGHr+kei4apn3Y4l8Y0baqFG2BWF84CYHgcW8+1Sk/jqcBRJkulBosnPsP6ZZp
	x7ro4/B+zntdGfSUXm7ByxojUuJfX53J3SmfY/JwvAiLnYrYaOacIzBUq9vTe9dRfktAlj8hodf
	n2mRYgVuzbjaIviT3I8O1UnHc16+1wXz4m4RII5AGjrC6PDJJQvkwO35HoO3zGhQo81Ab5RFOY4
	/mkcBmrIaj3/e9YY6gD/gUz+TUrwg==
X-Received: by 2002:a17:903:2b0b:b0:2e9:65bd:62c7 with SMTP id d9443c01a7336-2e965bd66e8mr71321655ad.0.1792141040552;
        Fri, 16 Oct 2026 01:57:20 -0700 (PDT)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e882a20sm6971025ad.62.2026.10.16.01.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:57:20 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 16 Oct 2026 16:56:42 +0800
Subject: [PATCH v5 8/8] arm64: dts: rockchip: add mipi csi-2 receiver nodes
 for the dcphys on rk3588
MIME-Version: 1.0
Message-Id: <20261016-dcphy-rx-v1-v5-8-e63b49eabe2d@gmail.com>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
In-Reply-To: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792141002; l=2717;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=45Vrf2/gUP59T6NzCoulPq5BhPIFCtcRAs06OTbCzKM=;
 b=eV5j0Ku70J/SwIYITZNqaBAM4+oArZCW1gHMYmzwcCjICMvYtJVzPGrN4pNjb2YAnqgdR1JmW
 QRDZGk+6fb0AGvQEIOdD40NiINRZQcSPgvqp/0vE9+XFZSQzix1cCh3
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_095723_581232_7BAEC243 
X-CRM114-Status: UNSURE (   9.61  )
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

The MIPI0 and MIPI1 receiver units are connected to MIPI DCPHY0 and
MIPI DCPHY1, whose receiver side is now supported. Add the two nodes and
wire them to the VICAP ports.

Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 68 +++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 94d68fd89753..30bc69a09102 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1516,10 +1516,18 @@ vicap_dvp: port@0 {
 
 			vicap_mipi0: port@1 {
 				reg = <0x1>;
+
+				vicap_mipi0_input: endpoint {
+					remote-endpoint = <&csi0_output>;
+				};
 			};
 
 			vicap_mipi1: port@2 {
 				reg = <0x2>;
+
+				vicap_mipi1_input: endpoint {
+					remote-endpoint = <&csi1_output>;
+				};
 			};
 
 			vicap_mipi2: port@3 {
@@ -1568,6 +1576,66 @@ vicap_mmu: iommu@fdce0800 {
 		status = "disabled";
 	};
 
+	csi0: csi@fdd10000 {
+		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+		reg = <0x0 0xfdd10000 0x0 0x10000>;
+		interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "err1", "err2";
+		clocks = <&cru PCLK_CSI_HOST_0>;
+		phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_DIRECTION_RX>;
+		power-domains = <&power RK3588_PD_VI>;
+		resets = <&cru SRST_P_CSI_HOST_0>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			csi0_in: port@0 {
+				reg = <0>;
+			};
+
+			csi0_out: port@1 {
+				reg = <1>;
+
+				csi0_output: endpoint {
+					remote-endpoint = <&vicap_mipi0_input>;
+				};
+			};
+		};
+	};
+
+	csi1: csi@fdd20000 {
+		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+		reg = <0x0 0xfdd20000 0x0 0x10000>;
+		interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "err1", "err2";
+		clocks = <&cru PCLK_CSI_HOST_1>;
+		phys = <&mipidcphy1 PHY_TYPE_DPHY PHY_DIRECTION_RX>;
+		power-domains = <&power RK3588_PD_VI>;
+		resets = <&cru SRST_P_CSI_HOST_1>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			csi1_in: port@0 {
+				reg = <0>;
+			};
+
+			csi1_out: port@1 {
+				reg = <1>;
+
+				csi1_output: endpoint {
+					remote-endpoint = <&vicap_mipi1_input>;
+				};
+			};
+		};
+	};
+
 	csi2: csi@fdd30000 {
 		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
 		reg = <0x0 0xfdd30000 0x0 0x10000>;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
