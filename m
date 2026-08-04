Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E5E1C55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 12:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmrGajYH18JTd7c7ceewZNgwi8UfBlpCe9wOHVu87ug=; b=KkIBbTn979IHN9
	JH89K70eflq9UOOw9n5hyJz8ru932iRL6td2DfQwF9Ggb/kbVGbShhc6nhqial75ZHtrdq2mwzwvd
	G2ECsbt4vm/s3ww0HoJeGO1riy66BUORHjb3Nsrw6tGlmh/DBsGAqrlyz5QKFRmBcZAvxs//LgZ6p
	zP3rlhgPtsEIuPMG+dd9zVf7igON3WKWiR+J6vWbzAUUV5gsW/adPOkX7f3TIQaiw4pj2YBNE5pIV
	gTJRiPMWtchyo1uvcEWizf/mmmisoxmATCWPkHsjlWqUeCjeFoWIXjonw+dHW/QYR4gAIwQd0++nJ
	o8aGPYoUJYmI9B/dmdwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrE9H-00000001nqO-0AF0;
	Tue, 04 Aug 2026 12:21:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrE9E-00000001npl-0TJ0
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 12:21:33 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6748CetN3531915
	for <linux-phy@lists.infradead.org>; Tue, 4 Aug 2026 12:21:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=CiYq0GXAxFO
	OekgF0TYapRMD4yuOgKVaynEdP3L4Q0E=; b=RZRsVm3UiWC7fIZhGJgFBCGVpVz
	CD83jr3GXnkv2pJhhuGPZGyMGrAe+u4z5tCbGk/9ub+StKbdlWStxhflDjO0S0uH
	BZpvYV1NdcQIIMmuXw7KppBvCA9vpqxaU6TAx39oINVHUPt10JdPM8l5wCEJTLDo
	RkUwSMO9MLO391Z9jzgfGDTTIUKxqZ+/V07qnK1adaRthRUS+DOp5XCFEHqO4712
	ZpVEEBDj6G9IMG1A089qUjR5rAGtilfC2CsB0BDSMb7chXNjXKAvNXhyhIYXgSiK
	iGb5Za0c+6qXZ2NnAE2trAgj7nf0XTj/E7hFjmlmSrio2rNfHaSXaCwfB9A==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fty3sm7wx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 12:21:31 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-388b404eaa4so1194568a91.0
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 05:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785846090; x=1786450890; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CiYq0GXAxFOOekgF0TYapRMD4yuOgKVaynEdP3L4Q0E=;
        b=aaWLUriMbxjvO/2ZcpstgeOQGcKvpqjQaG5Zb8WJ1u/H3+rFkwR1LCtCprl+s4mcAG
         I2gosK/E4HEvLp4fyEs+VxzvQ4JbV6i3thgscjCRltm5HgxatRMKghrxeUDoCCopVpT3
         A5sZviJ0wuLbwPzWGuqwlUzdntzIAyg6+fbf2e9MgUcvdD7i5UC56aP+bxiZ15Xm5fs5
         J9LjcfWthmFHwqJwt7KMM4xG9I1IclR/I1+B+jFchbIKtTfAD5JF02GXlwSxF6PXqv2/
         NADtJ3p8TY/NusWIzy9tK4CHlSYaoub3zq/xRZ/LA77uSwCXqo9dgwlwCYDYn36yq1jI
         WbCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785846090; x=1786450890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=CiYq0GXAxFOOekgF0TYapRMD4yuOgKVaynEdP3L4Q0E=;
        b=PoZLp2gv3AT7v7/rlb+XURaOo/0qf7B8kDlWu9YNFRLpTfvtKyg27DkzFC9mVi0wxX
         eb8rlb5oayRtnB2T5d9AlaNgoe2ZzoBcc/KiCXAQTdhZa9pywxPiyr+bwsGSXeoh0OWP
         cPFoDDXfGBTAmGlvUJxWs7EC1RoBHlEl6SQ+hNrse6dQMgrMyhJBOx/HzHYpdRfk0XBq
         HUdfNzeGC5MgpTAcyGU2XFgb9awVr9ZD3+vrMdwnab4hGDro51KcqUktOvoddJSgD/JK
         2uuJT2PVIlUAN/QSmTTY/ZmU8hlIjMQWYp2NPruLA0ZnVGwsNWVfXvloGXQgTzC46kGk
         1UFA==
X-Forwarded-Encrypted: i=1; AHgh+RpGoKSUqhj1W1QlW/l42IrAN8GhLV+m6393AbjIfhrZ+aSIqvUaxbt8fVDgshucM+Z9JZhkQwntSFM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDVIQxOfyc91hW/64n8Q4ZskxjDCyjYiQ4PNK3ORP2HIXeyyan
	zlwo1+bLn+7Gi+0G1G1QvGxPdNnJwwFrp4Kk2p3jrsfzl5xXk9r3/a5E36sWLz/HgRbYrVO7Ewk
	7RJ9FdarndK2fr8F99pgpu+jUah+Mot+G+sDQDMtaJL5oQCiB4qlFU2RNHCW9wE3xqhiv
X-Gm-Gg: AR+sD11+hPDRDSKPTjWXKMFdOjqwIpeUJBVSFli5ffouzdpYRYZE+gsjUygGJS1diI6
	A0As9goNheRoI8o7RLcP87nuHOGEvHA0N2RhII7ALUexzYVJ/da1Qx7n4HIj/ApVyRwFNmH2CV7
	4j1ID/c7cu2qevMYTPyUA7ghbUIFpp4s0HDSrAafzZc1bGmsEEh/RxfGQQ7XNUZTTVVkiL3lvik
	B8hsYYZSCT5lsD8YaTaJ76Ni3LiRb2mqrBaApiuf1pHU6VtGG7IJgYkEd58zWS6xnsI1tmtD5op
	dYIAlZHob9d6ymUnOQZ+FsA40cnHCG927irUJwU6ZO65/cIM+/AzATgL1B4reZXk8xeD+PzDpLB
	7vsImcBhTgfeMbiDYwC+OFm6ZbEUBqEfOXAc=
X-Received: by 2002:a17:90b:5605:b0:38e:9e9e:ec57 with SMTP id 98e67ed59e1d1-38fbc561025mr13225898a91.43.1785846089948;
        Tue, 04 Aug 2026 05:21:29 -0700 (PDT)
X-Received: by 2002:a17:90b:5605:b0:38e:9e9e:ec57 with SMTP id 98e67ed59e1d1-38fbc561025mr13225871a91.43.1785846089478;
        Tue, 04 Aug 2026 05:21:29 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38fedc650a0sm1237832a91.14.2026.08.04.05.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 05:21:28 -0700 (PDT)
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
Subject: [PATCH V4 2/2] arm64: dts: qcom: Enable SD card for Shikra EVK
Date: Tue,  4 Aug 2026 17:50:54 +0530
Message-Id: <20260804122054.3462145-3-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260804122054.3462145-1-monish.chunara@oss.qualcomm.com>
References: <20260804122054.3462145-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA0MDA5OSBTYWx0ZWRfX8udNgDqtbnoN
 DPGkRZKrB0wxeeLN1PK/V0LrnL4azPA7Fj63R1Ige6BGnKhzruSLildD6k8+GOH6k67+HEa7rjp
 swd/gopSo2n0sS5bnunIQ85CfESeIBs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA0MDA5OSBTYWx0ZWRfX9Iv6f/e7Iizg
 FSO92dPrZ1xBQhT89y4wKk4uA5IMasNjDItLPrpnrYHuca/ROhObq69s20tMQtwe5/tgXuZZVOh
 rrAD5tb4OaSYXmnHi0Nz7ii+/wjFGj/q7YdKam66KJ58SoODN1sT2KYgi8oZU3XiBmgzSv8gwFg
 C6qUu1DdajcbQM8vTibdw+pCHJFB9R1fuiQR+MM6Y4vJfuefq0v9rld7N25djOHdoZRNtlfjgCG
 uu4FX5Kub7WHL0i6isyJtCjW2fJF3bBVb6EWekdaaTaLGfz07HG0fAvcdLH4jEWWRGoPNfRiHXS
 cRarQMc46yGn6OXWlmVnoF2v4KDdPzU3nlBwxh8hCCc1tNnCv7mBZYB2OTCb4cm0fTSX6BdoTGV
 PAvZNfYPVedIncS4lcfwA5cnqxhiurX+XL04WuTWbLPNvcP82f0jSJBxsp4qY2A/MMvHnEYMrLU
 sDyfs0Bc/5AZDl4Iu5A==
X-Authority-Analysis: v=2.4 cv=Nu3htcdJ c=1 sm=1 tr=0 ts=6a71d94b cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=fJiEX4jLqVLmUz1iUe8A:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: ypN9puk-a7MTystelw4tqPjy-rn-nmI2
X-Proofpoint-GUID: ypN9puk-a7MTystelw4tqPjy-rn-nmI2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-04_02,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608040099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_052132_268866_965D8720 
X-CRM114-Status: GOOD (  11.88  )
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

Enable SD card for Shikra CQS, CQM and IQS EVK variants. Configure the
vmmc/vqmmc regulators and gpio-based card detection for each board
variant.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts |  9 +++++++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts |  9 +++++++++
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi    | 11 +++++++++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts |  9 +++++++++
 4 files changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
index 0a52ab9b7a4c..8e4656a51371 100644
--- a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
@@ -7,6 +7,7 @@
 
 #include "shikra-cqm-som.dtsi"
 #include "shikra-evk.dtsi"
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Shikra CQM EVK";
@@ -15,6 +16,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 	};
 
@@ -38,3 +40,10 @@ &sdhc_1 {
 
 	status = "okay";
 };
+
+&sdhc_2 {
+	vmmc-supply = <&pm4125_l21>;
+	vqmmc-supply = <&pm4125_l4>;
+
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
index b3f19a64d7ae..c13a02cfafeb 100644
--- a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
@@ -7,6 +7,7 @@
 
 #include "shikra-cqm-som.dtsi"
 #include "shikra-evk.dtsi"
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Shikra CQS EVK";
@@ -15,6 +16,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 	};
 
@@ -38,3 +40,10 @@ &sdhc_1 {
 
 	status = "okay";
 };
+
+&sdhc_2 {
+	vmmc-supply = <&pm4125_l21>;
+	vqmmc-supply = <&pm4125_l4>;
+
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
index 6eb4184f7642..177a599cd2c2 100644
--- a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
+++ b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
@@ -9,6 +9,17 @@ &qupv3_0 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	no-sdio;
+	no-mmc;
+
+	cd-gpios = <&tlmm 89 GPIO_ACTIVE_LOW>;
+};
+
 &uart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
index 3003a47bd759..5d400d50a7b1 100644
--- a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
@@ -7,6 +7,7 @@
 
 #include "shikra-iqs-som.dtsi"
 #include "shikra-evk.dtsi"
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Shikra IQS EVK";
@@ -15,6 +16,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 	};
 
@@ -38,3 +40,10 @@ &sdhc_1 {
 
 	status = "okay";
 };
+
+&sdhc_2 {
+	vmmc-supply = <&pm8150_l10>;
+	vqmmc-supply = <&pm8150_l2>;
+
+	status = "okay";
+};
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
