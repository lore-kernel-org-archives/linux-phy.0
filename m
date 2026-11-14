Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6E3606A339
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XnluwRBh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=O76SxMxb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=OurNZyrP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PMp1WT0n1QLcZ76GeVBLdmbSFltJihjRFIUjJr2jhv8=; b=XnluwRBhLaAE9FpJBAUllUaWuZ
	/egZTspuc0kIV9zM1V6sN9a0qyYmsNFdf4WZnlyTwympkeuR1HXAqoilSZCcW8SbD6rah7Unh3Bpw
	QedQiZqdJ3q/g5LdFYBOHnKVL4IXY3M1mtPFEGe/QxYw718dgEzN2qKECiuNJJCsQH+yFKlpFkkwH
	0mlxswfRJE48it8sCEcqRkjRm5enIZ2fVXLprXhcSBKBqCTaOfje+sL3EGG+dirgPSC0GyB+GszXb
	D0JsNOPvtKNgQmIn5Zjs1D+j+B1APfUCbr7Elewu68LoSusjocEYv8YQNzNQUjRw7qniwJTzP8cY6
	O4+p9xXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC0B-0000000Fu8L-2PfD;
	Sat, 14 Nov 2026 11:32:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC09-0000000Fu7y-1Fvg
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:32:58 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9w4JY3164174
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u4Oly2ccZ0M2EddE7iLjGix5zbXSWGoTjOlAUxiJPBQ=; b=O76SxMxbxeqlf+/s
	J5QM94qjLwegqGbaM40Cw7rgwsy57fIpr56y21gmRl9DNlFjO6/tNMNE6zDPs5VW
	zVajAGdTmtJR4WV6wAEev7xuWLHEMtATm9wf0D/sKSfo8EdjjhjfQYt+0bpXadHB
	iHsDnic3pLaNFyZuor4ev4l7so6IlKkz49BuZs22q3MxFLiEj9TTxVPswETOmKS2
	o3rQJFMSO0RM/uiwxhnDQH/CUyYMrZFRL0aOUoc0vnKsJa69M5dvzvQRYAy37wHl
	Pr+33+V5M6WeB/nBktPzS/Ow3nTxdIGkZcVMuPSfITkwCc5QVAJ36I+rIfaWzuHN
	ngsWlQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhkw8m4m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:56 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-54af6c38092so20318831cf.0
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655976; x=1795260776; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=u4Oly2ccZ0M2EddE7iLjGix5zbXSWGoTjOlAUxiJPBQ=;
        b=OurNZyrP7EvZuZayZKiV+BV2q7z1WKpGInc1B1ujrn2BOsrqALymv6OCdoJ8wlU+Rp
         BkYJ6lYk8Ye079YlYshklOiltjHeU5ENr+Wrm+5NT2nP/Fa8O1/4uGh+pSN74AjBkY6X
         yZnPKxEd0UnIi1wWelSw4HqPpopVAGU91L2+XDqvt3GbA4z5lhlpIjySQG6LrbLIAEDa
         hit5lNn43MEkz/r1aEC5rHymg/r5rZxqsOxSCME7FEeAJKLvw8K/DOqdu3iXA0x13N8S
         z7Eoml1Su1hcEt/vgLe5I8gRoD7MmsvAJcDShFsn+wW3J22Llf6gcrbin4a5t9581g5J
         X9Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655976; x=1795260776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=u4Oly2ccZ0M2EddE7iLjGix5zbXSWGoTjOlAUxiJPBQ=;
        b=qCMr3x7crLD7mqiOFWD+h/s699dWRZhYSoxyu4yRSF9NxragpbjCEqulm8x6D8YUOe
         86Fjb9WbzUk/I9lZ0FRznwzfEry0GS5lUHPkxiJBLWeJnvZ2katN2g7lnNsGsuSSgDrU
         YmaVrJf2GSoWhPF7G24rDygZkETZJsu7ELZj5utIFS3arQyei+OITjP0g5Ku3FzwSeXB
         eDfuyyzXemu5c/ZBTMunrekY8pdhqSGBm2RkYhVZia8Gij8Nzc2F//bnSaERkGyFSma0
         JGdvEwp1uyoGOHwccTrVlGHQtvnqy8W1aVDLl9xLASa+8OIRuu5iiPqE067L7Wumin9N
         e3vA==
X-Gm-Message-State: APuU4Z9GL0sZYsGDCrCMJDsU3wWvApl4HgooEHzPtf7O9BFqIbrppu/R
	jl5HNt+WL3xivFh0GEtG/Igx6rHQnNtI1YyijnTaIVo/kXEr3Z0a6BRXGkJ5Z2KVAN3Vxby6Xhg
	Pm4+Fav5zFhhD6j97kP0G3rpaiSA4SqmWQh02iCK/uSq2pQGk3Xt0/7uI9SF+nAcrIEGo
X-Gm-Gg: AYBFou3hjvKGGUs8WcI8ln5Yk4xzmp9KJo9s6nZNet9ID4fY8bp9aw5zIGbeb6zAisY
	qWDBn4L8epFB/9iZDhqywGzsTnERsY8OAdFsolohwbh+3i3Acc7XpBOv3yEXTBHEi4gQz3zcCmB
	qnKRSjldLcxl3zzy9lmYknscSaUQ7m9u0HEoARjh9SwbNKu07bQ+UG7x9KOP1Rycc0+P/67g2S6
	aAjRCfrQOpu8bL0PzvlCUJxAOUiCWc1eGaiww1UjNO4OPvvK89bGVFnwNYyLygLPn86oARBI3d0
	j4XWi8ZgELfuLW3btcDymnt+1imlqido78EibVwDYMWpNH0EG9PljRUaANFLgH4nkrg5904rOtg
	JMf2lFU3jAJXvQa8r9su9YYQpH5+T8MFfsJW1neCRvAL75ZYASl+el1QG0b4mO6Q1LpX3yGJRdU
	hbUJRVY1m0lMUpp+acv0VUQGU67pLM0uIyMxWhj7t6
X-Received: by 2002:ac8:5ad3:0:b0:536:3600:f0af with SMTP id d75a77b69052e-55ac4287a80mr83819671cf.7.1794655975593;
        Sat, 14 Nov 2026 03:32:55 -0800 (PST)
X-Received: by 2002:ac8:5ad3:0:b0:536:3600:f0af with SMTP id d75a77b69052e-55ac4287a80mr83819451cf.7.1794655975113;
        Sat, 14 Nov 2026 03:32:55 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:32:54 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:38 +0800
Subject: [PATCH v7 21/23] arm64: dts: qcom: eliza-mtp: Add PM8010 PMICs
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-21-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=6334;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=qEA/VOZEPJj9FtavWPFngGillqdti7IGX6O1SVnmft0=;
 b=kbxzQ1RziT+LGmz0Ob2zzYDFbcTHIesR5ElhBnfStyGUmFJukhp8flA+Wb/U16I6rVwR92MUq
 6B2Ut4Cu1vVAMopCz/TUd+3A6BK9sBSnBYOoZNcxME7KAFxLrl1JsUY
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXwy9SKhN+noDJ
 c8k9pALFgJz4UaWn6dEGvtOAzhKPAnKlw5FH/bJZ2tHSZTmOrbzqWllWFMLcw+he775xXh7wrFL
 9Lu7WmUgiZZjqykQx/dPLjqWJIIrs+eDQwC0VjJ3lidt9kqJF9CSYo4egp1AWexzEbJpOTPNfCS
 Z8cAx10TlW3J1qypjmdJ6ypr9ATdRDLM5ndk/PTJKEqTx9YlP8Z8sEh+r3pnBVoyi2dEFPrifqT
 KRhpqGtNWDQNOrfmLlqnuxXiqwXfgfdftu/OnThPINydaYrDDhzSB1sGmOrMuCMPZTFMcJAC9/+
 +LBZGQ1pLI0P9OVsPOd9sADTig2OeRP2bQa7dkAgs1KBzrpszDBrtyEcK/kNWdwR+UONTadrn04
 lNmo674CV9ACnwHCvLVaf/uYTQIRbL+BJY7YCohlOrE3woujhnaRN73qe4U/NTojoRmWrOgaeZ8
 YsEtMjbL4Lo+2o1qYEQ==
X-Authority-Analysis: v=2.4 cv=YPYKWhGx c=1 sm=1 tr=0 ts=6af846e8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=THGDsv6KT5CLo26r1dMA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: UDzw5zGFc8DQf3KRTLI_q2tAp_l19GhD
X-Proofpoint-ORIG-GUID: UDzw5zGFc8DQf3KRTLI_q2tAp_l19GhD
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX2TaAo/SgRWps
 KIGKh/TRCxRVXOiijCjkjbT4BVcQ5K4/qn5oZ+vOM8GDK/cy6l9slYdBsr7Htrmwhuu99O4fo86
 deMygF9OghXOpkBJpzapxc0art1YyU0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033257_377573_D76ADF59 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Eliza MTP carries two PM8010 PMICs (IDs "m" and "n") that supply the
camera rails. Add the pm8010-eliza.dtsi describing both PMICs and their
thermal zones, and instantiate their RPMh regulators on the MTP.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/eliza-mtp.dts     | 116 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/pm8010-eliza.dtsi |  81 ++++++++++++++++++++
 2 files changed, 197 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/eliza-mtp.dts b/arch/arm64/boot/dts/qcom/eliza-mtp.dts
index ee05192adcfb9f79cba59f11001b640a8572cc91..af7450fa2020d29a4ce98eb958dabd0cd8c61860 100644
--- a/arch/arm64/boot/dts/qcom/eliza-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/eliza-mtp.dts
@@ -12,6 +12,7 @@
 
 #include "pm7550ba-eliza.dtsi"
 #include "pm7550-eliza.dtsi"
+#include "pm8010-eliza.dtsi"
 #include "pm8550vs-d-eliza.dtsi"
 #include "pm8550vs-g-eliza.dtsi"
 #include "pmr735d-eliza.dtsi"
@@ -420,6 +421,121 @@ vreg_l7k: ldo7 {
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 	};
+
+	regulators-4 {
+		compatible = "qcom,pm8010-rpmh-regulators";
+
+		vdd-l1-l2-supply = <&vreg_s2b>;
+		vdd-l3-l4-supply = <&vreg_bob>;
+		vdd-l5-supply = <&vreg_s1b>;
+		vdd-l6-supply = <&vreg_bob>;
+		vdd-l7-supply = <&vreg_bob>;
+
+		qcom,pmic-id = "m";
+
+		vreg_l1m: ldo1 {
+			regulator-name = "vreg_l1m";
+			regulator-min-microvolt = <1104000>;
+			regulator-max-microvolt = <1104000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2m: ldo2 {
+			regulator-name = "vreg_l2m";
+			regulator-min-microvolt = <1056000>;
+			regulator-max-microvolt = <1056000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3m: ldo3 {
+			regulator-name = "vreg_l3m";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <2800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4m: ldo4 {
+			regulator-name = "vreg_l4m";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <2800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6m: ldo6 {
+			regulator-name = "vreg_l6m";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <2800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7m: ldo7 {
+			regulator-name = "vreg_l7m";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <2800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	regulators-5 {
+		compatible = "qcom,pm8010-rpmh-regulators";
+
+		vdd-l1-l2-supply = <&vreg_s2b>;
+		vdd-l3-l4-supply = <&vreg_s1b>;
+		vdd-l5-supply = <&vreg_s1b>;
+		vdd-l6-supply = <&vreg_bob>;
+		vdd-l7-supply = <&vreg_bob>;
+
+		qcom,pmic-id = "n";
+
+		vreg_l1n: ldo1 {
+			regulator-name = "vreg_l1n";
+			regulator-min-microvolt = <1104000>;
+			regulator-max-microvolt = <1104000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2n: ldo2 {
+			regulator-name = "vreg_l2n";
+			regulator-min-microvolt = <1056000>;
+			regulator-max-microvolt = <1056000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3n: ldo3 {
+			regulator-name = "vreg_l3n";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4n: ldo4 {
+			regulator-name = "vreg_l4n";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l5n: ldo5 {
+			regulator-name = "vreg_l5n";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6n: ldo6 {
+			regulator-name = "vreg_l6n";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <2800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7n: ldo7 {
+			regulator-name = "vreg_l7n";
+			regulator-min-microvolt = <3304000>;
+			regulator-max-microvolt = <3304000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
 };
 
 &gpu {
diff --git a/arch/arm64/boot/dts/qcom/pm8010-eliza.dtsi b/arch/arm64/boot/dts/qcom/pm8010-eliza.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..7fe414970b27c483706c86491c4db124bdeed43e
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/pm8010-eliza.dtsi
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/spmi/spmi.h>
+
+/ {
+	thermal-zones {
+		pm8010-m-thermal {
+			polling-delay-passive = <100>;
+
+			thermal-sensors = <&pm8010_m_temp_alarm>;
+
+			trips {
+				trip0 {
+					temperature = <95000>;
+					hysteresis = <0>;
+					type = "passive";
+				};
+
+				trip1 {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "hot";
+				};
+			};
+		};
+
+		pm8010-n-thermal {
+			polling-delay-passive = <100>;
+
+			thermal-sensors = <&pm8010_n_temp_alarm>;
+
+			trips {
+				trip0 {
+					temperature = <95000>;
+					hysteresis = <0>;
+					type = "passive";
+				};
+
+				trip1 {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "hot";
+				};
+			};
+		};
+	};
+};
+
+&spmi_bus0 {
+	pm8010_m: pmic@c {
+		compatible = "qcom,pm8010", "qcom,spmi-pmic";
+		reg = <0xc SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pm8010_m_temp_alarm: temp-alarm@2400 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0x2400>;
+			interrupts = <0xc 0x24 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+	};
+
+	pm8010_n: pmic@d {
+		compatible = "qcom,pm8010", "qcom,spmi-pmic";
+		reg = <0xd SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pm8010_n_temp_alarm: temp-alarm@2400 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0x2400>;
+			interrupts = <0xd 0x24 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+	};
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
