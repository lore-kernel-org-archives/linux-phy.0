Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 016FACD4F57
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 11:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1tB82naCx1VVDkAKn5xWWP4EfSCUMRufsCn37vZKlA=; b=IzZAJ+u9mQi/CS
	97HK+rnzFkla/+rT4tHqZdB17tWSufRDW338ZE68f9jpXgkNg668hWO7kwjPEABqiAtz6X8BA/lRz
	UzuVWtpuly/z9oA5MxLJHrkjA8Xd4h5aoeVcpRc2+UJr9FFDmS1FjJtMkHdsHbFBkLoP2DKq8evmv
	OzDTaQzeDsOE1HFucu44REeEBM7oVimveP6L84Oc4QOFhGscQdS3/1KHWK9ME47bHEGfmMbRfLh96
	Vzmz7SzwyatSLeRss0b54zrUPnpDTSqmNQwBLauBXcia5s20MpylJ/HzkasH+XeN60O5BDhrSRLoT
	+sIYJozPWjaLEnWNCkpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIWq-00000001JFl-34wN;
	Tue, 19 May 2026 11:22:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIWn-00000001JDu-3D9k
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 11:22:27 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64JA2x791392845
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 11:22:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F8zXM5n/Ky38SDCu1iW/JnWkDQ8dWlEoAId9HPk/6+M=; b=kdIQ7J+sPKSis0eu
	qtB+1DlhpbeYGGCnDOzniDK2f1sV0dK8E5OkpIsrrlKudmZ1rKhgE79w/Exe4pEa
	wLP68Ey945CQ9egxVoiBkWU+Z2Qy0BVpOFJzB0NUS21tnR4s6enWAfjIxiyIj9hQ
	GutFwXhYPJsf0ZejqqQwRe2DyATO3vsjBcrwgNFOnI3ggqF6dDKaafjXcnB9A45x
	cEbEbQj6dhE7+OI4TQLD2koHqljU78bxJrA2dt/CChlwPj7J3nF5oxxFtx9SoXjm
	8doSiGksLkOkUouHXecniGvOQBt1D04jQJxjjY1Io9xkQfOstfFMDx5cXkRpmQtl
	OQ60RA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e8ns489wa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 11:22:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2b9fe2d6793so85625685ad.0
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 04:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779189744; x=1779794544; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F8zXM5n/Ky38SDCu1iW/JnWkDQ8dWlEoAId9HPk/6+M=;
        b=C2SN6zKv4b6Pzs/swdJU9KSWzz15wILwJT+xKKIdaNT5ejYjaSxu9aDhKm1UKJqTSI
         5vuS8rq15iPEfqB8mmPWrUYMicRr6GHB3pHYNuMxMfKehAX51Ueoemu7jteQky3gnjck
         M1Hxnc57sBJzjIrpIFA7tCrAOvtHYhyTxmNb10X/Im87T/YR/SMvGfcCbBkfaoMAPNRs
         37zs5RzdN759fYtWYhrYSyn8rRMiZUMf8mnaZingSQhEN27d54xYHrZWN+1+xrIex/+E
         GkOGyFtIz6wAKbDn9+d9+uVlCMtNDRnayvHFfPq3idsHFF+81VZpLYwFHM1p+hy2h4/l
         MZAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779189744; x=1779794544;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F8zXM5n/Ky38SDCu1iW/JnWkDQ8dWlEoAId9HPk/6+M=;
        b=GZ74GkKitADMcj/KYDCxCts6oaY8sGSAwbLAGPHMcCfuTAKXRnx0NyUlCMCBXYh00X
         p1k7U8gipZFIU6h3yaCqpk5YDp98nKziZmqrdfKc/xJZ0Iq5UzGpj1+fdAUCJZY1RdBn
         ZTUvPhyU5OA2LylNUD6zmthM9zLZpmCe4Hf0Gc5FUve6bBsZsVZRK+W1acMlWs9ToDCH
         gtCWcjPILqAu9eCVkaoQCs06g/6Op19+EteDsRaY9vRngYG8qNaNTTERID7eXdKHdEPE
         r4KnSad+xLRm+h7BFTYZ57nUxk18m2Tc536yCviOi++dcxjSbL2TUuvy5MtuHLSKeDHQ
         QtpQ==
X-Forwarded-Encrypted: i=1; AFNElJ9y+14koPFFHnexsUjNhrXqwFtpe6gtJ2hR+C9LSQSg2UgxAQJ3Vo6bKF4Ubjnd8WOBehqDfjUAeHY=@lists.infradead.org
X-Gm-Message-State: AOJu0YydlMjfmW57hiOHvOZT3Z9Hd4WzQCBfkec6bqoptozaNNTUeEI/
	0Xe9GmmP08WWfxX0VAexLL/ss+zReLIAm4kXoxmtE4K70HfHf9I6bDZaW2+Jfd07XaIOVfJSSuN
	2e85pM7kE2iExHugtmi+rNkIJjs1aB5FqGGA6niSfAAq2r/KyIA1+F6zkaZ0DnNfOqStJ
X-Gm-Gg: Acq92OHaOiji0rUmO0w1siRMNeVqHuErtA4n+3l73KXqrDfAZWCjUIPVmJ1O5888yU0
	W5wlZZtAFFOq147BoS/AL/sCrbVyPygW6Zo+O27eFrzsffL6bKwoms+QmeBBYsMDn4wxxRsClpA
	9JQKKESjGG5Ct7vXHpLk9JPLZBhQXmy7FKvpOn1t6Y0bE3+zOt0y23pN/PzC7LuzTraQUeb5xGw
	0xAiZmcY+TX9h+FPHfvC2fW39vaKPyXieSmY0g2yt8+0Ki+NZkTkO8dR+T1WvJWJx74EqBSMY0L
	tBw6/pjdjbG3K3aAUhgVfJXrYKTts1W1BHp+VGQ4oGG3KZ+9k7Rk5Eb0cicI3GGmseRNURvTBLv
	bowkAbWnNlENJiJgXqIRdHnLJfdJAd4uWOH5m
X-Received: by 2002:a17:903:15c7:b0:2bd:e5d4:dc63 with SMTP id d9443c01a7336-2bde5d4dddfmr93412555ad.26.1779189743645;
        Tue, 19 May 2026 04:22:23 -0700 (PDT)
X-Received: by 2002:a17:903:15c7:b0:2bd:e5d4:dc63 with SMTP id d9443c01a7336-2bde5d4dddfmr93411975ad.26.1779189743113;
        Tue, 19 May 2026 04:22:23 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5cfe78b9sm192743605ad.43.2026.05.19.04.22.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 04:22:22 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Tue, 19 May 2026 16:51:25 +0530
Subject: [PATCH v2 5/5] arm64: dts: qcom: Add Shikra EVK boards
MIME-Version: 1.0
Message-Id: <20260519-shikra-dt-v2-5-c01b90fb4395@oss.qualcomm.com>
References: <20260519-shikra-dt-v2-0-c01b90fb4395@oss.qualcomm.com>
In-Reply-To: <20260519-shikra-dt-v2-0-c01b90fb4395@oss.qualcomm.com>
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
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779189702; l=7354;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=ap6K6k+El5tekEdZ0WngKg85WSbPGb7xvWPETREbYMs=;
 b=BL5R2cYROSTNoSWRlEWSIDuNeVH8iehb72h9ietIocAXf1LTsj8Hu7tk5/FTrSlUS08YYCdjM
 5ajch33RejfA7R+UnSKgjCJPqWyaQXgDoQUXnym5ehqjR1nrRTi2wYc
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDExMiBTYWx0ZWRfX5T7wkBpmJpUv
 16fh8mL7IRf22gWN7g+llelp/wkvUydK3o8svf6W3fz5B3W9zPiAez660Q9afNLO7eEU02ZYLJB
 H0tLVLNzxGPXaFys/oEMjmqzO0afPGuKWgJxGz6CJ3dSgJYAgRE2h5J4vTeRmyr7FBgDbBX/E6V
 JLWSuCoSMWk6pyaymRwSsi8eQiFPUmwpMI11oIA7kwJMF7XLZK1DYL4M7VW7FAG1KrP4c1cYPXa
 SZ+DW8lhYw2eMB8uA8qcOTXMCNEca1MRHx8/H0JNvI6XbcQvq1pmDvdQac7hY2zGS29nnqxD2YG
 VtDoqYHXs90FVfZFfScflZu1iJMxwRUrOJHiFxxaPePt57RwaA+AthqFyCOmYvdLt7mrv5LbR4B
 baxw2O4afKfzRXcBAnulW91IlVValeOaC7rqReYu4UkMdUlr3OzItv1JGKlycCGt51X5pWlhwaZ
 e2Yn3839kZPfEVdH5JQ==
X-Authority-Analysis: v=2.4 cv=F6dnsKhN c=1 sm=1 tr=0 ts=6a0c47f0 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=UVWtEavHwLwq9t59c2IA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Tsdvtwtkt93zDdFluH2rBxHov6PU3crZ
X-Proofpoint-ORIG-GUID: Tsdvtwtkt93zDdFluH2rBxHov6PU3crZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_042225_957458_BDE104E4 
X-CRM114-Status: GOOD (  15.26  )
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
  - shikra-cqs-evk.dts: pairs with CQ2390S SoM (retail, no modem support)
  - shikra-iqs-evk.dts: pairs with IQ2390S SoM (industrial, without modem)

Also add shikra-evk.dtsi, it represents the common carrier-board and
daughter-card configuration shared across all Shikra EVK variants.

Co-developed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
Co-developed-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
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
Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile           |  3 ++
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 61 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 61 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi    | 14 +++++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 61 +++++++++++++++++++++++++++++
 5 files changed, 200 insertions(+)

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
index 000000000000..12eeca84832c
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
@@ -0,0 +1,61 @@
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
+
+&usb_1 {
+	dr_mode = "peripheral";
+
+	status = "okay";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&pm4125_l12>;
+	vdda-pll-supply = <&pm4125_l13>;
+	vdda-phy-dpdm-supply = <&pm4125_l21>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&pm4125_l8>;
+	vdda-pll-supply = <&pm4125_l13>;
+
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
new file mode 100644
index 000000000000..ee460d8c6a87
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
@@ -0,0 +1,61 @@
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
+
+&usb_1 {
+	dr_mode = "peripheral";
+
+	status = "okay";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&pm4125_l12>;
+	vdda-pll-supply = <&pm4125_l13>;
+	vdda-phy-dpdm-supply = <&pm4125_l21>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&pm4125_l8>;
+	vdda-pll-supply = <&pm4125_l13>;
+
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
new file mode 100644
index 000000000000..8b03d4eafa6d
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+&qupv3_0 {
+	firmware-name = "qcom/shikra/qupv3fw.elf";
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
new file mode 100644
index 000000000000..096283ed9b1a
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
@@ -0,0 +1,61 @@
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
+
+&usb_1 {
+	dr_mode = "peripheral";
+
+	status = "okay";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&pm8150_l4>;
+	vdda-pll-supply = <&pm8150_l12>;
+	vdda-phy-dpdm-supply = <&pm8150_l13>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&pm8150_l6>;
+	vdda-pll-supply = <&pm8150_l12>;
+
+	status = "okay";
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
