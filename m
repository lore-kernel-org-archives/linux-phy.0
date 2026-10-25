Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D2560A2609
	for <linux-phy@archiver.kernel.org>; Sun, 25 Oct 2026 03:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ViEIKAY0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=QYyXW6bU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=A4j8mpkv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=o5+DtndCJuqijQ4nz+AKjwvwgi2c0wUMa3FAKcQTa2Y=; b=ViEIKAY0pDcJfTzEOc5nbZZEBb
	kp3ixusODaglUqjQvDrAkdnyFqUoJYRkLou7cenIHjz0l03IsLlv2BEHmt2pKmZEeNiOZ3jpDsLif
	xZAFanK9rWUXl8OprU3SmQmUY2mf/Fy6mhUSqMfet2cVAPjR2q1rWP3rtPCpNoED4FAHTfz7cxh5h
	as4W2sCH8MBLvgYCzFYE1bNYvsP6wfXoxGq6QbxtjR5uLYx2VAJyD1VEa1lrngDJ+unSiGQB4pbHi
	IG0WRZQeI3qA4jV3NCsu3FrqJHksin/jOLpz2LyNQGNVe2CdR+AeJK6qNL3qjI/jBiuyIezgErsuD
	XHnT0jXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojv-00000000gra-1Tdd;
	Sun, 25 Oct 2026 03:17:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojs-00000000gpK-1Eug
	for linux-phy@lists.infradead.org;
	Sun, 25 Oct 2026 03:17:41 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69P163AX2207219
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m/9ymwYLRuEiPenWIgoB1XidxNxPS22dZ2PmvmlaXa4=; b=QYyXW6bUTbcrcDDy
	7ohIzlCQ6Vsbe0dQN8fgBCEoiWRLCwoeNXH0awws9PjgHDTAO1kXxU1ThUeTiHur
	Kojc5pY2dxAtxrnu+yS1Z0t+G2YRgJFYKVWnTM7RmukUcmpG9y2Alnfsq2PKFImm
	LoSqFcG/+niGmH/BcStLHvKwaWwmfyVq6TpAOqwvr4d+9fFnWZhiFkXLaH9DpS6f
	7fbIDdF6+MzC5tyDjM7uHtacGohUCVg/x60aPhvzM1ijL63IJ9PStXV6Qnv76Jeq
	XpXepZ6s4hMWPBJ64+OIfDygBA5tY1Y1wTeT2uHG9HICZl1JEnRfk5LWoZ1mQy3I
	4QNrzg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hgny9t5gy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:39 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-35c5aef2a74so9408776eec.0
        for <linux-phy@lists.infradead.org>; Sat, 24 Oct 2026 20:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792898259; x=1793503059; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=m/9ymwYLRuEiPenWIgoB1XidxNxPS22dZ2PmvmlaXa4=;
        b=A4j8mpkvRIlgtzClhc0tRke1tCvPgb+qfCuL2UxMGaoS7dnIQ1ZpsU7Jok5c3yq0WF
         WK3LhPV0Dq2EItw28AXb+k1e+DDah2JZs7nVyMtJiqiZvInVYU3tq/thFCf2elKDME9V
         PCI5BpLWPn3HqGF0fXhG8sqUD7V5E6Tx6Bd+J7T20AGbc0j46reFfjt99aLOwAWEfUxj
         TILVKjy1h1jDsaOZ9JrViI4XtPkc2dG7y0GutvvAyvcwPrnvtazReCSu4pwNXcJ7NtxX
         TZViMhIBGzv+Suj6vzzCnCTWGnHkOJmAz4AikoRcbZPgWKsuk7Pkj2w/OyfkoHjpPg7W
         ZUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792898259; x=1793503059;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=m/9ymwYLRuEiPenWIgoB1XidxNxPS22dZ2PmvmlaXa4=;
        b=gN7xnP4agx/p8AwJqx+pqWGSMNGs8K1ab9f8t00omDBYQ4fe0CoRWTX9jiuAG/dK8q
         5Q4FjMd0OC4GuO9A8RsAvZ7QcxKLXDoiWoYLuN6lqyOiYDfw7DLhTfAyhy59KeLsh4nm
         Z9wf8LGQi1GZ/XX9Cwv4xL4qRC0hlttRTo/Mu1C7iTeieSRGBtHS2yBYVovdOkOIS6Jq
         xtAfpdygdgykkrQUg2ONNs89fEIlV10py6MDldf5R49dus98aO8w7pDGszwGcIotqs+i
         Caw3+xi+2XVCpKRwY3BGi42syK3UOwJUV0vcGz8mvq7IXG2E2JVodhjbYwjizZdPA1NH
         RGYg==
X-Gm-Message-State: AFq9FYICZaXVO0w9o/U/XlCNjOghaUqHePJXsna2Xq1PZusEuRZwHcSn
	CQ1jnJfqU59mO07XaYbEM5boXTlA1zRsKKzzratwPjmpSvi6goxi6ljWwb32JFAqFil1O4Jd/LU
	GFsoiaf6cXVIpGFndebUbKVNOI0AdeJ2DbqZ3X7dPm50z5hAGMaVWokQ6hBdUGU364Wz2
X-Gm-Gg: AYBFou25G3tj6QGIZuiWPLzkfnYHt+VKhOg9QHuMnTKT5rwSWeBlW42eRB5vVaHe3P0
	6ReT0p586wHRhlDwolVv1tP6a5tI/bpGE2Z9thk5J1jgpPgaS9/PcA9Nvcd+8qWfvL5xTO6hmkO
	kg31XE9qy1Agt32ozBOHkkgnIg3ZGd3hE9376nfwKaOw1k2XfUB5m/pQJr6EyA79hDFJP9csbia
	RHS4rxS6xrVVSdRevmZPFCxEj4fI0MEcRCmVudEcIaLb6IJ3iu7y7Xg4tfKtKsUDBy0/P6iHcrY
	2xYueecckrHp3dEG7K6VA6N05ZgHY68+2C4YZoRhTtl/SUeWB6vBfmyQHIQgCPJ48l9tWmKrqY8
	mAchFgQ6Dqyx38XEKGgbqtg6vQoKSiGNiPSzUNafBaxdPw/POxijfQMsG7Gc5TiEQtKWZD6Ip9M
	T5VFBcPpqa+g==
X-Received: by 2002:a05:7301:2b06:b0:360:db68:3264 with SMTP id 5a478bee46e88-369e848b8a6mr7537492eec.6.1792898258916;
        Sat, 24 Oct 2026 20:17:38 -0700 (PDT)
X-Received: by 2002:a05:7301:2b06:b0:360:db68:3264 with SMTP id 5a478bee46e88-369e848b8a6mr7537473eec.6.1792898258482;
        Sat, 24 Oct 2026 20:17:38 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8ec50bcsm24133054eec.23.2026.10.24.20.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2026 20:17:38 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 24 Oct 2026 20:17:32 -0700
Subject: [PATCH v22 13/14] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261024-kaanapali-camss-v22-13-7da3ea49c8a1@oss.qualcomm.com>
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
In-Reply-To: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-GUID: MPc-0xUipqIYCMmnUT9Y54jMq4YIazWE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfXwpYrhpVnKllj
 0dVnl08vAhIO97oAFqDFdg9mzyPn1sy+paLQfQSwcp5lGOyeNEeAZrIy+kfAzd+lR0aEW3XO/PQ
 zJlGc0CwjFJi1EgHQ+IRk6Aywn8mJIsMFHeX05MAoAP/qJl+ZYbJnLP1U948OXYvpUpcVYTIKed
 aZrUoxaKPn3t/YrVzBy5rktUavomBvxXAgzE0nQga683f7P2/zn6+u2Bb0PED7K99lLJNDwUTtA
 5Ul+dd0bWBU01ShRmTBKWt1TGmHh4LqMc4K3SrkAr/C9b0K6GK7A1KrhHQOn47nOnb6SHYwtdTv
 ACfyFa5GpPVz6djPTtkl+hStnRMQUWTijRC4tbiaIQis6n4YFjgA8lHrNNvFQrcBe6ea5aymryU
 CM2cMFNU7sxJyIaBiz9Qibt6QMgozHsonRp01zGX74mok7WeLpwFQj2ikC0YwAFyHlNyNS2C8nV
 4HoEkKBK1xQKMTQ8UkA==
X-Authority-Analysis: v=2.4 cv=PqcG/AM3 c=1 sm=1 tr=0 ts=6add74d3 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=4Dwyees-64n8yO_2jeYA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: MPc-0xUipqIYCMmnUT9Y54jMq4YIazWE
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX+c7oqQDXegQK
 9YU79PEE19/EkbIoYO5FB6oZ1pGHOeGJfTem5btfuExRO9rDqmf0XAIyfjWpIqoU4r6+DCLxvs9
 OFxteteEt+e5s6ZRamC43lMgSPPyWqw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-25_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 phishscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610250012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_201740_346190_E7061194 
X-CRM114-Status: GOOD (  10.22  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add TLMM pinctrl states for the camera master clock GPIOs on Kaanapali so
camera sensor nodes can select the proper MCLK pin functions when enabled.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 56 +++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 86dc1400a25e..e94fa2ba3dad 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -4645,6 +4645,62 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cam_mclk0_default: cam-mclk0-default-state {
+				pins = "gpio89";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk1_default: cam-mclk1-default-state {
+				pins = "gpio90";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk2_default: cam-mclk2-default-state {
+				pins = "gpio91";
+				function = "cam_asc_mclk2";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk3_default: cam-mclk3-default-state {
+				pins = "gpio92";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk4_default: cam-mclk4-default-state {
+				pins = "gpio93";
+				function = "cam_asc_mclk4";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk5_default: cam-mclk5-default-state {
+				pins = "gpio94";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk6_default: cam-mclk6-default-state {
+				pins = "gpio95";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk7_default: cam-mclk7-default-state {
+				pins = "gpio96";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci0_i2c0_default: cci0-i2c0-default-state {
 				scl-pins {
 					pins = "gpio110";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
