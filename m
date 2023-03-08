Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFD9CC76188
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHDYQZLoIaKztfIE91S5rW2v2cYKXiHda1vYHzMsLko=; b=y3Mk6j7zzaHiqJ
	fHjRMwooy7Pm8hNxtn7LeDxPerTF1RdjE91z2jYu4hW6i1OCTCVCdpXH6SZ4Ga8JBhsEXeaL+SJKu
	LPSC35duC0V6YXVEOLx1VpOHIKshCFctV/EK2B4sylPElSo9gPUWZ+XdX5HlIj+yfNlhMbV58nq/q
	q6Wq3kokCugtDGOPCRTQG/YDA6Ya2EL84BjwvaiydoXc1goRN0CfEMsgI5lG1AGgWvp3MERKYSecF
	3pv5lqeH0xwZs7/+LkiuN+TuMCVOaxFQiddcVDta077yMmfW18j2zYGOEKm9Rp3EPNyfdPnavAa5E
	sNfZUI2yYpnmza1iOlWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6i-003xfP-5S; Wed, 08 Mar 2023 08:25:08 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6g-003xcU-4k
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:25:07 +0000
Received: by mail-pl1-x634.google.com with SMTP id p6so17026381plf.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0aUzZ/pcEn/1nxh8BRkcTuBhIuZDyh9nbRz2zlNTCXA=;
        b=I0eH0eUJGUgPuYFk7U7Bwogfp49PNB4wxzP4/mHaym3hSuIZcIwHy1NKuDY1Hlxty3
         p6A/4DNM0lPqRgjwftjltU5HehRa5tuM+Yy85BejL1P60O0Pr19MgHLtPEIYHST7eYir
         10Bt5uV3DCB/pfN368Ck7m1UHBHhiXh2GZpsEpmltUWTkWFHEWqkdsyid4nvjPd18XLi
         ysl1KB7fo+72U02c5GEa/AR32i+GbMmeyRWeMSBODYXD4i5liAb2AE/q4+NtCtELcv7e
         A4hkbK0oy3JCITDtGkR9DTGAOc3IzD7Hvp2QyebVBCbJIEfzDTAivvjOXtd5LpsFjj8n
         /XbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0aUzZ/pcEn/1nxh8BRkcTuBhIuZDyh9nbRz2zlNTCXA=;
        b=iAMJG4fZcJLWlRR/xO106bAGvqNL0+CU1tClW13zCNOyOcaVZV30CxVf5TBpWsoVtt
         ikPd1UL16fr60ZzcxU/DBkO91TPp6GHb/qg1FeMhlOlIxentouwc34RjjLirSy53eiRY
         2whuiEkeIBOIcLiXou9u8JUADGbrLfcfVd7s06DbygOdnkbrSaLxamaceFCDGgEZmnGv
         AuuWa3alX2LOPcKxt7xeyND/K6VUmvQwc1Z2INC06HLGtQ2xl8wA+tivahL1YMcgQgYz
         Z3rjwHd1OmvR8oFYRMuF8fsoQWd+xFrrgXZVeNRZgJV2RdEzznuGO+VQJZx7ry0TFUcL
         EMxw==
X-Gm-Message-State: AO0yUKU+9C/nadvM4cxFt2ROCO3tmEl1HfB8j9Wc5OCxSc7uLSlHhg69
	zOyF3QRHM8twkqBrMWKy/PqV
X-Google-Smtp-Source: AK7set8lcYYKxc+Rti7A/p6xxydtFMxw0aHkmXzEtIGShnv1dZ2PUgK6U7iaO/8SC5Zyh7OYcopneA==
X-Received: by 2002:a17:902:c10a:b0:19e:7b09:bd4d with SMTP id 10-20020a170902c10a00b0019e7b09bd4dmr15605723pli.47.1678263898769;
        Wed, 08 Mar 2023 00:24:58 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:24:58 -0800 (PST)
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
Subject: [PATCH v3 06/13] ARM: dts: qcom: sdx55: Rename pcie0_{phy/lane} to pcie_{phy/lane}
Date: Wed,  8 Mar 2023 13:54:17 +0530
Message-Id: <20230308082424.140224-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_002506_201687_747BCD98 
X-CRM114-Status: GOOD (  11.57  )
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
index ad74ecc2a196..81f33eba39e5 100644
--- a/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
+++ b/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
@@ -242,7 +242,7 @@ &ipa {
 	status = "okay";
 };
 
-&pcie0_phy {
+&pcie_phy {
 	status = "okay";
 
 	vdda-phy-supply = <&vreg_l1e_bb_1p2>;
diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index 7fa542249f1a..bd4edceaa1f4 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -335,7 +335,7 @@ pcie_ep: pcie-ep@1c00000 {
 			resets = <&gcc GCC_PCIE_BCR>;
 			reset-names = "core";
 			power-domains = <&gcc PCIE_GDSC>;
-			phys = <&pcie0_lane>;
+			phys = <&pcie_lane>;
 			phy-names = "pciephy";
 			max-link-speed = <3>;
 			num-lanes = <2>;
@@ -343,7 +343,7 @@ pcie_ep: pcie-ep@1c00000 {
 			status = "disabled";
 		};
 
-		pcie0_phy: phy@1c07000 {
+		pcie_phy: phy@1c07000 {
 			compatible = "qcom,sdx55-qmp-pcie-phy";
 			reg = <0x01c07000 0x1c4>;
 			#address-cells = <1>;
@@ -363,7 +363,7 @@ pcie0_phy: phy@1c07000 {
 
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
