Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17951C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 16:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BLmoc1DxdSksUHQtzHUoXQFKvoPakIFsbdQADPMHgc8=; b=EkQtLceCulcqKk
	FNZr62cUqnwDt991mSjBqyvi8bLeBOvKE4hRgUQSGSmZZxFbnJ8FvrmY4Zj7derz0PV1LFQU6YulN
	C4kFfsMA8hg5ucQZCm7Kqg8ZRaj0fHjLsszRkRZ4d9xf9p/FYHEM+lkSJ9PnmP8jn8Qg9O/Ew+Iki
	6qGpSIoRfirbrhH/nb70+RVrUS8appjKWdJA/IpKXitlu5fJ+UKvlWhkq9wAVIgGBDycOX8QYknim
	XiEMJIyn4SFnG24Q2FsNrUHnaW5PgjHW9KZ6oolYdj8vkbrCnWcQX371Fvvwdtzi48DbSAR/0dCA8
	l3GD1je0T9HpW2NaEuDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1webm0-0000000HWwl-3Vnp;
	Tue, 30 Jun 2026 16:57:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weblx-0000000HWwL-1B37
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 16:57:22 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UEDGW72216885
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 16:57:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=StVoceAKTdq
	K+qw8Y2JzYWOdg/02lGruQodIjHI1xpo=; b=E3fGs32G4FiVGENax5vkCZA70nd
	daTpi7K4rcA1biUAKGRI5Zv46UQbwidc6WefUQ57r2kqOVcSE6V9sKK0TrZV+aCC
	qYgPsjBe21ir3msx/aX0e1vy+apo6TjxROHF3Iy/s180DVaKPupRBGxoGKvPOCyO
	0xTansJL8Z/tzpMW5SAKUk64I+h+qGfkiFXoEla/f23LoOrKIp22wMH4f3H0oT1J
	uz6fJQA9oUbyixiflWpknvgugRTdfRY+f8ALdetkzam75Tv6ljH+yjKpdyEDWQtv
	1XLXnbvXcxi6mLBnlK8D4UnlZS4YHcoaYrKwAs2iIkm+TM0es7ec7XjtSng==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f43vfku6m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 16:57:20 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-137fc6f8e9fso8587563c88.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 09:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782838640; x=1783443440; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=StVoceAKTdqK+qw8Y2JzYWOdg/02lGruQodIjHI1xpo=;
        b=UUQD+30imweZdoWjd54tlOEinsZUyfdAZusV1EC6kY9hHET0ar3wM9Cv3XKiqZlhlq
         sxXlODkzgvDboU7MvyQvp8N1iSdDVO8xs13I5H5loyGrb/uBsTt7CDTcuCIWVTcPF4FM
         Gu9Nu45GLi8vSI3IrnagcohW7T3lo9+ZgL+OR7+UXRMvj3bkIyDtka4S7sLT92rJTDbV
         KOy/vMMUO2zxpLRyFacnmLyeh6UkXCDQtlMIqoWhqMLSYYp3YUDIYXRqnDtv8YnCKk5S
         r95yhLhpdvr623jMdJLXHMhZJsPf5sNayrJJL8Rc4y0POuw23/QcHf5ZeJ81mw6tsbo/
         +rIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782838640; x=1783443440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=StVoceAKTdqK+qw8Y2JzYWOdg/02lGruQodIjHI1xpo=;
        b=KYrTV/ySbgmIF4SixKwFdT2i9CFqNXJgTlioDgK5LqiGIZ7V996PkiR/bKVAR0COK8
         y1S9eRrkcZr3byyFi18lZWkKyhGKdjW7JRCi16Mpcb4NupfHk5nzmLUaGzRM8FcboCnc
         fdPh7Pt1Xce3DkxgMZ/4Svbv+TliEr0cgdm2426aG/4ehrOaY7tZvdQgSHyR99pUUwga
         pcVZ+XNfzPmVbJ4bVE1EzMCcuPtk8BIqtcd+W10TeUfXq+0vQJQEoI9oYDZB40Kx2RFK
         MEhoPgYN6LQatvrVW3Aycooh5ZP88og7zFFkanOt6Yyu/Omu0kOxLQH2if3bZJQyuZwd
         93Lg==
X-Forwarded-Encrypted: i=1; AFNElJ8rjy/Oa0YCwXzfbep7FS1K5QoviaVz0DE67Muw+h7ytdyWFqwJMBNlJxcWpSb7nMDtKIGDr7LDRaE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWNRGob1j+kFePoRWFt588+YDkqwMgkq3S/riYi2wlTx3N0bOp
	iGlGaIQX/6yF4V5Plt5t/DcNep+59qZR4rJpjpH19IdV0R3fDd+BjURPYrQmr4a267TD+ikRbmO
	4mpPbD3u1IT/Gsl429tVQCFnJNBKbN5pIShAxl/H7xAuBLZaIv1aiBB/FjlxGIG+Bw5pR
X-Gm-Gg: AfdE7cmuz9UOQTc3ar1cjhmzThjJOvirR7xFRMxXF1vOCKT81Q97vmGGlZTT0X/ebH7
	/mHeouEWCdi5Ttrwnu2eH+60Te72qtHksqyVkybGybfWTCwIFuwxXWahk/0VYG1nIqA0ZUwD4hJ
	wkKdkcFTU60R4UdngwL4QK34qG1JHk5DjFEQ6+JGeGd2OnUNHiXiVU4fC5RpBmA/grsdzuhmmlk
	vFiCzc4dl+OU71c/Mkdc9cf0o91izXWzYc3zEqi8tOYbsf2X+m1KCNW9gNnBaRV1rvZR//6YXPj
	fMDBbx1jLg25ImARjiEQtyfgO+FRg6VYauoh0KAlxY7v61UOX33l58UfkJws8/oV80CmxyjXys/
	YFKo1KipjxpXRUo3dOarsoRPIhMYIid37pMIsAn7rmVwZQA==
X-Received: by 2002:a05:7022:672a:b0:138:6ef:45c6 with SMTP id a92af1059eb24-13b2a1572d6mr2901697c88.11.1782838640108;
        Tue, 30 Jun 2026 09:57:20 -0700 (PDT)
X-Received: by 2002:a05:7022:672a:b0:138:6ef:45c6 with SMTP id a92af1059eb24-13b2a1572d6mr2901665c88.11.1782838639548;
        Tue, 30 Jun 2026 09:57:19 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b2a9b425asm12690272c88.0.2026.06.30.09.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 09:57:19 -0700 (PDT)
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
Subject: [PATCH V2 1/2] arm64: dts: qcom: Add SD Card support for Shikra SoC
Date: Tue, 30 Jun 2026 22:26:59 +0530
Message-Id: <20260630165700.1886608-2-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260630165700.1886608-1-monish.chunara@oss.qualcomm.com>
References: <20260630165700.1886608-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: Op5ecUaq_J2PI7eLQLrelbRUJiGG56Qj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE2MSBTYWx0ZWRfX+DLOqXiIGIcW
 rkZoNRjRjrAdVG+Be9sic0jMTqoSGO0k7eH4v9wDuwSMYGWb4eZRI4sJDi7Y4EZwDRzy+yhG0dj
 z01TjEEhOzilOdPhG5GYg9GBEs28YfaAEDDSxWWwjHI32Hu1VoiZXHBtLuZug6m5ygFyiT0pylJ
 7XtgRBAjErm1nGWyp43IYc4SfDD8TF9dIGNKLkvrB/YUXR5O9DcIr/7fcYNYskTquzRuSQGTozi
 SK4fLljnRVupnuF86IeTcOWDapnjlAy+TPp7O6A4OLseElroJ5+B1yUFXjng8gXxQHldzyVwj2S
 r/aBwtV1ofgDJ9SbFmKvTGnYN3D7xCeIBVMRrx3CmOP672xJHQOnQRjkZ7uTt4qQZPab6I581VH
 CgCk50h0jvoURXPQw6doTlGbGpfEvyLTSxLnzlknPX/G8dtQZEFN4H15xRdn4oplFq0oLm1ZPf5
 zUFh1WtrSkzMgNdVELg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE2MSBTYWx0ZWRfX1kUPUmo/WmQp
 NQmP3SMKZi8gPQ2lrxqijh8m1swQDbNfh/XnU+XZAyeaSH1DDGAXHOsSfnW5AE3V5tQDAGmKiZY
 qujAidX4upR+OuekygPQuVdJ85KdiC8=
X-Proofpoint-GUID: Op5ecUaq_J2PI7eLQLrelbRUJiGG56Qj
X-Authority-Analysis: v=2.4 cv=PcXPQChd c=1 sm=1 tr=0 ts=6a43f570 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=LDB5gES_c2OzCmg7MN4A:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606300161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_095721_467915_BCCDA4E4 
X-CRM114-Status: GOOD (  11.81  )
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
index e67fe047a683..cfdee8a2526e 100644
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
+			reg = <0x0 0x4784000 0x0 0x1000>;
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
