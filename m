Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4267EC5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcKudwyv0v4GDdKxaydu57Zc4n6HCnJFef/ApuCjXzE=; b=AeDC4VqDJ5FMl1
	Vdau+eVTOIsZjp4PLNmtHcJ+oXk/bKkBv8uIazti5TyXxJZNzSqFLnFTmdQaHO0KfesQstgodMuEc
	N/DWzXThs/0//pYvI0IJEnl+gVRISzBkbGzPpzTKF/IL4kIwAkFsfCSk4JNCLKaIyqdbM0iQ7x4oy
	mTSL9n2NtAM9SjS6ZY6Hav6kzTK1W8v21SEsWf94w+Nua+Q5lShdtM9D+vfSV11Boe4ICgz3IW3Jy
	0dLZQ7z+9u6aUgI+BVzjboRUH2gorb3FahIZmcNyqgzLOUmSjeF7QnyauLTqmvrmSpO3nmaonWSmY
	di9h0Ydb4oMMg3MkYnaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOPB-0000000BeVb-43Pg;
	Mon, 10 Aug 2026 11:42:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOP8-0000000BeTk-1CbQ
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:42:57 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9S7X3890382
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B1oqggu/tA/Od1b6ZAvOHjPKN93CH5F4d2o/jwM7LGE=; b=ApFrBIWvpx7x2c+y
	rgTMvHOmQHcLDQLJ/3RqrFEiYFhvDXq8gRzj5sK91G/LjVj+HdRZEQFPb9Cs4JG0
	1HelIm4KHwe7QfsvaTCGgjciWaZf545OpwjNMUmGzGPaM75RHQS/B5qn+A6PipzI
	UZvgApbtwLQ+jSGHMH93kcDNfnqSnMk+JeYQQv5BhGjnUPdWf0JU0140uUarSGYb
	SX4u6AWBC+HksQcwWusSFTad0Q1ckQOzWcukITb8imV3B6Ild579jwiZeoMH+GhS
	VW8RLiNrnXlahszEU7H1saXTC1bf8v4DDlvisecnaCJr2O2N5RUMbPre2uRuQwir
	yjuOPw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8v49aj2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5174a23afcbso20766401cf.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786362172; x=1786966972; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=B1oqggu/tA/Od1b6ZAvOHjPKN93CH5F4d2o/jwM7LGE=;
        b=bnmNdFYfesdSUBmX/jKAf/FHTK42m+4x6/EaUCMKM8ipQ8JRJhLFsBYAxVWl83aCUD
         PzY5kJ8cvX2bgsa+Muo/bfmoWy9C00KYYgzYFt1i/MV8MJlR4PmbWc7x/hYbwKLoo4jN
         VQoR4AWasQxvM/Mc6YhAav3Y9xSRz+6gPCswu2QG1ny/0A7jRq/UCmcKSx3ijySQsvtR
         6ceLkK/xBvRqxXyEsHZYTx59CWwwXHfqvs8gSAfzWo2Az/+UNweSOW5jDAUNvKptrdX4
         vIEMVzDT9u7Ak/uaZpnI0rGnnldWQAj5orr+xrBrtUsYWjVjPCfmK/jJ24DZOVPlqLdn
         TUZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786362172; x=1786966972;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=B1oqggu/tA/Od1b6ZAvOHjPKN93CH5F4d2o/jwM7LGE=;
        b=dw46N9MyyoPwjyIwdKIw1yRC7DOekoRT87VCeYJO1xRDz0N+sHvZZUC+X5rVe6fVmV
         3MvgxP5eHp7EIQ6/Z5zDhWCd42ZaEefw/bggRR9lDA7RVd1Kd5cw9jrcenQhdIAU1xxJ
         ZNDEEDeY+soJxw91oMp6+d/37VGGtTXts2hrKF8G3vm2GeI7M3cZBIouZ8a3kUI5tduL
         M0fb08/9+uHhETg9c9wJBkd7iukb2XwHpJwI0a2Sccy2bexi/AEdTYCIQtdaMD5PHPAM
         5zqqzb9ZkjSTNtmaDh8hv8BVGocmSaQgkE37pW18VKehZu2gparXIOfmGYMishGJQO2K
         PMrg==
X-Forwarded-Encrypted: i=1; AHgh+Rqq0enC7yUC2VluIgymcTvdLm8zWmfd9uNIXuZnDgNqpl6ftigMV8Q3QAjn1V82im5HJjAMGuh2Qi0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxv6ZHo+aCw7tQUZJziWAOB/6jIfrWyl43dxEBvk9wMy6/rKaLh
	d6lyT0VARjrI5GNvuGY6emiMij4hm7MQ34vTSJ4ma6zHRo4fL+GkYJBzz9SaqrMaBHpoHQIHuV2
	XcCWH9QQzXJhTvIomMQ8+V4b41lY5qa2eEYPZW9euj+qqGUX33ymENUA1+vz5yYCxyo54
X-Gm-Gg: AR+sD13STbJinwFUikSvFVIm0C90gWeDz7Ho0F+C1zCk+6Osqje9knN+bIaGO32Esz9
	Fo7Ii5TgZ89MCJ4pYwir23J1PcsWsbMXPg6BsHZTn2kidg+KAq+gjNciaZrT8EShHIp5i8C8DZP
	ZOJtigg9ZOzGQnfxwEogKZz6KIdYO1vKWX6BMeINfWibRy0bjAY0hP43lhymLMQXr5Tl409wQhS
	lemPSeMZZHHHYrQORtPe+q+28vGHuXiUGtJrA4toAozfLh1gdkHlH9D6m6TAl3xXYDQNTkKQaJy
	PNIrLTLKPuFj4abEptH+Ze1gSZ1k8qCmduej125yYSu/AzuhVdVwJuQz0JbdOG6a/+vGsmTYqAw
	38OZxRM2onKGvIIR4BTZGNgRcLmOcdZTWUii7yg3C5bF0ve8TCiw4LTcdCRVSgj92A10+y0zk4D
	dULmT+IG4ZpXziww==
X-Received: by 2002:a05:622a:5587:b0:519:8998:661b with SMTP id d75a77b69052e-52d18fd3460mr249242171cf.20.1786362172503;
        Mon, 10 Aug 2026 04:42:52 -0700 (PDT)
X-Received: by 2002:a05:622a:5587:b0:519:8998:661b with SMTP id d75a77b69052e-52d18fd3460mr249241541cf.20.1786362171879;
        Mon, 10 Aug 2026 04:42:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fddd67ea8sm21201671fa.28.2026.08.10.04.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:42:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 14:42:39 +0300
Subject: [PATCH 09/10] ARM: dts: qcom: msm8974: add the USB3 controller and
 its PHYs
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb3-v1-9-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3159;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=4WgJSJySPv8ASAImfHhYPQplaHVZ3iENoiXcumJXZOE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqebkqha+9rhhm1OkxHsuVf8HS0Sgqso2xvp6U2
 a4i5Yx4F7SJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCanm5KgAKCRCLPIo+Aiko
 1akPCACvs4LhWlHk8fjcjNAx+1WzO7mEwm4xBw2rHEmTMa4Yd6zvoyNJzqR27Bl+fsPJqwDJQqq
 aTr3zo4RCkz7eMS7l9GFZ6LjltlmcjMBRIMrMfDN8/f1XJOlmI7DZ0wAsWz2Q05KK+ewKEO107T
 dZBbpLp3n12hWTKydp1zv4ltBzITcLvuzu7sSBDodWO0L/ZkgXisIhCWq7oacUXJZhWjxLCaQAb
 3nyxhF0CYAGofcI8VT70hruT52N8BV9CmxIWd5WJMc503BKjqL6wiXtbmZxD2aZ3pPvLYnm39Bq
 pzBdSsBmFcXabrJ9qmqjZGCv9tVf9u2Q65E5albtOVA742Ow
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: chRPx8PLIDM8WKluFAoPCRRoI-O9W4Ko
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX1f9vGN+KXG8o
 0B+LDNBrtWASp/YXhwcToZzCRBlxydYHRn6zuUpcRMoaKx7FX7pia0mVhyY3TZsT0IqHHbkcQTP
 S1khhkO9WcweiI8Gs35RW14GrQCI4sg=
X-Authority-Analysis: v=2.4 cv=W5EIkxWk c=1 sm=1 tr=0 ts=6a79b93d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=n7-vJ_S0t6EafDVEDUQA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX5yBtrHynuWQy
 c1JJ5+VZqIqorLTqhOJBfbGYYKfdjIwm92Ipyfm3UJ/y4xOap66lunPhsdv/6HjFB1i1SDPvbWR
 eEixLk3jRrJXT5C7z9L3U838GVY2cSspoy/kIhf5bcfJgIyz+2BrDZVbg4bX3Rx13pYqni+ON1e
 3NyjHtWTPW+Zr2pWMpSKpb1e4DZrjESe7xyPieVCwpXCJ5WLvwfORtZLd0HXgDnxtpC2JHyDS7B
 iKD4YoC+znIuaF66n0bKF+QFF+msS1IH6UiL51ZtLR6uCAOJnBkrB/pDRHGfUFP9xyF9zcPGoxu
 BbS1wmzLiEJ7zdqq+h7y3Gk7HoLlRoVwNXWiAiDoRtasXHhP0A/VkfbEw8o6tvkFKY/1IY0+4kt
 DOzRbm6P5mSaB0cNUEnyrm3Hi+3cY1fr0U5LEwZvDf2AiKJYG5PLnVsAnJj5XwUtbLVPebyFDsy
 mqGn9vhYJRmPnh5ZV5A==
X-Proofpoint-GUID: chRPx8PLIDM8WKluFAoPCRRoI-O9W4Ko
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_044256_054567_8C8D0E0D 
X-CRM114-Status: GOOD (  15.24  )
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

The primary USB port of MSM8974 - a Synopsys DWC3 behind the standard
Qualcomm wrapper - is not described, so boards can only use the two
ChipIdea controllers.

Describe the wrapper and the DWC3 core together with both of its
QSCRATCH-controlled PHYs: the HS PHY at qscratch + 0x00 and the
SuperSpeed PHY at qscratch + 0x30 (compatible with the ipq806x SS PHY).
The HS PHY reference is the 60 MHz mock UTMI clock plus an RPM vote
keeping the XO alive; the SS PHY takes its reference from the pads,
driven by the PMIC differential XO buffer (diff_clk), matching the
ref_clk the vendor kernel hands to the DWC3 wrapper.

Both PHYs must be described and initialized even for high-speed-only
use: leaving the SS PHY dead does not just cap the speed, it confuses
the upstream-facing state machine of at least the TUSB8040A hub on the
APQ8074 dragonboard, which then connects but never answers enumeration
in any speed configuration.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi | 47 ++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
index 06c0af0aa317..bac3c8772e0a 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
@@ -713,6 +713,53 @@ blsp2_i2c6: i2c@f9968000 {
 			#size-cells = <0>;
 		};
 
+		usb3: usb@f9200000 {
+			compatible = "qcom,msm8974-dwc3", "qcom,snps-dwc3";
+			reg = <0xf9200000 0xfc000>;
+			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "dwc_usb3", "pwr_event",
+					  "hs_phy_irq";
+			clocks = <&gcc GCC_SYS_NOC_USB3_AXI_CLK>,
+				 <&gcc GCC_USB30_MASTER_CLK>,
+				 <&gcc GCC_USB30_SLEEP_CLK>,
+				 <&gcc GCC_USB30_MOCK_UTMI_CLK>;
+			clock-names = "cfg_noc", "core", "sleep", "mock_utmi";
+			assigned-clocks = <&gcc GCC_USB30_MOCK_UTMI_CLK>,
+					  <&gcc GCC_USB30_MASTER_CLK>;
+			assigned-clock-rates = <60000000>, <125000000>;
+			resets = <&gcc GCC_USB_30_BCR>;
+			phys = <&usb3_hs_phy>, <&usb3_ss_phy>;
+			phy-names = "usb2-phy", "usb3-phy";
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+			status = "disabled";
+		};
+
+		usb3_hs_phy: phy@f92f8800 {
+			compatible = "qcom,msm8974-usb-phy-hs";
+			reg = <0xf92f8800 0x30>;
+			clocks = <&gcc GCC_USB30_MOCK_UTMI_CLK>,
+				 <&rpmcc RPM_SMD_XO_CLK_SRC>;
+			clock-names = "ref", "xo";
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		usb3_ss_phy: phy@f92f8830 {
+			compatible = "qcom,msm8974-usb-phy-ss",
+				     "qcom,ipq806x-usb-phy-ss";
+			reg = <0xf92f8830 0x30>;
+			clocks = <&gcc GCC_USB30_MASTER_CLK>,
+				 <&rpmcc RPM_SMD_DIFF_CLK>;
+			clock-names = "ref", "xo";
+			#phy-cells = <0>;
+			qcom,rx-eq = <3>;
+			qcom,tx-deamp-3_5db = <22>;
+			status = "disabled";
+		};
+
 		usb: usb@f9a55000 {
 			compatible = "qcom,ci-hdrc";
 			reg = <0xf9a55000 0x200>,

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
