Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50955CA600B
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 07:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6Q8auISekRNGFInew/QEzQA+3WK8qf8kHIKA8Bfbbo=; b=geyFuXLvkVD9F1
	o2PKgkLNBljjVVbg2SCYHkd2gg0kDiq33oPf9ZYyv9Sjn23m6Z2LNU1JNM1k2XfViTqkmXpyYXYXq
	iSauLAzzeoyL3/IIimfdix3fIzX4DFeSxkKZxpNjLVcUajolVSQpeik+FqIrYkOXQmybJXdu7JYsf
	u2267QMW1kA7SrqejMOIFP7yA5Jcph0fbeHye5W0PL7qREdkK5YO+XTAjd8v/hL7kmsloGOQxFbrb
	fdbHMuKmk+izvWbCFQS4kkpxYLw9M/JL+ZWc7JtIP+MI3ugKSxwHZ+Eq9TVgBZv/UEtGtQAZUnnVd
	AxZN+UsGLbqrAX8YT3mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiL7-00000003iR1-49h3;
	Thu, 08 Oct 2026 07:14:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiL4-00000003iMl-21eT
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 07:14:51 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6984BtQd1776297
	for <linux-phy@lists.infradead.org>; Thu, 8 Oct 2026 07:14:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xRzWZ+suvLOKoJLeUzsdWe8l/S9zZeiASA+hJsV1sCU=; b=mKgVb1j1CL4rFTei
	mMNzYGecjT1e/nyiibpqd9UNF+gFzMFUc0rhqN3JUWtu/6yWi6BRcATT9rbJyxTR
	H5IqKUXLRyeJFJrKAe0N2Ug+NzcDioENUbhwxzfQJ84jwEPP4rERPpnv5Z0YS1tx
	TeHIvSBzqcobmvBBo6UaSKkOvNHbreG88l3SLHjsMoHxqM3PWQZ/a03d9s8B5g6Q
	oV3d+Lp5BPUoLKumzd5BV0WY4QgTFSFcPG/BsUk862638rNgdB1w0mnuP5jqvV57
	3bPALnL+z1CoNs7Z4GzsyAZdaS5W9OKbuGzuTc0y8C35RPix4gGRBUN36tRxWOsc
	93UunQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5xe39m05-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 07:14:50 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-34ef0362d95so9487626eec.1
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 00:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791443689; x=1792048489; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xRzWZ+suvLOKoJLeUzsdWe8l/S9zZeiASA+hJsV1sCU=;
        b=PuhNFKH1mLm0KR5/xd0eHdQdgiMK2QzCzUNFG6Jgtw3vPMTpcVJBC34IRfm9JGSDe1
         Iask3uPGu/3d/519z1/mcTcq24HpRpAeflpqPjTL9dcTUGxRXEwjxWzazV+ric6HWhW/
         tqdcyFm3Jagr68D2FqG9TD403cPbLzrk4lRtNu8Ajwl+b8fNyzn0mXtN/+p6FjDxP8GK
         aG6K2yjYnMxJ3dQD0BftCHigG6cWU2RnYNVP7xEkqBh72CDs/SX+mRDK7k9gTUnbWx3o
         Ge9GHHOz8NJn47kP9ZGeZsWsS0hPviLhGgPxVjJNZIBfIGzH2GsU2uHJtW3r/u7S11YB
         SVqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791443689; x=1792048489;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xRzWZ+suvLOKoJLeUzsdWe8l/S9zZeiASA+hJsV1sCU=;
        b=wcdC4UATBYKfX9ayYNOFDNJn33AA7/3ih5FAgAQTIhj59jNMW6gWuQ3SYLfFKvUzY8
         xnjbV5YRKKm50eipsKxK/7+lfRKELOZFm3Kc6M9nZOjWNsuX45RwZ+zBSq/lP6zJJKLj
         6lCsSoqrypOYkVQOPhH3jEbY+VfuX2hLYj/m6WmRJfAWA7wyPBQ+zmOYIIa6iSozDlzF
         htz130aFVsrtQl4dmk2D03BsQGJNRu/P0P+ksG50Mjwk0NfUwQwkLeDN3tDa8TmsgFNq
         71iffnVA/ta/nbWKtvz1457+5WPc/I06suOXDiDKI71h9RCtFq/lGL8LDddWisQQka0A
         D0Hg==
X-Gm-Message-State: AFuF++l2fSuz1z3AJzqx6sVwSWheRxUz8LQEZECNx3jopLy1eUO3QIoU
	+T7IqntecFtIw0pEiuNmG4EYCMBoJu1rRHcedMmK5g7CaZUPFecvXS/4TFeXp9ahvoKF3gcbLPa
	fL93qVFFR/xjHa5s2OQIYIhfve3tfRJ+Oy8DRO9ZpO+WMCG9har8dtO0xBYLN0me2TSNd
X-Gm-Gg: AYBFou2ll5oqE5cetEKiV8xt5COzTlF6rKpxSKTLVEQeXB5d6xM2H6fat/Nwyuw3kqw
	e4pwniPtwaq9iG21Y9ZJelIKTUT6xKENYg+M2SeRcxNy0k3qB8X7E1Ax2+0nq8lOAx3QjrnvgJy
	IZkwFE9r8a61jNk7rAlepizdpV7hKJ0khxWrvP7hfq0waZ/hHuwm1y9DlvbEpFD5EEpBOr3j9mc
	rZCnyAGlel2/raSL1vCe17pw5HlxOUvNdQC9B5hAw88cZRNZtXhXWiPXtnD87jcBXTL3xJBH45a
	h62uUUX6ohoQaRHDNVrwgM4c4YNV4LlupYgHMM+0SJBtxoqm1jThU5qsg7pjMCCXYIot5vmeDOr
	K7gIK4LKWFLQW29Tp/ePMCIHfY9c+uMc/YL99dHYqhf4VJcS1uIqliWeRkrczfO00766fNu0WZB
	/U8AJTxBUPdA==
X-Received: by 2002:a05:7300:c38a:b0:351:591b:7684 with SMTP id 5a478bee46e88-3515de2e017mr5605193eec.33.1791443689230;
        Thu, 08 Oct 2026 00:14:49 -0700 (PDT)
X-Received: by 2002:a05:7300:c38a:b0:351:591b:7684 with SMTP id 5a478bee46e88-3515de2e017mr5605117eec.33.1791443687782;
        Thu, 08 Oct 2026 00:14:47 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3515af155b5sm12251625eec.12.2026.10.08.00.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 00:14:47 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 00:14:42 -0700
Subject: [PATCH v19 12/12] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
MIME-Version: 1.0
Message-Id: <20261008-kaanapali-camss-v19-12-b2c583ef50e0@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
In-Reply-To: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=J4s/fwnS c=1 sm=1 tr=0 ts=6ac742ea cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=4Dwyees-64n8yO_2jeYA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfX5fFLCbXJ/dWM
 xTLeUz9QvRMEyrtvXNqMSHbWvNsgq6ugVVsdIj/yHsYiQxBgnxZe8WkLx0eIESz4RaHxv2+aJQq
 IK0VOu/aLliJObMRz4NJEYX4OeeBO7Q=
X-Proofpoint-GUID: 3ypkeaEhgQR3J286VSF5kfqDCsuZm3Vc
X-Proofpoint-ORIG-GUID: 3ypkeaEhgQR3J286VSF5kfqDCsuZm3Vc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfX9TBxPlqBULJ6
 mIdqNG65B1ZIvL58fPNahMIiTBBNIjSLcOZUNCUJYjcZlf9mcNEuEW2yA9vPYE7GN4Nt7cjpjZG
 bFR+WdIvOCjMIGN1WbWbS/8NozytwTAc3HNjsjFG4M07Ik6gowBaJCCRepG8BT1mdpsVIQgEmOQ
 RXYPXm9SN/yvsvYhdek6yQaQd4RKoNveixUE+BDnEx44Vz3MuisuJiRg3VBRVm9TnfomV46pCZ2
 ZAboZDIoNPot1zPas+cGFfKBpEyHCrMr2dS/b61fNr7oxsvYgh855bPkYTEKtPLqY9cQgk4OeHP
 z7i3nn33K4ynzNk+wrgQsCz2EfnbS6m7AWRkx3xCj8qQT89zwKe+RXRw3v3sJiLVAzVmQnESu9U
 OkWGbCnoHlPqleB10zsWUdotjqOnp+qVJ0rgliYQNzHFZMD9g1ArFxcDX+5abpSsNWDqkMr8wCQ
 LMLEw6UR+DWjk9o5CpQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-08_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610080028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_001450_592086_E3A52A6E 
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
