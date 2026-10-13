Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76205CC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 09:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B93w1AVA2VIR5100dWyJWQ/Zn+S9BoXJxFELBWErYQA=; b=pJjLCBtlYgiMqI
	/QEJ+5mf+sMOlKVYvSue2TIBNA4RQur72bkCQJMWEf6SakqhOdkWN14i/OHgLGzSFUeescEvdz1+r
	FH6ax5jytQCri65gDrPZnoHus7T21wOa7ZnkmSONgEfHYZdipJw+2HdahAeCpo6gXl+8SnwPbrY5u
	4W0Qk4fojxKYGkK31vwzVpi8u34wmd7r5+eDXytHEg798zW3evTuNJ+zmFEBMtR6rry+vf+69hzPn
	KDjFqL5AD4QLXGOpuZ2fja85Ue9B/sgpSVXDTnSE+vnXIf3tFj+gnBjnl22kwVLiS+qVB9vGIhlNM
	v2nLerbaZxqfi1dBniZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGYoH-0000000CQZX-00bH;
	Tue, 13 Oct 2026 09:28:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGYoE-0000000CQZ5-3UU4
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 09:28:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D6Yvi83208403
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 09:28:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AwVrOQAST10OpocMcgq2xe5E
	4xD7N2fSB7icU0QeQ7s=; b=Ckxqoo6EAZlcrDMj0F4eefX6HbXJeXaByFh5SkDp
	Nvw/8uL2qUT6+EahYM4zs3007fQ+2db1+kOKUcHnhfJpQbX9VbFIblyNof8FRAcy
	R0wnsVVa2iFeACk68sPtCc988ESMyeC5a+SMZyE+NZjE+1fEtlpVZsinRZJ3NizK
	1i/dfxZHL3Sv4Lnbu2TNPaVVrCc/o8WipvshYcS6fYK8q5IEuPD6IYcgJ6B7P8Zu
	PmV04zNc5K/JZu2eYh68WBtiFNPxKjqJnwtCuornHyTCsIJnbz0J3W0Fg0L7QtZu
	6LTlv9V4do9Q6ItmYqOnzUyncCqtOSYT/grYLZwiWI80IQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9fgjgq40-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 09:28:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93caa0ce0cdso299730085a.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 02:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791883713; x=1792488513; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=AwVrOQAST10OpocMcgq2xe5E4xD7N2fSB7icU0QeQ7s=;
        b=hCyAkHj+WTmLPNNoOVL0Imp1tK4zhZ3aeE8oJIamWKNFidTp2IknawgxeUqmJihQWX
         jx6KW1dSc4o2bzGmsTmmr0iv6wAShbt1TZVobWa/HqmvaZCvR2p6xG0EQ+o87anwsvnz
         vbMPkb/UbEKRX6M9NjgkubGhLk90Dv55IE80kg8kMX7dflFuVD0AH73r1b77l3P1UYrl
         FV4mpCAEPS5T1vrft/hzC2cd7Pgm2GOJSb1RkCFpk+mNjHwOXrYTl5hcrEP43rmUV7Gi
         lgpRNJ7UrvNHTk/E3E9ya8UTOpKZ9duk8OmLsoFD0d9wG8Da9z9Iyo+yaiOAgXMakeBv
         PZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791883713; x=1792488513;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AwVrOQAST10OpocMcgq2xe5E4xD7N2fSB7icU0QeQ7s=;
        b=zeL5o+f+fbf0+miLfLsc/RdYOd16aDzl1n42gMh72IZLtd+bh2ZBwgPPkAaF7kiNiz
         JFcbaU8vG/eeRRR9USpVEPMb0IKbqqw9GDCSuNE43n6Rs/KtCzCCkHTIO6+7+NSQwybL
         45Qp7pYbFBoFtH2gLScC6NXtWcVkwrGhi6H+hjwLodM63dOS9nO043Sya6QjTTOwRO25
         MQrhY2ahlqfShVMf9TzF0y85D71Tt2EEpmiGjbtWuwTCkHyxge4K6yZ5lF7uMDukBoSW
         9vw43bDCXTFIGJv25Dpvnsp//n4c3uitmiCheRw87tmRO6O4sraAm93/noa7J+/OWVxs
         7SWw==
X-Forwarded-Encrypted: i=1; AKwUvBy4hdNndNimkxPakNRkfNE2Wyl23VEj6h5xyoIJsyZKdW6JhOZvZDJQ2PVajblpzM3loTFLi/y3iyM=@lists.infradead.org
X-Gm-Message-State: AFq9FYKtSL12cXqtKucRofz4SZRLtq+cST4JqeZLo1cnM17EMHYg2RJ9
	Nqv7Uet81Y75dkX/VDD1GIS/YvabddlhEv+yCQjYB90uZ92cf+QcPF5DMJ/3Pab44u+CQdwfgV5
	hVrgBvbOsjR3EM2Os5Q+x4Xnz6WE36f9aIubts9CRxRIUX8lo2KFPPNbTMGODe/5kh0CJ
X-Gm-Gg: AYBFou361FF/xnTFeCBGBloCfJHS33y6LrwuNQdvJMl9zuXhAsLYWr3P9Mb/M0lelLn
	xhE9sz7sGqw2ZKbK4hnBfmMYtEmK4ShptJ9LT8xUUGLoPnvc1+etBxDH95HOh+t60iIQWuvGAVt
	pTBatb+Jzk0cKMc/Xlijuy9NPeVyKCvNQuy8VyvAz1dWDYZX2jV65oKFU9PmSQ2cU2ly0OLoXCB
	22rhDWtTHqUHpW1tvXg2R9caQoTh4PjVcSz+HMmOqgXV6HKOqen4glV4thXd+sdE9w8l1nXJNVe
	vAXvjzjyoItdwLEgNzgOL0QcwfJC15f83sce2sJk05luMZijYi/LSOphBuW3M20jbFHnUJLjIMU
	p8LXgUWJktg+FgwLckl+VSni91biLyS3AP+an1Rox3V9ZZkOooDB5b/8H1LP1MRJXcVt+Nf5ft2
	o86rXacvUoHbPR
X-Received: by 2002:a05:620a:199a:b0:93c:746d:7c72 with SMTP id af79cd13be357-93ebd29a3b1mr1894162385a.64.1791883713041;
        Tue, 13 Oct 2026 02:28:33 -0700 (PDT)
X-Received: by 2002:a05:620a:199a:b0:93c:746d:7c72 with SMTP id af79cd13be357-93ebd29a3b1mr1894157385a.64.1791883712361;
        Tue, 13 Oct 2026 02:28:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a9c3cd5adbsm32808981fa.29.2026.10.13.02.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 02:28:31 -0700 (PDT)
Date: Tue, 13 Oct 2026 12:28:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 04/13] drm/msm/dpu: Add support for DPU 12.1 on Nord
Message-ID: <vn75stw4ni6y7gk4reo4z25leimkahfocqrsvhw3pmappzwfvy@2pzxjkwbd7pk>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-4-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261012-nord-drv-dt-v2-4-a2ab9af954d2@oss.qualcomm.com>
X-Proofpoint-GUID: kOMAEdk_PMDKAZkAOlDFoIbFZF9va7_Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDAzNyBTYWx0ZWRfX7k8G1gjRYxsj
 oFNhin0q8UGaLjB04++Ghc1bLGYfpG9c0jEkKkX00Luy0gN0uLg+SeGh5PGR8/EOL4WJKo/vn4T
 eOrc0NoCy6TkZ0iI1tRlj7F7N9g0AC9javpKYdswlcb+gjcyivgad/I0rs8k6RR4oI5W2vI9PQd
 Jqg4crgdjc9wpuM7XKJRBr/1Zafkq3PKGNAXyRchwgteo5UKBW4NhkUp2rNt6LWBOkwQ0yrDI5v
 ulFQQZ08CxpYc/hXqrlCeEaj7SrUcE1MU0n1FV2ujE+3dXuclQutIT8Os4TdDTmmnnFjSZNAePt
 KR9YBxyrBjtAgW7zAp1NMjgm0sJ8IfFAd5pHIr03XBKv9Ty2bBYZdNz6npb1TeH0q31k9IueBiJ
 KZL8tKRT+K6rEiRUtIFfQm2RHMWOIcB3RQpY2C4lyFmdwzvjUHOpLszl1Ekm9HpI3iVvtecRtQq
 djqvlIwPy4WDAVDLTVA==
X-Proofpoint-ORIG-GUID: kOMAEdk_PMDKAZkAOlDFoIbFZF9va7_Q
X-Authority-Analysis: v=2.4 cv=PedqFShd c=1 sm=1 tr=0 ts=6acdf9c2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=VbBZhAhFZuLLlrQ6NhAA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDAzNyBTYWx0ZWRfX1HC6LsB1rokp
 itXe43vKU604ogZBLB3FUDq5EOpOWgkAPHuoH0vOSzTbro1lHRL8kbn+CGcqBtRsFTDnU2BKh28
 dqRmzW0DI5l6mySaG0f3lgMWmruMtCc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 adultscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_022834_876203_B81B3BF0 
X-CRM114-Status: GOOD (  17.88  )
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

On Mon, Oct 12, 2026 at 07:02:14PM +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Add the DPU catalog entry for the Qualcomm Nord SoC (MDSS 12.1, DPU
> 1499A). Nord is DP-only with no DSI, and provides 8 DSPP blocks, 2
> writeback blocks, 8 interfaces and 2 DP controllers.
> 
> Extend enum dpu_intf with INTF_9 and INTF_10, which Nord is the first
> platform to use. The new entries are inserted before MDP_INTF1_TEAR_INTR
> and MDP_INTF2_TEAR_INTR in enum dpu_hw_intr_reg, preserving the
> contiguous MDP_INTF0_INTR..MDP_INTF10_INTR block that the
> MDP_INTFn_INTR() macro relies on for correct index arithmetic.
> 
> Corresponding register entries are added to dpu_intr_set_7xxx (required
> for Nord, which has core_major_ver = 12) and dpu_intr_set_13xx (for
> consistency and to avoid a latent bug on future 13xx-family SoCs that
> use INTF 9 or 10).

Which latent bug? Please split INTF_9 / INTF_10 handling to a separate
patch.

> 
> Assisted-by: LLM
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  .../gpu/drm/msm/disp/dpu1/catalog/dpu_12_1_nord.h  | 544 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c  |  20 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.h  |   2 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h        |   2 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  7 files changed, 571 insertions(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
