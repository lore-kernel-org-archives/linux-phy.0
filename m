Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 866F1C636D6
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 15:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjsClkz6wZ1/ZhGGpfjT30b9mDwCoiA+fuP8AmvSFFk=; b=ZtxSWCDp6a1t3O
	pkaCFvDw6x2pW0zLhIlI80qvx+L8h+ERg2yskRR/iVE8TYLZKzUDat8Wu/Neu73jg7cfaCOKEy+Ek
	B1W9lZl5rQPTquRZVLNei4ZUmQxW2g46Tu8FdP6HEznXC3Snsw7V86gG065oIGqA0x463GH6SC7eY
	rvHEzgRtX0FbfQQdVDvBM8v3HfaVBb/oaaPiO8YITOxX+zuHWCBRVgnrwVhXMVaeTds+g1z/KXVTu
	QBWyUGFTWm48Fp3oBwWKp3N8Aj+ENTgliE4J4dWtabZHD/I0SdJjq0xcPkFDUPpargB2CIAXitL1o
	/0/udFtfr2QfRvt1/1wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7t-00CsfC-Sr; Wed, 22 Feb 2023 15:33:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7t-00Csee-EM
	for linux-phy@bombadil.infradead.org; Wed, 22 Feb 2023 15:33:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=frPAbJX6IbYMGdSO5i2vVIONplrg4szzCvfObYpFa4I=; b=aWJpaixwJuNj8S77GiGtu9NWJq
	/aqzEz7bbup2chvKAlQJ4Z6dqXMFnbuuu91NAbJuyo5nJjIpjpWn/cQUvN3HOCvdr26jgizkgq/XZ
	Agw8hw+AusS0DwhDW+pYyeuXOhVxcG5F4ACWziMa7YRaV/MRCgF3Iizrp1yDC4pmMEnefhaD1jc8A
	i/4Ax6lZm7INcYD+Zzho9HOtWOTGU117B6EmfUSoxwbCyKorEy6B0RQRzo1faBB9F4rx7BKK/pdoS
	gMwkiR65SZ1N27q1eopwCRZRiqe0eNPfp/Sb9liKgcYXQeNirymkdEbuSldEO4qSPQf3g2aVcLGp2
	eamDJxLA==;
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pUr7p-00CaNh-1L
	for linux-phy@lists.infradead.org;
	Wed, 22 Feb 2023 15:33:47 +0000
Received: by mail-pl1-x635.google.com with SMTP id q11so9482800plx.5
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 07:33:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=frPAbJX6IbYMGdSO5i2vVIONplrg4szzCvfObYpFa4I=;
        b=sRUZyKJQWOKpCgL+u2PLfeiXYXt6xtXxNx+mTGh5sCovfq8lREW2rnC8ltuf5B17fs
         9l6/lwqKLjHge+jOoPSKN1IM6oPrt4PJ2J9qqv/bDh3suh+ttLL4TnN7q4l/4MsdtwQH
         ytPWyWMG0HA84+N9GN9Rbd4Y6UM/6bjJkzUeHfnnWRUauPa/0WLdevWKceCqBOUeA4OZ
         ScvKoVW11YSjGxbS784ux4MPPaTbGmubJEULo8TzWCgVqJKuKacuHteWF5R02sPm0jRt
         +AiDe8iFAQHAiYZrnIeioPORCKGjWH3yeobUUgLFaeJSLZoPqQucAePclTimYwHQx3bb
         YADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=frPAbJX6IbYMGdSO5i2vVIONplrg4szzCvfObYpFa4I=;
        b=yy/AWB4r4TRPQgDFq1HZxxw/IdBKM+ZlbCr78xRnj4EsIjASYL1BLNCv5AIeLDYO4c
         mm9ba/4YMsurNMffbUMiAzSH8WU8NYP6RTVOPkt16oTG2YFSqYPFjSFGzSq/x0QdEm7v
         VM6NT+QEA5/xyQiPPKFsLKJj2l/6T6A/nWGitz21ZRuPThE5vgfpd/Tf5lkxColhIqPW
         MBhsvgUb07DCFIo4XFA4byVwFEqC8Y+VYAS9Ap1jKbC/4bzrraUHQ4w3ob1GuYkvtZsJ
         e3fz+dIKMKxOvJxI3pb91yd9gVRTxAWAYsMIOm1m3LCQAWUxgjQUiJQT9Qa0rgUf8kCg
         xA1w==
X-Gm-Message-State: AO0yUKXbMcIzzTroHanyMMv7wEJQQnyauE4ZeGwVtvJaZMU8BRkcOyRX
	z7KD01TsETbInHDhhFvrtAU7
X-Google-Smtp-Source: AK7set8CvdobC9xRiviT8mS8REbRqj6/Yk7otDIZZmUKfon5h8lfYw/K2UBEBZNM9OhrE6YWbLUHyg==
X-Received: by 2002:a05:6a20:a02a:b0:bc:d6e0:3ff6 with SMTP id p42-20020a056a20a02a00b000bcd6e03ff6mr10009690pzj.52.1677080020854;
        Wed, 22 Feb 2023 07:33:40 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:40 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 07/11] ARM: dts: qcom: sdx55: Add support for PCIe RC controller
Date: Wed, 22 Feb 2023 21:02:47 +0530
Message-Id: <20230222153251.254492-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_153345_683419_523F5D79 
X-CRM114-Status: UNSURE (   9.25  )
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

The PCIe controller in SDX55 can act as the RC controller also. Let's
add support for it.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55.dtsi | 72 +++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index a1f4a7b0904a..768d7d7f6335 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -303,6 +303,78 @@ qpic_nand: nand-controller@1b30000 {
 			status = "disabled";
 		};
 
+		pcie_rc: pcie@1c00000 {
+			compatible = "qcom,pcie-sdx55";
+			reg = <0x01c00000 0x3000>,
+			      <0x40000000 0xf1d>,
+			      <0x40000f20 0xc8>,
+			      <0x40001000 0x1000>,
+			      <0x40100000 0x100000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			device_type = "pci";
+			linux,pci-domain = <0>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <1>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			ranges = <0x01000000 0x0 0x40200000 0x40200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x40300000 0x40300000 0x0 0x3fd00000>;
+
+			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi", "msi2", "msi3", "msi4",
+					  "msi5", "msi6", "msi7", "msi8";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 141 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+					<0 0 0 2 &intc 0 0 0 142 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+					<0 0 0 3 &intc 0 0 0 143 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+					<0 0 0 4 &intc 0 0 0 144 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+			clocks = <&gcc GCC_PCIE_PIPE_CLK>,
+				 <&gcc GCC_PCIE_AUX_CLK>,
+				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_PCIE_SLEEP_CLK>;
+			clock-names = "pipe",
+				      "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "sleep";
+
+			assigned-clocks = <&gcc GCC_PCIE_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			iommus = <&apps_smmu 0x0200 0x0f>;
+			iommu-map = <0x0   &apps_smmu 0x0200 0x1>,
+				    <0x100 &apps_smmu 0x0201 0x1>,
+				    <0x200 &apps_smmu 0x0202 0x1>,
+				    <0x300 &apps_smmu 0x0203 0x1>,
+				    <0x400 &apps_smmu 0x0204 0x1>;
+
+			resets = <&gcc GCC_PCIE_BCR>;
+			reset-names = "pci";
+
+			power-domains = <&gcc PCIE_GDSC>;
+
+			phys = <&pcie_lane>;
+			phy-names = "pciephy";
+
+			status = "disabled";
+		};
+
 		pcie_ep: pcie-ep@1c00000 {
 			compatible = "qcom,sdx55-pcie-ep";
 			reg = <0x01c00000 0x3000>,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
