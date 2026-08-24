Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1636BC5DF81
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 11:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19ouqDRbMfL25o1kdpr0sVYxRgk6kRtpjsILPXtiS0w=; b=V8VX/b7OkBfpa/
	1dTdxmcCqp+c4CUEIWvbAFM40Of4RP9UQN1teYDpPDzbfZ07p5lwNuQCCHPk13u94gkONU9LD8ln4
	Kku9T1qLLYJsQcxj7rUDDONiYOvlkEivDiVVuVhgRYiXFSerBKfzHIVjlhcAAIUOfkj2LKjU7Bf0N
	qyJVZqm1EdnieZT5TipVXeXM/XJ+TPKNurK44Sb9kyr8F7IqMkTvH/xWR3/q3YHgcxB3xPaaaDvqt
	77QnAlSB1UZndsEjckgcmhzmiDAtpUiVe2SRmlgV0RpywzehVZjEhSmSPfGYxRgvR3NCeF2vMlVvy
	pfYYXURqIzJZSgwsPnOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySr9-0000000GVgr-0Hgf;
	Mon, 24 Aug 2026 11:28:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySr6-0000000GVg5-26Dm
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 11:28:45 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67OBMV9i2372293
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 11:28:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZLZv27GFMdz2STMsdvHGdhaNYpEqqU2M4a1flwXbgR0=; b=kgWveR9eOeTiZKf9
	JtBtq/rJHMgjCrLl3uUTfLmATdPeZn0AwKvmmPN97fAtMilH4Gxm7xK3y/nHWGfe
	XPIn7EF5PdYkyPfEFHyNspHDOCMSFCGe1PpA1QahHxrCvC0kEbTco7H2l24uQlKJ
	3j/kUV+uZkXdIj1g6VWKpa44WxmtGf7JqaeVI4xOPllPR8d6fmafJUQSZqAUel7q
	tQv8JVjkw31hoxsCshcK9zBIHyaaQi/JLtPnelTsaa3dhI9wxb5qIqqPnWPv3Ycu
	6c9BWKilvRtOrsR+ceHQOPObRGq1N7w1Qian/vGE/Ytz4djet5IooAoFtgYZUE4r
	0YgN7A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8gdshbjy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 11:28:43 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-38e475f83a2so6142354a91.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 04:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787570923; x=1788175723; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZLZv27GFMdz2STMsdvHGdhaNYpEqqU2M4a1flwXbgR0=;
        b=jhmOCV7s36ouTey6Q5MGwbAuaWTKm9P9x4seB0xwYV0zJ/86852DVYNVK6DNXpzGm0
         j9IZ7hQLdbdS3oq4eOOQjSu9cN600YFFKwY0xbkp5S03ZAcNoX9ZKlWtgxfAy3M9KEqO
         qNFe0MSM4WkSS3g+NlEufZ2iDqTSAlamGSTtPx+CtZvTBsv7K5Jh4E1pQLWkzYZ9A7gd
         CrkM1vRElqE1a4FXOdT67nljzE/dgIMHsiWLg3aRDUEq43/moVj/W4Eh5ZjvID8oiFWz
         ttta+jAc2hzkphaxGz3tatpbTTnD6su6mO9FJuBPNefTbnJsuTpCmz7ZzqSdRXsCRRp6
         dfpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787570923; x=1788175723;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZLZv27GFMdz2STMsdvHGdhaNYpEqqU2M4a1flwXbgR0=;
        b=GREi6NSW2qIvEa3ww+me+tuGvKw6AAfoWXVL/gujS8ha5/qWity6LD0xBqpTyVu3Fq
         5S3MKIvDrr4CxfgUbdUw9rGJ/9fk5okURvnWQuG5+Y88Hs7orLhJHxbajvsjE09Td6Q8
         KldIZbwMGjJe0jA3d92a1R9T6VUW0Ou05DuGnHcZdPBMGSfn4YAUdnRvU85IFzoV4/WN
         LwQV53yW3/8S5WLefCxbpiWOo3ThhoMiCX1UwPlUdg+nmJt58ReKVPz+bXyg/rmVWyaY
         ckdtFouKUOIRQHPiWfFbzkV7F/r4fqrXc797dl2KhyMDYZK5EgRmJXMdKpBbJTox+2l+
         xO9Q==
X-Forwarded-Encrypted: i=1; AHgh+RoahAWaMccDNs3xR9ux+AIyb1LE8X756gI/q910wPeCPccKxy2gXFLe744Gpp8inyPRibcb0xYcDOY=@lists.infradead.org
X-Gm-Message-State: AFuF++my9FtUFpePYDZOo/Jy5moyHgHAmB2gRaQKBUl3qeC7uvlf08wo
	4ROWrtA54ClFgWZthCIH596CAWGf6LvX8etKTF7rIHa5fvP+6Gfigt07oBTW0SpYfZ4ORwQ+o5J
	3daVqImwYyzMz6G9D8iRTSBSvEo7duQK1JX9ehhu9iqGReNLaGNB9aV6suCEvBr3hT6YK
X-Gm-Gg: AR+sD11bKGAVZRHNM9f260cdgGOEW266cLBQ08ACOjpveJMmkAEvCWZ0aVW1qleeKQt
	+UG90wT4KLdKyKt2l3kcoxMRMy1rm7EHbjsgEX7YnhKr6LiwdsZGXEmyd6yS26wnlEkIZf4BmcY
	jelGCw3CX8wQrXCm+fRdyTvQ8pR0jaxkYIFUTn8wuiW0pVxs/yggSFzlHJz3ZnUWHCPO/yAN+4L
	N5RvblnaZtSF8oEPbWONaQSlXgK5Lh0rSRU3Ax5Dv1udOp4iUuYXJLszJw7nmK6PndpohP0WQDI
	PKxIrlpwaP7/0Bm9pv5y5oID21RvK5nGlzkdvXtR1J+j8VItnbOdX5I25+6eF1rQNlKVh9Q1mrO
	UGg+e6JB/dKX5vnic
X-Received: by 2002:a17:90b:4a81:b0:381:a766:efcb with SMTP id 98e67ed59e1d1-395c34fed98mr40733965a91.4.1787570922488;
        Mon, 24 Aug 2026 04:28:42 -0700 (PDT)
X-Received: by 2002:a17:90b:4a81:b0:381:a766:efcb with SMTP id 98e67ed59e1d1-395c34fed98mr40733876a91.4.1787570922038;
        Mon, 24 Aug 2026 04:28:42 -0700 (PDT)
Received: from [10.213.109.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-395e4af750esm9825643a91.11.2026.08.24.04.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 04:28:41 -0700 (PDT)
From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 16:58:05 +0530
Subject: [PATCH 2/4] drm/msm/dp: clear force_link_train flag when link
 training succeeds
MIME-Version: 1.0
Message-Id: <20260824-qcom-dp-typec-reconnect-fixes-v1-2-2825e5bf8a96@oss.qualcomm.com>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
In-Reply-To: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <quic_riteshk@quicinc.com>,
        Vishnuvardhan Prodduturi <quic_vproddut@quicinc.com>,
        Mani Chandana Kuntumalla <quic_mkuntuma@quicinc.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Saurabh Anand <saurabh.anand@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787570901; l=1035;
 i=saurabh.anand@oss.qualcomm.com; s=20260824; h=from:subject:message-id;
 bh=Mk2iABepIE1j1SqlHuK8xywuEsIdXul0/MUc4PhM33o=;
 b=xSb/4S4PD++J9HOE9OF1wpOpDqfbMO52EZhU9enL2AW1OLH6rpVrajVg5lZG4CpUFO50HQdNr
 tarYw9mrH7qDRnCK4w60xn724kYZhx8AlG7MKTQybAPWUvWyCxyQNPt
X-Developer-Key: i=saurabh.anand@oss.qualcomm.com; a=ed25519;
 pk=AzGwbGUPO11yi5XTeGyJKOJWLfzXp5Dru4z+PCg/uXs=
X-Proofpoint-GUID: 0mLywlbcM6oXjZmt6YSlNXTywsY_GejA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfXw5nV4cBA33mU
 e4HMmhKbjrHCvkDLOQcUpxlZa+XpkR4+EEaLRqe2NzfzQIclAjF+yj0zrnN3SDhFuS38uaU/+oW
 /OmQI36Gl9hGlIKNiuYzrE7iyJjEKLgx+bRI6tzaOmnZ2LDYDhoJGy1j1yg8gYctGQ/JpbaM28Z
 8XkDrGs/7kyvlaC0b8DNYP5B8h7mf/3+edZSDgYOEITt7IhUCx1dmvX01RvQjAGjXKawyypdIw1
 mo/Qc/Bnl4UBWHm5Zj34RF6kBf0ETanE9HwsN0XVi77zjU1JNTtkjrXlV0XjaYeUFGOLxi/2SBx
 rhMehnTkLrPjeI5ROHuIN27ZEy2LsGNcDtHHsr0rWh+ZRCbl/tkNN+WHq1wOOG7i0HWL/UA6WSN
 q829+unlfDwdo365Iuu8l0UlzQR/n1CoPDQ51SpOeZtf1lCt6VHuG3xcdWf03i2HaEztQg1p1Wo
 kRoep0kKSc/Em4HYrfA==
X-Authority-Analysis: v=2.4 cv=Fqo1OWrq c=1 sm=1 tr=0 ts=6a8c2aeb cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=rL4VQYfKDX0HzXWNMRkA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: 0mLywlbcM6oXjZmt6YSlNXTywsY_GejA
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfX6l+2Yyw776qg
 1e25R7Hdl9f7EYvH5eehWQgSLTzIgWNecJwUvXjClKppdC5EnQ4Ig1HBSynT/WTXVQSwtUFXrEs
 B8FZKypeaae14NJogGVup8D8XlaLuhY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_03,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_042844_660966_0321A6B7 
X-CRM114-Status: GOOD (  11.38  )
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

msm_dp_display_prepare_link() sets force_link_train = true before calling
msm_dp_ctrl_on_link(). On success the flag was never cleared, so
msm_dp_ctrl_prepare_stream_on() would unconditionally trigger a second
link retrain even though the link was already trained.

Clear force_link_train on the success path so that
msm_dp_ctrl_prepare_stream_on() only retrains when the channel EQ check
fails, as intended.

Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index bc646d172abe..40e19d506a45 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -649,6 +649,8 @@ static int msm_dp_display_prepare_link(struct msm_dp_display_private *dp)
 		return rc;
 	}
 
+	force_link_train = false;
+
 	return msm_dp_ctrl_prepare_stream_on(dp->ctrl, dp->panel, force_link_train);
 }
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
