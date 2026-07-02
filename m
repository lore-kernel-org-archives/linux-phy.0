Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E3F7C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 07:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMxX9O0Wp4v0LNKIh427mhllBUdJOYtCRYVr2GsBVys=; b=Yh9+Uk0A9oFrxh
	ceY5gZVnezUc0EZvAN8vK6WkGlBiuqUniTcLhvtYEU5XbSeJI1tXdumvam4dSo3ynd6t8ZSCcSFzw
	wrevGiLpFuLm75n7e7pcsO/8PoT0zwKMQ2++SDg/h1/7nllj5gk7HEAkPwY/ghi351mYGpRqIGslT
	Kq74mdgJ8Ek5KoqxA5EvUTIw94ItfEAykkx9jxIWWZHJEbkMD6ZiekhKbu36JnLJWBUNbzCprLNFV
	OFJus82Kw+XxUCOKB19i2qgg5+Y/87szk4UO2lSgB30kPxGW8sLLNt6QyrHg8Mel0xKuTNx4anu8y
	NPCX4ZiMRfkS6ZAtuL5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBw7-00000003kPk-3pCK;
	Thu, 02 Jul 2026 07:34:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBw5-00000003kPP-1oj3
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 07:34:14 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6621KjxA2917809
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 07:34:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JitEdvI6i7d
	f8QMRAibL59DICOV+9hKv9N6JWPI62GQ=; b=GFPnwKRu188+Ve0Co85KecIiVff
	c4VyemtlfV8/zZTC4H/cfF4jP+cO+bvPKXhsK+v7+LndnGMdHCYmq3bbm15q0aEw
	jPYbVw+IStGn+UKh+GyH6g0jX9o9tiG9YPA1dR+Mqr9TVFAG3R/Sg1AzQrdOs14r
	hIt13i5N/OmOC4d9586tBx/po/pLgnJkRCx9H+ThNl3lFzb2P12Xl+WvLvz8sKGy
	Ed7CFbnfXF1uWBcxa6Yg3Oy/5fw29nNj2gt3h8n9jsj/pXJ3NAHxdw3MWyoKLD4Q
	xQpbppD4kFrJLJphhV06k59ChfuFz4qW5n0pYlK2LE9eoTLUquF1V7DM5fA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f53q0bp4t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 07:34:12 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-37fe90ee192so2153541a91.3
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 00:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782977652; x=1783582452; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JitEdvI6i7df8QMRAibL59DICOV+9hKv9N6JWPI62GQ=;
        b=BAkJEc63QCs7hIo/QSSqS5JgzA3Aht3Qg7ZoI2hmvYPE7PhhIjMGVLvoT7uzNjxobL
         4oju/V6pWkx3NFPhzkA1UDWRsiQz/hUG6QMwAXcNgWgYbL9F5qUReFbBOdtuLa+AK3pQ
         87d/IIRoFL1hzBbdoQNx/Mmb7OchI8QiMX6SIWMVUGLNPc5dz88QpyXgvPSPYozs6v+P
         +RHC7AQQ57G88nNgQ+vQ6jb5BPjyx5/Q07obZDQtEeit+mdwdUe7cF/gttHM2LYbx2lU
         rqRAL3iUnNVDYNnlMECxiF6KP41MOo+ekyH1tKWZ9y1jg9OoakSNr96Up9we6HC700qa
         M+tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782977652; x=1783582452;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JitEdvI6i7df8QMRAibL59DICOV+9hKv9N6JWPI62GQ=;
        b=Ru+9TNyLzqjRJ6/ki1syaWo3OYxnHSggqoMT0iuULStQW48Dl3ZEU9iYowzA4oea3n
         Ch4XnCpRkS4jv+xUjlC8jcYVfDLDuObIHqECVOuuE9SC0E2B/qRPWzddOyfX8p23ZBN6
         yIYAJCAcMDo+tjxcHbA0sesI8E4h89SHIVt6DMfZPrYJ/OzeAFwitpHcN8sQTkBw/8K6
         b1vCnsi091JwLn9KMiHOLYYnhTwwu2vB4BS5RFB9f0Fp1rrBA36afdbhsTjPSaXRUzRi
         p8rSzErJH6ngBAzq9McKMe1KIHVk+P3XHzLfGXMb+OFxWS//pHUjIkt6OuTvEHZy55sN
         BTOw==
X-Forwarded-Encrypted: i=1; AHgh+RqDikc30SK/TsUHdMcI5RRiftw9bN0MqBVQurrJFrKhTOCkqn++bbnzKW7R6IC/Ro9UKLnJesvyfIU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyf9ofE0QQ3gC3cHnt4O8+gGlVcijW1vXPJvWbMQfbnMWbnnd1+
	oLVCtCVqcJPRYEnmOUFs+TIRlI0GWWOlPMXd/EMUIjTeBhvl28A6JaxvbFgt+w0OlLOcLDbzJDy
	iU2PEFB67Q8yF2QW93FxAugeOTMphPuZIPATQ1GP59xB7o2qWwPyNghI83wln0DUHfkFN
X-Gm-Gg: AfdE7cnOEoDyAYB9XOo/6kreTjIMNY0BVe5zTFXHiL+FXgRrvLfdgfp+g26e5UbnvLv
	pmgmVv81GSU1kWNR0GA+sJmghEoL4Ttm83fFlky4X7yADZSYs0lPNtroDKapf1q+ut29Bph0mAp
	3i//zI/vTC3qOgZTUNsY20nYeEXfvTqwtq78KsDH+zHnrXZmgkxeOU+v5ym6LUxvxS7sJ4yJzT0
	GA6nhgCpRfrGVSLPBoZ7U3QyoHpn8/+nQtrIa1UiSYIvo28n0ujETyuiB1BoUs28gPe4gpqfa9U
	smSPBbsFo11ahnMmD4dRaWGK/g4aPBwxfkQThPgieKqIC1enSU4sAx6fr27klfy5FfkiLBX6Uaj
	YK0OKNr8V+N/+fmGeCbRVASbcrf7G/BddL35LzBrHBdPolA==
X-Received: by 2002:a17:90b:3149:b0:37f:133a:3e01 with SMTP id 98e67ed59e1d1-380aa0abadfmr4951447a91.4.1782977652166;
        Thu, 02 Jul 2026 00:34:12 -0700 (PDT)
X-Received: by 2002:a17:90b:3149:b0:37f:133a:3e01 with SMTP id 98e67ed59e1d1-380aa0abadfmr4951392a91.4.1782977651604;
        Thu, 02 Jul 2026 00:34:11 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-380e163211asm587380a91.3.2026.07.02.00.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 00:34:11 -0700 (PDT)
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
Subject: [PATCH V3 1/2] arm64: dts: qcom: Add SD Card support for Shikra SoC
Date: Thu,  2 Jul 2026 13:03:53 +0530
Message-Id: <20260702073354.3641966-2-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260702073354.3641966-1-monish.chunara@oss.qualcomm.com>
References: <20260702073354.3641966-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=dtnrzVg4 c=1 sm=1 tr=0 ts=6a461474 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=8A8miFJkZQRJ8vCztksA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: 6q7dDJXYb-8tUcwH_v9XxhS_Ui5Ym6tY
X-Proofpoint-GUID: 6q7dDJXYb-8tUcwH_v9XxhS_Ui5Ym6tY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDA3NSBTYWx0ZWRfX0zT00cz7cf71
 3qcpY+s0duUjHte9Ite+0P60OIblvtQMQpE8Bg5Cc/eHtqcYpYFtztV4nuEqGJhQq/3us5uhgUj
 hJtL604Zh7B6kvjf9u+VcUBP7w9fkeH20Vc2SBapcOlim+6YdW36deFMtAzYgcN+txVJLsuAE+W
 JHDRT1hyrm6UZAaheJY5tgmNg7W3VdGSVg5sXDVR6l27PV+iFauNKdAyGX1DYTqv0MKl5DzBpBQ
 J+mI0idQg92hp9POPOLnXH5O5h6BKucrCcm0JHU2fbgU6XeSJqqvZ+IGK7afIRID4YDkSPDaPsL
 2Ye6dBf4LlAbAuZr0hRAag85QrfWMh+MEhSjKquTNmVj6ZNnd9voiFZaaEas7dYT852QMKvGyo/
 m9bHhZOnhQYF+7AkgBkLJLrHKiQZONGmn3NoY0EYhgMd1K2VzIzZRhS84n1lH9fp1e7JKPB49TE
 Ih3utTPqKh9TXNPBTPA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDA3NSBTYWx0ZWRfX7Y2dt/fwHIHZ
 NrPJtY+q7zrfGQa+rdEP9fGveQe9lLsrpaJTR9U4of7hL4MdTTTZ3GnhNsV8SpciRccfP2sE/no
 V4jnzM7GBXwgrVcElVfXv+qRGqPEgRk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_003413_473218_C01C9894 
X-CRM114-Status: GOOD (  11.97  )
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
 arch/arm64/boot/dts/qcom/shikra.dtsi | 97 ++++++++++++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra.dtsi b/arch/arm64/boot/dts/qcom/shikra.dtsi
index e67fe047a683..02997d603099 100644
--- a/arch/arm64/boot/dts/qcom/shikra.dtsi
+++ b/arch/arm64/boot/dts/qcom/shikra.dtsi
@@ -829,6 +829,53 @@ rclk-pins {
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
@@ -1081,6 +1128,56 @@ opp-384000000 {
 			};
 		};
 
+		sdhc_2: mmc@4784000 {
+			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0x0 0x04784000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 350 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
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
