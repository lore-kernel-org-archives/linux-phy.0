Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DBB8CCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 10:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyimNmOOLbR2PMae+fldVc7IfBKdt2RdX7GJCIeQD8E=; b=LzHL/n0vIDWG9a
	PcKbBBU03CSVDevSIpUu3u8Lrh+rffpRMTABU/XWXl4bfWI0xIGT3fLfBojvC4vUg4oL2gGen9Jnn
	AoSuSzOF/LvgU0FRU0ApGHtCxL2/KMRysD1+0MsNu154pRxw/ezV3F7AzagvLOARR6Jyb5RO7zLwG
	WmdqwnROL08hG648q5xHorLkBef6YDn9YsglHcU56xO300WKzK9YVCax6S5J5Ivxzy7XpOAYy08SR
	QNA0+hpJBGePPU2jmnU7z6YptHteiOriXRCKUZJMYya8bAgpVSuBiOgqQNwPXVpr/v4XZ0LyN9GdW
	xqNsdwm1ncWivqPv8v+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHf60-00000002bap-3avR;
	Fri, 16 Oct 2026 10:23:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHf5y-00000002baP-0Ory
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 10:23:27 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GAALik488576
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 10:23:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7YMYqr5YkntzBuDOrRU61JXyj28J8EWH3XY6p0V0KLo=; b=iTAPLbf4zvMMBO6p
	QF7MVRMWCvwobnLfD0y35EGsEnP2Etj3GWwYkTiwnhXTgd0pd8VrVbSFy1CWrCU+
	76VQG0cTsTN3fukYv+CkalOGxpuq2iDN2cQVsGozk6zWalGoDw6qiT4ww6GhO2kE
	8ygNtQoB7AGsExjUmAIqQNF8iIZtMvleevbeRSoWulF2DfvNNW19rZx3X8a0BIXY
	ggjAJVg2jWO2DIcErJ2HyTMaCbrI4H2e5azf4tR64YPFOLbumTj7iEiVxuJr8V+x
	FsnIVm5Bl1+CUuY1rNpLxy5NkDiDpCLZOxFmOlUJ9c4cPT8HI90OyX7p2NyuRjxT
	KroB4w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbcjt9cs2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 10:23:24 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93e629c7b16so100632385a.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 03:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792146204; x=1792751004; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7YMYqr5YkntzBuDOrRU61JXyj28J8EWH3XY6p0V0KLo=;
        b=R9qzB6kV98rzy0eBzo5CvPZxeSZX56ThegMiZqZXr5HV1WPMVhMyuAJVmCdTbGRdnW
         DtlgnmwipcQ0+Z9y3hMqhZiv+WdunJ1rYWZU7nunEGXmLhA+0cRckQKxTP5xoJBGIXfb
         cWTPGJ2nrAljolyfnCCOdWZnIVoGS6b3h3kuVOqblWC/BwDKTVYwyUE/IWDE39i3qH5r
         mtRU6vG2+qPm56r6wocnt7ehtJhttKlRoPtUcE4IqKVhL6u73cg5+9urPop7WGlDOpiZ
         TfnK3pPV9Lq3pVaJrqkhf9AGFnjyZmlnv2pexAXqCtvbVTfbqdM90Iqo024mf7rWQvYA
         39ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792146204; x=1792751004;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7YMYqr5YkntzBuDOrRU61JXyj28J8EWH3XY6p0V0KLo=;
        b=CUIlzEwqnj9niOHLcRsaO+5B2RIGaRMik9cBmcrYgyuIUKipvYNRHwNzgqupYJBnIV
         QSrFSFZibLMIviNPvn0UM3D8ZMJvfWf7q8PPF3ZZsLINY0NkFnFYfjPzRv8yCJPRcLeL
         7tU393uk9+LIKKQj4WUsZ/6P9SIwZxvPvDeUktq8REktxxoLRgz+s4sWwd+3wdvkK6wz
         IUIUawYurlJpdo4GcYhBOXGJZStPqTvmiXvdtH9xhVnOvaHKlSYAxAi9pakyHBCBTWpY
         OCW+OZ1PoG2tRuSu4CQXEhoTsVxg5gFx/mRDItNM5L/q03ac8IASmP75XJ1xvQ0cb0Lu
         SSvg==
X-Forwarded-Encrypted: i=1; AKwUvByr0e2LTBjJ28tFjlF6RRbVMpP2MlxQ8uh68hqcC6s+/SK01XidQKlrs5+5WFOR2mq9xGZ++F/9sJM=@lists.infradead.org
X-Gm-Message-State: AFq9FYKqMPfvRID4NcuI5j0iB6UncptLdwflTzf0cDxMf0gbX+++pdXm
	u5qu/7FDRQh+KoRqp09xX0LxQFAHPruEIk+IMLy2aR5NRg9U5aB+gr8MLUuV8zuXpu3fzOg5ONK
	8IuZLgvwRcIWLlzbSf8jPjuqjNnoiLWzQY6jVcYCeJXolUCVnTwKNL+ux9PEzLkTwW1ww
X-Gm-Gg: AYBFou3Z81X/63ZzRyIgr5c+6tHKmjJrF1gXTPVkHSNjC9y9U9mQNTqLXESj/+xPb/T
	WK28bWGRa8rOp48Vzw5q8aRMtQLPvXm2NjOSAU7DJ+d1VDwxTWTExnF+uZcAkvhPxIHvWu5BSaA
	PkxYIirnYeXRQ5f3obNfRKhWbx2Ls/n8Ebq1r0lOm4SzZQvfWXk+T728Pe+zb4N9hBYPadf6M6M
	q2xFlQafu1O9k8WhXW1fhna/AzHsBqFMnTWJ3PhFvk+SX4ORLpL7XTuDidMVnF2/W8eHDdODC6c
	pFKV0LnRwq1vRaA9AkDCY9qQJxf5mYqONGx6z+9RRljCE+cWRRzWtbnfFbKM0d2FpaQ6FVo8Utc
	y1Zj5fy9tYykqzEIoJtDBww==
X-Received: by 2002:a05:620a:458f:b0:93c:61e0:81ff with SMTP id af79cd13be357-93ebd0a3722mr4305582985a.1.1792146203628;
        Fri, 16 Oct 2026 03:23:23 -0700 (PDT)
X-Received: by 2002:a05:620a:458f:b0:93c:61e0:81ff with SMTP id af79cd13be357-93ebd0a3722mr4305577485a.1.1792146202905;
        Fri, 16 Oct 2026 03:23:22 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b38a1335d3sm772135a12.3.2026.10.16.03.23.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 03:23:22 -0700 (PDT)
Message-ID: <1bccb6a2-3ec3-4790-90ee-18912d4a8336@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 12:23:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/4] phy: qcom-mipi-csi2: Add C-PHY support for
 X1E80100
To: geocausa@gmail.com, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com>
 <20261015-x1e-cphy-rfc-v1-2-1f3fa9af940a@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261015-x1e-cphy-rfc-v1-2-1f3fa9af940a@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA0MSBTYWx0ZWRfX7LCnDsJflkD3
 u0+bPaITaxnaySNAbB6tPj+Io5PEnQcaCbkdxUwqaGX37UYksMmHuumr7X1++CEDQLorROxJaDz
 8ERcSGYdOuLvt2iZP6RoNC8gqTTnwsqNXM3YiHTEJCkMHtvKDHFlIxJj8PhXTyDXOiQ/ubz5W/b
 /Pxd8c6+44ySrGyHsOdahIzhlLJ9SikBsBEInUxWiQjZIQj+b5RMVwe2CT/L+xgBF4H2odK81cv
 meBP5iOTfTMBZAv1HH4zi3qO+jy68x5f0+34U8HsrXOpMsIVjdw8lWU2tFfInknSO6SvHhhDga6
 Jw0RBSwQ5ceOOFZxdq7YXtYE9DSjv4aro+Fa9SzoKXIJg9m75ox7ruBmJroZDL4bUh1xQWq4J0G
 aq5raygZQIht10I8NJMGD0xgP/jX0SRUWj3y8hRL1wjSoRGGeLnAn068Qj9MUGEhMOVBqX+Je+H
 4AptJIEMFBRzpcXCRug==
X-Proofpoint-ORIG-GUID: dkAE7YefgIEws6HGqkba9Xc_DoVggVUg
X-Proofpoint-GUID: dkAE7YefgIEws6HGqkba9Xc_DoVggVUg
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA0MSBTYWx0ZWRfX3gzjkdib2i1j
 MQ0X4ZWilzCQ0AMLhPwdMWhAYON75+cgGB8FofbSZxmEMEyL4YsAIq4v2lAQp0hOO/wh5ctgaDo
 argJP5/stNpyZISApAHAXRgtd9PnKpY=
X-Authority-Analysis: v=2.4 cv=VpS2kO2n c=1 sm=1 tr=0 ts=6ad1fb1c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=pGLkceISAAAA:8 a=O3v3i-bjyAfycMMqM-EA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 phishscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610160041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_032326_144386_6192C552 
X-CRM114-Status: GOOD (  12.32  )
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

On 10/16/26 12:20 AM, George Neacsu via B4 Relay wrote:
> From: George Neacsu <geocausa@gmail.com>
> 
> The CSI2 PHY schema already allows bus-type C-PHY, but the driver
> rejects it. Accept it on SoCs that provide a C-PHY sequence: up to three
> trios and no lane polarities, and set_mode() has to ask for the mode the
> endpoint describes. In C-PHY mode, configure() takes the symbol rate.
> lanes_enable() powers up the trios on the odd CTRL5 bits and writes the
> C-PHY sequence, which carries its own timing, so no settle count is

[...]


> +/*
> + * 4nm 3PH v2.1.2 C-PHY, 2.5 Gsps, from Qualcomm's GPL-2.0 camera driver
> + * (cam_csiphy_2_1_2_hwreg.h: csiphy_3ph_v2_1_2_reg[], datarate_212_2p5Gsps[]
> + * and the 3PH reset-exit write), one trio block per lane triplet.
> + */
> +static const struct
> +mipi_csi2phy_lane_regs lane_regs_x1e80100_cphy[] = {

Let's rename the struct to make this comment redundant.

FWIW 3ph === CPHY, 2ph === DPHY, so we can drop that. Maybe
just lane_regs_v2_1_2_cphy[]?

Konrad



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
