Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E0F0CD5BB4
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 18:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wraheH2e7GFpsrMtRcCTC4boOFxqffCKFpdZFLT9+4M=; b=1FW7UvUK60tUjD
	5NT7CXnRg56VEISjdvZVANG19FeTEcNMatpc3GxpTXZw37b/BlblnD+CvK//FclTPbHp9/LJXB29D
	c04SiRiYrn8tY95IvCYwe5vv+4V/rxxPpLFF1nutt1BwB3MTbiEX/v3IdZNUgVEqt5zSHbI1DXVOK
	Fb31fEQTiTyY+Lqp746+426BOcNhnfj/PgJGSj6s43nk4I52W0b0DnbZ+PFkWmFb4bS7XiLEXVqSC
	QBUcxsr3kJCJnhENIsyT+1TG6RtpCzgCZTIsQQJpf1wVKQhOuF1MVDrqj4Sd07ahy/NYlqFTn5a5K
	zBEkrJEb1nbrDQAFqC5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUD2-0000000BdVX-3XTN;
	Fri, 22 May 2026 18:02:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUD0-0000000BdV0-44WS
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 18:02:56 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MHY3Uh1800770
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 18:02:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LYbCyoSrxp2f0yxvAlcjf3VHWtL27L0/ddWablgzkzk=; b=Kbf/6Gs5EBaOfZpY
	e42nxdQPhPyuAqLIxy2J9TipfdTHdsLkg2bRpgxKX5/AcbOid0ZacorUyQIaBBzG
	H7ndCf//zV3X3gQgMxJ06BGwUv2kEtQMQzuH2aieXYeQJeWtXSD56D7tMcbH4GI1
	OKaVAkJUT1MEEOqRsatYpWH2zB+2dei9OysI1i0Nsb3DPgwy6bfKN8VTg9cNHbQi
	SVWU7qMkfoXKq3xcGep/TMx6g+ci8zU/QgEjHzyUe9+P5txlir0rP1BGYdrsfDr+
	0LeambT3s81BS53Bw+fiqa5jZryOTsDDKZhRqu6qoul2oVjVux43tiySRp5P13eb
	w3xMjg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ean9g1tft-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 18:02:54 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ba115ab6bbso80107455ad.3
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 11:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779472974; x=1780077774; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LYbCyoSrxp2f0yxvAlcjf3VHWtL27L0/ddWablgzkzk=;
        b=GHxlUS2ZJbj6olQQ5yHcjbeVlPmw4jahY7o52kwJTGlaeAuwwr1W9m4kslJ6ZSvyPr
         OYXwmWMBUGk2xO43NpszMl97ngMM7Z/E7EG7NJifeNvo6m/CuT39EIdaha4VZhVbRbp6
         ZQhnRL7K5TjW2mW2oUYYir+oZXSI1FXNzgtyeGSipLs4+oKKbOErxF+91YlE7TTSVFNE
         ztM70uv4fQKh6/hlfI6ehT64lNhDlqJlQFzJ5ZTfbI2zPfkz+c2HBUPN03h49tcrWM8+
         gRVrz2I55bmGc3bSfcpym63flBizr0lhtotKTG8hZj/TECJ7jCRh2SkMNRHBLp7l3e2v
         hNiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779472974; x=1780077774;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LYbCyoSrxp2f0yxvAlcjf3VHWtL27L0/ddWablgzkzk=;
        b=XUfKLFu00XI6PuTW+c8SFn2MZpFL9HmY0iX8q1U3sM9dX1Rl9oLlZG23FkhCHRMFJV
         +pVbBioQdLXoTL7sYmOTDmdNw4QDR1sCBbJi2AGb5aWGYe0IV5YLE5nLxIbDHvEKjBqH
         EeU6fsaJ4/7gr7Qiubh/oSfZI45pMS9Krp8psbKoEgrly5U33wsC2fEIycYiXMC0V7sZ
         TynmsdMqm+k3VPjS6nXEk/CzkWAFChZd3Goabt6oixBmQt+xMd+g1k2nW6zk2C0Of+Em
         GzLeDnj9kM+wy95FWDtpsAPx8zgrb0MNrSqKMRwTvmI8ju/czHnrb1qX8pFuMI88Zw6Y
         6esQ==
X-Forwarded-Encrypted: i=1; AFNElJ89hDrOl0p+3fL+LkLuWz2+6AKRPIG+7dNeTogm3bC22MIDnp6FpQSQncO+QoSlluAbtOaSOfOa4nI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/WWKjndlGMqWlmwegqdIZ0tZwDlTQNsNXY1xR6F1kDNaMXzj1
	tCXpkR1ARSsUtChfMfG1TNdnQTQg31mpbf3AVb8fOOO5tZ7twK/pu/t+cTR+xN7sxEIBOioZTuF
	/4FaxsDjBjbVvcS5KLCqC9WSg6msY59a6sntmMSHrpzD1v1YxIAuui36PiR8XCVtjAq4Z
X-Gm-Gg: Acq92OEXSU7wDsOdHgXFFVTSzbsuiP1Bx18rytSAB//mwbJHFGp29CEIuUXRwasV0j5
	sdyUvgFH/ShFVuT1FtSB2efbBa8gBYRVIqBf7uXcUWUdkDXxVsq/klo2iuNTu7lE49G6nO8UsxC
	IrlE/4hYFyuNATAx680Lv3MYeFekauYpgWN3qdm3a9uj/GimRPTHnusEfKhfNyGt29LkZvscIwj
	HfT1KTgk51gnXv6HfCpI0WhlFYtBJp0kSddIjmoY/hRVed95X+X8fw5nT9dH3df2DbVPr2FdTsM
	MJxoQ9lga4RmXbLzXAvscQXB/TBWNLiHZ6/DRHqWDXgpUwI9NG3ayUlFTiWKU40MPVm8nfoMlhB
	o8JSQfSkHHSqvX4Vn1BmSDW6HIsZ/Cdi2j+ah
X-Received: by 2002:a17:903:1a10:b0:2bd:2430:eb7b with SMTP id d9443c01a7336-2beb06cbf6cmr53141085ad.12.1779472973781;
        Fri, 22 May 2026 11:02:53 -0700 (PDT)
X-Received: by 2002:a17:903:1a10:b0:2bd:2430:eb7b with SMTP id d9443c01a7336-2beb06cbf6cmr53140605ad.12.1779472973267;
        Fri, 22 May 2026 11:02:53 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb58ff106sm21193645ad.74.2026.05.22.11.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 11:02:52 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Fri, 22 May 2026 23:32:26 +0530
Subject: [PATCH v3 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
MIME-Version: 1.0
Message-Id: <20260522-shikra-dt-v3-3-80ffde8a3dc4@oss.qualcomm.com>
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
In-Reply-To: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
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
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779472947; l=4361;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=gyY1XiTKArO3gJDJCSJfjS7xSgApxMt112/xnTGtpAM=;
 b=3hw0jq4U6PlOsygUfYiXLFHUOBdUHGipF5u5OsPsLZrj2E3lxCbBDryNt8DZzBw0Y9TPqVJOe
 cUBb9e7XfLRDkr6i4wecDON2DKyFAnSKvdbYj3ZGtiJSUZi4dvdzu7P
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-GUID: gvj1XSN_CVqOoxNywIaoqCfgpsNLbt_e
X-Authority-Analysis: v=2.4 cv=B/qJFutM c=1 sm=1 tr=0 ts=6a109a4e cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=s31jhp6hv9j5UOuNascA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: gvj1XSN_CVqOoxNywIaoqCfgpsNLbt_e
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE4MCBTYWx0ZWRfX7ED35PqvIUBe
 V/PzmiYgzR1Gl87XodzyTzhFjLGXcuUq8fo7MErJ76QNIdUqC4pBgMfBChJP+PnhA/FqR4cq9jr
 EqYvVEs2NTp16sCpm56l4T00Z2KKyPTCDmtf+qUwdSp7suOn9La73SVBvBvd/PG4rZJpgwjt1bZ
 9yOBgnKLbuZs8GHLTjbGt2h8bNQQaKxBvehDObAux7NRra5IQi4ZSdszaD3fWMxgt/uyOJ5zqsU
 1JKRlY31no7ofmtnT047qK0yZBwFaDP2ALz7JOyqh2E62crSHLDJcntL4o7oewgnWbxKjCPqk+F
 d37z29YN/uvr8AiP5KeZvLhdQr0T9sH78Ch+tVDe9dnp1w7XHiD4JSRt699866b9jEJUn/uhr1b
 iRbNsYkrry6zQ9jCK8mbh/ZztsCNJ7QULpgUIdlWHtdljCXLW9fQMasFnmXJyHUVy04Xrn5oHD7
 JrSYrrQVRbqiY0rypxg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_110255_027050_F6995F68 
X-CRM114-Status: GOOD (  13.47  )
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

Add device tree include for the CQ2390M variant of the Shikra
System-on-Module, a compact compute module integrating the Shikra SoC
and PMIC for IoT applications, designed to mount on carrier boards.

  - shikra-cqm-som.dtsi: Retail SoM with modem (PM4125 and PM8005 PMIC)

The DTSI includes the common shikra.dtsi, adds PM4125 and PM8005 PMIC
regulator definitions specific to this variant.

Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi | 156 +++++++++++++++++++++++++++
 1 file changed, 156 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
new file mode 100644
index 000000000000..97966cff8896
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
+
+#include "shikra.dtsi"
+#include "pm4125.dtsi"
+#include "pm8005.dtsi"
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
+			gpios = <&pm4125_gpios 9 GPIO_ACTIVE_LOW>;
+			linux,input-type = <1>;
+			linux,code = <KEY_VOLUMEUP>;
+			wakeup-source;
+			debounce-interval = <15>;
+			linux,can-disable;
+		};
+	};
+};
+
+&pm4125_gpios {
+	vol_up_n: vol-up-n-state {
+		pins = "gpio9";
+		function = PMIC_GPIO_FUNC_NORMAL;
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
+};
+
+&pm4125_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+	status = "okay";
+};
+
+&pm8005_regulators {
+	status = "disabled";
+};
+
+
+&rpm_requests {
+	regulators {
+		compatible = "qcom,rpm-pm2250-regulators";
+
+		pm4125_s2: s2 {
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1200000>;
+		};
+
+		pm4125_l3: l3 {
+			regulator-min-microvolt = <624000>;
+			regulator-max-microvolt = <650000>;
+		};
+
+		pm4125_l4: l4 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2960000>;
+		};
+
+		pm4125_l5: l5 {
+			regulator-min-microvolt = <1232000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm4125_l6: l6 {
+			regulator-min-microvolt = <788000>;
+			regulator-max-microvolt = <1050000>;
+		};
+
+		pm4125_l7: l7 {
+			regulator-min-microvolt = <664000>;
+			regulator-max-microvolt = <664000>;
+		};
+
+		pm4125_l8: l8 {
+			regulator-min-microvolt = <928000>;
+			regulator-max-microvolt = <1000000>;
+		};
+
+		pm4125_l9: l9 {
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <1000000>;
+		};
+
+		pm4125_l10: l10 {
+			regulator-min-microvolt = <1304000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm4125_l12: l12 {
+			regulator-min-microvolt = <928000>;
+			regulator-max-microvolt = <975000>;
+		};
+
+		pm4125_l13: l13 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm4125_l14: l14 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm4125_l15: l15 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm4125_l16: l16 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm4125_l17: l17 {
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3544000>;
+		};
+
+		pm4125_l18: l18 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2960000>;
+		};
+
+		pm4125_l19: l19 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2960000>;
+		};
+
+		pm4125_l20: l20 {
+			regulator-min-microvolt = <2952000>;
+			regulator-max-microvolt = <2952000>;
+		};
+
+		pm4125_l21: l21 {
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3056000>;
+		};
+
+		pm4125_l22: l22 {
+			regulator-min-microvolt = <3304000>;
+			regulator-max-microvolt = <3304000>;
+		};
+	};
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
