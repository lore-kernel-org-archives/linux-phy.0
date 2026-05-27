Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7583DCD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 15:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p61TDswz4TMa6uw286SFQpoEjQGvG3ubnJ5x0rcCg9k=; b=as2sEAsdr/DlFb
	BjJscaQv/xYWDYt7R0dVD+AlWTU9Onxj6Ma2885Y66zgBG2o8AACR153ftoyt36FBDA9FCFYR1raV
	AyY5l0HkAG6LPtKZG6VIHU1lmz+GYGXHqazj790lqJFPcORI7v6E9zhnGlwcVjmTDuhPqz5qQJRlu
	uv4rhWUtNYHs+nTKso1mc3PnVwvMsiWe+niqaCVT3y4aWwBTGYdk1meN+0CnWch1yX0cR9o923u6N
	kw3/7tF2VQZ3mDfQRbGKKyIhDuNo4TwZY3I2CuPznKgg014yvmEeFq86clkuGduIMdsu9zDXUukqo
	/8U9ye0P652zQttvhotg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSGbt-00000004SGr-0vCV;
	Wed, 27 May 2026 15:55:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSGbp-00000004SFm-0ZXK
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 15:55:55 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64RC4s891477908
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 15:55:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A4kQsxb/SwdSnGsDD4VNnccmJf5zbiuW9tHo31lzG8o=; b=AZtKcxlEuoJwI5wd
	jms0730lfxqaT4+HB3j+oIaNOcZAGFDI2v7aWXU/sHDypmHp8MaSLou958mdrEOu
	PewFGxBArtWcyrGCXafUwIx86gXqqe/claY9Do0GqHqMfYFx8FgZBQ4mrwX+8SNT
	JyZ6aOm0vPBo0+V0UlBAL1I3AkSAb4RGF5Kv0CBIVgb/T5tm3EpXnJ7WCmt3SUih
	GCo3Cw6+K6cP1VRTFQgdscAsGnGIRcX+G7MvWwc5GYWM3ikREKoC/h5IPFDER55p
	6pKSsHtLEAFhYyCxFAucr/MsbRhffLO4OuGP/5+fk+8/S0/hsAe2LutPKQG/HZu3
	jKRJpg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ee0a88w4p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 15:55:52 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ba054e0304so103290845ad.0
        for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 08:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779897351; x=1780502151; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A4kQsxb/SwdSnGsDD4VNnccmJf5zbiuW9tHo31lzG8o=;
        b=WXtTrzmBjFMHQUu3PG5e7/P5mZBvzQjKuj4Cnc695ECMjdF2zSknUcHm86dm7tD5lP
         jqzafW5sVheM46MtTr1dimLR4mxfEY7H+4lOrgulArAlaGFOdrt45NWhmHIBIV8qZYYr
         TZEV5tZ6rhKI1iUuLWsseDZRQQwQL9Zx5DBtIU6BsONFJM+c/560qeIa+iNQvN/R1uOW
         2+4OqoV2PjNOU4z73zDbBkUxUoPxEBCvOweOUPRqv67AGLtsm7hDeoYnjzZj7hgxtNyW
         pFVr6bkL2bpf/Xbp1hypN1YSQc6JfQOPkxtzw+3GVXS0LKO1Wo7lONsguDbhd++66UJr
         VMjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779897351; x=1780502151;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A4kQsxb/SwdSnGsDD4VNnccmJf5zbiuW9tHo31lzG8o=;
        b=dYV82Zeyo+09y3vtYcwsqMnAQNGC7VvajEW6P0bw3Tl/s/0Ln6JK4JqAanXoxaDtgZ
         V24lg3JBj/vx1rgyDjXm4leUJ5fKSlY1PFDhFRqwXhYdpynN5M2Wu8pSQoSj6LoVtYrp
         PuTR/hZD66/sJ9Fc4r5emF24GUTMZg4Sm/bPn2IA5UZKQSQyIrlOM8gjL5AEzNkjA9sg
         /3i0LjetVVwtU4Jr7bCwwrmEW9HBMdcl70Y2N02+ArugC140pVg39HhNDfnWseM8XR8d
         lQZmVnHNgERYamATx+5TwclVfBoC3ZHlGtfqofDPKTBIimXd0SL6ov3f6vGRHBESN13p
         Y3Ow==
X-Forwarded-Encrypted: i=1; AFNElJ/Ip5Sfy/ly2ZqtlNKWdAsWcNrby7RdDH4Lz0TidKRXiwvvPluVf7QLjfKpbmNTLLkRDOaFAEOr9jU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxpZ62c+SGpbm3V06LqxEFh64v2Y3JNA5Xv8JnCexRGUweMAZok
	a5R3nZVsTZORSJ6jcH7aR8x6XllxXlRs6ZvvG2CdmhpfVu1esG19WSE4bjKSnRqwnoEQf5t9sle
	s4KjDNOVkXHi5ycVw5Zh241wsg/KuGfXKfUF7+gG6NlMSEWpHbbTien5NeMbf076t/EYW
X-Gm-Gg: Acq92OGG437X82N8lMHBvzONk9Z3tzaIKhzhn0ClCTubglVZx95h4+yQx3Q8ZrdwWm5
	wgmIdO8N8gp/U0+ItlREY3NSDI4XCmGDJ1IKnp/c/OEhPgRhC+CMXJs/BRHwX/2kzQ+Y4eZZvPk
	CJUlKor09WgPhVwfBvLn6Ddd8IG/qcOsPQoTirEfqd2NTTwbadR3UNpFvbOCI5TkJEGWmr7DCMO
	s8vAMndhzWsIOtwVm1A5XRT7v8IMZbpyLu3/cCB++ACB6M/C1Q2Gj6pPrEk934lFDMU6Vr0iMOy
	gUDABMRH39z6FuMayaFqbVkaVbtmKUWjSuQu/wnHwm/acbJBx7qqP2Kp3R/75H+HFsjxrVoa3AS
	++M4kAwgjgezgn6GCoDDK7h+B607H/R7L+06xA11yZ2A+XPM=
X-Received: by 2002:a17:902:cecc:b0:2b4:5bf8:a7e1 with SMTP id d9443c01a7336-2beb07db515mr213933135ad.6.1779897350951;
        Wed, 27 May 2026 08:55:50 -0700 (PDT)
X-Received: by 2002:a17:902:cecc:b0:2b4:5bf8:a7e1 with SMTP id d9443c01a7336-2beb07db515mr213932705ad.6.1779897350399;
        Wed, 27 May 2026 08:55:50 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beff36894dsm1264135ad.37.2026.05.27.08.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2026 08:55:49 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Wed, 27 May 2026 21:23:55 +0530
Subject: [PATCH v4 5/5] arm64: dts: qcom: Add Shikra EVK boards
MIME-Version: 1.0
Message-Id: <20260527-shikra-dt-v4-5-b5ca1fa0b392@oss.qualcomm.com>
References: <20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com>
In-Reply-To: <20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com>
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
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779897312; l=6252;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=HvHWQtODvdkbR5OShoXL2Hw/tCjBTmKQUX2DDJxZoEw=;
 b=9aVwEfhHsc3GCcWm2nE5kJZ9zjUyeZFFN7qlfys63SIT/1ta8//sEJXOY5+Id1QTyy1QHiQhr
 b3fH5CI16OMAEfviUkShkfmILVkrnbqq9R2n4vMNGn8K840Wlo0CMwR
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Authority-Analysis: v=2.4 cv=XrrK/1F9 c=1 sm=1 tr=0 ts=6a171408 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=TizygBHPM-tQ0bhc_XQA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 8TqhTXC1sFC6BVcdgChUa71yRsu0lzkO
X-Proofpoint-ORIG-GUID: 8TqhTXC1sFC6BVcdgChUa71yRsu0lzkO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDE1OSBTYWx0ZWRfX89/3xlOI4mI1
 ucxMQNfB9pUBE6SGLOznngd50uUmnBuZO4Uuc6tLAXuvpmo/xnIB9DW6LX98qffDVrg4/bvkmjv
 pVMmYCJ0fDF36Bek0hdzEFhR+/ftPRrx2rmmDGz0SZz95DDN5biAfkdRK9VcTNSTTB6Itn44gmx
 GybQvzqFqjWmJlKM/WS73Jp6A+Rsbub7U5OQ9gq/2/5o3LKuAEqlnfYo1sVIuDBjXDrJS3Z0T8P
 9EGABpVTZMs/kfxvQDmgddV97l7jQrFjW07Eh9HVb6KCYG0+XoPtXQHeVPAyLH+QT6Kq8ep4j7I
 G1pxslOj65r+Vya5kZljlHgAqvTYkX3o6P51W0nh61W0bRtCNgzzid5erkjEoV8uPA/Tsq2GBQF
 r2tss5W9TTbnjE8CuD7y53s2F9R+w95eSSkB2ftPQIXBI9CkN0HvG4b4wGiA/JUGt8VxNxlM2vG
 HVMOkwXReET0lyjmKVQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-27_02,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 impostorscore=0
 spamscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605270159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_085553_300635_6A4C7ADF 
X-CRM114-Status: GOOD (  14.47  )
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

Add device trees for the Shikra EVK platform, which combines each
of Shikra SoM variant with a common carrier board.

Three EVK boards are introduced:
  - shikra-cqm-evk.dts: pairs with CQ2390M SoM (retail, with modem)
  - shikra-cqs-evk.dts: pairs with CQ2390S SoM (retail, without modem)
  - shikra-iqs-evk.dts: pairs with IQ2390S SoM (industrial, without modem)

Also add shikra-evk.dtsi, it represents the common carrier-board and
daughter-card configuration shared across all Shikra EVK variants.

Co-developed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Co-developed-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
Signed-off-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
Co-developed-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
Signed-off-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
Co-developed-by: Xueyao An <xueyao.an@oss.qualcomm.com>
Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile           |  3 +++
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 40 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 40 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi    | 15 +++++++++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 40 +++++++++++++++++++++++++++++
 5 files changed, 138 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 795cee4757ab..3801f280c8cc 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -333,6 +333,9 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-huawei-matebook-e-2019.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-lenovo-yoga-c630.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-samsung-w737.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdx75-idp.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= shikra-cqm-evk.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= shikra-cqs-evk.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= shikra-iqs-evk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm4250-oneplus-billie2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm4450-qrd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm6115-fxtec-pro1x.dtb
diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
new file mode 100644
index 000000000000..0a52ab9b7a4c
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+
+#include "shikra-cqm-som.dtsi"
+#include "shikra-evk.dtsi"
+
+/ {
+	model = "Qualcomm Technologies, Inc. Shikra CQM EVK";
+	compatible = "qcom,shikra-cqm-evk", "qcom,shikra-cqm-som", "qcom,shikra";
+	chassis-type = "embedded";
+
+	aliases {
+		mmc0 = &sdhc_1;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&sdhc_1 {
+	vmmc-supply = <&pm4125_l20>;
+	vqmmc-supply = <&pm4125_l14>;
+
+	pinctrl-0 = <&sdc1_state_on>;
+	pinctrl-1 = <&sdc1_state_off>;
+	pinctrl-names = "default", "sleep";
+
+	non-removable;
+	supports-cqe;
+	no-sdio;
+	no-sd;
+
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
new file mode 100644
index 000000000000..b3f19a64d7ae
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+
+#include "shikra-cqm-som.dtsi"
+#include "shikra-evk.dtsi"
+
+/ {
+	model = "Qualcomm Technologies, Inc. Shikra CQS EVK";
+	compatible = "qcom,shikra-cqs-evk", "qcom,shikra-cqs-som", "qcom,shikra";
+	chassis-type = "embedded";
+
+	aliases {
+		mmc0 = &sdhc_1;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&sdhc_1 {
+	vmmc-supply = <&pm4125_l20>;
+	vqmmc-supply = <&pm4125_l14>;
+
+	pinctrl-0 = <&sdc1_state_on>;
+	pinctrl-1 = <&sdc1_state_off>;
+	pinctrl-names = "default", "sleep";
+
+	non-removable;
+	supports-cqe;
+	no-sdio;
+	no-sd;
+
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
new file mode 100644
index 000000000000..d0c48bad704c
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+&qupv3_0 {
+	firmware-name = "qcom/shikra/qupv3fw.elf";
+
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
new file mode 100644
index 000000000000..3003a47bd759
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+
+#include "shikra-iqs-som.dtsi"
+#include "shikra-evk.dtsi"
+
+/ {
+	model = "Qualcomm Technologies, Inc. Shikra IQS EVK";
+	compatible = "qcom,shikra-iqs-evk", "qcom,shikra-iqs-som", "qcom,shikra";
+	chassis-type = "embedded";
+
+	aliases {
+		mmc0 = &sdhc_1;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&sdhc_1 {
+	vmmc-supply = <&pm8150_l17>;
+	vqmmc-supply = <&pm8150_s4>;
+
+	pinctrl-0 = <&sdc1_state_on>;
+	pinctrl-1 = <&sdc1_state_off>;
+	pinctrl-names = "default", "sleep";
+
+	non-removable;
+	supports-cqe;
+	no-sdio;
+	no-sd;
+
+	status = "okay";
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
