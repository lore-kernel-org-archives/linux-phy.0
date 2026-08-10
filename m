Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC67BC5AE5D
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zMRJB9Dz7u0EmK1zr2uSJ2PrbRWIY6affH9chB2xVo=; b=Y4jIHzpUWxmgj+
	RIOGyiKrnr9vqbC/82wTKo/xJ8stxV1xO/hIBt0LJOpuPZF8ILcD9z82Qz7aPQy0pphLc6N2nzTzc
	OTITC+Wcxs1wZC7OfDoq2uDcx2Nwgn9UexIQOMaT9NPcMVOCy0KfNtdU9kP/566teIZ0scEPdxEYZ
	r1hftfv0f7Wi0sZkejqAsIwMmQuXF0Y4+8ARseYSnfgC2Avy42l7/NhepRK1I5IoRBqtW9naukffa
	EkzE1pMcRvHiBcuzQZMdNQTiXBKlTCGcL4791Aha22HZ+TSBoiiN+ewisZgxlzff6QHYs2EpQnMpF
	mdiJ9DiQPeyhy95OaYpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOP3-0000000BeQi-20kn;
	Mon, 10 Aug 2026 11:42:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOP1-0000000BeON-0WDj
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:42:48 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9S8Ba1189651
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pcf8bo9ey21Nzk57L59x1vStqmDp0oasziFMD2pL3G4=; b=Oxxv2snjdA08U2BS
	oGd921vVd/0cgzuoMVF/x+CvfFMxrACHEsS5+UWcbhElVkk6eVpDP2QvQZbNi3Le
	Wsi2LqEiaDYhhJ7TkWykuMir77S6G/4V9mui85qhXw/9RMK2ItGBjNg7g6TMtLIn
	2TuguTbCn4joy2pyA1y0JOdyWdCyKM2WHJ9GKaCOtO/hp7dM1XHayKVFLvYftRMD
	tlNJ60fyL1y2mz/u4l5IrLpB/XuzkmPt4d5FT2E/+W0d5y0UW5cWzqlrGMVnY5mv
	6slJxWo8+FW/OjaO2CpN93wdkgs+rKW6hbxNmD3w44pShygAR2hVHMI18D4n7mCN
	an36VA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8v29cpc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c1d30035dso12451741cf.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786362165; x=1786966965; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pcf8bo9ey21Nzk57L59x1vStqmDp0oasziFMD2pL3G4=;
        b=DDCbhv1HyjhQ0EEyNUbRgQfJMX/Mz3wz0itUhggl2vgdNf6iUflHvRgF5sRpTbUoz2
         OgnFNE8+txzylqddL6MjWvfWTRRG3m6xOOcVxgLNCHbEV2GAy9ExB8qQlQM6BEEY3Kep
         PTgrXBRHwwz1mmTo4OHfYoOxkXR26eJ5wjzQ5b5phxpcGXL6v1Sz1srDr8O+vSePRmKL
         PmrEr6t2HofOxnmlbf8T/QI8rZpr4r3qz1AYNVB/PS1TFJ2mJwyTdf8gowAhI4LaooVl
         vFGlIE6QhRSB2AIdbaFNZco0F2GMb3b8O9ZDLnMtOYdkSTd1BMb1Kj6TjzVI4iIVZPo/
         oi2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786362165; x=1786966965;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pcf8bo9ey21Nzk57L59x1vStqmDp0oasziFMD2pL3G4=;
        b=kMpRYgYzlTY4M0fQ+zW9IsX9USFmvkh1EFhbPtPs5jGx/LgAz/7bL3gFkYSCIcjyrT
         9WHxJjRYE76G+3tHv7Cb6JGeCNOPbJRw4HEZ/YrdHlPU8eyksRudd2axVqzfegww6FzE
         FrZOqtl+SVneaVnzPPUZuniwVjZ1soh/JCXRwp3hsvBjSUyx/azbXVw8LBiGunZXkzyM
         E5Hbu+rzVVU/LrpdZ6l2zqHcTuHsjhkoxae6Aaobl5P1u8MTfK4yj3RwbWXPflDP3Y4B
         YUqLMuIgo/XpR8z3OVsq4bZym7gtNRA6A8Qrfpsgl2qEN7Ov0iOQUXPHwBcSa6YLPmiU
         EOJg==
X-Forwarded-Encrypted: i=1; AHgh+Rq8LLOpee22CewdSbCw0UE4OHzEqCOITp307bZuAzSRVdHvvsRZr3KUf48oZCX7A4R0nrXyd8AvVEU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxSJ7dOcOyX5XxWkvFS+dnHMq40LHI2ImQ9wF2axQs4yCG6uBpW
	qDU2bKDl747bc/oPcnxIYbcYOF6VWkC3hSR739I1TbiQ1kui0FlUSmQw1RTJXpUdmJMUEfaN5nA
	wiMiurHnhVIYZ2NzXRrh46CtcBDydk+blr6m7yqx0YRYzKVA4fc213QqOHbOEy6bcPb0j
X-Gm-Gg: AR+sD13pE55lVeN6/wMvdIiMLVmAsw4fASEd6F0xy0G/u9ZmerTslp5VLuV1+VzwM8z
	jW3JEln39B8S9zitVQCsBc+6tgHNWZCaEeGazTQkrCiHkjBrdC2otwm6bPBdC5hp6Qi6laP3FTr
	tFZdd/WC68mL5739JenjKysWAJQXukY61tYvwOATx+Vkp98Lv/XPsNRLPJPTva2wLRo0R2bcQ4+
	gQ60Ohbr1pxKg4APANMOTNGg/MYWvSski5XjhKC6cHYcSrv8/cXSs+jEv+LYpHqbBCFbuTNqJYO
	rS1hPw/+IfNPIHvGxLxtDf0hRFtkIpoA7os9zz5FR99t9gfSMOyeY+jzXA4KOmzJ7mAIZg45HQL
	8e1ljRFqakWs3++COg/yIAQHGNoeEv3gPtXYqsmEHppZCECpvN6IuYaU5OBBMToXCnFsiXWCqgT
	yEIzpTU8gY/dK8aw==
X-Received: by 2002:a05:622a:5512:b0:528:17d9:2d99 with SMTP id d75a77b69052e-52d4c26af67mr8542251cf.43.1786362165579;
        Mon, 10 Aug 2026 04:42:45 -0700 (PDT)
X-Received: by 2002:a05:622a:5512:b0:528:17d9:2d99 with SMTP id d75a77b69052e-52d4c26af67mr8541791cf.43.1786362165151;
        Mon, 10 Aug 2026 04:42:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fddd67ea8sm21201671fa.28.2026.08.10.04.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:42:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 14:42:35 +0300
Subject: [PATCH 05/10] phy: qcom-ipq806x-usb: fix the SS PHY TEST_POWERDOWN
 bit
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb3-v1-5-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1207;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Vqsw8JJWOi85POaWx2iCSTAfXxNNja11d4f23hwnU5c=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqebkpuX+vOVLrzjxpiNNS2YkxPf3uqan6N+RLz
 fDpxGwaCuGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCanm5KQAKCRCLPIo+Aiko
 1QfPB/4iz+jf8SjAdNFZSm0aMTjbl+6rvr/pgSsoFIAr+D1trxTc1W3fTjUJmBF+pNfEWNwBZca
 Aq06bNbBr8k1OydR6xd+HzebvHxfD1/yOKF801JdwSUQYCexzfEc1djrDIXUCFcFjK34ADHu0gs
 g9Y8Pkh6c0nM74+r6elS2JgKMUiQfcyZzqhAOX6gL3B0NZZJXRD1Q4wM5Q6WRI4vaDCkHCpnY+i
 1WPMSzmmjSUXWvY6gcHiMMuzDjXdp6Nq4/c3GdMjXNgjrjvGOazyDqZm/Tis+KskmqVesaCt8uh
 3mbTOLt6/tzRK0TxhPzDS6qERKCQgapfahvyMTLaR9Hgpd1p
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=S9PpBosP c=1 sm=1 tr=0 ts=6a79b936 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=dvWP00IZLZjrm0WsKW4A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: -EiVPJIJScMD_bnTto6qEY8PfQ_h3NBg
X-Proofpoint-GUID: -EiVPJIJScMD_bnTto6qEY8PfQ_h3NBg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX+KFBjWjPJcMD
 2ykbKRMIL2ZzHQmRGofo6V4kMpeiYyw+PgNnZHOsqYzpk4TJhwaWNoRVaS0maclakjAelWparNB
 XhzW9xRwwyZYSW45YnhQyjen+LrbKPp575A7nvyaobPMJ3fITKGTFXblibICmxU21Ls9OPstYEO
 atATeWEhkM+BXHTph5MVTUz9HJ4UdTPdxRBHb01dWD0/s9qSY24YOhX+7pLaaJAjcIrEU/6HyLo
 NU5Vl1EAltOvpnKQe8GDL2kXo+b80uc8ug7h5Ig2Vj6Nd/Yfzpvo/aKsMA97hybJvQV8//wQMMK
 SvjIalUoEF1h3jkuyZAe/fSxMEpMzI60T8dToImNKfoNEXKEjTGTQghK9w+d4JgtqwMXXs24zCT
 VnfJ37QDz+kwi2MLMKYlVffLicXX+WwgjUhXhuImh/AxsypQfewPd796Oxwlti6ybzbgwQ97/IP
 cZhyIj9BVx8GchoSz+A==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX8EB2O6XFc1sF
 RGAMCS080o15s/xk1+M9q4qnPV6tDv6olpFQjJafu+6bZz6+UoWBnoie+AdyRoJmBq22LQJcHxI
 JHelWaQYOBThLGYQmtNhtJyCx8bi2L8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_044247_284185_226FBF37 
X-CRM114-Status: GOOD (  14.60  )
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

The SS PHY exit sequence tries to put the PHY into retention via the
TEST_POWERDOWN bit of SS_PHY_CTRL, but defines that bit as BIT(27). In
the DWC3 QSCRATCH SS_PHY_CTRL register TEST_POWERDOWN is bit 26 (see
the downstream phy-msm-ssusb driver for the same IP generation), so the
sequence pokes an unrelated bit and the PHY is never powered down.

Fixes: ef19b117b834 ("phy: qualcomm: add qcom ipq806x dwc usb phy driver")
Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
index 21b59d4ca8d2..cf77e0a66e20 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
@@ -51,7 +51,7 @@
 
 /* PHY_CTRL_REG */
 #define SSUSB_CTRL_REF_USE_PAD		BIT(28)
-#define SSUSB_CTRL_TEST_POWERDOWN	BIT(27)
+#define SSUSB_CTRL_TEST_POWERDOWN	BIT(26)
 #define SSUSB_CTRL_LANE0_PWR_PRESENT	BIT(24)
 #define SSUSB_CTRL_SS_PHY_EN		BIT(8)
 #define SSUSB_CTRL_SS_PHY_RESET		BIT(7)

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
