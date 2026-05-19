Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7418CD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 11:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1s9/s/6kvDV5WoF2MuyfubMuBgWd3ZY3TgH4A2snjo=; b=Uigi/tGnLQ9m7P
	5WK/jijBcJkg0nzNDpcJJ5GP7BWqgt3C9H9N1Uq7YvtlfR9MpHPIs7LSxnxMlAnu2oDGrDlpJELq/
	oLvc9m4a8c+k14Sz/ZVYTX3tnMKDz3aVW9KdEXa6OliXpbQxbnCGioraAt9GX1MEeHuM6aVkTPdYt
	f2grFAd9EtTwMSHRzQyx2XdRE1fTmAkykq1/0/faLy/HKDAT7tg+8rFjBHra8Bd9gXghn7hSuDrV/
	XXWHWeSepqlh4xFNur/JK0VeQ8ucpp6+yKmrVgspNfp58jjsj+BxhvE07J8/1UtG7wfsoNTEBnZHJ
	tXvu4obeWLnofARdI0Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIWi-00000001JCH-2o0J;
	Tue, 19 May 2026 11:22:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIWg-00000001JB9-0ox0
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 11:22:19 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64JAlw9j867066
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 11:22:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C6TFAV79DECQ6Z78fc32YOmIJytgUn5/nHkh9q/ori0=; b=b6W7fzZct1x/vio4
	PDpAdBzHCI+tSQcJJ0K+56gQKCvKq6Nu296nPMIeu5tjuTVlIarglx0oj4LTm1d8
	yETTbg1vJDzJgpVfQgUw+UJaosrs+f6hZP17oP97RBY7Tlq4WTTkEQRjKhWU3DPm
	de3tZ0PREcOwiv1Y3EKC0zY7J1MhWsvREwYveNwuJebpE3kSwxO3wjZh6ZP9Kdme
	buNEiVJaynjQFBhEInLQiNIqlUGT1+iCmW8xMNqQoxKiteMsPiLlWS7fGNvfeFiW
	J5ciR9+VJ4wG5NeAe+9hBlhXtZmXMRsJsV2C920zTw6g8MBnhwqPQ7NIMtc9ZYD6
	aX7spQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e8hv1hf03-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 11:22:17 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2babbeff9e4so37390155ad.0
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 04:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779189736; x=1779794536; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C6TFAV79DECQ6Z78fc32YOmIJytgUn5/nHkh9q/ori0=;
        b=id6tsGyFHXK1V823NghmeqwCd840O45iw/zC60HM73rCXKGTl3gxL6eERRjacU96Co
         RJn01K7BC147rxZH0NgCmvzVLkacoShiTPFpxKiNy6jmpShFhQ4HDL+CROakH6wJd0yO
         VJkv3fTnXCOj1ly4BIdmJQCZ/Jqnk34rLacOWJU0ZDhKdI6rmO0wRW12QKJxGO+L/3QZ
         w5ve3UDeTGGaYxSrFugnlLyx3HyezrvZxS8bsun06PoSSkElaGn7ox99YfWr5QbadaZ0
         NburDx5LhQ01KeCnBlQj9t1pyli5Px8loJBcuAvb6INFcJhubsBYsW7futl5oDX0aNxU
         v/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779189736; x=1779794536;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C6TFAV79DECQ6Z78fc32YOmIJytgUn5/nHkh9q/ori0=;
        b=F/skrNOstJV5REXRNOV8hqm0R2Xua2exxXTDfpVbR3FnbUswhmE7GCZxfmo3iNH+LO
         //ziYMPG2b3KET/w/2xNyWebm+4d/rlrCO1JKZWajvxYCnJ86EG2zHiqE/U/+mGyDOCm
         Vd6pwU+TR3mWVauSIwUiMtfe4C9W0KA6MTqfHOAgvYDDtvZrTHHCXThxB9xt3dBxCAP6
         qsu933r1omjWOy7PMMPirTGhFVkMgjA8rbh0PmwEfz0flGx/sqXpEAMvxFUO3QAmAJlo
         pkHR8uyc2g76inCCb18jIRpMSfVqts74693bUp+YWzd0rP9uUAtDTr2ARtti3+1zGikj
         Fpng==
X-Forwarded-Encrypted: i=1; AFNElJ/eANz3kFgndvjaZ0h0HQJgKsZ6kLMGtGHC2E2CMW1i8pSEsrggJO4YjNEeesnrjetg4WjmAnhreRU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxW9hyW8Epq7Es64bxch3bwPCzkBfiRQVdwquzis9VlbNTcB61d
	6XC9cexc5W7pdtcyQ4cmfCzQRYbflytbCtUpUIjR2zx/JV1NNzlHs7h7sgf7mcDnktIHlJqV1MF
	8d8cGjZ0+CUwwJjzN+YZQH9Ix1oxXXF3UDpVV1/ruwuAcQkjcxj5sUSLRswXiB+5ohl5J
X-Gm-Gg: Acq92OHQxtPumqLRrkMAPCHfPJX3b/DZGucDEPlVmvgTJCYZ459tmwfv0QfQmzaVG5j
	RsiNavKvh7aFfOB7FpnkHndV7CPoQKpR0HQZt2FFVwmNkJPfyFo7psYyUl5LAcq4kInl5Eertpt
	lgvPmW/FozWR6NRZigCnIPSzd51MGK3TCo05krcVf+aPnEiKnCsTx4YCqj2WS8wNOziQx3XxqrO
	9nY7926tECX/wDSgScVDBK92REWFr+2zm28VfGSrMomcex3twcX59In4qZp2m92fSOt4h0oOl1x
	tGBunXN1q1czc5e+Hbvi+RBLEOExhly+kr9Dj+CbpkyxzLp5dstjseNnzHMe+NFGnQYMTxwu6sH
	z7URItNOowwFknBZdydrq+LCg1KeVTjAYvFjA
X-Received: by 2002:a17:903:78e:b0:2b0:4f16:22f7 with SMTP id d9443c01a7336-2bd5277b510mr128237275ad.16.1779189736231;
        Tue, 19 May 2026 04:22:16 -0700 (PDT)
X-Received: by 2002:a17:903:78e:b0:2b0:4f16:22f7 with SMTP id d9443c01a7336-2bd5277b510mr128237085ad.16.1779189735693;
        Tue, 19 May 2026 04:22:15 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5cfe78b9sm192743605ad.43.2026.05.19.04.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 04:22:15 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Tue, 19 May 2026 16:51:24 +0530
Subject: [PATCH v2 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM platform
MIME-Version: 1.0
Message-Id: <20260519-shikra-dt-v2-4-c01b90fb4395@oss.qualcomm.com>
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
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779189702; l=3729;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=JUEXjiXpIktTHbarzyKyF4Q45ihGQ06q9JmKCLzg9Yg=;
 b=qs1bdAnb5wYepzdCe+VQK/Bw8na/AoGH5qmjUbKFj06jHlEKXg8jbV3qMQuxgxIuDJL1Av4ow
 5CAsfjjrturB0vjjQUSf1U//khv8TCu7fJJ6+hHjeu9pwE2x8yVVGUm
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDExMiBTYWx0ZWRfX//9okjfpFm4R
 XlWyycIiV+B5EfBVHhjFot43eZOvqI6S/6pD7MdAIjlEKjt8klEzUuOASTQYvjF4KxALd2JvCcv
 i+jbbE25kfmPHOvbFsg2m+RaBibCXfNc49os+yCavxnMJOSvh6tAh8UJrqd+6rpXAbrw9bfcmVy
 Hbbx7iasx/k/V6Mlo4ixCdAE1CjdgAvWoTTIXdCo2UM6wNxW7Jb3H+fF3juQHS6/mlYpwmmFtm5
 eAPZMlBi7oXwc4NBMLk0hZk0tyEahVQ8Qadzm+DKJHcLXD8jFmKQrwW6EDa4oa2YwtRcUhrDAdN
 IDX4TFuLN7s2VbqkBAUhTtylO0+ScnOfFazcEeWVCA/XxBLAcmW20JyszxJNxDjwc3GuKeQ3zCk
 MIk4EGGGD4GomtKsOL5HRQ0K+4Ejsb6LstEE+sADti+VddvSbvyjnK1MdW1DgS7VUuhqHYl0CWb
 XMJCZO261XoOd8cANlQ==
X-Proofpoint-GUID: Ge0QoWMn9SPiQWzaBm28X0BUsZ8_Drjb
X-Proofpoint-ORIG-GUID: Ge0QoWMn9SPiQWzaBm28X0BUsZ8_Drjb
X-Authority-Analysis: v=2.4 cv=WZM8rUhX c=1 sm=1 tr=0 ts=6a0c47e9 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=0jgzHgEHJPmc57PvYrEA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 phishscore=0 spamscore=0 impostorscore=0 adultscore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605190112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_042218_361408_D7E05323 
X-CRM114-Status: GOOD (  13.86  )
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

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi | 127 +++++++++++++++++++++++++++
 1 file changed, 127 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi
new file mode 100644
index 000000000000..2495e1aef1a0
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi
@@ -0,0 +1,127 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include "shikra.dtsi"
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
