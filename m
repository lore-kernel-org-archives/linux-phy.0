Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 679DECD98CC
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUExrvEuWV+eEbgn8ER3RmZW8e9cCrBBN3/NkN2TUbc=; b=xUcWc+Oo6MDxdl
	WgmC5Olvd1OiJly8VD7vIFAQOnTkXz+QAOZuw6F0UAur+PugAqcO/VLgtWP5BimPh+CQnxJkP/T+B
	09RKYR/EDRH5vrct3nJ5h2WRIFnYNdBLRP6rF7P2m61HqQ0y165+LomQ97wblx6sFfmaUsC0BCh/P
	LaVMXVfey+J3j0Hy1+b3nxY94EzF/iCEVEKDPvSTDIrqoY7NZpXj7PJGS6J5vJ2W3rd+uLRNgpj+R
	UUpnYHiIgRQlgxfnJ1D2Ar5vvh9Pyi9AXSHYdi+q2C/OUCau27MsK+p33ZxRSkVZ2ECIy/X12K13f
	NWDMGObaLg3P29d9Q9yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcNF-00000009CGs-0biv;
	Thu, 11 Jun 2026 10:10:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcNC-00000009CFl-3gMs
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:10:56 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65B9xBgq242641
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 10:10:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7Rwc4/nWVfH6Sf7XgvmXET5o5hcWse/f6GCS8/S4cFE=; b=VgJ5Dp0Py87l+223
	coHdghLh+dO8NRPwaliGPbk7YoYD6yDxs8kwdbOjb9jFIC+yzdXAKpwhtGi/XfxT
	0B70pPhq0J5p7zTYlN/Bq3GRBCAR8jjZZD7Usa4UIIe20ybNGXiZxvoUpBudaRto
	ZQ4FPwGiAvytNeLv/IGM55tdbLWqioS0zq2FDGwSuBf7eXGLQAUedoxiweNXBBFX
	jw6Et7Lj6OyJLsCqpWL1zHuldmt3o44snj/zSEZUEWbZgHr7haa3IsSZ7unNDPM3
	ooRzbQr/jwTOJNvSTm6Zhe3kDtdutoRNOeUybdVzgpm2IPM00LmWioj9p7VsBWdZ
	y5wGxQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eqe702wde-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 10:10:54 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c85dcdbe502so5136126a12.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 03:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781172653; x=1781777453; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Rwc4/nWVfH6Sf7XgvmXET5o5hcWse/f6GCS8/S4cFE=;
        b=eK6ZaY6PkzPfSc7NmN2UhltngBa19i+VMke9NyMUJY2kzX6cRrDEMr4IYaHLIRuUc7
         rapGLAltkmZc3Huw+Sxlgam4rfZmQtDNGcnsvkiW/bXbmLY6TK3yNwnlA+0DpOexydXN
         MgCunU+LmoGqQlfTCFPqQ3Wi3I98z5hDPGt4LUZWZC3hdGXcISDHJMfpumSdyXBd2aJG
         mQeMt8GhRj+0i1lathQ7THtmfx7lwT9t022IfvtoTPHDG1ictjPFz2OQQSQYWIx3Z+Xa
         S8ZKbL33qURYfNBuBJOU+6/MNGxZaooG9uEeN3+sHHv1kNHThqmgsC/OGsC6UFm5VKnU
         391w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781172653; x=1781777453;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7Rwc4/nWVfH6Sf7XgvmXET5o5hcWse/f6GCS8/S4cFE=;
        b=VaA7XTu4ntNnBuefmtrxr2kBUhJYjGC2gwWxIHCJtvXY7q/lEHOfnks94bV7RW5FNa
         VMtfIA360aZKHWqlwdB83aLFfmVsHz78Eky0/CZTWEWn0C0Mu8d5WFWp3jKHz4kCiLvQ
         6pfVVNpmMH3TDCK2wEeiFKRxRAtGOD/zAoahAOW9JKxYqk9Mjx0dGGig2K0O01SscWHs
         VuEMWzVaE40zWrymScBMplaFWyhRecX/JJG2NkTV/o0T3zR3lISFgfNgyddPTlA9w4pP
         PomvVEIkKYVs459aaKOjX8tRsYcIz4yRxIfkvvWKw3ReAl0xNp5zFvb3xfetl3W9zjcH
         Zf1Q==
X-Forwarded-Encrypted: i=1; AFNElJ+r4k1tz40uVmWQ1jmghcyWFZe7TEBvNglpN5vfrFB/hiovcf1Ldzh1QSiaCKw96zth4FLJPIf5Rcg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz66BQrXNpBPhUOlihj4KHY6X/PkNSNuAmnu+GGYTWRnYZZKLRv
	NGIHvoqdxMvjvqt4lGIiAO6B3bkE2Zb26KstVrUyaBSHiSgytkmLLAtFiXD+LP5uXi+9UCcEWbG
	tyJj8ikIcMpvqMTLyFFWPPIsdIbGH3viqFnYNzUdYZ4i15Ez89KRMiop3ONhtDLduJ4es
X-Gm-Gg: Acq92OEewOAKV4gGnvLiY1LjPwroAKkldyfwFYX0V6vB69S3ntaNeqmur3vjcxvZcwt
	nB3VafF7uSsmzoQdCKaAMlub6I9NJrBBj8wtOpx4yXsrl/9gkU4kTlWyyo8bgg3tI+BtPMQyBPT
	L87QVJ7SJpI9+kFm2CgsNtfE1HpWMZAIc1P9+eWRuGRTenGNAaQvt7ytBoaCMjNpTaLM0pMaIOO
	V2tL+MlIfIotMfOrEoP3degwmRLgRklYr9xMuHezW6tnWuCGdnquzEZPOMVhaT4VUo4c5Ub8pCN
	AeyjenBtLxNRR43Zc4LinRMPvvUQqgUWvWcZqkcnE9X8cug/pWRInawERBST4ezdvX41/JCEh1m
	PJsArh2AIakUL7QHJrF8wjsVWXytGjhXFRjqVtMNw4L60nE0=
X-Received: by 2002:a05:6a21:1518:b0:3b4:84c5:45d0 with SMTP id adf61e73a8af0-3b5e33223camr2350015637.27.1781172653296;
        Thu, 11 Jun 2026 03:10:53 -0700 (PDT)
X-Received: by 2002:a05:6a21:1518:b0:3b4:84c5:45d0 with SMTP id adf61e73a8af0-3b5e33223camr2349962637.27.1781172652791;
        Thu, 11 Jun 2026 03:10:52 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c865860f3d4sm1279646a12.19.2026.06.11.03.10.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 03:10:52 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Thu, 11 Jun 2026 15:40:12 +0530
Subject: [PATCH v5 5/5] arm64: dts: qcom: Add Shikra EVK boards
MIME-Version: 1.0
Message-Id: <20260611-shikra-dt-v5-5-103ed26a8529@oss.qualcomm.com>
References: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
In-Reply-To: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781172612; l=6252;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=ZxjX8+A6FBTaecjdAORo5qujDJsZbUaBlBdXJEaxCxI=;
 b=i6ezhM3kDydHfFKwZRjxlvfzeFVgqv/nHdE7z7Xbqsm0UzA5/G71aAoSYcFuZAxM/ytH995VY
 0rGI3J9OP2EDrTOlhDj/5lXLt6RQD1OO9RDv7b/D02zAvsMt4JA4ZzW
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDEwMSBTYWx0ZWRfXx7alAMEjCwn3
 CN9WFOT30znIYFvh9DBsbycTGWy2bwXwcYpasTXup1V3KoZKw1qS4LFVDNF81v6ZOkasfgr1GVR
 /sJw/X2cqpw5CzX+dUCyenipH9bhOBbB6UWbnTw3X4jWMazBHElym1ah2I0iUj0saV0ZM9p9CSO
 0z5b2TvEyroDk0Yy+xmBAgN4jzZevroXBCRHGYLzW4+YMLKmLnKyn6c/+x0Ki4xYBJWGFzWquTg
 VmvaFhwCpCLVsyAhzKivGyKuottiEqgEF37t+Inc8qLucnNoYD2lap4MX+p6waIJCMeMq6scPU2
 IRoDc6b+06byIHtpjsFbfUb5towvUxUBaxa6SG7a/sm7FOrnLwNLZpeq2p1YzCcccsj9q2zzcxM
 Ob4k++yAYtPOqfTetNmm5mnI1F0RT1hG0btLSLrMmZjSupoLM/GKJ7w9j9hezUDi+qZbMEMIQWa
 IRKR66EkzWWAgTOjDHw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDEwMSBTYWx0ZWRfXzC0zNWeXy+8e
 lalqNcM/yyfaakOF/zentIOluB/iX5wkqvV0W+B+Bw6MidGgT6oTvsakLdcOmc3d4SpP55tj7wN
 0SmxAAzl6HdheL9snpkX86iGJDxt0TM=
X-Proofpoint-GUID: Dpuf1RJsssafCui1KRWGCOftg_nl8yhY
X-Proofpoint-ORIG-GUID: Dpuf1RJsssafCui1KRWGCOftg_nl8yhY
X-Authority-Analysis: v=2.4 cv=Z5Tc2nRA c=1 sm=1 tr=0 ts=6a2a89ae cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=TizygBHPM-tQ0bhc_XQA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606110101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_031054_932275_2EE00E3B 
X-CRM114-Status: GOOD (  13.91  )
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
index 6f33c4e2f09c..a9e9d829fb96 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -334,6 +334,9 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-huawei-matebook-e-2019.dtb
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
