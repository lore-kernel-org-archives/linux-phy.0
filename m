Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60A10C44507
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 19:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDbNwySDDI8l5ubUnYvBLfskOHIXKt1H5K6W46XxfCk=; b=R4DqdH7SnHUmSx
	CJikJvUjxxsIxiSktGIuHMovtBbTC+aZZ+xH9I6xNK2OS0BZKpkKbKaAln38EYit7MgfvmH8g6Hwr
	+W9s3t3R3a1dCU4DkuscBkQK7FIwTG18H2Lr7UA2SW/Z88kEn1iyAerv2+9KiEF+nAvJKfnZWzfej
	bA7vszdLhZUx5xI+FSPEPzzXeGv+hKSb7puPETRmMG0rjl7le+Wg4AVwD1U5Cm+S/9Q/lG5ksg4kj
	UHnbZGIbKmYNXDmuqKFM2CMyeSk3tqgn07+KtYPAXkic1oXNnkfiEpyR4GXNyCd3FGCBEaFFiqQvv
	+znYAGYdvPwKAaIpFZpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiaF-0000000D09O-0ABk;
	Tue, 14 Jul 2026 19:14:23 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiaB-0000000D03q-03nM
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 19:14:21 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2cc80544c74so4350075ad.0
        for <linux-phy@lists.infradead.org>; Tue, 14 Jul 2026 12:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784056458; x=1784661258; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=D31Jk59RNQrVzT/A24ayRfZRG2gdPQCEGTF2WIN9kY8=;
        b=MGSGUAdmykY5iDpmAX5OCHr5tSuY1eXCVpARy+PYu9GtRjpCLgU5/cb+OtrpfLy01Y
         M06i2RoclkVs/v/jPeTTUfhGo9YWwaMDXEaMVkVIR+H+oeu86+zPgzABckH+fPhvnl60
         HMm2/bZIbZslM0Voxc69kKixsbqNB7+dWuvKq8kaxVQwg3FjvZcIl31QroZxs7cuYUH0
         DQ77D/4oSv7lDhf3aOKELf9QiBJZUILGWB1WsBPxx2sqvRWKeYRhLM22hbTt+61bbLkZ
         +S9n6oHqzC3eNj4hcrmb80zJNwMT6PZ/zRNjiJG3mhJ+5p2DvOKLh7iDUlS/mJ+/fF2G
         k3Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056458; x=1784661258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=D31Jk59RNQrVzT/A24ayRfZRG2gdPQCEGTF2WIN9kY8=;
        b=CnpSZZ0a0o7yJSGLXrV6Ntuz0icutHuZuNFwv1lEImlR7kJUup8M6MOF7YwvO4ESMT
         ScsB2c43eXlxrYJxH1PgAfP2BnKzzqq5cxE34POM87Z0BHxeN+3YLQiY9alOHlvWzpey
         8inHwZpaXtaM3mvW/EEnByImD6rTspAGDdTWgYgPNA3xjpuuxXcSSqL/nRMvXO41nsLg
         gTaU/6Q61I63H7BmSvbeOXoKMyHBfhGMHugYgaWq2t6mN+N09MQM+kYxfVABC4gqaDUz
         IAKFV7Cr5d+h/tyZdSRvl3oxzFb8nkcA3Io8apV4jiRCH9rQ8S2ZZRgocTZASqmsmXEe
         CXlQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro2DwqGzXvHSO1Bw8QXLeZceQsoCC0xpVeHp9v6vH0fr7FER9ITy/H1r7+54Dd/UqJElqtgNhqucFk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxYemk2o8D5OzLMas7IAET5bbfXbDFTFQMsIjWe3WMYfdmgsjwD
	vGpuSVA1n1oWOR0x7fZrp2UkUWCU6S7exZRgu/iTtJKwlZlIbX3OOrsH
X-Gm-Gg: AfdE7clUzXb4WalAgdtAGycZDLKX2QWdORL8rnPqMT3hoAs7JPNsP7EENli/B+4lCCY
	WKmm1mozJ8EFSvVhvgu11AkW5sNZVPS8YGDjNlTPVHaL6m3z4cU0u3zFAIZja27kvBzg4DmHP97
	FE6hTuSSldUVMDz5ShsDNaThGp7/kSUrrEWdabA7J6fadiv7D5zy6trpVEnd85FaUUeY8EjdHO3
	9d1CUziMnFXxgLWvTQTiiy1yGgZ976If2UutPR9FdJQPZ2XFIhSKz2c7kndgt3gQsdgFx+A2z9q
	ssP5E/ifSCwwFO2HYYbEX++vDpxZ1u3a/TOdnOhZeDqDVEbuZla/O3vKAacXn1Y0jhMAkTh3JAp
	aYaH185hDvQdVHex6P2n0Ymew7d18m73vOllNjy26blADL2nzsKbK+uUrnLn8HIGSQ3cgYuT1tg
	3LM5qk6r3jAAc=
X-Received: by 2002:a17:903:1b08:b0:2ca:17a8:cfce with SMTP id d9443c01a7336-2ce9f2852b2mr148789445ad.29.1784056458374;
        Tue, 14 Jul 2026 12:14:18 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3d451sm120763245ad.65.2026.07.14.12.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:14:17 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	andrew+netdev@lunn.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de
Cc: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [RFC PATCH 05/10] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Wed, 15 Jul 2026 03:08:33 +0800
Message-ID: <20260714191341.690906-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714191341.690906-1-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_121419_077876_3D9352F0 
X-CRM114-Status: GOOD (  10.09  )
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

The RK3568 SoC integrates a Synopsys DesignWare XPCS that provides
the Physical Coding Sublayer for 1000BASE-X, SGMII, and QSGMII
interfaces via its four MII ports.  Add the XPCS device node and
its pcs-mii sub-nodes to the SoC device tree.

The XPCS device is accessed via the APB3 bus at 0xfda00000 and
requires the CSR clock (PCLK_XPCS) for register access and the EEE
clock (CLK_XPCS_EEE) for Energy Efficient Ethernet operation.  The
PD_PIPE power domain must be enabled before any register access.

Also add two fixed-clock nodes (xpcs_gmac0_clk and xpcs_gmac1_clk)
providing the 125 MHz reference clock for the GMACs when operating
with XPCS.  These clocks are used as the assigned-clock-parents
for the respective GMAC nodes.

All nodes are left disabled by default and must be enabled at the
board level when 1000BASE-X/SGMII/QSGMII is in use.  The XPCS node
also requires a reference to the appropriate Naneng Combo PHY via
the phys property at the board level.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 45 ++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 3bc653f027f1f..989e164c0eb39 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -110,6 +110,51 @@ sata0: sata@fc000000 {
 		status = "disabled";
 	};
 
+	xpcs: pcs@fda00000 {
+		compatible = "rockchip,rk3568-xpcs";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x0 0xfda00000 0x0 0x200000>;
+		clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+		clock-names = "csr", "eee";
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+
+		xpcs_mii0: pcs-mii@0 {
+			reg = <0>;
+			status = "disabled";
+		};
+
+		xpcs_mii1: pcs-mii@1 {
+			reg = <1>;
+			status = "disabled";
+		};
+
+		xpcs_mii2: pcs-mii@2 {
+			reg = <2>;
+			status = "disabled";
+		};
+
+		xpcs_mii3: pcs-mii@3 {
+			reg = <3>;
+			status = "disabled";
+		};
+	};
+
+	xpcs_gmac0_clk: xpcs-gmac0-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac0_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
+	xpcs_gmac1_clk: xpcs-gmac1-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac1_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
 	pipe_phy_grf0: syscon@fdc70000 {
 		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
 		reg = <0x0 0xfdc70000 0x0 0x1000>;
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
