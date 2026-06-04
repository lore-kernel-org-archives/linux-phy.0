Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B00CCD6E4A
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 12:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Myc0oJfaQDb7FNgeMcoQHOS+yaXAoEOeYywWWF0pbK8=; b=LgdqsDoyauyAwE
	BAW/J6OGAsOWZ7lUfF2FUv6kK63Dyw+4zNtVNLzlv9jvrcoiGIDu34pANsmsBL3rsKoOd4U0K42JJ
	BPMhedqBQXkihrFCM10WbScAj1K4GPDjIrKRJdxSxrRq5WbOt/LzdmI9bIEblRIOQxhXPisI+6vej
	qFPZOkY5o9PrY/atlo/ZIFbTfBBYQowJYKifGZ2RmC/iRha7eSTkNn0HvTCOB+ZLyXpOD/peYxD0n
	bUsqLdME71kPRHJEFlfnz9Wojakj0RutHIf1QeFx2pMisj0fXpmiQ7+1VqCzznsAvsUPacMghYc5Y
	dScKc4D+9RRqGRb5BYBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV74O-0000000Gi6I-0EIC;
	Thu, 04 Jun 2026 12:21:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV74L-0000000Gi5w-0ggC
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 12:21:06 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 654BhJC9994556
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 12:21:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6WyR98AIgg4
	IUe1Wpqy4axQJ9fuq1PIaHO7fO2PnnMY=; b=iahYC2Msy4MbQl8aC6ALRod3a0X
	6xYoi+Ihk8ED6bkRBYlA96APRHB6av9TDKGBmuC049PrGdp54AJ+oHis+X7Th0Lj
	HGzWZccJIv946Wk25blqUV6dCx04/Tz/0YdQjXI6rt4ylcloxE6qVKBH4DRInA6x
	gcroqcxl7dZVHzz2w078pA8jDu/Lee/lpMW5wMIs9dbCPI23iiuZBflYWkzKNtcx
	w79umLZIwx3nnt86VFe5US8PqS+EqVE7DO6f41Y0CHY8DI4ytWKcSKuvgRxGAFUK
	IswYASeWnKykycgBPP8uEhvLTEfBHQMThe1zPPsK6VWaWSy/eP7b4NoIzww==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ek374sf2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 12:21:04 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c85a2f1d1e5so403715a12.3
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 05:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780575664; x=1781180464; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6WyR98AIgg4IUe1Wpqy4axQJ9fuq1PIaHO7fO2PnnMY=;
        b=YbdgFiZnnLACSSdl0mfnstmkLyQNKJin4dSBQV2B9wfTWLqVmlpY9thDJrJAYbM5DH
         ViGLUNEo9n/DUt53vK1WhncC/TLBDU1kLY/B1iK8ZdriR4UoqoPpdriqTLKRyBZqEiWL
         V9ffUJZggE591qVon6ZnQwnKBBplT3n5/AeS8FJ7EuV+3AwYzNc2wzuLHboTf/2vEIBv
         k2Du1h0OeqZFlpLxm3vF5ldlaBnbzNoFzOlVxQdomaWOKjZTunIrdtawNWUsRRviDfTo
         ZuJqIAwW2MJrtlKAPzTs7n/FdHGkX+KOTbDldST2Zsh2e4DeBQ8lhmR8ZfB6pR16GDhM
         iggQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780575664; x=1781180464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6WyR98AIgg4IUe1Wpqy4axQJ9fuq1PIaHO7fO2PnnMY=;
        b=Kqhzh8ZqkuYE4O6LtzlAzzaF7qk2sD0btyRqXcrSxipfxCDrhYWIhSVweY0GaVCRkN
         nzxRXZnQumppev8+XVxZV+FuTg6lwBCgNhmnjJxjTVy4AbNgXpcVlYlMkVimRvZOnvFU
         YDrtPGX/iYMXVKaW6CrTrPkNJOHhRLPWSL/oZOcvL1bZQRfb/XaDxkXiKt5c2b77VBYe
         q71Hm+TFj2DLcvWur3cMepbbFFhN0F/V9BBG+Qk6qkBJZ15ZOZjCCvkYV6G07/zrp+6D
         92F3emAlyvgHrM4zJpO+hQ6yCM6os1M8s7usuxUkm/tGqytEMLdvF5+iitYlhopVAtmd
         v+Cg==
X-Forwarded-Encrypted: i=1; AFNElJ+GuvzrO/O17kTz3tSbOJx6KgmKPD1/u3TFJ5QnrO2NaKvSV9tj4xGOdkbWx8NUbq4aL9rHeU2QJLk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzIhu/wFe+xBncWF6KzUPfTuYhkrkggLeaCTgRwWPS+laZFZ39w
	aA/ftuizB/OwwMjrJglCeZHnuatpuVm1MQcgUbYXIaseSF5fbldlJAkA325xVBo039/3/DA67MD
	cX9abQFZbHrLsL0x608v4mGSOolHAcqFrN/lGkqeewprrabUQ3PXuSvek6fCEevjFxpyv
X-Gm-Gg: Acq92OGAeFSz1iADOigA+GG1ru5d/YfW2AY6zQiLk9qixhKZUMfDw88Ac59FZ0ctY58
	YOIFrPdgFAOl/eF66EZ8eZG7jQWIljpb3C3f5RX7AORDVejj6Hze51XuzJq44HsESzy/ZW1D772
	zF7bBEuAKP1tEk+7a7NvnGCitHTU0fgznuMKDNpCw3sEQYT3Sg9JX3AgJR2RrQ/eVaQQaKP/mBI
	QW2dvuK9HrNpra9tPQYPYmcYL4Hv/dQdWvkg7OiYtJRCjZ/OwsUjqrH1bxBegaLEc1tB+QRIpJU
	9bMrIYVV9Stef9bJ3xxuZxAK1B/3aTXzMimCUaJic/k8x2DS2Ysjiquo57vlxtf4/P0BNKo1gZ2
	EJHXzuGF9vTLsRj+aOekCh2/Lo3m0XAlEPBC3+gfzJ6UxneLTv2GPTJzBv/3Y4/ixWDs=
X-Received: by 2002:a05:6a21:3b89:b0:3b4:669c:ee32 with SMTP id adf61e73a8af0-3b4979e9b64mr8576155637.37.1780575664068;
        Thu, 04 Jun 2026 05:21:04 -0700 (PDT)
X-Received: by 2002:a05:6a21:3b89:b0:3b4:669c:ee32 with SMTP id adf61e73a8af0-3b4979e9b64mr8576110637.37.1780575663548;
        Thu, 04 Jun 2026 05:21:03 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df045c2csm4796903a12.12.2026.06.04.05.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 05:21:03 -0700 (PDT)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
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
        Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V1 1/2] arm64: dts: qcom: Add SD Card support for Shikra SoC
Date: Thu,  4 Jun 2026 17:50:44 +0530
Message-Id: <20260604122045.494712-2-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
References: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDExOSBTYWx0ZWRfX6o3Wd4v8WM2R
 AFiwuHistWEOyBanuruWHD6jGJcTeVsJDeI+4ZGXaLniP8Y2VUQoBOhJ0+Z0efBpoY923UmJL57
 7YaeyJZ+HfRd64vO28Y1jBkZZwAN9bawwagzoDMvimZ56Yyus1ZEKsQ1Y8xM0rCYJmygZ0oCQ5Z
 wYDdEKRhSjSSfadtHGhE/KsQ7Zt+bmXE/BfvUy6Q/4JgHi6nTulNW9Ln6nTt3AfiYvhthHQ+TPb
 P+dBJV+MgyZ6k9zFrqjiOHNL6HGyK5TOriBG29ppz6WdB5IMhepmZGd2vy1qj2rX6vt2yPWRKN4
 io4awsgWggKBADf0+aedu06rFR91BlkzSCWAHGkp6IALW2P6wUT9Jh0Oi4oqjhc6iS3y0Ifi876
 FinQM5wXo5r1x/jiljJ+CEjbq1swvSq9Ja7rL7yEMSBQjCQg6n6WDI4lXFfbeOtRrbxhUx+P0wH
 CQcjIMMWSHZuP77ULtA==
X-Proofpoint-GUID: qBtj7D0-1xjLBD_xwRbmjGIzfDyt8pt3
X-Proofpoint-ORIG-GUID: qBtj7D0-1xjLBD_xwRbmjGIzfDyt8pt3
X-Authority-Analysis: v=2.4 cv=eJsjSnp1 c=1 sm=1 tr=0 ts=6a216db0 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=LDB5gES_c2OzCmg7MN4A:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_03,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1011 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606040119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_052105_227918_B1B70D6E 
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

Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra.dtsi | 93 ++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra.dtsi b/arch/arm64/boot/dts/qcom/shikra.dtsi
index 6bac6ebac8da..6733f2efe60a 100644
--- a/arch/arm64/boot/dts/qcom/shikra.dtsi
+++ b/arch/arm64/boot/dts/qcom/shikra.dtsi
@@ -827,6 +827,53 @@ rclk-pins {
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
@@ -1079,6 +1126,52 @@ opp-384000000 {
 			};
 		};
 
+		sdhc_2: mmc@4784000 {
+			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0x0 0x4784000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 350 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hc_irq", "pwr_irq";
+
+			bus-width = <4>;
+
+			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
+					 <&gcc GCC_SDCC2_APPS_CLK>,
+					 <&rpmcc RPM_SMD_XO_CLK_SRC>;
+			clock-names = "iface", "core", "xo";
+
+			qcom,dll-config = <0x0007442c>;
+			qcom,ddr-config = <0x80040868>;
+
+			iommus = <&apps_smmu 0x0a0 0x0>;
+
+			interconnects = <&system_noc MASTER_SDCC_2 RPM_ALWAYS_TAG
+					&mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
+					<&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG
+					&config_noc SLAVE_SDCC_2 RPM_ACTIVE_TAG>;
+			interconnect-names = "sdhc-ddr","cpu-sdhc";
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
