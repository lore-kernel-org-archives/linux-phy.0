Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C544ECA5FE6
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6Q8auISekRNGFInew/QEzQA+3WK8qf8kHIKA8Bfbbo=; b=CTLx6g17SVgtQx
	rrzt2jzh7FK54lOGPCY7DleOpJ3At/nKQ3lfcj5n7yRXYYYziqy7TeMcnQR3g9G50pY3I1txZ0nWl
	GCYEZlf4rtGgUdaGoy+eY3r9kHxMOAqqaACtgxIxByMnrdud3yXAdpm4Qi966QMUWVUOy8eqOO2Hq
	kZ+gTigdr3hNLGmWb/PycpqoYxCcsLZaBTCLT8RpWRevsxxbDJ/j6nHAK1pFupy1npxF/FMLk6ZwX
	I4142EexrZOGB4uabuhYN/FE4nC7TVWLTE20fcyze1NNLtJECJi9wKnFpQohwgsG9EnlAaQd90dOe
	mp+b1cSCFh20l/X4RTVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvdm-0000000DENF-236E;
	Sat, 03 Oct 2026 09:02:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvdh-0000000DEK5-1FlH
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:02:44 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6933PlTC145642
	for <linux-phy@lists.infradead.org>; Sat, 3 Oct 2026 09:02:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xRzWZ+suvLOKoJLeUzsdWe8l/S9zZeiASA+hJsV1sCU=; b=kkIrtsyTy8msgfLn
	ZfARXnwuTpTvCn1IQ04aN7RgPmWb5N1zwX+R7cWZq7qYLZ+szj2+rqC6oumAdtsM
	r3EYTL5B7Q5ojKmLrXPo0Hqr+1wEVWjmrkEbfJNt6CtisxeZk7IFOQgdipOEka9W
	OuxH/oHclj8IlsQt+MloAGmvpe/3nEu8bPZA+iY568+DefU84yjn0CTFTEauvr4b
	vmcp8hRe1oDP5rKVhQEgzoHHr4OvLM/YPerk3gquFxHmMPGfqgw9Sz9jU5mPG0/D
	KQjGrXT/EZ4FFv7sdAFedVz2HJtjCXRkvRMWhggE0LoNYP6JgzmuRY1rysrbaEWt
	uVO1oA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2sssgg9y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 09:02:40 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30bcb065bfdso170199eec.0
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 02:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791018160; x=1791622960; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xRzWZ+suvLOKoJLeUzsdWe8l/S9zZeiASA+hJsV1sCU=;
        b=SdU1eecrcoaHBgXIrx+9SZKzKczmEGNGaOc0Noi/BWAw4iI7rjSTJrtKwnehk/0Bq7
         6UDaKneYuEGE3TYTSmInjUkDOKN6aShBe+h79MBjzDqR570/PXOxJXbNtrO41pM+HQNF
         mWOQ2uf18Eq3sgZ4R+gKJdxXK1U/G3cGVzqVxZFjUkAT2KxaQFau9rRWhEnw3P7LmJSa
         shVWDWZh+/zwFrg2X4K+gbDlD5QnqXxPyqy9mUeqkAcmo4vLOa7SRwDrEUk0AhlIaWOw
         QEQhtGB6CYrc61pRmdSjFWQ4iz3G8q+0rig3qmpa8Du0S8phmZ5CMQELjpX5a/mEL92q
         A59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791018160; x=1791622960;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xRzWZ+suvLOKoJLeUzsdWe8l/S9zZeiASA+hJsV1sCU=;
        b=Y4u2n3WuKX+SAL2aKua9fFjzbyA3sU110NKwrngy8f7SsmfSgMQMKshGGc2wMf+D5t
         7aJzLlkVkCNUWc31iCNnfc2OwSTDEIIj4ZcapJD83k4e4w7sIboaG6ponc9T6FIuz3Q9
         5xKdsUYtGLx2ODvgcUA9Jj2h1rBUuRL46kjVTgeb3hkO1CJGD2pZ3i01bqasGQAME9fa
         9q22iXZVmkXdG4WQ0q7WUQDbGKyHWVRB0AVCMAffSbNr5WiZwV4Xjk4SY8M5Ik6Wz2mx
         SUskwexdqikb7qldVItByfNEJDpVfjlXCd8KFFycTmeLIoEO+TxiLsdkCiuak5XLuq2n
         Wlpw==
X-Gm-Message-State: AFuF++l7Hg+vfzPj7s+zCiHQeFDrd/HknOxq40jsTkvVmjyNH0Itm6+I
	WBDINH6GO7MCuKvZLQO4NJ8Vt9ZlhEKiBlm4VglRTtv94OSAixVUNDTX0N1kdKrRR8lM+QZjc/l
	2dPnICvqk02MS3MLfHA2/1PMO9K2KCG+E3Tim4jXWYrYdYFabGyjZl7/g+tHZISGfQhy3
X-Gm-Gg: AYBFou3ICD6tQUxl+njh4h4EYMhsr702UV9a5RtPbl3Tk+/uNsA6gBSIXIuwnUvnLcp
	oA+jUivyDgjIacq8jkfS9YQc+PnrVWUL8mmNPhydlMzDwEbYcQ7b34LiOMXOVELNj1VY3lqasCZ
	5xMxp1imxgJWLf2uzFNogQ4v/MfrgQ4EHT8lk1mxr6q9L7whfKFZhUoM300+bc5staBwPzvzSL9
	3lQaJxcNbwI4dRP89Pg4yHKDeQqMFIIvMZLA55uiOb482BoeX9/zV91xD4qfLxOtUsOrftwEzRk
	W+4s7qJlzBrSi0NcVPJQIiz89FP1xAinuTK0THkL9lECfv4YsDMvG0naMCVCuEUT4NRGHSANtuN
	CKdP4LCS627FdsJlkr1A1hWsHj+/imXIjTYSWw4Q03pCkwKrYf8gTwt3rk//JW2mfzVXhX5ONpl
	AHRjtQYxOjJA==
X-Received: by 2002:a05:7301:4390:b0:351:1d87:c714 with SMTP id 5a478bee46e88-3511d87cecemr25815eec.23.1791018159823;
        Sat, 03 Oct 2026 02:02:39 -0700 (PDT)
X-Received: by 2002:a05:7301:4390:b0:351:1d87:c714 with SMTP id 5a478bee46e88-3511d87cecemr25772eec.23.1791018159296;
        Sat, 03 Oct 2026 02:02:39 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34f14f9f2afsm29278695eec.18.2026.10.03.02.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2026 02:02:39 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 03 Oct 2026 02:02:22 -0700
Subject: [PATCH v18 11/11] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
MIME-Version: 1.0
Message-Id: <20261003-kaanapali-camss-v18-11-87ba4ebe0db1@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
In-Reply-To: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
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
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX0qbTvvJs3GYS
 V4nu1gLIXMFuRrwhuKZ+s2YPOwoByJXCPZoqLsvXungf9I66J7bqZS9uzd/PtbdZTT3wFuMQ264
 PlOslI3wtAOJZK4Lj9sim2nI/EDpJlQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX2sbLgCY/Sb5f
 aDmVcmjKTc0wous9+qD1QWbLRe7AXUM06ZlnMUttdmTg/jlzBo5NyVANKDSNMvU8kpi1HcFGjq+
 U8v4aBvGH33hJvxxESdb4/X10dESx70yRLPgPwAqU+hnh3IiUOc1m+ElcQ81I2ZKBuqv3URq13C
 VrOLXuCpsYmIkNdLXdrLdwe1tncQ4h7GY37StkxwjOoH9nmr+TXyDqm43uabD8ZgbFhZMILeLJl
 Vc7aaVxDNwRUyk6/EoNCZenP9q2Sk27x6pusH2Z630Acx2fri1bEgaLqjnSlEpczzs7ZVEqZYkv
 qEqlltH6BG+IaCuyvURgWtSSwzjlt47+mjSm/gxQ/dRKlAiMEMMny2U+z5qV4/Fqo2dQ+5KPZZw
 Qs9+vgvxub6PdzFk6uERN73qChZ1KrHVjScqiCuomCOkSgilRw2SiWDoISGs5u7rScB+jgfWI78
 XRLaPrDXKugKZqIsAGQ==
X-Proofpoint-GUID: j1Aw6HjpQCRAbRsp9cFDILV3Dp9OOpgO
X-Authority-Analysis: v=2.4 cv=HqjjiETS c=1 sm=1 tr=0 ts=6ac0c4b0 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=4Dwyees-64n8yO_2jeYA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: j1Aw6HjpQCRAbRsp9cFDILV3Dp9OOpgO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-02_07,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0
 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610030035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_020242_195248_A28D239A 
X-CRM114-Status: GOOD (  10.40  )
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

Add TLMM pinctrl states for the camera master clock GPIOs on Kaanapali so
camera sensor nodes can select the proper MCLK pin functions when enabled.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 56 +++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 710af0597aaa..f915a3d1530a 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -4570,6 +4570,62 @@ tlmm: pinctrl@f100000 {
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
