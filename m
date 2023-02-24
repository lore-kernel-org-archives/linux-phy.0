Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64ACCC64ED8
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 10:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4vDcYtjXUJmUhvgdLOlHWSLqU7xhfDFtbyVqOhVabM=; b=jlzShXgbjUGACO
	CTvvHHUnjb8xgpRfo6NgD0o6ogrHSdVpzHM3ot7I7oE68E4d8tFyHqMz/MpllPug+yT3RxmMkh3pS
	o2o9bVbXlh8HxNgn1kcaPDx+NQsqED8jMgIrGUWx6YcR1nLW7ZzUv0Y9OWEnAoIaRsvvIOOnaRLTr
	ZWTf5fRTdMxOqM/LDHQJmkzNJIHwZGxe2trjNeCdvEbnDMZG/vgo3+f97tIm/wJHlStR9bHvbEnAn
	C1ma1vjUOUN+K40+egv1+0hsctCpmeRu3z685aefe4AqPY8HGTt1MHtcfgXZ4/yXs2NMB1U+JLgmq
	7pXu0N8lhBPmNI9p2QEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnn-0029RY-Rj; Fri, 24 Feb 2023 10:59:47 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnl-0029Pw-6k
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 10:59:46 +0000
Received: by mail-pl1-x62b.google.com with SMTP id ky4so17545879plb.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 02:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0M8kYEAz7MzsWNWHJToSlMHPi/nWVr288+AKYIv+MWQ=;
        b=SL27Mr2ERpEciqBGkdCVkt8X3uoEG0B+m/CpRXwDKRLeVSi8sk3S2P5KtaSPjVoC+0
         o+KprIlCXQT94+pAZnB6e9GBGvNpvrdGWLXqcfxnnkLazHHcy0x++Vx7DGjajdxMs3t0
         fjt7MwkjsgmMa5XFOG0ioZzxPwtWQDwtk1Uh6YBYx9/kK7AZkBwx1/+ymDfzPKJzUuxT
         WlgXFYeB1Q5OXEWGpkEGwWc3TXWH2xJ7TrV8n0g7bzlFVgCtHsBu38/6/fO0xWStygvI
         qM1ewxil2Ns92lWC2IwWuYL/ZjF2+jBLxUgbJRWD4pOMSc13tyhFPcEg/VNrGtPaVmsP
         Ok5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0M8kYEAz7MzsWNWHJToSlMHPi/nWVr288+AKYIv+MWQ=;
        b=EAAWkzzVJYHlGXkcp0wKJpwGhqj+8ZMfE/YxXoPT83G9mrcdI/5rBiqzcJUnmq98fa
         2gk7vRQ7X1rIoVeEJ/AQWIfFGCmawELSLOwxOA1cbQinJlMsuC32at15WJXnCcfjVmYx
         /Y1Hcm+PwCnLc4ja1rNjUZqNcGRL1D583PwP3F7U/xgXhayIHGcb2d2hRbI7rM4a4A5R
         B+o9WKntcCX/GKYv741ZpRSmh0CeiWIuR1B15bKV65yxVdhnnMerezhoBvgPHzb/c6Ya
         alMvtrNmzlgQD3GJ023yC+UxGZhQZDiMcL4xZF1v7nJJvlzEzj78FugVkBlOFHCo163P
         QbPw==
X-Gm-Message-State: AO0yUKW1HELGIG2tOzYEc4SG7ptRrF3FED1iwX8RjpV+fQJyE7pGcY6p
	FSotzsDHZ5zlgF6Y86MRGww/
X-Google-Smtp-Source: AK7set8Wj3Cy0TsPu96DQreGVAx4H+6J+lMBG0tY6SEfeX2bTCwaDqD2bvaNTFiSdVOXF0boee/TiA==
X-Received: by 2002:a17:90b:3a87:b0:230:c723:f37d with SMTP id om7-20020a17090b3a8700b00230c723f37dmr18680685pjb.40.1677236384121;
        Fri, 24 Feb 2023 02:59:44 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:59:43 -0800 (PST)
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
Subject: [PATCH v2 06/13] ARM: dts: qcom: sdx55: Rename pcie0_{phy/lane} to pcie_{phy/lane}
Date: Fri, 24 Feb 2023 16:28:59 +0530
Message-Id: <20230224105906.16540-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_025945_290774_B761CEA5 
X-CRM114-Status: GOOD (  11.35  )
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

There is only one PCIe PHY in this SoC, so there is no need to add an
index to the suffix. This also matches the naming convention of the PCIe
controller.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts | 2 +-
 arch/arm/boot/dts/qcom-sdx55.dtsi                | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts b/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
index ac8b4626ae9a..b7ee0237608f 100644
--- a/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
+++ b/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
@@ -242,7 +242,7 @@ &ipa {
 	memory-region = <&ipa_fw_mem>;
 };
 
-&pcie0_phy {
+&pcie_phy {
 	status = "okay";
 
 	vdda-phy-supply = <&vreg_l1e_bb_1p2>;
diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index e84ca795cae6..a1f4a7b0904a 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -334,7 +334,7 @@ pcie_ep: pcie-ep@1c00000 {
 			resets = <&gcc GCC_PCIE_BCR>;
 			reset-names = "core";
 			power-domains = <&gcc PCIE_GDSC>;
-			phys = <&pcie0_lane>;
+			phys = <&pcie_lane>;
 			phy-names = "pciephy";
 			max-link-speed = <3>;
 			num-lanes = <2>;
@@ -342,7 +342,7 @@ pcie_ep: pcie-ep@1c00000 {
 			status = "disabled";
 		};
 
-		pcie0_phy: phy@1c07000 {
+		pcie_phy: phy@1c07000 {
 			compatible = "qcom,sdx55-qmp-pcie-phy";
 			reg = <0x01c07000 0x1c4>;
 			#address-cells = <1>;
@@ -362,7 +362,7 @@ pcie0_phy: phy@1c07000 {
 
 			status = "disabled";
 
-			pcie0_lane: lanes@1c06000 {
+			pcie_lane: lanes@1c06000 {
 				reg = <0x01c06000 0x104>, /* tx0 */
 				      <0x01c06200 0x328>, /* rx0 */
 				      <0x01c07200 0x1e8>, /* pcs */
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
