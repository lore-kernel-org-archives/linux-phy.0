Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62ABECA0EFE
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 12:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+QmE1HFz5rKlfidboslnrBkd3vIomQyE0yOP2f90ik=; b=BOPCeaNggXya57
	OO4iWxc7D4hCBi8n+dyVzxPvxdvCOY0u16d3Q/HkhvYY3YNtBCvcdNPt12ZL6WFbGNIyoA/qnVKax
	Yl0NzF6VpTg5S2a1bMhHLyKZ7JTF/Yi0wYiPbiOEbnNnGuAmtrsMXYy665JVx7c03OOE3k81DFOmv
	ZudK149MXUZWtMur6C0EblQqioEchp/Y32lL/qu6yPBiZXga7J3JSgl4QkRzb3891P73sVJq4xPQV
	xVz/bz3BCBuDve197wvgLBgyJCB32kc3vBs1Si3lU1b58QWw48HaJhpn+kUXDPEX+2CDsjPH/lZn9
	9oDyct96AD/5JhyKmajw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohUL-0000000DUez-0bry;
	Wed, 20 Aug 2025 12:00:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohGT-0000000DSaG-3yaP
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 11:46:04 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KAQfQ8028549
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:46:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=86Ln+09pzyozcQ/MppaK2YJ1
	etLMTMvIuD/Ncqfow7s=; b=B89iNIsyfpDobeJi/CKyI3/jrxOpQ+j9kBlRJmMt
	oREaLSNisve+CUXbIxSjxOHyK7NRV29nBJxgrtbXZ9wixa3qempgSqCMBFOISd2I
	aXXYfKEmz8jR9Ulph1oLhCuRyvkjcuD+oHqosGJXPkEYVd/UoUAImN007rwM3MLD
	ag6Gza9tPLGhGtYbPWD2AoyITlvn25eSjqkpGpgRnS05zRcQfrbAcfoAhjixaRtr
	WwBiD7IhRQZDHdIN2jjC9u2k5RDC+CwQPJdpnb/sSLg/BWOv8c4KTSJueKqtyfqN
	QIe4VrhJxUtK/GKAhUebGerKKN/I4DvYbwbtwjvxy+0FOA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52ashm4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:46:00 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a9289baafso17243736d6.1
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 04:46:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755690360; x=1756295160;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=86Ln+09pzyozcQ/MppaK2YJ1etLMTMvIuD/Ncqfow7s=;
        b=jhQ/aBcp09nFcS8oVQXvxK+8bHNfWSQ9O3IqlIrosk93Y1rnIH5XS/P9Xay4bIbgEc
         yaWYqoT4hg6TAJloWCf5GMbNw5f+i7teFZN92Vd08byTroRklOoUfzXt9WFGXZhfcRWE
         LnGwNhoH0of55kevd2cYlmxxtqcbqEeEJ6RyjWDF9vJcw0YB5T+bTodQAQZW/sbCWt/Q
         ttEBrP1EF0jwMeocgvJyDIkFnszLLKz3P2m87Z+gjIxOl/fskLTC9Waj6PdgF4EKFWW9
         F6e3QwMyBcZVHf6zc/WFdiLs4IZ7dEzaalz0Bvo4GRnTjvjwFShDl7iL4b2SHL/IRESl
         epYg==
X-Forwarded-Encrypted: i=1; AJvYcCVGfPMm59Dyw0/qBLpaNpgZ50oEc36w3ek6xLbJ+t1/qtFe0PrDp7KzsNLMXoMzstHE/onhsathN24=@lists.infradead.org
X-Gm-Message-State: AOJu0YwlP3dApn3H+qiC4/NpnC6hGTPp5iUKtzKkn+D5XFYIVAQM4uzn
	UJ2dgzwCi3Quwx7IO0NATkD6LGOXxsQrMBv93C7o0+P8F0yHa29hF+BH++0EMI3/sJ1tn5mSjG+
	BONFYNOlIrGHBEb4ZVg3crqReCG0PdSdg+X9LQc2gogbms046mXhkzk4o1xVLOw5V92de
X-Gm-Gg: ASbGncud5ijYAUE2TPSYca3932n09dEJ4vKOmroYq1UUdURlCGMZv19vlVtpStKarUU
	V8Kn/fBP6fNkTEqO/yQBCaPexa2FdnaQkXTgOf9Fi9VZ3LbDOAIcE+Oh75bwkDig7XLXtn4HyLq
	L6jrDtc/vSR+ypK721u3lsKyggQ8XnTFi4hHFJQgSKGM2jhtfpfEDfcDmuRxaQZtLie2EFD9TKw
	k4yPz75q6h4GTu/Ue3eQ9CbsDenjcc2Ue8OPBZlRoLccpgGA6AJb9AF5etUT4Tf92uYaVwazKRy
	NiJ03b6PrqSFAhWxlnLhApIpV63uSIeB3PaJCMZMXf28f3DK5ywUA3TyRWVa1Wp2wFXm5L1gU3J
	ySx404YpQ/LT3ZyhlMQbXeKYjZTZNv3uIpzD85nDahZdqOEEqZo53
X-Received: by 2002:ad4:5aa3:0:b0:707:4a94:2203 with SMTP id 6a1803df08f44-70c6a8bab6amr59972336d6.25.1755690359719;
        Wed, 20 Aug 2025 04:45:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlaN2Z2SMVVXIYqO8llzjIfBnKuhBBs2TnJOJtmy1FbGCyh3MeXwdPwEtQXchEguz6D2cJ7Q==
X-Received: by 2002:ad4:5aa3:0:b0:707:4a94:2203 with SMTP id 6a1803df08f44-70c6a8bab6amr59971906d6.25.1755690358997;
        Wed, 20 Aug 2025 04:45:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55e02c31498sm660064e87.12.2025.08.20.04.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:45:58 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:45:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
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
Subject: Re: [PATCH v3 09/14] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
Message-ID: <3pr7ninjxr4pgsz56dr6ojjmx27fzzszmtt6mx4r6qaqt25tnc@nrgx5qiqc7z4>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-9-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-9-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX9/DMzVus5zvH
 o+gbhJIFrQq/rA4A4/jWwMRsLjh+drBMZJD+Us4SoyAqwiZCzqw7pz8xB0QmJ1GnxF4ywnkWJYZ
 LPm0kUwwpE5l+QwGyTiyGdJieAKmgyhSofXJYKziHzCL5OVTjU7nukJEaXFxEUPQ3sjAmeXYTei
 FjvE5vDFXOp5YKABvGTD47fwkF9d3MDz6bYFBhtl+pwpT9WX4eSZBj7HCNi5LAqe3vQ5F1u1HAO
 I3tHgwBOJcjoRMJ0NToxqwY6k6pZGiioZRk+uzXK+uMjy9+EE2NXg2+5N1aLdW5YdHOb3AFgGGA
 5jgOOIwXVwb0L+y1Pu8l5XCNsRsK7DZDGEpLjLIjQiNAM1fCWYToCQ/NXL2u5qWUJ6Kcak6+/ab
 XoSsLM/2TaEqx27EHQkLMk7NOBA7cA==
X-Authority-Analysis: v=2.4 cv=TIIci1la c=1 sm=1 tr=0 ts=68a5b578 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=0tJ4ROd8JQyD-KrPA2gA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: PVimb5_GjAF6d9X6xUD4qJc3gHFoe0aY
X-Proofpoint-GUID: PVimb5_GjAF6d9X6xUD4qJc3gHFoe0aY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_044602_103294_707599FF 
X-CRM114-Status: GOOD (  20.87  )
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

On Wed, Aug 20, 2025 at 05:34:51PM +0800, Xiangxu Yin wrote:
> Define qmp_usbc_dp_phy_ops struct to support DP mode on USB/DP
> switchable PHYs.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 163 +++++++++++++++++++++++++++++++
>  1 file changed, 163 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 1508a4a5f57aff85318485b79528325f28a825a4..a1495a2029cf038bb65c36e42d0a4f633e544558 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -22,6 +22,8 @@
>  #include <linux/slab.h>
>  #include <linux/usb/typec.h>
>  #include <linux/usb/typec_mux.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
> +#include <drm/bridge/aux-bridge.h>

This one is not necessary yet

>  
>  #include "phy-qcom-qmp-common.h"
>  

[...]

>  static const struct phy_ops qmp_usbc_usb_phy_ops = {
>  	.init		= qmp_usbc_usb_enable,
>  	.exit		= qmp_usbc_usb_disable,
> @@ -1095,6 +1248,16 @@ static const struct phy_ops qmp_usbc_usb_phy_ops = {
>  	.owner		= THIS_MODULE,
>  };
>  
> +static const struct phy_ops qmp_usbc_dp_phy_ops = {

Please try restructuring your patches so that there are no unused
warnings in the middle of the series. You can split the next patch into
'parse' and 'enable' parts, then squash this patch into the 'enable'
one.

> +	.init		= qmp_usbc_dp_enable,
> +	.exit		= qmp_usbc_dp_disable,
> +	.configure	= qmp_usbc_dp_configure,
> +	.calibrate	= qmp_usbc_dp_calibrate,
> +	.power_on	= qmp_usbc_dp_power_on,
> +	.power_off	= qmp_usbc_dp_power_off,
> +	.owner		= THIS_MODULE,
> +};
> +
>  static void qmp_usbc_enable_autonomous_mode(struct qmp_usbc *qmp)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
