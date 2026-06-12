Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAD22CD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OH+DHFFcrJmVSNIyG6NWheFGEIAz4CdZlWLS6cEQUOE=; b=tlOCJeKfXT8NHE
	xGb2U+9X7pb5S8Z0FvPG4+dlXtG3O7EzuvKE/pJuq5EBJwwHaZARjY+Br38PeK5DX+VoE1bS9blF0
	DnAWeJrQejG12I9DOlnF/zNlwMJojZGi6be9dBC8wTbzDXaMdj4/jOEdDUAszCtICQbMEZlHjZlCM
	n6rTb4myDgtbJf/Ly9WNXh3W8VgwRLxmTHfxocgEPqzr1UZXTMoQULJjzUiNydFcLmdor7OWv3w53
	4Xq59j2KRWXQowlgYlNGYNH2HyNxpFTnRfDyO0OfxsGc093pwRVxOVQf+sJ+nq5ek5dkrESq9voar
	s0hcNjPbJuXjmrtN0wPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5g0-0000000BLl7-1k2r;
	Fri, 12 Jun 2026 17:28:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5fy-0000000BLkk-2Jhd
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 17:28:15 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65CGVXBr047731
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 17:28:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XdoZ2RJJ60goTigF6n53lme4PvQ7Le5l4apoZP10XKQ=; b=TDofAIFBt5M7d1aM
	lYIpv/qZVvf+emu/0hcMcb8LlOQD3cV76rXQ3kzQNfP+SHB17eEGgW8aTCeME1Ld
	zPSFFfBX36F3FVcnIOGzp34MQ1gg7AaDASk1cyl7i//vMeEiAv8zg9ICu4DcGgP3
	kktIa7wtH/vtrYGIJbf+h4AQJrt2uL21fQ6JJNnzlA4H4Y9WQtNb5OJt4luLkY/C
	gCQhljwaJdS/xKY4UJ12xsx8qt0VVtPtRIZ+W5EqKyR+XT4wLHf3TsXfa6ugzRX4
	tEyCavqKUpMsr7ObdrqKXs6AyPp5FgqQUEMsbnUPIh5WzAl4sZyGw24Q7KrTzLDS
	wLkELQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er2u43tff-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 17:28:13 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2bf3636d6c0so12483735ad.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 10:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781285292; x=1781890092; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XdoZ2RJJ60goTigF6n53lme4PvQ7Le5l4apoZP10XKQ=;
        b=XItmfbJQmP7XrQRMUv2qUQBrR4LSAOunTTaxbPnbNZQTK6zWKNr4HuOnWGcrfG8qQb
         rRrHcZzPnbsxwdXlMYuX/7RzWkYsyPv//tiRDL2Dhl/rTvRnUoQ1MfJpMIY2UXrc4IhB
         jKSYkPUHoTmjTpQBsWKykUFAtzoBIeMbeDVPb/e0NHapI4GYY9UD1R17yIJ+9+Oltsmc
         WXvSbhegvkQgnncxin4R0sukBcUisl8Kw7TDX4p78c+6jpNuPim4wM/8o8JRdX3iWU9v
         tXJy3xGgNMj0zrrt0M1KeYhNQI1hccNynJEWqtFg4KVLxpd7RiO6USDhwCYolziUk8J1
         8wlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781285292; x=1781890092;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XdoZ2RJJ60goTigF6n53lme4PvQ7Le5l4apoZP10XKQ=;
        b=P8vgu8JD4XikfvUxqUzzaYh2OK9PkVFiFgDOqqeoA0HnzGAvKrqDrZjTPhwHcHpZ4x
         Je1ELvtycU6q1w1/+QmFS3hMyoDJXdvNisJCio8mH8B2s90NTSZe+hSQwlRaG24sjLej
         FUR2XjfXQ417JFGicrOz2djuvg0PHANaHfnJY3dOs/u/PCCLzzc7ujLG4n5J0nA3pInU
         Ff4mz+Sn6DE0FEBgr03DhmAE1KzfJWoq27/qpe/RXNaGO9AR8XjrYf3v4BRz4pbil6UM
         B/GdOy6KhSS13fm+ZJNQtzGyTeDeHlvwaYzG3DA8bt07g/N1qVJbkor6qQ776xg7uaGR
         o+Zw==
X-Forwarded-Encrypted: i=1; AFNElJ8ByuG1GPoy+hj+zFhpoZGY3lYCOQneKzbphYuSoWrviDhj7EV1XGiqDjrQMvAIMbveEquHfuHHmAE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzEyq/vzlLvAXoByq1aSBrAGxagp3uXqGo5zaYkPzkgdX5UIO6O
	xML9Ph20z7o3cYdAH7JmclGvNlL/nRPy046xXUPoF39KHr0Y9CYqy40YOavW7gN9XNotl8f8H8m
	AT4UcWq3qsbZnszAYGMUkFYOjBOTzS+mfhPKkbJat45UfzPib+IvdnRtrfvNtFabSCCaF
X-Gm-Gg: Acq92OFYem6ZPMja9o+ixS2RTtK8sCC9ZjIkzKjMk/013Q/Je9uGv/6S0rFkFOOYNha
	2xeYYxNY5oyC0e9FpERPdFZSLnSpsfBIskHj2f8fT9S0hYQRtC8UsrcJZMdngiAPUatHVGV5O03
	tVV0K3Zhrh2EI9SmXK/YCUeJy4TdjtsNL5Ynw41jX987MUoOMBsuPXG+NKE/I3RHzYVHGysleOE
	+Ch/qKLkLWvT3AL/5FxwLIi8b8qAz8+SO8YzmQQKKVqDljEx+r5YbUbMs/QHfrDzLWbUupDJObz
	GC0BaGqOs9dTXQzH3WGufoIuNSV96uDSJ4nKMrqjdLtj8qsDuylxcgav9Hs6zGKKFmf2l8JVQF9
	U2CR+dSiVovmv1mzlrVLM0V9NGufOQqShfk+4
X-Received: by 2002:a17:902:d4cf:b0:2bf:77b2:8b2d with SMTP id d9443c01a7336-2c4130100a2mr44827645ad.30.1781285292362;
        Fri, 12 Jun 2026 10:28:12 -0700 (PDT)
X-Received: by 2002:a17:902:d4cf:b0:2bf:77b2:8b2d with SMTP id d9443c01a7336-2c4130100a2mr44827395ad.30.1781285291755;
        Fri, 12 Jun 2026 10:28:11 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4327acae2sm24278105ad.52.2026.06.12.10.28.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 10:28:11 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Fri, 12 Jun 2026 22:57:40 +0530
Subject: [PATCH v6 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM platform
MIME-Version: 1.0
Message-Id: <20260612-shikra-dt-v6-4-6b6cb58db477@oss.qualcomm.com>
References: <20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com>
In-Reply-To: <20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781285260; l=4606;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=de9OCkDKTuh5nf4nMudEODeUDKn8sPIhepF3pO6PxjE=;
 b=ac4w353wVz1Kr4Ck35e4r8txdyNgNeb9l/h1BYOLSNWPT/tnFJHNKxgUd+NCLQrK3akw7kJYe
 S2y7pSgLT53B+gXKBuwUa41fS3dtRgFveNdqzvz2NjILPpQz0RfgeUM
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-GUID: Th9Yw9BfT0Uv5RMuKMDyYGMGOoX_Dgz-
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDE2MiBTYWx0ZWRfX0rBFttrco1+I
 v/WrCI/zPtqcm0Z6Qd6lHGA8lZhLc+fQZfdroVo1iG/xDrDqYLITqIW0j23t9aT/FL6fNtd5AEn
 ApNhoAun7gSdgciotMo4BMfFr06nElE=
X-Proofpoint-ORIG-GUID: Th9Yw9BfT0Uv5RMuKMDyYGMGOoX_Dgz-
X-Authority-Analysis: v=2.4 cv=N94Z0W9B c=1 sm=1 tr=0 ts=6a2c41ad cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=IZjsGcCFCfEoDLf82CEA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDE2MiBTYWx0ZWRfX3fkJa/oM/7kA
 QQv3i4gQH2us2WKzeYzYBJu/ARpxks9iSPnumm8FYTzHUdEJlKCfuiN7VALT2vB4Y+31vvI8aQq
 eA44BfhcBUEUNZ+MZeZnbskAwhsklh0WBp+g+YMaDfUmksQc7XUgGKCaW5Ejfl6APEroILH0T01
 +XTj9uXQ+lRMXyOTr/ESWQr0tDrhPENoyC1eceFapZtkt+YnNzAJ14VVYoieeb2FJFOyUvJhG31
 2WbeP+F2RsckAhPq4u0bCh8Lb7A6M4QhCpophkU4k7bh4SPv0tCNk0sjVT/ODu0Tv13iiWFINNA
 4rwFUiUKr4bYQ02no0uVrBlpIJ1Bjqe3biTJZpGE+lmfnhHqCoWaT40ezpdx80Y7/Bj6bZjqgID
 o8rQmzuZfzqK/M0BJt5wKaynj0ELwvVJcFgFfFDVdTtdY+najpYLkzZ54yxBX3FEXunwrpGnGWU
 sc3ilBekye4teJdNKug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_02,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606120162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_102814_715174_5FFD7437 
X-CRM114-Status: GOOD (  12.90  )
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

Add device tree include for the IQ2390S variant of the Shikra
System-on-Module, an industrial compute module integrating the Shikra
SoC and PMIC for industrial IoT applications, designed to mount on
carrier boards.

  - shikra-iqs-som.dtsi: Industrial SoM without modem (PM8150 PMIC)

The DTSI includes the common shikra.dtsi and adds PM8150 PMIC regulator
definitions specific to this variant.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi | 170 +++++++++++++++++++++++++++
 1 file changed, 170 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi
new file mode 100644
index 000000000000..73945bf42112
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi
@@ -0,0 +1,170 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
+
+#include "shikra.dtsi"
+#include "pm8150.dtsi"
+
+/ {
+	gpio-key {
+		compatible = "gpio-keys";
+		label = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vol_up_n>;
+
+		key-volume-up {
+			label = "Volume Up";
+			gpios = <&pm8150_gpios 6 GPIO_ACTIVE_LOW>;
+			linux,input-type = <1>;
+			linux,code = <KEY_VOLUMEUP>;
+			wakeup-source;
+			debounce-interval = <15>;
+			linux,can-disable;
+		};
+	};
+};
+
+&pm8150_gpios {
+	vol_up_n: vol-up-n-state {
+		pins = "gpio6";
+		function = PMIC_GPIO_FUNC_NORMAL;
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
+
+};
+
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+	status = "okay";
+};
+
+&rpm_requests {
+	regulators {
+		compatible = "qcom,rpm-pm8150-regulators";
+
+		pm8150_s4: s4 {
+			regulator-min-microvolt = <1080000>;
+			regulator-max-microvolt = <2040000>;
+		};
+
+		pm8150_s5: s5 {
+			regulator-min-microvolt = <1574000>;
+			regulator-max-microvolt = <2040000>;
+		};
+
+		pm8150_s6: s6 {
+			regulator-min-microvolt = <382000>;
+			regulator-max-microvolt = <1352000>;
+		};
+
+		pm8150_s7: s7 {
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1200000>;
+		};
+
+		pm8150_s8: s8 {
+			regulator-min-microvolt = <570000>;
+			regulator-max-microvolt = <650000>;
+		};
+
+		pm8150_l1: l1 {
+			regulator-min-microvolt = <312000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l2: l2 {
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <3300000>;
+		};
+
+		pm8150_l3: l3 {
+			regulator-min-microvolt = <312000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l4: l4 {
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <975000>;
+		};
+
+		pm8150_l5: l5 {
+			regulator-min-microvolt = <788000>;
+			regulator-max-microvolt = <1050000>;
+		};
+
+		pm8150_l6: l6 {
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <1000000>;
+		};
+
+		pm8150_l7: l7 {
+			regulator-min-microvolt = <1504000>;
+			regulator-max-microvolt = <2000000>;
+		};
+
+		pm8150_l8: l8 {
+			regulator-min-microvolt = <1150000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l9: l9 {
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <1000000>;
+		};
+
+		pm8150_l10: l10 {
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3544000>;
+		};
+
+		pm8150_l11: l11 {
+			regulator-min-microvolt = <1100000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l12: l12 {
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <1950000>;
+		};
+
+		pm8150_l13: l13 {
+			regulator-min-microvolt = <2921000>;
+			regulator-max-microvolt = <3230000>;
+		};
+
+		pm8150_l14: l14 {
+			regulator-min-microvolt = <1700000>;
+			regulator-max-microvolt = <1910000>;
+		};
+
+		pm8150_l15: l15 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1900000>;
+		};
+
+		pm8150_l16: l16 {
+			regulator-min-microvolt = <1504000>;
+			regulator-max-microvolt = <3544000>;
+		};
+
+		pm8150_l17: l17 {
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3544000>;
+		};
+
+		pm8150_l18: l18 {
+			regulator-min-microvolt = <400000>;
+			regulator-max-microvolt = <728000>;
+		};
+	};
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
