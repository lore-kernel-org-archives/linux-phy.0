Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A6AEC88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 00:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xFkamvLZYDDgnR3fvs1dSUuOn8/HqCcTL9Vis61xqM=; b=pg7nwCa2aUXmkl
	wHHz5gEtAU8vhDt/7+wnzzBW+H7qOxVdXiZgQobMnf2XpnN41wSNhi5R5LusBt21RkuGUABd2iNEw
	uX+xH1beG558xrECwiJLeMfWS8R4BFkCYTni2b5GgT5/NnOM8ZnzMABW88MwcqQ2lVu9/3mCFWkPa
	cNfTZl5X+iFVvwkcuXHu8RlbAQqhJhgAHXYRO2J8/4BaBwsKK3xNX/DAgG76Gw755gYQC3kYXVAZ4
	HIMc4TFbJJVmDwM5FYTVKOSQeiTLh8sRm9/oP0RXguP1F3W3lzM9+k7KHBb2MNWEuvXRmnsstBNDb
	F59N8NGYiki5jwPXWSmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uEm-000000027Gf-3lbZ;
	Mon, 14 Sep 2026 00:07:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uEj-000000027GH-3LWK
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 00:07:55 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68E06GaZ3539997
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:07:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=J9bwiN3dUdd9aP+bWdeapn0I
	UEMXk3IGQ9B6+59SCMk=; b=WAAbncT5aYE4iVuA26PKrx/TkOqCQuGMD3P8i0SW
	zXs3f58QXjx8entbqCuWonjnQjafY+bXDHP9pYslQlL3RNMAl+Hs6LWAEinbidpA
	Dw1Ga0pyEMbNlFtvj2sIm/GFcmXaQpWG2hHRg1RE0WbBmSNS9i9Q1iuP0Q0XgRic
	B3pTDW+w2to7Tyc4T2c2wzsm5D04r01/whGNtEd4hDEZlqOB4gaUsNBcerHZ+ztC
	7kZt74zdus8/sPk8aEH/yQRp2R1jZaPbC781Cde85xrcvhKGi0eAQ4nyk8vixDhl
	Zx503zZXrH6aayjKmCXUOA/zsDMxfukQuCFWp0H0zYQ6KA==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9dmenj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:07:52 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-78fbc5a4cf8so3130723137.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 17:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789344472; x=1789949272; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=J9bwiN3dUdd9aP+bWdeapn0IUEMXk3IGQ9B6+59SCMk=;
        b=HvKVeEK4sN/263oRtW6C98QfkGj/k882FMt8OfsSU9YWlq/QjKgWFRkocgwSuHQ4bt
         8lxeHK9zkPYyNOKF0QzHIpWBs5kN51wXTsbvHsZ7PDFc6kouOT/AcwJMl7KeDa3ksP+W
         RvEzkfIWi0FKbfKpDfppd3ubcuNTkJNJQfctjcbC6O4goN0EKUNcN9DZHVpkywWUdcFu
         Obtj6Jumxzi2HZ1qVbrA2dQOj8ZlZ+59TPl/1BTa4EUjVEEpZ+7eXdE3xZGyAjqCskNO
         RkMDMRObFJnrtVKMxcu3kr/2pBCXZcwkLRlG9AoCEYbX0jmF3QraHV2d8Jl8UebvZD8W
         QVPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789344472; x=1789949272;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J9bwiN3dUdd9aP+bWdeapn0IUEMXk3IGQ9B6+59SCMk=;
        b=HHwB4lOCfuRz6k9kHHgBpW60XH3aCmDS7TjTXqthZqmSnaumfX+EUZoqR1AVISRHfK
         UA0yaoSyTvbO2zOlrcJ/lt3Bgqv8t6uAzci4Xo0j5JxWLH5yqjms4Az6XiWutd1jSnl9
         rpsZtDtfpPGPDMY+YvPriMnZM8v/+CrQYHCt4eeVg6VAi4Li0x3wPQHTrI+RlkxAzq0a
         /y22DB0Car43x5XbV1blggcDfEIshnqSFYaJ0p1yjta4SXu5Ha/VnGY2z4P6UXAChFz8
         82Q2FJ6BZypuLOd8A4z/TxE7iO7um7VZF8fvZH45JJ0lkJm5SFhfPQvxDRMXUEI287no
         Zhww==
X-Forwarded-Encrypted: i=1; AKwUvBxZeeJSQFXfD2g6xNRWWa6BdHj4FThbjGDfFPMMBij5BqD0TqZPex8lzyROCnxZxgHlqadh/hV47A8=@lists.infradead.org
X-Gm-Message-State: AFuF++kLpOq1BswgIPcjOziqD+rbkYsiFmKklxn+pefzsKi32/R88zip
	0DdmR/uqmsBbIpjmxrL7WBX5rhmHgEv5SAl0/W00cv6MdZCv3L0uVi9vfUaJhkFFwGDHwPmAPKu
	bwpZVO/tXVHF5t2Td0K8apJwPdpk/BNQhYF7tg1uOcU9PwPuIk5E822EJC2F91+J6hWcO
X-Gm-Gg: AYBFou0n8GxQpJpY7va0d0CVLYK78KEMO9gScrC0sqmllgPCx0vRIPHlSK1utkCxIC/
	4SkBe8CvSj8+4T7zNQvkUMa/EmWwgNEULFfLAIStUQ/TvXG0n5oztdwAuxpE9RVGQ5P+eqbOeOX
	gEwcI+k34JXBm+9C1HL+6XocSDOY42FNR6CthYy9gJZpYO5lr7ltFIekc/+6ww1RIFnLOcviBls
	DccsQYD9atH+egdEeij/OJXclxTBkfzVehqZKpSL2uaaFw3FsnE6lIxX78CRRNfGjC8AcT6Q4Cn
	oYxKlom9OT8zAbdzOaQPmE9Zp/PM/jVClKZ6id86qxZhkgET6bDTDoQRsYTghHQkIdMWl8+cF3m
	GORBcWdw3kmryQT9Z7FnrcZ/gz+qpMgXhUrFRKd9PxKbjAPAXd+0lHtvLlIr4Vk3R8TueRkVJs8
	Fa91Q2V2c0kl8d
X-Received: by 2002:a05:6102:638a:10b0:780:c9c:bfcd with SMTP id ada2fe7eead31-79894637907mr735037137.17.1789344472090;
        Sun, 13 Sep 2026 17:07:52 -0700 (PDT)
X-Received: by 2002:a05:6102:638a:10b0:780:c9c:bfcd with SMTP id ada2fe7eead31-79894637907mr735027137.17.1789344471682;
        Sun, 13 Sep 2026 17:07:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a0461a05sm2019561e87.37.2026.09.13.17.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 17:07:50 -0700 (PDT)
Date: Mon, 14 Sep 2026 03:07:47 +0300
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 12/17] phy: qcom: edp: Add Nord bias and clock buffer
 enable callback
Message-ID: <4z2wtovf7uzmomgoqkjfgcuu7jg6l5rsojiwtg2f5t4tmdqynd@szbd7qtdb5er>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-12-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-12-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDAwMCBTYWx0ZWRfX+FBox9tA+nzQ
 oYSZUVyMGbZRvVRpa5OkyF0kYLVAtbPmJOuxQp8Ihovsa4+nvYSoI+UdfEEWOkrX4nxKnSyG6st
 kfMswkneaTmbMeYf31bSpJeWggNvxM0VzPGDCMfqqIgpFabzsBnFJIEb4IEFZDeJjVfWNy2pN4l
 a9soQepMzP18hsrEPt2L8IOgcA8iS79gbUO8eUrGGcpFGKiabm1DyWdSlVqQVlO1nRJ8ThkKViZ
 OZKICtrid2n+Q3/+q9rJVLAfkzx51xKsusqotS/L2UM5GeWzl3o5k/fibtFl8uPLQzMZYQdc2kb
 xcwXNAzeG2urZeMDxRJjjOtZZqbvPloWox+Pffd94SmQ87FrJxnMKC/+fXLjVIM23Gi02zDaW/D
 ZRu/lGON2ATmECulicDnUp4Ioi3u7/y5MT4c5MABcmPZIuy5BhvRQ4taA6uL0dBx0W7Ua02lVyx
 0S24MKPuETGVL8/990w==
X-Proofpoint-ORIG-GUID: 8PMjLWERRmKAnEdCytkIogAI_I4MJ0zb
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDAwMCBTYWx0ZWRfXztVjrIIfhMZC
 NURdIJZrb/DVP9QcaXxpvAuqUHvkhT5Oxi571GSBRZMTowFuyyNfnCQbPNiEKBBU2Hs/GBMgjn4
 DhGB06B53UXYRiSyq8Ek1WsfkyMzcEw=
X-Authority-Analysis: v=2.4 cv=Y6htIReN c=1 sm=1 tr=0 ts=6aa73ad8 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=JfrnYn6hAAAA:8
 a=EUspDBNiAAAA:8 a=rJC6BC1qXBLC2pyjZnYA:9 a=CjuIK1q_8ugA:10
 a=ODZdjJIeia2B_SHc_B0f:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: 8PMjLWERRmKAnEdCytkIogAI_I4MJ0zb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_08,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 impostorscore=0
 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609140000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_170753_954737_42756DA9 
X-CRM114-Status: GOOD (  21.05  )
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

On Fri, Sep 11, 2026 at 09:06:43PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord requires BIAS_EN_CLKBUFLR_EN to be set to 0x1f to enable the
> internal bias generator and clock buffer, which differs from the value
> used on existing SoCs.  Add qcom_edp_com_bias_en_clkbuflr_nord() per
> HPG Table 2-1-d.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 6cac4b55b66f..ec4220cffe69 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -1637,6 +1637,14 @@ static int qcom_edp_phy_com_resetsm_cntrl_nord(const struct qcom_edp *edp)
>  }
>  
>  
> +static int qcom_edp_com_bias_en_clkbuflr_nord(const struct qcom_edp *edp)
> +{
> +	writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
> +
> +	return 0;
> +}

qcom_edp_com_bias_en_clkbuflr_v8()?

> +
> +
>  static const struct of_device_id qcom_edp_phy_match_table[] = {
>  	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
>  	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
> 
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
