Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2843C88E50
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 09:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ly0XALNoOYlGn9xBVXYURKUhclW4N8GBY5c+EFe1MQ=; b=lCpPbh2dG0xVzR
	pUUE7JumwyS3Fa9qSgbCW/hpmBYjqHa2S64H+SX2I5hFRQAeAuE/KUGdBxgEW0LInDKU4YGtiL6y6
	Nptis7omG/GSozjspA9AutqjRwFQ1lyBaBAHuuz+mBKtBtbujtg531qBDuI7xL+XmJZHBrjZbZQ9j
	lLNkLj6yjhAacCchshQUX9CHhhvXYUXxD9nV/uc3Mzy/2wfLt8ztFERL56OrL+dPuMRqBvLXxvQhP
	G4gjFpEeRTexBfM5TUzWATJp8Evh4T6idw+PnTzkCPDZmp8nxlQ0OAA9UrmFHqDkid2jtVhyk849S
	yMFi/e30Z1EcRJJcJPqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4xjh-0000000GI40-2Wtt;
	Fri, 11 Sep 2026 09:39:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4xjf-0000000GI2s-2EJ8
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 09:39:56 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68B7kf2H3366286
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:39:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AKL6j8PRO5h
	5MRlvCyl1G2jlToiBQtuz/ByuicbxCcA=; b=SXdahWgpkGK7EDO4nCSfJyFf4Km
	f0bzP+fxqjRl4uu9nG6ir2g5FORWBMhv9iZC/p95KkkuvFjzaA6Jyke2lemLhahD
	TvTW+hi/sKuA3JmWi6oRU5vKjO9F5OE7z+7uF8DSKBOZf3Mif6UpGGhMrHRjoFEj
	hPrYj7DZVcSoXk22n1fa3xbUupMaCU5IjRIbpp4g3O74wfBt6Rx4dwDJTs7kBaYy
	ACckMbNZwaG3BCVAlu7nBuzp0aSeFQKf+pzqUJQJ2L6Q54rLxjfsl51gIFkXQImK
	2T3Ctpy9wIgnyph43Gd/ihyjVbqSKrjGame4hzyeu6x38WbRWX3g4PlhC6Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gm1k2b69j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:39:54 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cc1b8088202so736922a12.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 02:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789119593; x=1789724393; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AKL6j8PRO5h5MRlvCyl1G2jlToiBQtuz/ByuicbxCcA=;
        b=AOpyZXytJEvC6xx2hTapWj03RxkcIp38Z6TZzvV6bGRJh9PwQQ+lbIyXqy90cDkorE
         laigfSx08uSI74eYZKPLKt9BVSBDV7ChfCbrcijKy9eul4iZPNkZdJuULEkn6gax5QMs
         WenjSX7i5duWIE46+x7Vam5ULU4mZCX8RcoeyGRTpSVZE/W8Ej6LhUxP8ikBJRenvK/U
         9zlQ2RbqiNw9dnAlukvRYLZqua5cmPzgYlms+kX6VpFzQBym9YmL7tZYrzyudAJlKL6v
         cWUlkSMaFCdZMxmEPGtJhdhAejZJaBdYOb9NkRGr6eqTxKxl44U7zG/HxgWqp2pO9g2/
         BljA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789119593; x=1789724393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=AKL6j8PRO5h5MRlvCyl1G2jlToiBQtuz/ByuicbxCcA=;
        b=Vtk+mQSh+nbrkZ8vkuTFyQRzI8dAxzYoSCrbGCtGyVIG5MwMk2XgXaI/3D9I+PsZpI
         Lu587nWusA9o33gJCqr1tgNPiBKtcccLSKd7LQmy9vStQsxoKwkdhGI2joDkTUQV6YW/
         BCnWqAP82fd7myzbo2Snb6e80XbSCnmP794mElcdzax6NDNC7qiaWA+yGq/N9UkESbVj
         zP2u6D1qJmDZSJCxWe6ls95fysYcYnHwVr6s80esdoPOypUNvcNhUCDv9hYLqlSMubey
         tX/S476Ydqh1Md0586702nBqeqwnlPYzjn1mRvRYQDvid1RfOc3yuLmccbeTzr6XbiDH
         fINA==
X-Forwarded-Encrypted: i=1; AKwUvBxyEEM7y0V5Jkx+bqXYCDLMvYa8QZXG4lIHTIMKZO+hjzzeJaVMlQ5AnasLvvGyCXe16E8Be9cBJkk=@lists.infradead.org
X-Gm-Message-State: AFuF++mOQiX84LppqN/CY+CFgMltoPV/vKQVSd6kgFVW86jVY99pHlzt
	L90C1jzNURttdhWWGL1IlSJFcG0a0XdX4p+4ZERh1YQBtXSeFHpK7aGx/d7wQ9EpYfmybSOek+0
	abjOZHfaN9/LzGTdZVTBmLwmEwE5MAdW1Mfb2EDm7tBMbryqSncdX+qGks6IMrq9ToMto
X-Gm-Gg: AYBFou2CV8/U4hdilbzSHMbHoBh54elTUwWOGX4ZOogd+sCkcPF5sZJUxa7gpl5NUBk
	jG+pRlFSm7IEQA0QQJpf8pw+8CCzTua8La45rwUJ7tMwYzrgJ6wCy/dpfX9uarTD/Hj610gc6YQ
	YGudM7d2kTxMhy2dXIPblxFpHYvsD69MWM7DbUUQ3aax13w2vWKc3CVMszHESFTpNVvw+iBNfmF
	EOVbKZsSe+8q7PbAkTXuoEx5g3AHUMoRGL8u1cMwOhEn/E01B/W5+XjgLh0gfy0vfLcRyTlAoIO
	K2PmQAbrtjFB54kjvTGf9nmcepCzZE0yKlVUcfi0s+xLzoqBL/5dZOzN/TdSySPlGReGzPeZRyY
	H/WwHjSHe2C+6W4KdLwrpPco/7eSh8+LST7Y=
X-Received: by 2002:a05:6a21:b82:b0:3d0:cc29:ff63 with SMTP id adf61e73a8af0-3daed342f1cmr6326289637.12.1789119593455;
        Fri, 11 Sep 2026 02:39:53 -0700 (PDT)
X-Received: by 2002:a05:6a21:b82:b0:3d0:cc29:ff63 with SMTP id adf61e73a8af0-3daed342f1cmr6326223637.12.1789119592830;
        Fri, 11 Sep 2026 02:39:52 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33ba4f55735sm5549984eec.24.2026.09.11.02.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 02:39:52 -0700 (PDT)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH 2/3] arm64: dts: qcom: Add SD Card support for Shikra SoC
Date: Fri, 11 Sep 2026 15:09:31 +0530
Message-Id: <20260911093932.2376058-2-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260911093932.2376058-1-monish.chunara@oss.qualcomm.com>
References: <20260911093932.2376058-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=cM11IVeN c=1 sm=1 tr=0 ts=6aa3cc6a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=O3sVVsl8B5GRNrJjVWYA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: efgFb0_VkGlnG0fUydT7fptxD52kVTzt
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDEzNCBTYWx0ZWRfX+4x04R6uzU4a
 YzHk9sa31eB2kxWwDppHgCNRFCo1JsHdsaZ0t9YlB86TbzJ9cnYaUF7lTqXEsYVskP+XttCuUPL
 Und5v4QwbnVP/vvIk09wQrIIuZbHBtQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDEzNCBTYWx0ZWRfX6Vsk2nxqhVCN
 yFXdkAI8OftcUkt2tC9eln6y0pznQtkHBjXUy5T426WrhCyO8tTcpDS1AoVV0ObGM9/oEm+FeEO
 bCynppry9v58PSeCYwDMVcFAWT9cAuBkgaGNJ4FI84m+cJmTyI3pueQpjgLRsXcg41gL6ODOUiz
 b5xowm307+X4QDqA3WO30Rip6ITOZK0jD0a6yI+hjIq+88HCQ7xcAC84mrn2PoPvslPlus4STKH
 skpW1HOHdOPrc9vJ0Z+ANWXaCRVbeMI3QW0slPIn1y2dK1lrxhntUWMP7IWONnqhTKCE46LL12Q
 PduoDOW15E9HWENLvyvRh8BTVKWTW7WUmOCRJcsMRbC63clfUUSrX0Mck9rpm6oPhXjLInWoHaR
 xkv02orMPZKROY8Dc0ZPmS15EQa37zdEzJcxm9KvekN013LRsvBvF3bU5X38Z/kPuWaO+qy1gNb
 Z/ZZonXbTea23EfBxkA==
X-Proofpoint-ORIG-GUID: efgFb0_VkGlnG0fUydT7fptxD52kVTzt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_03,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 bulkscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_023955_684171_71BF9537 
X-CRM114-Status: GOOD (  11.66  )
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

Add support for SD card on Shikra SoC and enable the required pinctrl
configurations.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra.dtsi | 97 ++++++++++++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra.dtsi b/arch/arm64/boot/dts/qcom/shikra.dtsi
index 1395c182a2b1..4963c818a7ae 100644
--- a/arch/arm64/boot/dts/qcom/shikra.dtsi
+++ b/arch/arm64/boot/dts/qcom/shikra.dtsi
@@ -942,6 +942,53 @@ rclk-pins {
 					bias-bus-hold;
 				};
 			};
+
+			sdc2_default: sdc2-default-state {
+				clk-pins {
+					pins = "sdc2_clk";
+					drive-strength = <14>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc2_cmd";
+					drive-strength = <14>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc2_data";
+					drive-strength = <14>;
+					bias-pull-up;
+				};
+			};
+
+			sdc2_sleep: sdc2-sleep-state {
+				clk-pins {
+					pins = "sdc2_clk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc2_cmd";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc2_data";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			sdc2_card_det_n: sd-card-det-n-state {
+				pins = "gpio89";
+				function = "gpio";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
 		};
 
 		pmu@c91000 {
@@ -1330,6 +1377,56 @@ sdhc_ice: crypto@4748000 {
 			power-domains = <&rpmpd RPMHPD_CX>;
 		};
 
+		sdhc_2: mmc@4784000 {
+			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0x0 0x04784000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 350 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "hc_irq",
+					  "pwr_irq";
+
+			bus-width = <4>;
+
+			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
+				 <&gcc GCC_SDCC2_APPS_CLK>,
+				 <&rpmcc RPM_SMD_XO_CLK_SRC>;
+			clock-names = "iface",
+				      "core",
+				      "xo";
+
+			qcom,dll-config = <0x0007442c>;
+			qcom,ddr-config = <0x80040868>;
+
+			iommus = <&apps_smmu 0x0a0 0x0>;
+
+			interconnects = <&system_noc MASTER_SDCC_2 RPM_ALWAYS_TAG
+					 &mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
+					<&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG
+					 &config_noc SLAVE_SDCC_2 RPM_ACTIVE_TAG>;
+			interconnect-names = "sdhc-ddr",
+					     "cpu-sdhc";
+
+			power-domains = <&rpmpd RPMPD_VDDCX>;
+			operating-points-v2 = <&sdhc2_opp_table>;
+
+			status = "disabled";
+
+			sdhc2_opp_table: opp-table-2 {
+				compatible = "operating-points-v2";
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					required-opps = <&rpmpd_opp_low_svs>;
+				};
+
+				opp-202000000 {
+					opp-hz = /bits/ 64 <202000000>;
+					required-opps = <&rpmpd_opp_svs_plus>;
+				};
+			};
+		};
+
 		gpi_dma0: dma-controller@4a00000 {
 			compatible = "qcom,shikra-gpi-dma", "qcom,sm6350-gpi-dma";
 			reg = <0x0 0x04a00000 0x0 0x60000>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
