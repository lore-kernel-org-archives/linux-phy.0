Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A97A6C55196
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCIKLC4Gpj09EA2aSMma/ShhvcuOMnEzdzurwaBII3U=; b=NbVDMvH0w9Erv8
	b57EgCf1Z8VFBb5muNYEeHiZkfOhqlA8TuWyDDUweYCE17ODPYptIT+6s2m0yRz8BMN4qA0mCBBUh
	aMY5YU5VO0RgpnZV7q79haaSE+bUQRam+V4GB7r39QzDrWVGMSPpDRWsBsa2w1mULnY9EB4OSb3hG
	yWjqtfO19FGL8FttDdHKN0PfMMab+k3SPUtw+9uw+uttAWwIpzrXPPUmTnTWX7KwaWo2o8jqLK0+y
	xQ+IQd4I81p2LDPszz+vcVDtVehiXVl/+M2KqzijPmibsZMIMSciuqv1LvZMEUgpbOdjULVut/oCA
	pV7bUgglHgzQVEWdmTfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyLP-00000000RHq-1cYh;
	Mon, 03 Aug 2026 19:29:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyLN-00000000RHV-1gL7
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:29:02 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 673H6iZG1376776
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 19:29:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BVntk5RjiFkpJwCbB7NEt9eqle6RMXf6vY2O6thyA4s=; b=hwFyo+zB1FarSUVz
	dDM49IK/eFbGCn6REkqRUB7L0KwEEMnGnPRjWMRJsuL8rnB9WGzfqSByplPIgL1S
	qFHZTDRPYGXHda7jnrOybrdTtg1qrOzPkXEzmy90WufB27HvFMs3cNjAo9r4dEJg
	QqYcNjE2K4d2ULFcxcH6QSwPHgyLbRPmL9EtN62/a+MVyl+sI2RNbtZnNB9vNjmp
	4Jy4uVbNJPwxjLa0f5uJ3HwUdhndOfFdAN+fxczl8YIdygc64RZGMW6IZxU+gwLx
	c4KABauu03pPy4AwbgVk1raziiQYSgiDIZX00gMOt30IlPSqOHT6LuJBN3PSs07T
	d4Emjg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fty3r0mjj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 19:29:00 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2cd01a14e81so47539925ad.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 12:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785785340; x=1786390140; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BVntk5RjiFkpJwCbB7NEt9eqle6RMXf6vY2O6thyA4s=;
        b=H0krYBsYeo1Kc1a1A+FcGgLBZqgLcZ3ufsa4SSrn732PSIBaL/JC0L2b5wPO8kIVZ0
         JpqIEE1iwIYWNXmlho22XxhJwd+ZyRfFg+esCEk6a7WNVPYQ9OVHoJopBqUePqhrc2F5
         x6qBy7swV7m5mX3q1ZcUvErgaeuFRAy9fGMK0kJ2gWZ91y6LzQ/2v24pkpXYKsowaDks
         1zCYG4tNq1op7eB2UlF8q9V/matI38OWDDW4jT9yC8xsFsBINZKVTuSgKWWzBluEYEaP
         5qTOgFpVPscUKDcLFRaiyS0T8YHw4OpwzGef8BA7/AQy3HsaDHTtgje1+BIj5vCYO72s
         PfBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785785340; x=1786390140;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BVntk5RjiFkpJwCbB7NEt9eqle6RMXf6vY2O6thyA4s=;
        b=Qi5wg1uGacKOvfB8bX1gRrgNP5B6EFG7vQ72Tzfa12sT3nuQ0wPKu/hg4LTyepcBxq
         M9lHqpgHngxpHuRGdaZ6sptbfszuR7DSqSqz0y6fd0f1MeNCGJ9X7wqI81KIOlIzv09V
         wMhbsmEf1JaM/9QVkfvpLlQ3UoIPsTCrPMPadw4KJqEJxbJM5N+70UkLEi+xP4bODqRG
         PncrQWPbfbYRpxaWKtFtPJE9PvXNtLqYYSLMQN3B9AkF0MfZkDRNvdeLl1Ix4Dee43df
         hvqf6zC6Tv/bud6SeiAmRdlJ1wlIy9N7Baej4JVGOwCrWAyspiW/4dRIGmoQUdrpETX9
         GJHQ==
X-Forwarded-Encrypted: i=1; AHgh+RrFGd22WOc9eRP9uCbz2oefLWxyeoTa7M4y+S00NBzTKW34Fw4oyCGeBYQvBhqHcd721kCVm7oFT34=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXO0xMwFiGMkBphG44mzoxnGQRgmjkIixMafXXpMYebm23wbxu
	1N/44PQHDCu98tvPXqc/WgT/NypSo8ZvReuUJcClIE/Ffp7Sa1zQCyNyy2ra5egkopBBHHLtjrg
	5UqRPBH/2ZraLEPkjhyi4koJkHh4XbqHW7PZmr4mCxhrmaBTncnRN94J50x0onoTwsNs6
X-Gm-Gg: AR+sD11JkF9CSu/3odcXIEmQzOOHJTtBu+eympEfLwMYSpa7Y4XDz+V1Fi+KwyZCPOI
	o35NA1kRD5GJnasCOlnSCRDQ5uuka1WLhxgN0BQucugztpsChqjGHRzx2MQa7QCrs/aR1hyAh06
	mRQstki9oOUM2gHsSBLmnslu+swDy2HJON/VlGl03m6l8cn2VWVyiSc2JBRvmkiyJVC5h7xvYco
	uy5XbDT+F9qYLKfqDkN1+pt9QmKt6sDn9f3hRBJfRqe4BlYk5J8KDDd1PbYHqejOq16oAhNQ05T
	nkK0eWzcCx3EAGA+AwspWskSg0QoiwoJ6qQChc7Vn2bKPp+dS1XPrmvujd4KsYV0xo8IGymh2rX
	tItBBV2Rm1J60K1sFHK8xsib7knAtYA==
X-Received: by 2002:a17:903:22c3:b0:2c0:a555:80d6 with SMTP id d9443c01a7336-2d0521bcb54mr105343005ad.2.1785785340206;
        Mon, 03 Aug 2026 12:29:00 -0700 (PDT)
X-Received: by 2002:a17:903:22c3:b0:2c0:a555:80d6 with SMTP id d9443c01a7336-2d0521bcb54mr105342855ad.2.1785785339788;
        Mon, 03 Aug 2026 12:28:59 -0700 (PDT)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153dd4e5b0sm38622738eec.1.2026.08.03.12.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 12:28:59 -0700 (PDT)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Tue, 04 Aug 2026 00:58:02 +0530
Subject: [PATCH v2 6/6] arm64: dts: qcom: qcs8300-ride: fix SerDes PHY
 regulator supplies
MIME-Version: 1.0
Message-Id: <20260804-b4-sgmiieth_serdes_regulator-v2-6-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785785297; l=1012;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=izZAAQiMKpd846XRQoInaW0CONJQZ+YANSqul+Shiak=;
 b=VCkjc2WPARIqmhG/jr9G7FTASS5HS6MDritc3MjarDa/wUU5RqFTIfpyfMlxgGHF9oaXnmsNB
 Yx5FbgUTEXQArj/I08GWToQ7v52Tdnr1b+fB4tXftgiiTk/d6Er/aGC
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Authority-Analysis: v=2.4 cv=caPiaHDM c=1 sm=1 tr=0 ts=6a70ebfc cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=n698lQYe1Xln1FfB2wUA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX7qAcO6ZRv/PO
 yUCqmfuqCr4qG9fqOmupbtAP7U45edkBEgZ5LZlLOeJ2443S81wQ9j2NFHRWfnZtrwiJ7fN9w1I
 6cohUy0K/c633LlYBDr2SiiFWMuG9PM=
X-Proofpoint-GUID: vR1Mkq8vFDfpGC9ECNHB9vjEvSgEYSqk
X-Proofpoint-ORIG-GUID: vR1Mkq8vFDfpGC9ECNHB9vjEvSgEYSqk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX8wn5qhCoVYg7
 Iaba2KQvXwQSBTfRRGRKdJahBBPK2qMz5OirvzKzfdomQUUGlxum05Z0XYqUzfMqNH/TXVk/mKH
 wqh3Ag+MAQhsaGpofzmMNelgHJvdGgkUUCmGhJlUnDdaMJ3DU62l8yyqymtj5iq9eJtHVatqNJs
 lymEWpufn/ckUQEX9Q/KnARz0/Y2Cdbx4DGAF41Z3Ob2lrsA4P3Jh0PF14gBpsVPiNbdJCsZYeR
 JrDQF7mjI0z9lavlVkrS75UQQvNsvlPIwH2PNbKXYLq4/muC9aCyJATK5E2zyXHSf5VxJ0rNC8L
 CUQETzI8+NprPRhhhIA9SXicD30JjeNHqC+v0gGyUqEP2pCKXiPQilV5vqQHicaov5mdcPGaIwG
 lz+g8Ngk+Egw2i4Mt8JwPOSWrlg83bn9R2T951VIvXl/hW05fAjwmTdV/MtMOiKxCjS5N19WLQW
 iQAIfJ1RrUHtludww0A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-03_04,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 phishscore=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_122901_453061_3D988EA9 
X-CRM114-Status: GOOD (  12.61  )
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

The SerDes PHY node was configured with 'phy-supply = <&vreg_l5a>',
which only covered the 1.2V rail. The 0.9V rail (vreg_l4a) was missing
entirely.

Replace phy-supply with the two named properties vdda-0p9-supply
(vreg_l4a) and vdda-1p2-supply (vreg_l5a).

Fixes: 787cb3b4c434 ("arm64: dts: qcom: qcs8300-ride: enable ethernet0")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 1ff39530ea3deebe454416d70a289e44c2d89e3f..76c34215dbdf07e520fe96d350f52da8c4485c97 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -702,7 +702,9 @@ &remoteproc_gpdsp {
 };
 
 &serdes0 {
-	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+	vdda-1p2-supply = <&vreg_l5a>;
+
 	status = "okay";
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
