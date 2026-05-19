Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D33A1CD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 11:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/hLpiQ9RfQ77IWTmGnFkxiDFUWOmhQqNWe7PJ8kfmE=; b=vFD+rDDXp048sW
	en9knLsk9zo2umNKcUI2gcO2/xNXOU66tRZckJg2CU37DvfDlgmAtyn/kaidgdu7TZU+PWOuucyeF
	3/hxOgiV0v80pyj3B0mn1aaZw7wzIgFkTpQpgQcVb1H4YA6Wkxt8tpwp+Ox4pqfszHH5MwOeD1qV5
	U7TuIx+ZD++cNk1JGP5pUjmd5Qs7oFJY3bAUkTFACSOjUxKYn2QF0jUgX/fWqBZQyTPLbdttgHBFk
	N/3cU9WY499aVg0MBWdIJ6sEGgBRUlCeAkaxnp8KDivR5gHv2SC1tdbqtygQpojDMwWBCKKMGJVR6
	SirBGt/imifHUgOKEqNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIWd-00000001JAB-2bIu;
	Tue, 19 May 2026 11:22:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIWa-00000001J9D-3yG1
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 11:22:14 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64JAbdVO867049
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 11:22:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IfCZBMhzSxU+6bFyzhG5aUVHXkjtGzqCHGeI9Odt9/w=; b=WnTob3+M2nl9fu13
	YqmnFopwWZ4Uta0SKpMeP4yYCkLcSl+3NGgkbQI8ZQIGhaepN2/BLVsDOK0gkv/W
	MadvYwIj7OcxqJ+WFmWCQUYGwez95sHcaMdSqlvB74Rxt8bGp3uG1eIeBWXdMNEN
	vasCf0vMLg+s6fJD1TMQgLixZbSNNCLN1uOALYkVXyDvh4t9ETjTmgt72+6QUVRw
	2ocXhyH9k3gXRjX9d8ig446PBNvusNm0QbFJ1A/hUx9jX0XGitrCOjScvHvqwOki
	1fwBiBvEwT4ou0n6YkN2aSrXolcgxOuiP1IqB5Wb5FfsYUrGyqzwDLFwm5z2OAxH
	byuFkw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e8hv1heys-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 11:22:11 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-369166fe5e3so3060784a91.3
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 04:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779189731; x=1779794531; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IfCZBMhzSxU+6bFyzhG5aUVHXkjtGzqCHGeI9Odt9/w=;
        b=HIqPNXnVB+BMmmAeTGU4/hL66GTDZ6f5Y4ghax31qzEoz09Cq8dIHao4vtEseJdS8/
         Rdyvk28ctQmk0muphwnHUdqBUffFAvirPuto2mxUxm7Loqqgn6vZ2eUicxD5nD7ktAt4
         if1H0MvSSOAja+TLa/Ea1vwsjBJkxA/mNeTgCyhM4/024XAck1jAat76VgOhtIY0OXUm
         ke+fmRYW8qgHoErATNirc8xcyH7BPBmGpikPOpzsvlKDLv4iHZuqfUPlaC5+rzO+L9hR
         OBSMkKtD7RFXHQ+o7LF3UU8HJxVGm7LEsEKV9nOyp7dUUTxvkBt6a68MhyR06DX2tcBe
         J8dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779189731; x=1779794531;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IfCZBMhzSxU+6bFyzhG5aUVHXkjtGzqCHGeI9Odt9/w=;
        b=h/Qsuf3+5AXBlIX9GQcCOhVhgaeZp+z4MRmiBUDSzE3UoN6kW3x28yIbfpdgsTjCWq
         DiEsi+Tv5wt07WAE+8xS53ExSzfLKNipYcOoSCFLj0hFWr1m/Uk86ycF7/YdXWoTvqLT
         ALM0zO7d3WCGNBKr+j8nmmI8BpTDjWH2eX/Uet/TXGNhEMXD4CXSWP/3MPZFkCEn05ZX
         BB02yBIhuDLjkB/A/flEqerzqJXQfPGhJPJJ0I1BTsx2mbnzFfeamxplZPGkSjInBrnW
         5shTHBf9/whkqQwdxyKbT0KV5YfuyOVy4YyJBwLeDSksgW/vjzCK56p1ary9xespuE5x
         aTEw==
X-Forwarded-Encrypted: i=1; AFNElJ/Y4BumfHOWz3+7YVh1A89nSCqgFVUy9ff/vX3uCTF/AeP3M1fRLZSg5vymdndYtL/D716f9jJ+kWk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDnOcWgxY5rdlXOUVnSPblrk4osQt1V+/nzrr1G45BaW7EcEdR
	bq+Cz6KgnusuLsqC9qJ7K1UR8PyRZj68x2ZJOSfQtJCOnPMHILmViaAngbufS4l7R0cdrj2YO4q
	0VBD7hLUYdNyjUuNrOfM1WQwVWLpzTN++yMuf8fOgedkXlHOY8kTLq0/lVUYDRWLKqXMs
X-Gm-Gg: Acq92OFIDh6Eog2crjRrN36Mktl7R4vDPqBhbsRV8m8fMjHpTUFwnTzEkKszMW4H3VG
	wPzPMsfMaXKQwBGkcuvb+AUVVzhOoR5qhBU3+F4yXkchhnS9UQttFrOLparYumGB2pWEdj54JtK
	WeA6sSda/j2H6SaMqL0LY+X5wDLn+s72sukI16EwbZvY281f7jI17k0XPl7+uReL7BAH5XBIfg7
	NNXVH9p9yggFzQW5nLMT7Vaapr3jO5z4CcNcZPiFCtOLCTXPGfXYjwO52tP9bZiFCU9TSWCmg6W
	kGw2ycXuCphuyTzuJBasvqxroLr+5h9FYmUmwpNCCiDmwnuwR8ctGzj3ttvdh9okEcMKgjY1MvO
	UffaP2ixnsbO/ozKt/43g5HehnJSgFhsTiqdy9DjA6OV8Qv0=
X-Received: by 2002:a17:90b:5110:b0:366:1c9e:99b7 with SMTP id 98e67ed59e1d1-36951dd286cmr19479027a91.25.1779189730758;
        Tue, 19 May 2026 04:22:10 -0700 (PDT)
X-Received: by 2002:a17:90b:5110:b0:366:1c9e:99b7 with SMTP id 98e67ed59e1d1-36951dd286cmr19478978a91.25.1779189730169;
        Tue, 19 May 2026 04:22:10 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5cfe78b9sm192743605ad.43.2026.05.19.04.22.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 04:22:09 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Tue, 19 May 2026 16:51:23 +0530
Subject: [PATCH v2 3/5] arm64: dts: qcom: Add Shikra CQ7790M SoM platform
MIME-Version: 1.0
Message-Id: <20260519-shikra-dt-v2-3-c01b90fb4395@oss.qualcomm.com>
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
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779189702; l=3493;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=ROfWYzqfLTfeWEuSE0CQdQnZtXIf2oyWevn96M+Mxqo=;
 b=pP3MfIHGhn/2oScZhcEZ5nSDWVAT+MjrRFL+l++qEoyV2NLrC91s2HU+2wfbjUJBflxtID4b6
 GO7T2+s7/HFCQdZ5ob9rgpy/+9aEd3YuQE0d14egoVbvmn8RILw7tki
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDExMiBTYWx0ZWRfX+A+jVg7jZn0M
 2rxWTje3rIrWQJR78CPAyqZZcYFtm/2wo1nsb4UnNeCLYvFFbwk83mCOZ/jz7sImZy1u3t8OR7+
 JbtT1PAPsGPkaHf6knxAE9tEba3f6h3A2k5Pre8l5UXf/tZw39jFcBWc//AETnB8mymFFVRKLfZ
 CKu+iL0GN2j6jxyAKSyk43q2v9qK8ZJskHT8Sg/pjDNQAqjlw7YHEXvzqBvdGFGh+fragEn1Xas
 5RP8QOku9FKUCqpbt7MlPUrytH6uHPeJOTBJ7EEOJlA+mdQDMURluNAqClkn2yTA9dj+jaHawi5
 2y0tyT4bZwWkoemRaWCFPnsJRqn6GAH24LxYgRgHXWb8+mbuKCl4F+qCjpMFYMSYoG0kqBjKXil
 pjY/2b1+NreqYup8mGvH1ME/LHwiJQETBrMkrD6T0R21Ht0l3LHHnCBNwPii/3oOiSFlrPRf6Hi
 +f3bSiWB3BdMwIrwqfg==
X-Proofpoint-GUID: vPhkKCJESdR1Vrc0ghdE8mFkkvsEI0PV
X-Proofpoint-ORIG-GUID: vPhkKCJESdR1Vrc0ghdE8mFkkvsEI0PV
X-Authority-Analysis: v=2.4 cv=WZM8rUhX c=1 sm=1 tr=0 ts=6a0c47e4 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=yuh6J1mAL7zzRkeivMgA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
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
X-CRM114-CacheID: sfid-20260519_042213_466207_DCDF0E01 
X-CRM114-Status: GOOD (  14.09  )
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

Add device tree include for the CQ7790M variant of the Shikra
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
