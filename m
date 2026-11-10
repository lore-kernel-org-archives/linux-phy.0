Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C23C606A33B
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 08:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iSjs35s9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cZ1g1cPD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MAOr0e1apiW/vlfeng5tBZM0XqEfHne3qMgG3jbTZHo=; b=iSjs35s9peI0H61CvdY4ljWM+4
	E3qE6BfUtckXuZ1LbDZ0642ro4uVbd/9tlJByYW3yiIzBCtdm1GFosHZ4H/qFckIefNjWhnleV8GW
	mlhVDF+UTv1j7GnO/RrIy4wRy8C9djioDqKmMzGIkK62QuZEAtV6257b+ASoaQQtLbr6y+qqAsiUN
	oLChlBbO/a8Zn4LOYd51azEjCprnI9MvqAWTlwj8uCQHWEFO2zbxDa0uOfzkEysqIl63Jumj+tXLJ
	As9mYtQjiQ0bsuomLMZ/jRY9n0o543aTaRKQDx/T4LbvvX5TmtAV/EAOWAHwIkyZW87AxjDnSr00i
	In2bPadw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh4J-000000035KD-3EwA;
	Tue, 10 Nov 2026 08:19:03 +0000
Received: from mail-dy1-x1336.google.com ([2607:f8b0:4864:20::1336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh4B-0000000357C-2SYb
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 08:19:00 +0000
Received: by mail-dy1-x1336.google.com with SMTP id 5a478bee46e88-370f4e5cfc9so222306eec.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 00:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794298735; x=1794903535; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=58OrtSXJfJJ8mejcrjyYFp3mmVgIIq4F94FhF2tk08c=;
        b=cZ1g1cPD/5bCgFxddyekiIANF7BpHR+ZDuVqBnhrxPNBVW2Y98GjHlZJUWF7hVEJmb
         a/xRSTyhydQAKNFAfZOn246SNBEr0gOrBZ4JZKW9P0cMnKqmUJF0RkYXAeroZVfEoOv7
         0MbewMXvM2+RHWOij0eHmCFCNBMtM0f/sHefhQwVF8ov45hO4ltaVNzIvjdOzga0Z59i
         GmtuGPtlpaUH3DTm+Sj1yI0iO3FhvftLmEf4O7bPoWV7RQr6i/EXN4kcp9ZLPpcrMSKu
         nQB+FUaCGSLlaN5v9y0umbNcJVxFgB1WqhlMJhDw4VuZ0KiG+SQg+6WfB0O8dqpV+DJG
         Gyxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794298735; x=1794903535;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=58OrtSXJfJJ8mejcrjyYFp3mmVgIIq4F94FhF2tk08c=;
        b=S7iWOrUYLk4MyC4Oiv4xXNtp3D6PW6tgOlLJt2/7QgwXopTSsqwnuUt8yzSLT+m71v
         Var4jBsSJyt0gj30hqWOPHyxeyFDt5j3CkCxXv65zDDj9r+zvGimQksqb9xO5ciU4zH3
         Jnxa7Fqyj/mH7YGoMX9mW6ByaS2YF2/l6438+3XMBpI+o0gqcpQ1qlO4OTGivVQj+2as
         yiSSUC93B4g1WXLg7xFHYWlMulngc7MSB9siBt7hNj7ymbIR4r28WZPuyZQMKo+IzNIV
         6tqT+mFI7wVvoLtOzUiseQnwbqmrXjn8/vOC64NhdLIQIXJCmkcAHgw9StGqgE9MDQxr
         9DRA==
X-Forwarded-Encrypted: i=1; AL+hErFgHTg+zA8celNG5E1xxcYJ6/gIOAsSgIuwyoPD3GKopIhc4kIdVqWZXmE8/B6F0s2EjmOAJFvpGiM=@lists.infradead.org
X-Gm-Message-State: APuU4Z+N/S5piR42b1/6hsH4KY2qaNFgPNyV1MhcODt+JHaTo5mZMjgV
	H9KEeWugZfjWEXL7ckpW9WsQL1PcVAEUhMHbL/3E2j70mzVSg7sZ6Xf2
X-Gm-Gg: AYBFou1UG57swzEseR3v/hTvOJLJ5f4T0SUxPjGxGmKJDClx8S5lW8qG26M7gWEtPLy
	evBkSF5fMO65HFE4vB8IhsMriMwn2dtBQ2/I6HvO+G/1MEFv4GaC4RVJfnLELWDNfPjXpYG4T9a
	dmPQqEBY4ixvzGJYbf1UYNgCzxVnwpGZbjUG9CdDdnRJuyyZWyWaNtE9Z/0ivjl3VZ1ZvNlguj0
	+P0sAn+b9t093ycvrVu17iYZywrp3uSgf36+gl5q4BBvenNwlF8lPmC4msvAHyFwNwlckz4uAHi
	4JRKJoDHdWphfJheUljMZfwCc2Gh17i0N9GHnQtDl6loD3urEid9W2a91+Qft9Dn2rhrwWyae1R
	Mu9pyg/mekKk/kO5Tagemd4GWGHt9daNqWv9c17L5dl9hMgrppx4lq7ruCfq/SFR2L88OdzvoWt
	q9fA/a5YsxUgQKV9hEmITbB61dxKcwzHIQm6aAQsBz/UjS2hMMxG58AEL5MD5P+/qxl/zE37Zc+
	hkgXYSDw7QiorOHNJhyMY1Lyjm6HVQbCWNvzfBl81Jaffslwdx42zmFI3wmop//XgVGyZC39kP+
	aqR8RGz02GIibG9qhpkaHhebKQgcRwQE7g7h4/dR8CICDO3SlX2Ni0V6o2x77Q==
X-Received: by 2002:a05:701b:451c:20b0:1b2:5884:a039 with SMTP id a92af1059eb24-1b3b5e0f414mr4048117c88.0.1794298734256;
        Tue, 10 Nov 2026 00:18:54 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b2fc14sm5236759c88.12.2026.11.10.00.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 00:18:53 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Tue, 10 Nov 2026 16:18:12 +0800
Subject: [PATCH v6 9/9] arm64: dts: rockchip: add the dcphy mipi csi-2
 receiver nodes to rk3588
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261110-dcphy-rx-v1-v6-9-d681ba20b36a@gmail.com>
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
In-Reply-To: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794298692; l=3896;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=NfZPZ3x823SqrJqo1CoKHOAuhoYjmEYwXc5QK1HOeNM=;
 b=hmXOPmwC6P7NZm1wuYkfSpLT35bn5qW1AqUnz9qTDNabhwPjQoByidKwphwUGq55w1I4/Xb87
 kvoSvUiZUAtBJMwkXmepyPTarxTVvUdwdUbhQH90NUZWEgoS8Tle6rP
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_001855_667956_FCE5C752 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The MIPI0 and MIPI1 receiver units are connected to MIPI DCPHY0 and
MIPI DCPHY1, whose receiver side is now supported. Add the two nodes and
wire them to the VICAP ports.

The dsi nodes keep <&mipidcphy0 PHY_TYPE_DPHY>, the only value the
binding had before the PHY receiver was added. PHY_TYPE_DPHY still
selects the PHY transmitter in D-PHY mode. The csi nodes use the new
PHY_DIRECTION_RX from the dt-bindings header. Neither phy node needs
phy-type: the DSI host and the CSI-2 host both run the block in D-PHY
mode, the default.

There is an ABI break if the dsi and csi nodes use the new cell values:
an older kernel ignores phy-type and takes any cell value as the mode of
the block. A DSI node with PHY_DIRECTION_TX then gets no display, and a
CSI-2 node with PHY_DIRECTION_RX gets no camera.

To keep the ABI break small, the dsi nodes keep PHY_TYPE_DPHY, which
older and newer kernels both accept. With the csi nodes disabled, the
display therefore keeps working on either kernel.

The csi nodes have no older value to keep and have to use
PHY_DIRECTION_RX. Enabling csi0 or csi1 therefore needs a PHY driver
with receiver support. Since v7.0, a CSI-2 host driver probes the csi
nodes. An older PHY driver then gives the CSI-2 host the PHY transmitter
that drives the display. The camera gets no frames, and the display can
stop working as well.

Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 68 +++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index aa69fd3793fd..c7174c2f15c3 100644
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
+		phys = <&mipidcphy0 PHY_DIRECTION_RX>;
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
+		phys = <&mipidcphy1 PHY_DIRECTION_RX>;
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
