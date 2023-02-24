Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18EBDC64ED8
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 10:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSjPzSRYXThvAqmoqgf3NGrNLbpsGnzIlKKaNxlRYfY=; b=avD28YPN9ZKlYk
	qb0HUVgD4yxBjUbJxMo9BkDHSj+TynmGEqn//NlsHfnsx6LIczAwVEWw+rSO4vCm+c0GjeFfMqSMc
	HSQ4Pisbxx/GZ56ADPnjkawPdMDyP22OEHbMdO1g2UFBuYxXddZnG6NVO0kpWc0SeheKFGlQ3JZ6m
	6LpOmOHNGeHJMIQJgSmi8HnqSX8ew/c6qaXW6jRgzi6cVjSXI0vO1ynExS+5M11ANiHlahNFaNvTY
	FSiP7T3BEJiAISgvND97jVk8nS/3OlmFzd2PLblOhvWNl8OjadgZqGh2ZJmtu/K/7WiL9vWEZB3l1
	3WcA28gfxBCSuyKJLd3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnx-0029WO-Fi; Fri, 24 Feb 2023 10:59:57 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnu-0029UZ-FH
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 10:59:55 +0000
Received: by mail-pj1-x1036.google.com with SMTP id nw10-20020a17090b254a00b00233d7314c1cso2457548pjb.5
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 02:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xofzeZkvhksqMPAnkuhobq6bJN+LwPdywmpacr5C34Y=;
        b=bgyrhfTAmBvakCMxYfNhX+AmSzRAD2XV36FGGhVGNRWpChwP+kXgg1JXyysxFjz0/m
         uWPvQs9ZioXMchkG6Rabku0DGPo8zvZlBVIZnc9N9dhoq9HdmTD8rBUksEDkKlInG5La
         XBlvkRDARR0GkxWdFdKP1VV4C6Sy8UO/DOo75FcSvGrs4gEjUtxf5SW0Il0TCdo2f5Pt
         Ad8mTVVJJA+RG1L1ByUeds5ZwJgh123mANuou8Y/71VogivX+pqngBmd16fdkg8GBsvD
         y1ZNsVTIbzj7qGnJ4FDz0SKZtgmNvyHW95IYEAiMDMs60gIWRlP/Q8XS0iqo5t2gCgZ1
         vj/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xofzeZkvhksqMPAnkuhobq6bJN+LwPdywmpacr5C34Y=;
        b=0F1aIq+ktUqd5UJ837Fp8fTn8BjUkFZ0yfZQRO2vvopZ5Yr7J2I4n0+P3+QuLRG9As
         poylNptPXStXVUT9v5Ao7OWzH6GuCNPzO7cCadxnt9FDvdPs4MjUul2P0Knhb9CebUyi
         ibwtFDoPTH5sLDFDWeZq8auOFcxVplXZRlEp8LSdPjOEyzj8+jtOfZdA7tzNECByi/2u
         tDbKVtYrttM+3Vxapg1xfh6jwdRtHwx73UgB1iWyWZNTw55NyWGoo18sYjJ4wjg0XvbS
         otWWQBfEOEhA4DT0Y/FXaFRpCmsJoiQAwt4Dsub8SzKbeK5GB/I+UEJlxIHfjpNMtuEM
         o56A==
X-Gm-Message-State: AO0yUKUCY+Oyjhs/92A6OtEdPMKLpN75+jbO09ctf5R+wSy8eZXuEFkQ
	L58ofJHFSHvTUB1aB5N/DQOa
X-Google-Smtp-Source: AK7set8VOGwZq+wLtaLaKo4UzZu8a/DJFEPGQ+qsSUZj5ZZZg1HsncU+ckHZEWO3OZyQHWyh/v/dgg==
X-Received: by 2002:a17:90b:4f8f:b0:234:f4a:8985 with SMTP id qe15-20020a17090b4f8f00b002340f4a8985mr17114120pjb.15.1677236393048;
        Fri, 24 Feb 2023 02:59:53 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:59:52 -0800 (PST)
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
Subject: [PATCH v2 08/13] ARM: dts: qcom: sdx55: List the property values vertically
Date: Fri, 24 Feb 2023 16:29:01 +0530
Message-Id: <20230224105906.16540-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_025954_530023_0637D2AF 
X-CRM114-Status: UNSURE (   9.06  )
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

To align with the rest of the devicetree files and the relative properties,
let's list the values of properties such as {reg/clock/interrupt}-names
vertically.

Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55.dtsi | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index b411c4ae34c3..61fdd601fc26 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -393,7 +393,11 @@ pcie_ep: pcie-ep@1c00000 {
 			      <0x40001000 0x1000>,
 			      <0x40200000 0x100000>,
 			      <0x01c03000 0x3000>;
-			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "addr_space",
 				    "mmio";
 
 			qcom,perst-regs = <&tcsr 0xb258 0xb270>;
@@ -405,12 +409,18 @@ pcie_ep: pcie-ep@1c00000 {
 				 <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
 				 <&gcc GCC_PCIE_SLEEP_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_CLK>;
-			clock-names = "aux", "cfg", "bus_master", "bus_slave",
-				      "slave_q2a", "sleep", "ref";
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "sleep",
+				      "ref";
 
 			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "global", "doorbell";
+			interrupt-names = "global",
+					  "doorbell";
 			reset-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
 			wake-gpios = <&tlmm 53 GPIO_ACTIVE_LOW>;
 			resets = <&gcc GCC_PCIE_BCR>;
@@ -434,7 +444,10 @@ pcie_phy: phy@1c07000 {
 				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_CLK>,
 				 <&gcc GCC_PCIE_RCHNG_PHY_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen";
 
 			resets = <&gcc GCC_PCIE_PHY_BCR>;
 			reset-names = "phy";
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
