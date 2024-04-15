Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15360C00A94
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 18:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOn9mBsfgs4XceRgxU6Z1CHY6aBR2rTTW/ukpCizzmQ=; b=QtN77Fn0oIvie8
	fA06Se8Y2Yv2nKdGrF/N6TxaK9LteZB4YE7rUSCpHc6xtXT+7HM4y++4sazvg/KrGwSNimPBXoSUD
	XUdhPg9mZvoY8Bh+5UXF2BGPSYCPLOjeB7do302QPAxzzQ5ANQV5gIaXzyugfiNRMi3/PrsgxQVeh
	Zi04FGg12ilWd0Yx7XFi50Veoelfb0ROxrlMWVtRVZYPyR4MT19Py6J+6tfZeu/fz88nNAx5Jcq7K
	79UwSFLA89p9zYo7lFcrMXIyYxpkA6pRAdodUpysC1IL1rBhez+V3Bz65eSrmBRlAZFHGunVIN/Az
	08/Tjn7+mBw7H2skxL8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxO-00000009Qpq-2TPL;
	Mon, 15 Apr 2024 18:21:30 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxK-00000009QmY-3IPH
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 18:21:28 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5a7d6bc81c6so2656759eaf.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Apr 2024 11:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713205286; x=1713810086; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FzgGDQmklEWFrISIR4IcwxoAKiKCzk4r1Ppmvkj7XiQ=;
        b=CsERi8j2i/jgkL8rOlCm5I3MN6uNmV45VUYX1r8ULqs326jt1j1v4jvowKPyYcOEQt
         LsJhoRfJPNkcpHJFT4eTxeCle+nsLqUbYMsR7HySBLnuROtSHlfbi+LLRhbGew9HbZFs
         FeJ+APxLAUymI46CR1IxIjTyOEHyFcuvA/xQ5CMHluQ189h7Rgx5wynaWm5+JKhVzF2Q
         AeitjqWXjw7oiYgt2+LDtkiV1xqiD9QeZsPxQzuwrB33oUGSBPvCc8RpE00Za8Y8shCo
         opKn8VkNGddcS7JPPAkG5Xlv67lG3SJbiUgu3LC4GdB03F8cDr6HnFhy/0bnGZ5FY4aG
         8cpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713205286; x=1713810086;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FzgGDQmklEWFrISIR4IcwxoAKiKCzk4r1Ppmvkj7XiQ=;
        b=uRoqeLDsRJqJLKZxhJOh0dRmGoagdqDjX++yUQNudedhn8tiV1KwGpo9bRWDtkq5WV
         9bkAuUdNFnZiPiDrCR928FbZfoUMJCw5tsRwXDQL0RwgHr+Z9BATzkhPVT271VBlhLyc
         vRaLaCOStc+FSGHne5Ckwqw4BP1DsphD1370rphdiiqUzZlFni0nPGz/uFAPtdj7Wp1d
         PI8K999uuzm6+UqBnfzyzuDTw7fnRJeXv6JOQ79uNsLtBkL9jkJnts28IIGZLJhB+oHD
         +UP1lav5tfZy+3pqoJHsKlYvWEkz9l/LkWsYi31rI94dKrSVyJ8fn0dJjdcl7m3PIi59
         ctig==
X-Forwarded-Encrypted: i=1; AJvYcCURIR8qdxUurByp+9pkw74cOvNOzWqWSpEkHYN6kOXjGQ7BNeng0Yw6fRxLcxBXlGgTckSKJclF04lBfTjxoSVBgC7z2/nZSyS1L0yr4g==
X-Gm-Message-State: AOJu0YyuzskuoEqNp6/nA81fDgsBvUeC2L5v+btfjZh16o0Q2k03GOjI
	zTin0QaNw87xE+Sst4IN27KITMEISjuWF6lgdOk3To/GboRYawDJ
X-Google-Smtp-Source: AGHT+IFzBspjAQ4rLg81eFZJL29bkc3W+mz4hD/gAWcReSsmqzSYHyKiD0HMSDTzbp14adcuHiezMg==
X-Received: by 2002:a4a:1ac3:0:b0:5ac:9ff2:8ca4 with SMTP id 186-20020a4a1ac3000000b005ac9ff28ca4mr4669479oof.6.1713205285937;
        Mon, 15 Apr 2024 11:21:25 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id x4-20020a056820104400b005a4dc7abc01sm2177494oot.11.2024.04.15.11.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 11:21:25 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v3 7/7] arm64: dts: qcom: ipq9574: add PCIe2 nodes
Date: Mon, 15 Apr 2024 13:20:52 -0500
Message-Id: <20240415182052.374494-8-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240415182052.374494-1-mr.nuke.me@gmail.com>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_112126_919474_9BDE7380 
X-CRM114-Status: GOOD (  10.40  )
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

On ipq9574, there are 4 PCIe controllers. Describe the pcie2 node, and
its PHY in devicetree.

Only pcie2 is described, because only hardware using that controller
was available for testing.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 93 ++++++++++++++++++++++++++-
 1 file changed, 92 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 7f2e5cbf3bbb..f075e2715300 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -300,7 +300,7 @@ gcc: clock-controller@1800000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <0>,
+				 <&pcie2_phy>,
 				 <0>,
 				 <0>;
 			#clock-cells = <1>;
@@ -745,6 +745,97 @@ frame@b128000 {
 				status = "disabled";
 			};
 		};
+
+		pcie2_phy: phy@8c000 {
+			compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy";
+			reg = <0x0008c000 0x14f4>;
+
+			clocks = <&gcc GCC_PCIE2_AUX_CLK>,
+				 <&gcc GCC_PCIE2_AHB_CLK>,
+				 <&gcc GCC_PCIE2_PIPE_CLK>,
+				 <&gcc GCC_ANOC_PCIE2_2LANE_M_CLK>,
+				 <&gcc GCC_SNOC_PCIE2_2LANE_S_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe",
+				      "anoc",
+				      "snoc";
+
+			clock-output-names = "pcie_phy2_pipe_clk";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			resets = <&gcc GCC_PCIE2_PHY_BCR>,
+				 <&gcc GCC_PCIE2PHY_PHY_BCR>;
+			reset-names = "phy",
+				      "common";
+			status = "disabled";
+		};
+
+		pcie2: pcie@20000000 {
+			compatible = "qcom,pcie-ipq9574";
+			reg = <0x20000000 0xf1d>,
+			      <0x20000f20 0xa8>,
+			      <0x20001000 0x1000>,
+			      <0x00088000 0x4000>,
+			      <0x20100000 0x1000>;
+			reg-names = "dbi", "elbi", "atu", "parf", "config";
+
+			ranges = <0x81000000 0x0 0x20200000 0x20200000 0x0 0x00100000>,	/* I/O */
+				 <0x82000000 0x0 0x20300000 0x20300000 0x0 0x07d00000>;	/* MEM */
+
+			device_type = "pci";
+			linux,pci-domain = <3>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <2>;
+			max-link-speed = <3>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			phys = <&pcie2_phy>;
+			phy-names = "pciephy";
+
+			interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 164
+					 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+					<0 0 0 2 &intc 0 0 165
+					 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+					<0 0 0 3 &intc 0 0 186
+					 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+					<0 0 0 4 &intc 0 0 187
+					 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+			clocks = <&gcc GCC_PCIE2_AXI_M_CLK>,
+				 <&gcc GCC_PCIE2_AXI_S_CLK>,
+				 <&gcc GCC_PCIE2_AXI_S_BRIDGE_CLK>,
+				 <&gcc GCC_PCIE2_RCHNG_CLK>;
+			clock-names = "axi_m",
+				      "axi_s",
+				      "axi_bridge",
+				      "rchng";
+
+			resets = <&gcc GCC_PCIE2_PIPE_ARES>,
+				 <&gcc GCC_PCIE2_AUX_ARES>,
+				 <&gcc GCC_PCIE2_CORE_STICKY_ARES>,
+				 <&gcc GCC_PCIE2_AXI_M_ARES>,
+				 <&gcc GCC_PCIE2_AXI_S_ARES>,
+				 <&gcc GCC_PCIE2_AXI_S_STICKY_ARES>,
+				 <&gcc GCC_PCIE2_AXI_M_STICKY_ARES>,
+				 <&gcc GCC_PCIE2_AHB_ARES>;
+			reset-names = "pipe",
+				      "aux",
+				      "sticky",
+				      "axi_m",
+				      "axi_s",
+				      "axi_s_sticky",
+				      "axi_m_sticky",
+				      "ahb";
+			status = "disabled";
+		};
 	};
 
 	thermal-zones {
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
