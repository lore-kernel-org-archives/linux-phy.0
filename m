Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E01BCD37AC
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 04:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHk4U31+1wi3PI8xGnLUPiGpPuFWCviyRNCdrZkleTg=; b=Q/T1RArQP0qrUO
	pzuXFqpTcVSkcn33slO8Ehv9R8Wq2/pzAenTfHpCE9ZyP00KLnrsrw9H7LMHLqCTMJBHyS0C/S6/H
	4XCpWsjBYRNU+zBxnMKeVEfbDy/mg2YA+2Hg2Wpu8KqxqDpPBDduCUV3Td1sgKIPeCfL9wJM7l0OI
	4pNkxyfGH6F3st4aLMC4QQsTGdK0MZuqGcukAOssCuzvpFZ0L2lEOdJv+SgY8L2IkMBAH3hOCjqHU
	9xmk87N90DoxOp4DyqqOtqma2JUNJ9iMycgR/OZ/0SgGG0TCYFP1bxWXYSKB2dCjoLfwZ/ysHGauE
	mGWkN9IshXr0+Li9H37A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMeQS-0000000FRGd-12oB;
	Tue, 12 May 2026 04:08:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMeQO-0000000FRFc-4Ait
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 04:08:55 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64BK6asT2518197
	for <linux-phy@lists.infradead.org>; Tue, 12 May 2026 04:08:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5iW5TdGJXyw7GTZ7b4X8R789iXoMJ2Yg7+PSjFZ5I6I=; b=So3+h3e5lvFqRYL+
	HkmUGibOTVjjXqWXsoAKeXdPom8G8m9DFcWk5ijByiMR6FC8YJMfC1E1kKTfz5Ga
	ZqyvRbJSBDGn6OahWzH3e308481+hat8kZPba3hpOJfJ2V4RHsI1k98TElo4p3Vu
	g2tVf6ocynl/1bS6Ob0XdD5O3vaxN1uG/1LnYCV3HTTFhtTxjk8qTY1s5oY9LRV1
	iR8Cfi/RkRgYW2ipX4JeobsD9gPDBVhbQuJDwMPNTMKtKQv3oVRU2BCf+pLMfmqB
	iveO7LOn0ItNuZO/bXa7aMt+w/QQ1hbEdUhqsdhQME3TcK9jEt3rxHkLYJW6Ix7p
	ZutqsA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e3nv1hd7e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 May 2026 04:08:51 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2bd04e4fe3dso4517685ad.3
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 21:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778558931; x=1779163731; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5iW5TdGJXyw7GTZ7b4X8R789iXoMJ2Yg7+PSjFZ5I6I=;
        b=UhrgxcI7O9S46lTfojc1U/is/4frupygeyfhO0zvYVHw1cMJEbYPR2QINC4H4v2IGX
         3/AGTapoWkR/CoRdtwW9rrTBK0dmwUHo+KhVV/lcGsxR3WeN4n/DPBDCnTGqwgPtTnXf
         ekygGzM5gEXxF4nuo288djzP/DUJVc8ZMOarflwipZ6aFXzruQlbuRv+OxrIwpfTLt0C
         eesB0R1BfdOcwhK2o5SVDMEpPH8yfmsbyshrhFz5MlbpZP9ZTvCuEozJCUIEnjAjynUT
         IfDiv6stfqY9bOZlZG/cd5Z567FA7hNMoBhZ6K336s8PMEBqWJ0sp+TkU+DV3DDOD55n
         U3vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778558931; x=1779163731;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5iW5TdGJXyw7GTZ7b4X8R789iXoMJ2Yg7+PSjFZ5I6I=;
        b=qxU8I55ygb+wwWer0hWMFSRpq40O6I9bOiHLu9L1S4E1lbXR2Vo+vV19cMbrEQEyKb
         wGaiAR56AcZjs3GEawrOHv4p/NV9Eh9oeuODvnWa6Fq+pyk48kml1Kg6lUyWz+lfeVWo
         /TZrW8GgI6ldNqEL/cNEYNbqUugnEhQBt6KyxHl338AD7tTsAVSi7w5I6MPs/1EutYRW
         uOaZ8q9x7PDXtLURv9+gwq5nJL6ZI2bzTbfO2LT7nxLmTIBSPkugwPiJQ7ipgDFqTERL
         CbOHC56NSfbdw0r4Em/c9klfTa/bS0EUPcX6C1kBUXY1k6IXdufpt4ne3PAJf4OlpQ0d
         vPkw==
X-Forwarded-Encrypted: i=1; AFNElJ8I2rTy7JqSw3Qn9kiU42xhDlrtWfOOSEMtscebTqYl+OPx5FEjx06m9NcJ3TO+xkca/j24uJ6CDag=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLMBQ/QGbiLCEIPbYl3JT7kYVuCq0B5bnQmv2yI6Y+is8sxhjp
	zph2u73qcZ6+SJ7T+cfMMnj+fCCiHUv4cH/f+JEmdLz1INHkjCtKVDQGOguewPdK9oKUvyZfldl
	/xGd4w7BwzTDtcLszp3JnA7UeycveHvnTNY3ObrKmBKxRx2SlzH5GuKGNuzd6lBl5ZRyJ
X-Gm-Gg: Acq92OEnjpBDDa6SAowNq/+UkSFU4GDaM8mRi9YLdS/QsnU9HWmLKzLttJw3wzVbz+G
	yvxeRgSGwOl4nzNVW3WCQRZkbSS81muUBci8Xw6vStBHbHM8YQKtrWy0KIMKjGHcP7ocSlxTzYt
	JqH3omlWtjkfTthHZZXGsXUkayUKc7cuLVIizfzBbaohDtnKl9LdqvV4c34ULWaIpAcr9LPYx1Z
	NAajvhbEgyz5nTtQiinmbEzSGm8FsW89LseQM7urjtfKomblpRb8TYBF8gKZ8Ty4BdpSyKcM//+
	FVspSpSEIaTTWoQKW91YrnVg+Rq2KYlLwUrSulPRXOrsBztBWxQjuP/kSLWyePJOqMjI0Xruipu
	iGO3vEvr/FfHSBuzP1ueIoh7fPhRdQ24IXR7X
X-Received: by 2002:a17:903:4b03:b0:2b9:7ad1:bf2b with SMTP id d9443c01a7336-2ba7a2102eemr282246895ad.29.1778558930935;
        Mon, 11 May 2026 21:08:50 -0700 (PDT)
X-Received: by 2002:a17:903:4b03:b0:2b9:7ad1:bf2b with SMTP id d9443c01a7336-2ba7a2102eemr282246515ad.29.1778558930424;
        Mon, 11 May 2026 21:08:50 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1d405adsm122646725ad.28.2026.05.11.21.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 21:08:49 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Tue, 12 May 2026 09:38:06 +0530
Subject: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
MIME-Version: 1.0
Message-Id: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
References: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
In-Reply-To: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778558905; l=3489;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=QSWsO4NtB0gyoZ9UE8wQtjGZF5+pdJM1iPNPKJBGnf0=;
 b=gfH0gl7LXrdq7byi/X6JFwIeqcpLx56NZFzcpnEaxVxou1o3ed1tKm7R+IyVufAIRNPzXChWv
 KjFGppUQdoaDgPP12iFAzFLNqNjDxmQNFFcbw2aD4BC8JuktxT4IgvE
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-GUID: 0N5LxqG6_PbBysOqlSKbSVfwZeXAWgB_
X-Proofpoint-ORIG-GUID: 0N5LxqG6_PbBysOqlSKbSVfwZeXAWgB_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEyMDAzNSBTYWx0ZWRfX1QeqTaY9kzAo
 bbI8cahF3QJBIiDSZXOz9wymmnbdch4cQ9GkeQnxa16OPRx5wlDESme2fbA5uyi8S5P6oLxchvk
 ZgoVZxZkNVN/dxwv56LsCi8MK0xlfRqBwzMV51+Dx1bN9TZ9xqRPc2CdxjsUEIPq8EJnQu5BZGx
 1j6vy2/VD0HL/2nOWU53KV3486gOSapesl5CD7DjHNGGoIKvnLX347rxoRqvgsp+a/G04HAZonk
 kbDCwK7iRhMAcGV5DEWE/hSWtJvAIseklrxkXw65aOrmZF1wxRKgic7m7l2Y6Rzi/+IaoIzMCa4
 CBDEhJUBwUVoWsYcFHLrkKHcN3KTZy8WFkq29MpPhbhWBKVuvpPC5CJvbNk0LA+Yq7Ztv42OC58
 tlNzgZLN/k95T/cSDwSzSbrpdW5wDGCUGnSdlB3H9Pfpa0tTU2gzd2mPX3xLC6tTcbHYYyCsLE2
 NCMwoPEBhJ0DB/jX4Xw==
X-Authority-Analysis: v=2.4 cv=c6ebhx9l c=1 sm=1 tr=0 ts=6a02a7d3 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=yuh6J1mAL7zzRkeivMgA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_05,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605050000
 definitions=main-2605120035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_210853_152322_E5822C01 
X-CRM114-Status: GOOD (  13.06  )
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

Add device tree include for the CQM variant of the Shikra
System-on-Module, a compact compute module integrating the Shikra SoC
and PMIC for IoT applications, designed to mount on carrier boards.

  - shikra-cqm-som.dtsi: Retail SoM with modem (PM4125 PMIC)

The DTSI includes the common shikra.dtsi and adds PM4125 PMIC regulator
definitions specific to this variant.

Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi | 112 +++++++++++++++++++++++++++
 1 file changed, 112 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
new file mode 100644
index 000000000000..401e71720519
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include "shikra.dtsi"
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
