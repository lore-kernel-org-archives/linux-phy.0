Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CE0BCD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 18:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBOzBXmxROpdJvMvkl5y2nsywx0swWPO1vKuxpBRuyc=; b=5ABiGzZ240X0k0
	L6KBSAN7UGQ/rqBx4sp75LJBZYU4tmgVgcc75CW+xOEhKhOIsFLl/y4SjC5ZfJD9FN3Vx2Q6g3KSX
	sPemc+QUlBuYKK9CHUDkv6jRMd1Gmk4et3GkaIQ2Gkq+/upHW71PKVI9cMjlEx1eQbvSW7xhDBMIo
	nsKdVJloAt/+/YJQC/mTFbyn5BzEk/K4cet7jQL4IK279sxcMY8qmdf3qPvuQJgZHqqlrFYtUHuCG
	DseGuVCQMI8r15wjPUEvUhptOL/mil5Rvm2am0u2syrAZMifUU/QtSEwYardi0NxYmof5fo425YTk
	Ax96aSqJJTNRlb1x0ESg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUDF-0000000BdYb-3wk2;
	Fri, 22 May 2026 18:03:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUDD-0000000BdXy-3oca
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 18:03:09 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MFrUbE3005127
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 18:03:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ru4fi2wAmy8Cr0jc1TBocdiFWPiW/okyLoP0Q2YQUjo=; b=ZbcQLJCSRcDvBGDF
	JhmRzuQFcsBOOQy1WljJafx53vnFl8JljSKbNKNkz83A/vpz66ZQxBX4qXrDkWyw
	Rs5DrBZmEwJnrlyKM7+TQikeXCdxdCpMrfjmgDQNw8OfcNF6aQ03wITuPQujJZql
	MaOvozG4PR7Jut6OfvIUIIqbqTlIw1hRd0R2yBQPah0kUoRj4vgULW5sSgfoWU50
	xFVtVowIMh+E9T+xQwmTUwH6Hv1mFIrcb+wegnzHIwZer3rjRoca9P4JjC4r072C
	W7Rg34lWC+ZVzsLJvNatP2dt9zGJseWk5/TyidELctfwNmQ7Bif7YPw3KnuwdUBJ
	NhrCfw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eafrtbbge-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 18:03:07 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b2ecc96a9aso85205165ad.1
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 11:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779472986; x=1780077786; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ru4fi2wAmy8Cr0jc1TBocdiFWPiW/okyLoP0Q2YQUjo=;
        b=TDjCf75DaKsQ9Jw8NQBeqMUzwY080tjGyTbLyG9itL7SIX5qasdjYLCwyEfqgDps5+
         WbjoCjd3qcEBuVi9U93otPU9ToDVnofuaygxX4r/TnpRlgIAYUKKRYmJrK4HQFZ4l4O7
         b0VpjaGDWaig3hAoGJJ1jyUj/lRtsdphV84eJAqqKejkTGVbIHEYmC5zKqq3BI4gcYfk
         yOjDNlVcxN4L76RobAgqkyLAWnK3t4agY6+A5DmcUpz9KTD8DL0RpSqY8IOzIaVTxaMc
         4pBLdOUHWAZtEDY9My6VL9YZYyLLW+NVnBeTjp6SniTJzObk/vdWcBeAPQt1eAqW5ygo
         DVzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779472986; x=1780077786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ru4fi2wAmy8Cr0jc1TBocdiFWPiW/okyLoP0Q2YQUjo=;
        b=LRiW7MTH3QpexUCsk9c4a4F13NrIENvOD1mIMGo3UTfqhZ+sYpoNfCN6vAWGTXu70J
         bNQuwN5LHhIYJTrmRzHcwRaFy8TOGSywuUgVaRq2yKIprA8OkANRexZPDLfYJnnm9Yo3
         DGYHg4tuXHgO4awRYgiZd8sYo9ubmc5DIPKa4ozNV2/1Y7l/AfVD18y6CXmUhoai3Jsb
         RB7Y2i+gez6NIv/7y7jPd4ryNPi0Cpk/g/ECeghicjs23bvAhP3mb38AzoC3kNGsUHg/
         xCZgph3XkJIMfp4UiiusyD5faY6MUGbM9geSbWMOo0LdUgbR0PEEt8z/Jo68h563OflL
         HOSA==
X-Forwarded-Encrypted: i=1; AFNElJ9z2hMljtXmtOdLRuEojkP1tm8SDEpc31GD+VCAyZB6QKjwasRsXXIqOp38tKoSn01IwQ3yTj5uNco=@lists.infradead.org
X-Gm-Message-State: AOJu0YxzhaKp8WFJmuRd/7SGpshSpez0KQhPttfQ3KCaGNtRwR7/N41L
	/mOOw/jeIU0qTnu2SFpXmOra4C6houtuNPvP2YqZGM4EMEgqyWeRcEzGDTl6/0jgByuVW+QMdXQ
	kpLejYS04GuoxHvB54mRUu6PZXrEHYePdwgfiO49DcTOYjxnemq73WW3TZ70/tkyNfhE3
X-Gm-Gg: Acq92OGLiDtX0HgHMTq9bFYEkUtCYgltkpEZsKCHbH4nVmEWxCGAb26Ilw89FYWAb5n
	cn6KtIC/ouPBMG0/SFfHDsO5K4JIzu42cMJpOgup3d0lvKRRNxT5TzBCQJD2EWk4VdWFNsqO9Xn
	KUCuVQq0XdiUQc6bAFNul3TcWCCZO6bXXnfMKKePsvaLZH8goJEK6S5vNUoPmwaYqYlmzl05vhL
	c+yhUto7E549w7KRHt8GesNlvS69ng8vl3xiunBhqU7fPS9/TFiiAJY6A7QJYBIsGkaX8Dx5KV5
	eSRECSGwwGaUFqgEbBdmrcoN3X12Ew78cdOtx2FKSRNjS3BgKGSeZz16UIGNjVEnthAEwnjBUdC
	APSP8cOt5KcUj8WBT/3QpvxI/CqqO7SiLu2nU
X-Received: by 2002:a17:903:f8b:b0:2b2:5503:1b8c with SMTP id d9443c01a7336-2beb06c4f36mr48802875ad.11.1779472986328;
        Fri, 22 May 2026 11:03:06 -0700 (PDT)
X-Received: by 2002:a17:903:f8b:b0:2b2:5503:1b8c with SMTP id d9443c01a7336-2beb06c4f36mr48802245ad.11.1779472985718;
        Fri, 22 May 2026 11:03:05 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb58ff106sm21193645ad.74.2026.05.22.11.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 11:03:05 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Fri, 22 May 2026 23:32:28 +0530
Subject: [PATCH v3 5/5] arm64: dts: qcom: Add Shikra EVK boards
MIME-Version: 1.0
Message-Id: <20260522-shikra-dt-v3-5-80ffde8a3dc4@oss.qualcomm.com>
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
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779472947; l=6187;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=PKxMIccKL5eOiE/ruMWQn2ee4hu9/pEmn9dglntmZTo=;
 b=eeP1CuXgJm4EnxS5uEZe8Tiz6ULuop627FHXTkgKyi/znA3m/T1A5GqXkJUMu/nArB/fxR6F+
 0L1ipdLcM4lAHrCln+lQrSyh1atuEEc+VKjoOmsmWkdccqHdgVA7BG8
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Authority-Analysis: v=2.4 cv=JN0LdcKb c=1 sm=1 tr=0 ts=6a109a5b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=vDQBCZ3ZoHl_64TEIpcA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE4MCBTYWx0ZWRfX7Q38k430ggkf
 XyfWyl24P0vY7c/yHOzXaqqJ40fCHcxMCboG3x+vj0XXf0WjU2cxSwa0QWeEATGC/uZarOWt9cn
 uXwgHCQ31dg7uejaeC4Ba4oUwk3bV4dxrI4nyJLg2G45JyXebC3Exq8T9d5fUn3QdDa/P6noaa1
 DUraVicAUuFue32/qZ3SkG9P3G2CjM+xL3z91fQA+vI1cPEfuXXsQXqvi5cVS/8fgb9N1Cq1U61
 HM6YqySMo5j6HpSPkcRVlWytHloxeZ1w876wJQTvunJ0IjC3Cv9ds69ZcdPknj/I11LiCqLT5po
 7dnyf5G7xeNXCJJsrPHi7M+0HxZqPMVUhB+qyVajYIBZAZ5HB4jS1qfSr3HQBSKYS/KVNtl0Ge5
 iItTOm4lcSC5dMEMFdPhJanKHDBUnB1TLoWyCvoDr0MJtHQQfpHj63+iurJw8a8Opru/HHiz4hT
 uyZdEo245qM/AJx6NNw==
X-Proofpoint-GUID: LGpuxbYdFYSes_CyL9aHfVVfdykZO3iI
X-Proofpoint-ORIG-GUID: LGpuxbYdFYSes_CyL9aHfVVfdykZO3iI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_110307_961655_884D0235 
X-CRM114-Status: GOOD (  14.37  )
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
Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile           |  3 +++
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 40 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 40 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi    | 14 ++++++++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 40 +++++++++++++++++++++++++++++
 5 files changed, 137 insertions(+)

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
