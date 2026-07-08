Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71CD3C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 12:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwkRoE3hjXsUbYYVJXNUEoW/xu01M2Ks5wBx0XYCdpA=; b=hlV7AI/lIkTqvS
	lEWiIMQrWcY5DFYskXaelHUFkHd9pODjiAzfNouwfUE8DliodwuVmz4kKHDwbZb/IOZOjuSrjOe2q
	XuS7e2Mr2w/OtbVonRXTr/U89rIKq5AqG7OkJdr2kyLcaBG2avRJaFKh7CpLFmbqV32eM9DB/ihjX
	AiNzwwfJQzWoi6CUZYIx4pMgEbtcwzpTBp8CPAijp4M34ATlP65I63ht0RoYlCNIZNVKUbheSOgA1
	vvGMhdbZQevCHBtJCfHHtMrRPnpLvHtzTh3PCJ8lnhMt1vAo3sJuVfTYwpQP0OOPDornwJt9IqPYu
	AjwnSGuMwAo6YnNhwA0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whREL-0000000H6M5-0tsu;
	Wed, 08 Jul 2026 12:18:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whREJ-0000000H6LF-0Qyx
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 12:18:20 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668C3dEx2617574
	for <linux-phy@lists.infradead.org>; Wed, 8 Jul 2026 12:18:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A+TV3oNj5eTKwDxA6DeWBFn1otU3ds7v9A88PCy2SAI=; b=JCQ65O/ykDaljrvi
	ozmgRilrLnOKGbEEdXXhdN0YUKLDDlQCTYsFMKas/1li1noGmGzUVppzhsTN44Qc
	A1Y2h0rte9EKNgdxodayuuWFS5k9tvtqFDLZdpx6DpRRRjA3PO4+5cn2eW4lXoLR
	pzuEE2lD5WD3YKjoUKGAD0N76dMYBNjkQ2aGMp1AdW9ODqDl2yYNPtbsuqeRlELg
	zNviEt+7qq/nSKB2ziqz8cl6xvtZzbHasr+b6h5ClA8DlbhZXhlVEdF7nYLchB9z
	lTUP+sBdpY/A3964FNo3/dsLpVm/iIJYibLk/R6tBLEyOhhTwXufcwE6Q6tPXRcj
	1Qt9dw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9gqw9ep8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 12:18:18 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-845df469a26so1868214b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 05:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783513098; x=1784117898; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=A+TV3oNj5eTKwDxA6DeWBFn1otU3ds7v9A88PCy2SAI=;
        b=TX376tyObdJ5HqxC99B3kVfhr/0eam9CCv7K1Xqp2JbH+ZvbTN6n+TTzSBPHSnZ8C0
         l3NZG8d1gnSDTK9LwleBHuqTTKP+ISrP0NidMHvQdt52U5/jNfdL+ZxuurXugODQ3kUb
         cNtoBcswBGhp5g6aSfFDqj/IZGmWadtOTyv00vJ80jAI0HReYLOujZAaRcVNlRRTeTSl
         8TZ5wAcXQvkiGC6bhPxwDRJ2x4C9ooBzZgHajhcIUmxJoAFZdTqsbDMT36qJmiEWloRT
         AyA3/yZSojAYwphMmJ+cNbz1Y58Y66SGeTPvtzvZt2688mVI4vcvT+k3919NNqwgn4N1
         nqNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783513098; x=1784117898;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=A+TV3oNj5eTKwDxA6DeWBFn1otU3ds7v9A88PCy2SAI=;
        b=JoQ8nf/SbORIySImiyYcgdsKlVSB4GgkZD1exZ/NVUO1bdTJggvQHIr4hdDGOtr0h7
         8GRk4u8JCEowkMkSQzdCsnrLGU70KnuJg+lToViUQ/QMCC9MYnaKMoGuYx3EJDDdJERI
         X8U1GaNy9TOeMLPz+mbrihA2KdSWRga0mPBvn9D4qsvDVIPXD4qt2faNRLHkWJh1/9XR
         Z0YeNE4Y/CBrfqualQ7ONvHX4Xq3L3hiN3IX5GS9/EJsqfExP94CRO20gPcCXI34IuXe
         FVKBUusntHuCQbc39dfJgsstAZhqE/Ce7ukgFCljhYh4VOojX/h+aeHI8Blp7vDVSGQP
         5+6Q==
X-Forwarded-Encrypted: i=1; AHgh+RqzOekzMRNXK8gFDQC4qVWfWH4X1UuQJT5RyklDOyHTPUXA9Z31NnCLZYGEp+sBpmx1p44F0DxzI30=@lists.infradead.org
X-Gm-Message-State: AOJu0YwweFEY1TgUZaU2BQmRXirS6NAOtVmPbEFgb+ZnuTWlShvRqrW2
	eyz4fkLuqkW4Pd76UtXnwfcXu7kUCl+bQ1bQUuDfK33INr0RX7bqTSE71j/m2D9BChOyIiWBTu0
	8DVKqeH1KCqXT1ESRnu8rJfDNf+E/IpPtLyL6SY2h2cK5U+xv/UJTChDRpFUY0wYq81TJ
X-Gm-Gg: AfdE7ckJOW2TxAFwvNDY/mDkvwGwFxkikvnLpB/Cnqp1QFsXpXjjz6yImegJv6tRcry
	aeLpmbmOc1lGDtw1wzH498goaYyw8cYNkPj/hHF5GgyAdDKPbAStyAJzq4uSsD8Ip4fNKsV+gOO
	Sb2yIwStDxTFWTA269X9MgoA2VRjdJ4tdtNDcbwx69vo4abaC8GlGmWrMRc2n7mkNMIc+vv7JbK
	o7lVWrFtnXKtBYd+2YXZlYzYmh4an7ktouRVafgKPZnGcbei3/ae6er7XhKf+k1AxRNi754ogyr
	T0smlSydKYpTz0T8TyLJh/91HWPhDBpGWfpL/5AfeRWuCOQN+5EBJ3IBCoJjH/3hTsvcp5hzpN7
	urWn9GOpvVteHzBbgceEf4WCLIA==
X-Received: by 2002:a05:6a00:1481:b0:847:7f38:27c2 with SMTP id d2e1a72fcca58-8484367f26amr2330610b3a.50.1783513097847;
        Wed, 08 Jul 2026 05:18:17 -0700 (PDT)
X-Received: by 2002:a05:6a00:1481:b0:847:7f38:27c2 with SMTP id d2e1a72fcca58-8484367f26amr2330558b3a.50.1783513097131;
        Wed, 08 Jul 2026 05:18:17 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-848337d12ccsm2367474b3a.48.2026.07.08.05.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 05:18:16 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Wed, 08 Jul 2026 17:47:34 +0530
Subject: [PATCH v7 5/5] arm64: dts: qcom: Add Shikra EVK boards
MIME-Version: 1.0
Message-Id: <20260708-shikra-dt-v7-5-977b65a300c1@oss.qualcomm.com>
References: <20260708-shikra-dt-v7-0-977b65a300c1@oss.qualcomm.com>
In-Reply-To: <20260708-shikra-dt-v7-0-977b65a300c1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783513058; l=6252;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=Z7pv66TynUL278UiGRMKLcQsp379zWdYUFvUSQbsLWg=;
 b=JU92cpVZ6xRIwE0qviz4k7z4z7YsqXvWK6ZrwOf5356xNgiR086TwWhReZVloIg8mAHC2Xxt4
 iIvR0yvVdymB+aV1/bmJE3DrMwTcY9x6WQ67yAM5zaMYuGXqNDIt2Bq
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDEyMCBTYWx0ZWRfX07s7umD2RVV5
 iFf6rZxFNX+TwUg2FVL/aPmB7D9/qrgBjduRh/7I/ltK59jseCNhcdUZPIQBiND+iLH0WKi1lw1
 4QggKi6lr/ygDxPobVke9rw5gbv2L+pregMI3RazyDEp84GSxuYq+Dam2+aKb1Du/EDeUkuKBPZ
 5cvm4H/uEB73rz+iLmvcAfkfRTVyaqPzpcTopMm//6V5Y/ZrA4EH/Fe33O8BLTRDodjBiDllgri
 8ntNONrHUb7ijSClR7XcvJPp/ASmVuV7j2u/Qj9LImVXUIsqp4SNSDGlD5vf3pQHC2pfKsid8WD
 EKlqTxIBS7UV2qUtFc5H+GYtc3opa1Xx7/+8l/J4WVZt4yV1ftzonWuzx229yqT+1DXLsIgcqpy
 43OTd8cMjQxtw6GFLZa36W2ny6u6gb9pDCBbV7/CytR0w+1YdPSAXSw5xxuA3YsBgWHjwYFznx7
 7D6nCBn5i3XhJTz7wPQ==
X-Proofpoint-GUID: JrzZnpSQUi5KbuLKgPCp5msjNTFL3474
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDEyMCBTYWx0ZWRfXznUxj6wO5W50
 FIKeWiaZbioHmEQgSzRZHd1FKuU1iu4l5yY3FGgYw0PSP2yQ9+evVd2/yARiIhBnnxt5H6yKUT1
 c4ZxB/sqJoMwb1QCzpztzX1XDFDdqdg=
X-Proofpoint-ORIG-GUID: JrzZnpSQUi5KbuLKgPCp5msjNTFL3474
X-Authority-Analysis: v=2.4 cv=Wf88rUhX c=1 sm=1 tr=0 ts=6a4e400a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=TizygBHPM-tQ0bhc_XQA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 bulkscore=0 impostorscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_051819_189048_034E139D 
X-CRM114-Status: GOOD (  15.28  )
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
index 5a1c56cf98f6..7f00a60d3e48 100644
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
