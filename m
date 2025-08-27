Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 748EECA0FFB
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 15:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VX/n6u4iX+ITB1LYJ01Y2nCgORvCH9ofppAAtHrotNU=; b=rtvq3dNEYTk+1B
	E8tX5SojkvFIyE0DTfSZCC2nbXjdcp0PctIVDZH6O2l7NZ57iEaaymwqFJ+xbMD8T8RI6/p0siLtt
	boqkdvTXnHyVsiISiNgAO80RswZh6IVEbXSO5s143PBR7m3U9iIFyePWkJVSSYNlGuN9pRC4PZlOJ
	32kAvS3SDhFH7UldZRzr2r398RCDlam5S+2G17ffnG49kKg8fM0ivMvUcWCyUm7ZA+TtT/ikeqrab
	matDNFxb404K1iHV51cQh3Qld+4qRzQ0uRgUKjpEB/bFh82sC6xtRD681B+5KSW0eYICWqOL3MWs1
	pRf2cGT6GE/mCLWaBZzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urIQv-0000000G1DI-2kbO;
	Wed, 27 Aug 2025 15:51:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urFNj-0000000FRMm-2U2G
	for linux-phy@lists.infradead.org;
	Wed, 27 Aug 2025 12:36:04 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57R6kmDr016186
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 12:36:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aE8zBC2r3Q0RIEhAPiMKgJEgO09ak2j9Srq2WGlHICA=; b=HP6Pd2lgIf3+Ff91
	zdA15rB7L979ZlVWxyvt9V+gX7l8lhk/YtxeUULsYWP+dZWXurOIURgs04oH4KNS
	Z/bgwUxV6lP20vVPOCcyPix+DqDw1Ox8eNXjp8japbIeEbJAqF1m5yaEtb6t0pFq
	fLCElBTU0sSvJTulxTPPQFvFPl1AHiiJ+FntF7mfCQ19RAeDtrdAaTniSVlS9Cnq
	66JB+bFkO4VQmM28jkAjxofCz6ha4w3eI1nXmdkrVPrxpjZw/Kv/scqkwPqZ1n2W
	gSild69dNrPSBcFjVEieZb6WT0hQ7IyrUWWLvmtqWNTMcfjWjZ/W8Ynk3LGGEApY
	ehvgsg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpexxyq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 12:36:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-248c171ad6aso175235ad.1
        for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 05:36:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756298160; x=1756902960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aE8zBC2r3Q0RIEhAPiMKgJEgO09ak2j9Srq2WGlHICA=;
        b=OYIFJCiQInKO/GOQYl+oooHdKK7HEhnnY+zSSEL+ADwpdINn4hAJRHox3tse2IN7hW
         +vlCfryyqCeMbE5EYyYqRIlRYpAm2Vyh1HdKkriGNFkVEPIL3EMxwfrFxTwl6GU4MbF9
         0V3MD4YQI2EpyA64a5wGPxD48qfsdlo8Pj0gjymhHV9h9kgSt2OtEF070bxSiCzAZOEU
         RpeOmihbccwPgYfuCZmGeKju+RFGnKTdlpsAsgnehMUAisagIqKOXnZJqR/8UDpXlErf
         MU4KKAbTUER6VRobE98L+GQnVOzRpvfjJItpvgZBxbeW5+NUnQScOrOeTZB+ScqkwRau
         IXfA==
X-Forwarded-Encrypted: i=1; AJvYcCV5ttODqZmTP/jLPLcOHH+7TaFed6BVwcsoA1xCE1xUMdD+QaRorcTx94YkYjScD6NLMvorXM2GHf0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6rC9d3udyXrDxC4riD881XOH86TELtxgGwQAkXUsYi7Q1HSds
	z9EVRlPsPQF5Ot00ym4hCuXhkV44VhM69GcMNjfBNWE3g9mOt18zvru9WNpfPa167qGEp9MDmyg
	kpqT1wp8+Q82YFcdH9ZLvkNC2kMCMW2POkkDoDsHsaX5WRs+EUFqTkDEVpt2/ET61PYNx
X-Gm-Gg: ASbGncvkj9OsPfYaC9zqBf7vQQgGEXxwK4K8IPez7uDJtm/Tb4p23frsQFq5MgYIz1f
	aupsd1LYgXtQjHFsaAjPrrWecAgv3nFDlaH5d6RvmMHzSVnn+KEc0u8LEc9Vhp0I5c1vZVqTzhr
	UI+mZTNCZhwcMFqxyNY4PBIO/E4V+kq5rlYxZmWNaLL5r+tLmDV1bR2PfUSi/BUfjgCQgcJSmBt
	9tr36rfS+xtjId8BKC0+e+/Z4ZCk6djMLkzesi05QcrTlpsK5I3QBspYac057QaWWX1p4QtfWQ1
	bNU0JP4k2V5oBWQrPWmgkTRTm6s4Ngbh4sVKY1awK9NQ4ve7M5fdQHU/O5oWqEuzgVstdvO4Twx
	dAm3X2RZBrnICUrjeU48oib0bJccaeg==
X-Received: by 2002:a17:902:c951:b0:248:9afa:7bc3 with SMTP id d9443c01a7336-2489b09c5damr16498735ad.8.1756298160293;
        Wed, 27 Aug 2025 05:36:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYZ+xD3z7w+wdaYRdOi1NqLqGkN8knb7naudF58SoA0hWReYupg5b3LgtyFq8V+9Sa/QcFuQ==
X-Received: by 2002:a17:902:c951:b0:248:9afa:7bc3 with SMTP id d9443c01a7336-2489b09c5damr16498445ad.8.1756298159732;
        Wed, 27 Aug 2025 05:35:59 -0700 (PDT)
Received: from [10.133.33.166] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-248787e1bb2sm37647865ad.96.2025.08.27.05.35.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 05:35:59 -0700 (PDT)
Message-ID: <521fc2c7-d58f-4051-89b4-4c5a5a29d798@oss.qualcomm.com>
Date: Wed, 27 Aug 2025 20:35:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/14] drm/msm/dp: Add support for lane mapping
 configuration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-14-a43bd25ec39c@oss.qualcomm.com>
 <wwn24kjpwexl66hd3wufa53lkqojb2bkpdogtxwr3uqotjpf3u@hclfgsv64ajn>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <wwn24kjpwexl66hd3wufa53lkqojb2bkpdogtxwr3uqotjpf3u@hclfgsv64ajn>
X-Proofpoint-GUID: jRiFCtAHlXD6eMP9DDyu02OFVYSBgkzD
X-Proofpoint-ORIG-GUID: jRiFCtAHlXD6eMP9DDyu02OFVYSBgkzD
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68aefbb1 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=o8qHn1sYNikkEtO5ub0A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfX31S09K4cI4io
 YsZQ0or+ESDNaom1PrhKaBodI9fEliT9m8yV+Q5a+vKJpm+XhBu/A7WxTLV8Jq3k3cevv/6j59t
 q16PPVKz8nXsrcUrjLfeL09ziy5ymxo1XxwbwjcLmVE5JsTZeHrGP//IQXHS7Sa0uZp3mDOkxQz
 8G5jqGOpgcTMy9oWLnduiJ8ZgJDtrjdeSjaXE/W/yvHj3nNVZAg8q49xIcYkl4QT/EzMYXNuFn0
 edULQjOHjxxUPGW6KOFiXUhwhboFCYMjudGpVkELpsv10IPctUqXP7X4mEqgRqNKVh5oCG7G9+F
 4LjpVAj2n7PCEi74EhnY07Y1ijYtie8GVJtY2WbXnUfo0OVqKoqlEyYj93L1AZpL8I8XNXwg1qd
 VBl2w/lQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_03,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_053603_754357_94E70977 
X-CRM114-Status: GOOD (  15.37  )
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


On 8/20/2025 7:49 PM, Dmitry Baryshkov wrote:
> On Wed, Aug 20, 2025 at 05:34:56PM +0800, Xiangxu Yin wrote:
>> Since max_dp_lanes and max_dp_link_rate are link-specific parameters,
>> move their parsing from dp_panel to dp_link for better separation
>> of concerns.
>>
>> Add lane mapping configuration for the DisplayPort (DP) controller on
>> the QCS615 platform.
> Separate patch


Ok. will separate in next patch.


>> QCS615 platform requires non-default logical-to-physical lane mapping
>> due to its unique hardware routing. Unlike the standard mapping sequence
>> <0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
>> configuration via the data-lanes property in the device tree. This
>> ensures correct signal routing between the DP controller and PHY.
>>
>> The DP PHY supports polarity inversion (PN swap) but does not support
>> lane swapping. Therefore, lane mapping should be handled in the DP
>> controller domain using REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/gpu/drm/msm/dp/dp_ctrl.c  | 10 ++---
>>  drivers/gpu/drm/msm/dp/dp_link.c  | 71 +++++++++++++++++++++++++++++++++++
>>  drivers/gpu/drm/msm/dp/dp_link.h  |  5 +++
>>  drivers/gpu/drm/msm/dp/dp_panel.c | 78 +++++----------------------------------
>>  drivers/gpu/drm/msm/dp/dp_panel.h |  3 --
>>  5 files changed, 90 insertions(+), 77 deletions(-)
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
