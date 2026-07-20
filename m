Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 874D8C4452A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfZivouVrP/awzlPzsO1WiZJSJEv6KaV6QfuBONFdOk=; b=s0QVhLrC7TvWXJ
	UqJzdgY5ZJhos7/cWpBiBjWkzWaar9xcmncN9u6r5lYcu290kflbYr4vZ0N+qOQfjiNqKZrmLViNd
	qEPi6hD2k/GJp1tf59U/JOUeGrf1TpvT2UjeJ2BM2uvJPIop4f0rz4dnW11go73uvrm3r0ziUE8zD
	k0AMi1CpOUOhDh1AFIeLpVL/fr+eRbGmqTXnSHwcPpy8gretLR8v78xRbJzI4/xEzCCgriZs1HpBt
	SAMUTFztxNMIa/RKnyNkkXX/dgW+tHq4QJcZwUkHKfC3iejheZVrS+PCX1rdcZTfiEcXaRM2SD4WM
	LoWMEYB1kH9kfUwBOang==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloqj-00000006wnY-0v6G;
	Mon, 20 Jul 2026 14:20:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloqh-00000006wmU-0rGk
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:20:04 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqWbX2324585
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:20:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sjxGraRdWr9o18D48nknKGR/TQtYQrAOX4PFkQIou1g=; b=gOFLNXiHFRrsIK1w
	rpNq7QNHCXsdyzVUgcfHx5cszS0zvJkjoXzOyBb68dxrSRiPeEpwP1os0jAD1xo0
	1TBn+YB0559oBLJM25Z1JN8Vycq0XHXc7HvAIxRlQShfBvy1hgI/DZF+EkP13uNK
	SuQUFCRJz7l+vfyc+WVjLNyRAGR0a32Tp+dobB/74sDu8ImG7QD5P2qVKEhAIjPE
	/+LIaN4IZyoBl0tU0Rb3j0J0TagttyjL2sjr+BmmExq3NSvTn6hxJ7QLTAvOih2x
	NwYp1Krx9v3yg+QenF58VF9GGAeWCX90boApEW45IrZIWlcTU0SegRFVIXDCG8Tt
	753IHg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhgs51a10-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:20:02 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c0f0a0760so243464401cf.2
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784557201; x=1785162001; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=sjxGraRdWr9o18D48nknKGR/TQtYQrAOX4PFkQIou1g=;
        b=CVutz18NsErVHlVL6RI8l1FIaem+jinTTtiMk9kA3zmNFstzH7kEfppD70L6oprqK/
         w0dmjJStROkaNVnAIELUEEJClWWQyO40A7T2waQE5seGpWBskEx9ilLPcOatHKHdkh18
         vKB0Q8yCNzYlqv2mJI8iMdURJrLa45071+/7tyab8PhjFQm6Jh9e2GudHqI+tt0gR3FL
         HLMEY9xxvAsfptdcSpJ5sPkMpEpScDbJ/VqYJ3XJ+Az4gyUH4JyhDEdlS/fPrrJhdK7A
         gxB3+l24C/nKypDfGBThAtSeuyHWVcrx4ei+G4qJ6ddK7z2CiIG/+kXTe1UIAfqEXA6z
         rStw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784557201; x=1785162001;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=sjxGraRdWr9o18D48nknKGR/TQtYQrAOX4PFkQIou1g=;
        b=djyMmORBLhDbAtTvPEw03G1Un+pmM0Nku38dsoRHbjzid69lIN6A8faX/3VM4ofHQj
         Lrqs0/9zj5Mn8SRp8GjooQQZ2WkSLGXOCgNPRUIhxSmMUMprbdQgBZJOcUyfLMmmpdeg
         2gNjps/qwQnZDU6wBZ/1bfWbiXho/S2Jko/M+I/3LK+hplUSuyfO57/aydhNqBbR4X1i
         gx+jdvhSUqf0vXKcv//iNoZjZIURncz9YW6b4gO9gLhBzIaW/Q+9HKq5W0yUZpC88md5
         e921TI7M0KEqlXmmNC8q6UCcEMVdm3NaFU5quIaJw/LNEDjf98FKWkzbF1p/K5SJiHOm
         euNQ==
X-Forwarded-Encrypted: i=1; AHgh+RqhfzmPq2Rav9g2ni7xNVg0dnv7Vci4qYHPaVBsQevoIWDAmgTA74VXt9vwOIMm/2vfKJZU7y+cGlE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3GEXEJCzL3Wb+PQmx/+HIfKkERyIvMiWi8O2AyCIGyhOsGgCM
	x85fsLWAGMjufiPaLNGdDLjYgx+nb85cdVlAHSowWHeud88QySCg+CDu5SE+Vi+Ql9vstLq1k50
	StY0lnZvKOPL9FcwbX3JnH+yqdZCWgtRkYo1pmn+3NuMC9HzKC+VKbTwXzmlbTsBjUpEb
X-Gm-Gg: AfdE7clRO5gSSeapHDPeOmkmDxpwSI14NWLhhhB5mEUfeNVE7McDlx1UrGPtdJEvLag
	xKUepTYs8BqEXwFGyUiRUnI7Y7Yu3ajzDo/bdr2kBnn3rvADRGBHhc1tx0EbDqgJB36T40uigrd
	WuLCgO4jJ54YAYuhDq2rbbnEb7sH9J5HrGmh1GRuBRbyL9Uydq8IqHu3rCsYBtLBmvC2cQgjtQV
	PM3ftoURlvIikwhI+hZ26rlLn2sEhUaWHz5hvWlTPj6gyCeGm/csP41ax9yM9R29myLVNGJJ/df
	hYWBj2v/aD/03nq6tON5dIXaImwtbY0RqdlE0S+xeSndC65q/fExxtZdfkm1TCbkXxCpdDX8oQ7
	Koqj2CLlCMeW9LTN9ZcfgTi5vD/PkqrAHyM8JJXiNtbLt17UjkUTxl3gmSfOy0gxL5+hFPCk7eM
	pVvBPTDfG4ioKEcQ==
X-Received: by 2002:a05:622a:1186:b0:517:6804:3732 with SMTP id d75a77b69052e-5213e77cf30mr120810531cf.55.1784557200508;
        Mon, 20 Jul 2026 07:20:00 -0700 (PDT)
X-Received: by 2002:a05:622a:1186:b0:517:6804:3732 with SMTP id d75a77b69052e-5213e77cf30mr120806691cf.55.1784557199310;
        Mon, 20 Jul 2026 07:19:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e245e5sm2381076e87.71.2026.07.20.07.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:19:58 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:19:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 5/8] phy: rockchip: samsung-hdptx: Drop TMDS rate
 setup workaround
Message-ID: <al4ujA5d6B5s23C4@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-5-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-5-ce5e1d456cda@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE1OSBTYWx0ZWRfX9CV6vn9Kej+s
 FLIjNutDbEIeO7be/bd7S4HA+3X9Nn8wtY/J2/JZMk41sKw8I6Px9bRNi8+HsxkszgrIESKBhyS
 jqVBHssQDTja32H+2t5HWKtN3myT9cE=
X-Proofpoint-GUID: 4HpVyT3S3BOBpWbit-c2TbaEQtVf-MNh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE1OSBTYWx0ZWRfXwXm56yLfV6Np
 E80E40PQp11jlXnVPdj7JcB2kzb6qNTWvvf/QXhqcrS9GwMDIMYuEh6vGVxizLDwXYoHvNocLck
 Uf91bzu8u516xkEQiBNlBksxanLVuAkqFr8uFmU42So1MiYuE2+2UTlwLvfVKzQaCz/b1Enwb6/
 jFYGrjjmwiSHts4iZWTYLYSz3UGUxZzsFMELFyKoVY4ehZeHXUUAefbJoZxLRixKIbRdKTVer+2
 tVsO2Yze2ECcZur8L1nDUWvwX0jH2DUihOYG7Z6DPS/yTO9JPgiM+3GZS05TQ37cnrsxxfx8UOm
 eCNKsAuXVCR4z8DNeWW/MDxbl1q9vJsTWwNf+EJ8ceku82lzxap6C/sm8libAJTCKJJChvECKUR
 mvmuFpjpjFRhkPq1JZVCzdojQpviGiUkKIb2K+J92MQAiCi90KWRUxSn8mkxwQSUcEcsHffLlDT
 Mrc72b7mJSIRoQadWxw==
X-Authority-Analysis: v=2.4 cv=CpiPtH4D c=1 sm=1 tr=0 ts=6a5e2e92 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=QX4gbG5DAAAA:8
 a=zwdtIQzbwfcTUTQlMeAA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=dawVfQjAaf238kedN5IG:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: 4HpVyT3S3BOBpWbit-c2TbaEQtVf-MNh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_072003_275007_2BD2AF09 
X-CRM114-Status: GOOD (  24.43  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, Jun 12, 2026 at 02:45:24AM +0300, Cristian Ciocaltea wrote:
> Since commit ba9c2fe18c17 ("drm/rockchip: dw_hdmi_qp: Switch to
> phy_configure()") the TMDS rate setup doesn't rely anymore on the
> unconventional usage of the bus width, instead it is managed exclusively
> through the HDMI PHY configuration API.
> =

> Drop the now obsolete workaround to retrieve the TMDS character rate via
> phy_get_bus_width() during power_on().
> =

> While at it, get rid of the extra call to rk_hdptx_phy_consumer_put() by
> moving the statement at the end of the function.
> =

> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 27 +++++------------=
------
>  1 file changed, 6 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/=
phy/rockchip/phy-rockchip-samsung-hdptx.c
> index 25bd821cd039..35997087d61c 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -1660,22 +1660,6 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>  	enum phy_mode mode =3D phy_get_mode(phy);
>  	int ret, lane;
>  =

> -	if (mode !=3D PHY_MODE_DP) {
> -		if (!hdptx->hdmi_cfg.rate && hdptx->hdmi_cfg.mode !=3D PHY_HDMI_MODE_F=
RL) {
> -			/*
> -			 * FIXME: Temporary workaround to setup TMDS char rate
> -			 * from the RK DW HDMI QP bridge driver.
> -			 * Will be removed as soon the switch to the HDMI PHY
> -			 * configuration API has been completed on both ends.
> -			 */
> -			hdptx->hdmi_cfg.rate =3D phy_get_bus_width(hdptx->phy) & 0xfffffff;
> -			hdptx->hdmi_cfg.rate *=3D 100;
> -		}
> -
> -		dev_dbg(hdptx->dev, "%s rate=3D%llu bpc=3D%u\n", __func__,
> -			hdptx->hdmi_cfg.rate, hdptx->hdmi_cfg.bpc);
> -	}
> -
>  	ret =3D rk_hdptx_phy_consumer_get(hdptx);
>  	if (ret)
>  		return ret;
> @@ -1701,9 +1685,10 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>  		rk_hdptx_dp_pll_init(hdptx);
>  =

>  		ret =3D rk_hdptx_dp_aux_init(hdptx);
> -		if (ret)
> -			rk_hdptx_phy_consumer_put(hdptx, true);
>  	} else {
> +		dev_dbg(hdptx->dev, "%s rate=3D%llu bpc=3D%u\n", __func__,
> +			hdptx->hdmi_cfg.rate, hdptx->hdmi_cfg.bpc);
> +
>  		if (hdptx->pll_config_dirty)
>  			ret =3D rk_hdptx_pll_cmn_config(hdptx);
>  =

> @@ -1716,11 +1701,11 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>  			else
>  				ret =3D rk_hdptx_tmds_ropll_mode_config(hdptx);
>  		}
> -
> -		if (ret)
> -			rk_hdptx_phy_consumer_put(hdptx, true);
>  	}
>  =

> +	if (ret)
> +		rk_hdptx_phy_consumer_put(hdptx, true);

This looks likes an unrelated change. Could you please split it to a
separate commit?

> +
>  	return ret;
>  }
>  =

> =

> -- =

> 2.54.0
> =


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
