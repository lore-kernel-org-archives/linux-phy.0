Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88078C7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BkQKyqJhE8kNHbcFhY+Qw+tnP0Au57OH1JJkvBtr25A=; b=pncUG0ttKTBLkY
	Rwt+6y43d3XFhN42HHdvY/pwBeBPNgkMrt+tOkAj66hA4tiqdoURLRT2UHSIYeUAesD/3cafZiHSh
	iWc1O4eoVe1U0jf8VIKsd6jKP7TtipdvR6jSQ8TRHeDiDZ9xMPuXj0fAdnukc+RuJRHibTa+PNfq4
	GLnmkaveI8JzKYNOZBCl8BC23FtwuHRby1eFVe1PiCHvHErtw/2BJC8hijBsDi8WlPJtIoqnbogrj
	BAKMtYj9Zzfg+T1zpCXCYYYJ1GdwgX12GK3MrCMLP2xbeQpqZ4U2xXjp7AP+9E00pyWwlL2kQI/ET
	EoiHmG6r5vC/AWrgiugA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfk-00ASbl-3C;
	Tue, 23 May 2023 14:07:32 +0000
Received: from mail-lj1-f174.google.com ([209.85.208.174])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfh-00ASWd-0l
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:30 +0000
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2af2e908163so41462641fa.2
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850787; x=1687442787;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z0bfrDOeRsWFRYCGDzaeVEK2/C4B8ywoYnHbBSFYq8Q=;
        b=RmCgTudmKOAk3F4f24pSHuO+esMLvE+vj6z68alIvfSRev1V7pX4PKdCHA/+uePRx9
         AQJCuNeJfZo2mLCs8/Coz94uReqmczFreYJHZ04q3o8iSc62zshtg4jauX+Z2+oHuNvm
         dmVskVpNY58lAt6qoLcPIuo3+cqYF4zqoCjXbJmWRM9JlI6aMclik9Y6Z7g5WBNeAbyL
         44yRSgZ0gT+ygoFhhyUZdXGZa0BPWvIWaF1DxqKqZLCfV2l8yMLcfcqzs+3MDSJ+Uy1v
         mIb9Kk96Uud+9IAkOT9cR0D9KrhPRoc/W79xXBpKsrKKgFffOyy/KohOTcSkRGjbxH3/
         V9BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850787; x=1687442787;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z0bfrDOeRsWFRYCGDzaeVEK2/C4B8ywoYnHbBSFYq8Q=;
        b=Q2F6X3tprEH1O6V9YwwmL85ICk9a/jAl6+FO6hyZ1axQOfFRgITyE/0rNQLdYfUdCy
         dzIeSElZgxEEvwrG38AkqGFpbKUrZYLFp5xS32fTqZVI+el4FjWSKrmp0ZdWxmfwHxKQ
         NVHJ82mO5xMJu/BfTz3oGlfYPR0CmlU5hH2cIkPHzMPBNgL0kDb7iFGiYjlyUiWfbIVU
         sjd1CV8ZowqZnxpwJia8137oGHAdU0cUuXt9+eOmceUvjRjjm3hW3JEoULovo5BY4ja8
         BhJd22lgp9Cz/5zz6Ja2/4FlIAmfvbArK0u0ndghukXRPPHOXPppftQZFDbxZKtLfFeK
         Jzvw==
X-Gm-Message-State: AC+VfDzHwDyleAFrvNPjKpMoqU6Qw0xVXz+YzGuX6aj52CSkDn22Zy04
	R7kCRP1E6LrlSRprCUhor89S8w==
X-Google-Smtp-Source: ACHHUZ7ugcNovSJmk3laAoEQYms3ytGF4vxcJm4TGaIKuOVGpPTKHSmuCi0/mNoTsgT3QYgfCmTOPg==
X-Received: by 2002:a2e:968f:0:b0:2af:2d77:9be5 with SMTP id q15-20020a2e968f000000b002af2d779be5mr4163464lji.4.1684850787432;
        Tue, 23 May 2023 07:06:27 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 05/11] arm64: dts: qcom: sdm845: switch UFS QMP PHY to new style of bindings
Date: Tue, 23 May 2023 17:06:16 +0300
Message-Id: <20230523140622.265692-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070729_278109_6D9457D3 
X-CRM114-Status: UNSURE (   9.05  )
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

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 90424442bb4a..68660d532afa 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2565,7 +2565,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			power-domains = <&gcc UFS_PHY_GDSC>;
@@ -2611,10 +2611,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sdm845-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
@@ -2622,16 +2620,9 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x108>,
-				      <0 0x01d87600 0 0x1e0>,
-				      <0 0x01d87c00 0 0x1dc>,
-				      <0 0x01d87800 0 0x108>,
-				      <0 0x01d87a00 0 0x1e0>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+			status = "disabled";
 		};
 
 		cryptobam: dma-controller@1dc4000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
