Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE848E75448
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 10:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/AbokHEsAAkPxx3W36/77Ak+/eLliyKdHDPVFezPnic=; b=onPaB7+gtSDqmv
	ucBsErVHaqwin2tsXF1WBaAUVjcYijBxfFY6fBoZYPyo+J/EHiIlkZ/uI7Z8pvR0FxusQtZE2B46X
	AYpU5VRkmPtXC3AWI13R8HxwcQNmC6fHwBHI6hKve1oJmLiS1OVjsCstkClLh7jwNaf4ei3W1EQhZ
	hK9IoSKAXIgUGh7tae7d8Zvjng5R1f/6HJ4bHRXhVXu3uKuB1xHbe/Z8X9X6Sobn7lqhHuPwDuZ+y
	ofzrFGo8Y2ZLdBtSoVkVDeqB93DeSrGc/4C1ITcmHYSkuLLmS/OSXNWx32y1UsPeFY5RTBhJIx2NY
	KcwD3TYGWcyUQn24z3Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMVC-0000000GiCt-0YOA;
	Wed, 24 Dec 2025 10:53:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMV8-0000000GiB0-0cpS
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 10:53:57 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO9rkGo559749
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:53:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nWatTeODsCj9eCOPh6s/ONx5sdA0VSf8P0xfOcNmuC8=; b=XdwDREM+2/o3Gg8k
	tTVMFQsmDRiKhkn6SKQUHPmxHw+ZpQoZrLFzilhKiHcIMbOQA938/kH4o4HHf3rq
	RyT03iQlxDOvXRJBvP9jg+Lj5zcdEwqGOAxMUuol4my4h00PitymU+5aPRWeZwCJ
	xvYCBI0WIJzx8tYiMQNi1h6TyP8d6PkrdkRo9cW8Z2tKI+w+zGvqM5b6bP+ooDvK
	Qm/nnOF/yQe/4qV8aSvhnQT72vduYDi7LMVyucV9EBZe6bakSjZCOOEEjyZF9BuD
	PPB+nAEN+oXvCCeQ+TzUwKA3OUbuIJdEddnOGXSp02ALCeCgWKTV8duiePfQrUP3
	4p4Wwg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7u9cuak3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:53:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee3dfe072dso152434001cf.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 02:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766573633; x=1767178433; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nWatTeODsCj9eCOPh6s/ONx5sdA0VSf8P0xfOcNmuC8=;
        b=W+Z3TyDrFuOEJM/ZdIyzqPfXK4bjx6IU+/NUSwJ5hzYVoRzMmAYsrRd05EVqFUdWP9
         DRohjffeG3V7FG71aHe+YFWL0B15U1Ccv+QZbFqP2GQqttiZUwJMCDVIVskPTicn6uTt
         YAqGXhU19WS46MUq8Y5yMobcGoJecGM7GEY5G4+zwyUYnL/xK54Tb3pacDpqebf24Clf
         3LnKwIr5eF0TSmqAGdxbPIm81EpFGHIFHyVpfokralmO037p4esN1uGtCo7r7o/kdxn6
         hyaFjQpVkiUiGvhdBWLziCbVveAruYv9drLD/vXAObH2mXViYDVQ3Mj8XP5hxS1eXr27
         AoFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766573633; x=1767178433;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nWatTeODsCj9eCOPh6s/ONx5sdA0VSf8P0xfOcNmuC8=;
        b=a+aiit+sCDnUdF0A+l9KmDfpc1MaHckualYhskBF9txJIUSX1I7VCcGr8ggTCc4Iyd
         LnAEYXWDRZLqkE1e/2yqlu/fLzLSSSg3tCyrZTzLPLaLX5im+y232GeRYTCsPdhemkSO
         C6Nb3n6xEM80WKcZAK8tPsrXKjYg0vYSeu3pHbLM2cXBHsCk+Rx2Ah0YsROB8cq/bOOE
         6gMBng5QkG1zlhatXs7Wi9hY+NR7S5ERoDF0pTenO9kIiQnQqJhMp3F9YSUrlgC2t+e7
         SSgZlgRxCnzVS6vPi/HZTDJP/0p99N6Jfu+V31jZy6stdVcGCQO9EQDHfFm1eV0ht27P
         vKlw==
X-Forwarded-Encrypted: i=1; AJvYcCWlfZxkxexHcVdgBM1nFxrFKzGzz0BkMNNybMwQwDaielSbUXo8fuR+EitOEkfUbWyO6qXp9IMJveI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHzMOr9r0Gsq4RegSxXLVkhjQOxIf4JOq0VjguX6zwfCEwtnBs
	iDiZgtKeaNwsY8x+Aj9CyLZLFqxZ7qJC74u/u/quCREoZJPpBapZKpO18lsCGVD1gxQsY0TXTIB
	ka3v0SRyhGLICYpZ+RgZ/Ye/GckjeHBWYrVuW/QS+qKLES8LKd3KYlzN7rTLetNhMKsSB
X-Gm-Gg: AY/fxX4AitWqpGOi4ltuzDR3kcg1ojqTXCw1XNNoAj1phXpPqgu0AAJf+gnRVvzOhmh
	yrQjqwYceMc3IZYNAm2LiWkRmdyIUSrdjpMmIO0sWVGMYhpqw7jLXvd6W2qigZ6ru7OLMFV2DlR
	oXywya+Ot5GWnDx0tO4kcpu9TjAGa3avg8wqkRdH7krfLT2yKB96wvY/J0128AiwOFq1i+LPxmD
	yzuvKQtq4nFBoLxrSgMbYtPpqPyVExF+4VKBHfI9i2zUi5UHc+JUhA/s3hkrD0nao4YyvJjr4Iz
	J9uL3ySAkP+7/oQaaVJhOAAu644pLMc7i+biAt6SMWJnClQGacfIE8E1XUzp7boNLL9Fyde5RZd
	EBaHkvc+KThN9C50=
X-Received: by 2002:a05:622a:5912:b0:4f1:c6b9:b1ec with SMTP id d75a77b69052e-4f4abcf4bc6mr238685161cf.28.1766573632436;
        Wed, 24 Dec 2025 02:53:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHeAVgBMuu8KrPTONUD5DkcqKJ9tIQm6gGeqTc0K514xaUnwQGYKjP7mhCnGalBfQmljdi2Nw==
X-Received: by 2002:a05:622a:5912:b0:4f1:c6b9:b1ec with SMTP id d75a77b69052e-4f4abcf4bc6mr238684801cf.28.1766573631897;
        Wed, 24 Dec 2025 02:53:51 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab86cesm1737562566b.19.2025.12.24.02.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:53:51 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 12:53:29 +0200
Subject: [PATCH RESEND v5 3/3] arm64: dts: qcom: x1e80100: Add missing TCSR
 ref clock to the DP PHYs
MIME-Version: 1.0
Message-Id: <20251224-phy-qcom-edp-add-missing-refclk-v5-3-3f45d349b5ac@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        stable@vger.kernel.org
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1831;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=5Xibk6A4j1wuysj5ojbntlDFb4byMzXKcnUoNHObZjw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8Y3/Vr6IAzv66eye1vfvavk7UaaAxU715ACh
 aUi2iBnE5yJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvGNwAKCRAbX0TJAJUV
 VhfnD/48ar5bzCyWjZ1O4avupmAUt4y+SBAWSMARAYBwa/0snPNJOaRs1Jhpe7JRDUUs75YwrBZ
 a5qA4nueyUSSvkvKbrZWuDAqexs/fp13+SuXiMdvTdT+KWxq9el2tXlxm8eso35sLTmYUitMtvt
 WFaGCvpSMfY7cb5qohomBJsdkuXozZ8tH2bCmEOpazZfLZVVnhuj9fRJyXSihKI6NG28UekUy1D
 H5G0dEaJfE2JKKBvZbebvOF8wbUJBVYg8QX1udtWN7g5Xau/H2scolUMj4yV/P46uUIiFEKOoh9
 ou0gvy4Melg9qcMaKj9gLbBQNvqRMFKhiHpjO1X1y9xMvF8iYbVJFiKSzS+opX19E1ieUip7Sai
 FOyLUL6O4ba++eWEDYYhQozltPmJXynFVKXMb6EA3+KbygzLDV10JJe8IlBXuyDD4EkpZ5Z6Ltf
 B6g63aPt7WUbBstP4b/4L8WhIagfH7qjSYrswK19qDrmVZaVOpJmHGFSJT/bpNKalT/jyu0oMWt
 IIyEaHkSwm/qZVFjBgUl3BbBxpYvHa4UbRHRwSPgd0RS/k+1AJIdE1smJeFfvsyAzZZYN/b1eaw
 vqWbrbgiSXXIQTUb0bwbgh2ieL3GB1//+9LhZ+3XUhpY32NvQQ9Na7jtLSPcOgjvTPMigBbZ3RS
 4RLICiLwUSzGpng==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: 01Nv5Mhh29iGvcxv0SuV5z2QKCA6dYNA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NCBTYWx0ZWRfX0KPnHSZoRm/A
 z+odVozcKLysmDbFE8VoDiam38waSgCh7fXVvAP8/BU5933tpZemQDMuHzPeZ0643VxzO/+/e0G
 BvpqSfxqTYfLTjSAriP882qmrdTMAhRiZYhmf3+1w/R9Uw2ytWDvlxxvF2beIJ7dcNqlW5xCzu/
 Ys5xgBRLZOW+dO5BK+ROSPuTSknoBj25ahAJly81pG5DRL/KN3qEnY0hJR9VPg0D2mTHSEdudMv
 mdnF6JDpxyvlSeBCnYFrxKsWmm8eO3oQPxNxbcoFVrkLH9qIMlRKGB4GPfBh6YrSI2J6RE8I3RU
 v4+eOOzpPvriifKM8VpAzz40MHdhuuCsnMAoItlwmyAaHhm2lPtEH22kAKdW/xgxdehwBcdTNl3
 KUZO9T2OTDhySAafNFTDaNUGrPCTPUi5nSRKdc98vuAIsSStMsIKcwP7/YslNc5oUfngOsrkUSN
 PIwbjc+SxnLs/RkeTLw==
X-Authority-Analysis: v=2.4 cv=HsN72kTS c=1 sm=1 tr=0 ts=694bc641 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=7z7RlTHwfbxsG2Z0DJwA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 01Nv5Mhh29iGvcxv0SuV5z2QKCA6dYNA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_025356_617611_E4C7E4BC 
X-CRM114-Status: GOOD (  13.58  )
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

From: Abel Vesa <abel.vesa@linaro.org>

The DP PHYs on X1E80100 need the ref clock which is provided by the
TCSR CC.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So lets attach it to each of the DP PHYs in order to do that.

Cc: stable@vger.kernel.org # v6.9
Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a17900eacb20..59603616a3c2 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -5896,9 +5896,11 @@ mdss_dp2_phy: phy@aec2a00 {
 			      <0 0x0aec2000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 
@@ -5916,9 +5918,11 @@ mdss_dp3_phy: phy@aec5a00 {
 			      <0 0x0aec5000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
