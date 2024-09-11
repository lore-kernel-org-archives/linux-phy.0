Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8FD7EE57D1
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 20:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4I5s8rHkZ2Xy4E57Dr5YHjYx+u+HFEo3V/FkM9B/Qso=; b=0cyAYzfp9jH8UP
	VaAP06lLVpCQ0oLvWjK6D39Zf7z8jtGWynprzq7vSPwMTJYC//eolsqiY5h/r08AKbdhGMX3GZcQE
	OwmOPuN7uJjiW7RNSXF/41YeJbCNJjIGA6VlX47jnlgOZBY/+JmXR/rSRg+hS1NDQlbBgrcYqv+3a
	zfDLXugYQ7wt1TdAtU64y7rBb7NLYUpMd5Bx0vOEE1mZfq++BRZe7HygcOqbrSBfAqmdlVLW3j6As
	gfOrUNlRdnBI8hO1bYbJn8mJMh9b7Bhhgl3J9leRD106Gacr8COOC8vcoJyplcYdg+i5vvBG89DV9
	JopIqlGXlbROjlfzyCHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soTY7-0000000ApJZ-0Lqv;
	Wed, 11 Sep 2024 20:02:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soTY4-0000000ApIn-3ov3
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 20:02:46 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48BEmxqG025804;
	Wed, 11 Sep 2024 20:02:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yT72m3xVy/MYYzNTuClbW+FS
	Q/78XtzF54msLv157IE=; b=Atlb0zC78mbWy+jwn9lABh8xH/nLMu6AL4wio4uW
	5QiGEUtwcE9W24iJXf3NrcA1YbJEdNBtso7UZUgEvgtYDlewjfSeUmAfWwG4RA8F
	rlztao///tXlPuWGe4mqs6+aAOQJtwSZVazOdUZ6S7AQbD2h+1iqbBKSJBWNjUUq
	dOS4EPo+raUkZC9G1v601B02As41piVaO9GEpMIhC7YFAI3em+TLkFRoOnAFUoE7
	bAwvEk2s+Nzb000vksrkAr7tTNp98yBVnuwoh4ZxutvuX3MPG25gMjBFDP8rtTHg
	PvKAcYdds6ia1tUIlNPJsIpuRpgk8BvhAh3xMkmNaVrrZA==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41j6gmy457-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Sep 2024 20:02:37 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48BK2a3h029989
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Sep 2024 20:02:36 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 11 Sep 2024 13:02:35 -0700
Date: Wed, 11 Sep 2024 13:02:34 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <konradybcio@kernel.org>,
        <andersson@kernel.org>, <simona@ffwll.ch>,
        <dmitry.baryshkov@linaro.org>, <abel.vesa@linaro.org>,
        <robdclark@gmail.com>, <quic_abhinavk@quicinc.com>, <sean@poorly.run>,
        <marijn.suijten@somainline.org>, <airlied@gmail.com>,
        <daniel@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
        <mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <quic_khsieh@quicinc.com>,
        <konrad.dybcio@linaro.org>, <quic_parellan@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <quic_riteshk@quicinc.com>, <quic_vproddut@quicinc.com>
Subject: Re: [PATCH 5/5] drm/msm/dp: Add DisplayPort controller for SA8775P
Message-ID: <ZuH3WqMwn7fl3nhh@hu-bjorande-lv.qualcomm.com>
References: <20240911100813.338-1-quic_mukhopad@quicinc.com>
 <20240911100813.338-6-quic_mukhopad@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240911100813.338-6-quic_mukhopad@quicinc.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: k7CqOgarBHtkW6JvH3e5xL6jB1lUbbgV
X-Proofpoint-GUID: k7CqOgarBHtkW6JvH3e5xL6jB1lUbbgV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 clxscore=1011 phishscore=0 mlxlogscore=999 lowpriorityscore=0
 suspectscore=0 mlxscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409110152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_130244_980026_16449BB0 
X-CRM114-Status: GOOD (  19.08  )
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

On Wed, Sep 11, 2024 at 03:38:13PM +0530, Soutrik Mukhopadhyay wrote:
> The Qualcomm SA8775P platform comes with a DisplayPort controller
> with a different base offset than the previous SoCs,
> add support for this in the DisplayPort driver.
> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index e1228fb093ee..e4954fd99eb0 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -118,6 +118,12 @@ struct msm_dp_desc {
>  	bool wide_bus_supported;
>  };
>  
> +static const struct msm_dp_desc sa8775p_dp_descs[] = {
> +	{ .io_start = 0xaf54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
> +	{ .io_start = 0xaf5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },

Why is this list incomplete?

Regards,
Bjorn

> +	{}
> +};
> +
>  static const struct msm_dp_desc sc7180_dp_descs[] = {
>  	{ .io_start = 0x0ae90000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
>  	{}
> @@ -162,6 +168,7 @@ static const struct msm_dp_desc x1e80100_dp_descs[] = {
>  };
>  
>  static const struct of_device_id dp_dt_match[] = {
> +	{ .compatible = "qcom,sa8775p-dp", .data = &sa8775p_dp_descs },
>  	{ .compatible = "qcom,sc7180-dp", .data = &sc7180_dp_descs },
>  	{ .compatible = "qcom,sc7280-dp", .data = &sc7280_dp_descs },
>  	{ .compatible = "qcom,sc7280-edp", .data = &sc7280_dp_descs },
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
