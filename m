Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7F3BC6FA99
	for <linux-phy@archiver.kernel.org>; Fri, 10 Mar 2023 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auSwCZ4oWb+rxjb+17COarwidhFX9JWYcRD5yD8tHeg=; b=EXjhjHDMBRLrDW
	NNfUOpd2tpu60J+dpJyO7R81r9Q5ZUoyNzZtogvEEW5xHdzkTVBhJkBK3ZTnxhTyXj7JBcjNtSw7f
	PfpMNpOyjyhmk5YP/hvDW8db/zR9z0TFqS6IVwe4R2pTd6kTkfXDtb4RSm21udvC7MzuqohRyNkMh
	jUP5c6WJvTvszAYbPqdePJhhzKDFDGerDe7H5ZxXCpKmKF+hdjL79/3RWzHijydlg8SEg3C3dVBC3
	DicYcLoSw7ThiE2VjNHWDcftGfpKZUtoK1kWEiJdafeZOSB9l8O+yMcyaN0fWF/b0CJKg003i36xG
	qrX4Xg0nzTl3a6rgy8+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXm8-00DWgE-A0
	for linux-phy@archiver.kernel.org; Fri, 10 Mar 2023 08:06:52 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXl5-00DW3g-5g; Fri, 10 Mar 2023 08:05:48 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 56DAF66030BE;
	Fri, 10 Mar 2023 08:05:44 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678435544;
	bh=iZfz5TvdpibqFz6qT4kNJtS6iMl9+BPz7aSCwohid2U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=g2ao3nkFY4N1PCsl0X3CjrEoTMMZ8bcZmmRThO5eZRp1ayRCTRgJw48hhFw5uqvVi
	 lgln1/6maYEc7xGSGnP3aiCn6k2dWuK+v1lHIC7sBgezy/12aTYMdckKiYsMmjjs/h
	 jLGWhpnxK93wiCGyAgZ6WCNYEJvDhINy4jFtCOLB1neIMjZSo3te/Xwl2K7POLy/mJ
	 pZB7W+iN1EoGKe87QkQvSBAuz9Q7jPIhn2nCEYQOowXvsS4Jf00Gj9qCzGP6CUqzkA
	 iMKDuEgvE85OsVvCgTU8Ghb0da4JPij1iZOVw4lZKank0NZd5rOEvobswjnvDwDMBs
	 7GSp1xvZKlLRw==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 5/7] arm64: dts: rockchip: Add ITS GIC600 configuration for rk3588s
Date: Fri, 10 Mar 2023 08:05:16 +0000
Message-Id: <20230310080518.78054-6-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230310080518.78054-1-lucas.tanure@collabora.com>
References: <20230310080518.78054-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_000547_361948_7FD615E5 
X-CRM114-Status: UNSURE (   8.87  )
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

Add support for Interrupts to be translated by the GIC-600
Interrupt Translation Service (ITS).
ITS provides a software mechanism for translating message-based
interrupts into Locality-specific Peripheral Interrupts (LPIs).

This is based on prior work from XiaoDong Huang and
Peter Geis fixing this issue specifically for Rockchip 356x.
Plus comments of Robin Murphy about Non-Coherent properties.

Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 24919cb5c153..695aed05eba2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1594,6 +1594,25 @@ gic: interrupt-controller@fe600000 {
 		mbi-ranges = <424 56>;
 		msi-controller;
 		#interrupt-cells = <4>;
+		ranges;
+
+		its0: msi-controller@fe640000 {
+			compatible = "arm,gic-v3-its";
+			msi-controller;
+			dma-noncoherent;
+			#msi-cells = <1>;
+			reg = <0x0 0xfe640000 0x0 0x20000>;
+			power-domains = <&power RK3588_PD_PCIE>;
+		};
+
+		its1: msi-controller@fe660000 {
+			compatible = "arm,gic-v3-its";
+			msi-controller;
+			dma-noncoherent;
+			#msi-cells = <1>;
+			reg = <0x0 0xfe660000 0x0 0x20000>;
+			power-domains = <&power RK3588_PD_PCIE>;
+		};
 
 		ppi-partitions {
 			ppi_partition0: interrupt-partition-0 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
