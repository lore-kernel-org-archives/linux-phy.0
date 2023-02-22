Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24E7CC678DB
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 16:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lYOQYgkO8AdzAJkpX7/tSJPJoIkNzOta72URoZ/DAM=; b=UTt9hZ7gKZ0yFy
	/DJW15P+epFIPzFff40bNgjGJ0C/Y8gYVAfXGZr5M3+1t0ncahqaoMLQ+vkYoG6wTarCsXa7MpmGV
	y+xs87kfBVKm0b2DpFGwF5A2SDjQ5gBxoySVE77B7CkBG0rptTHquhDTkIBqdCa9ChpQ36xzmJl23
	+HVVIO+qbPJ3lGbNIqaf31oVsqL7DSy4ahJ4dvD03rL/nVN7JaYhknCEYnYkn7su0lmihxjD6LZta
	J79ccQt1y7SQjr0p//wPQYayD35Fbp1ABfML7MCFrYqZ1q11HMoK83j4w6xsD9hDrsVQUUPV0RSpl
	vjCR/c8nlXF9C3B+ddvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUsFR-00D4tj-EY; Wed, 22 Feb 2023 16:45:41 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7f-00CsZb-GE
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 15:33:36 +0000
Received: by mail-pg1-x530.google.com with SMTP id q189so4286580pga.9
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 07:33:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vMflvsnFsn2zSdUZQv5yrtakTBmlDgkLH0Li1CsV2To=;
        b=YZJTTFPH0Pr2V8A31PjTaOSzgCTBXNraY7fMtPG5G+knvwky3RUWDSHn90AdWCV+9c
         J7EgwlG7yr0zO+cSybo6QMHLw3Xn0c8lHhMNKWpRCEg3TNfRgB7VO5Rjt6T9sLvhke6c
         x8jEe4o8ji7g5Wn3ZWspnn6L3KgKp8F3CWU41iPX0s+86vH8EmvHcaJOlbnq0MmrjW3Z
         iMEkr+33udcLVafW1PQUPJBSeP/bKpHg9f+bcMpWXcjrge9yEQtbkpSRoctusJu7bFvr
         F+jac6Os3hegzKKQHkhH7HpIatpRdD7sjimt+gZiR6TViFGeItQ6UyeP49l7IhWn1W6p
         q1EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vMflvsnFsn2zSdUZQv5yrtakTBmlDgkLH0Li1CsV2To=;
        b=Z/oMNX/FJxpiNqBqrsNAynvCxauOpV7qnxowee4lJjJkAl2lpZwKtXxDBpYnYf0H3r
         tKMlrfkFktp+ZzuamlLvF6V0hg28wyI4ntw4NyXJGbqMhuehBhNtgkoamDCUBKLre993
         YTbUjYSOs8jpgMmpGqR/4Ic2fFdvgI4MVpFPHA0n+g8k7sDfRAPvJUXUhnfJUrZ0BBIs
         fYotmV4+4tDLnL7fFpioHRhcFpLhCTQJwW1QmoubNWw2nQ2iR8s5BBN54tM/7udNonv6
         HES4htZT3jV0cF83HDltJcP9zgh/+rT34YFfs5jD8U0aGkQkyGvJceo3U8b1w3W7asoe
         O6DA==
X-Gm-Message-State: AO0yUKXOmh2CrvT696jMlL6l5hOefbckHCA4UV9txcW8RveovaGWjBd6
	3EswNDQVCVaJurTW5naipS9L
X-Google-Smtp-Source: AK7set/DaY4JX5g0bxT/WJ1K/Re0gRMiLL10QT0E6/zqLIvI5b7akQzia7g4DkJpCENlzYWk169QMw==
X-Received: by 2002:a62:505:0:b0:5a8:d97d:c346 with SMTP id 5-20020a620505000000b005a8d97dc346mr7084089pff.12.1677080013472;
        Wed, 22 Feb 2023 07:33:33 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:33 -0800 (PST)
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
Subject: [PATCH 06/11] ARM: dts: qcom: sdx55: Rename pcie0_{phy/lane} to pcie_{phy/lane}
Date: Wed, 22 Feb 2023 21:02:46 +0530
Message-Id: <20230222153251.254492-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_073335_715907_270599B1 
X-CRM114-Status: GOOD (  11.80  )
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
