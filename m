Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECE92C88E64
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 23:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVBOktaaFd20RvTmwU27XRFSZ8U4/yFZkat4c+EOlAw=; b=hXOJtjxOZvVCkK
	8MmORvA3TdNA9S0ulsU7qbAxv5ithEnNb8RJEjIVZoff6lzV1P8632KccY0VCEtr//zt/YJlO9qrO
	KuQQfvPzchf4i/lGlue9ARu0pWCeDfXvJJUhTJKCTQFbcnc/WfrbxsdTjQk8wyRbwTBCapO9lmQ8j
	hpP2xg7S2bVoM4LhF3KjWlqk78zsx5Gef1VnZ0vh2lDnhWnIkkZpxbOB9hBtWRz6F3sJgNTIpYPqJ
	JE6YzmBAKePcWHLdBkvZgLoHbOkbQu2Id8CoSKFO9LdE5xM7pXyoJibOFphFr/sVYY3Tv9F+Pqqm2
	4cJPrbL3QCkKjX+F2PGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5ttI-000000026ko-1XfD;
	Sun, 13 Sep 2026 23:45:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5ttG-000000026kS-0hX5
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 23:45:43 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DNZ7UC3476693
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:45:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uIppl4N+WY/n0iZ5p2U3JRnXKjA+shABwFxLcxaGkwU=; b=KjAgGAPgJi7FdI5q
	zV6N+B45qD/7OXwGt9z25VG2mJnd/R7JOWIPMyXqWy3jy6M5OWpRVcpuGgxfSR4X
	rEw2WLHVFtXS038NM+dfDYFZnnpXiHQNNwXz0cLO1zFKt1jyGR5ExR8vWI4ETZV7
	d5t759RW1ZTGzPuPfFsox9LZHopxsXV/BnWrAGliICLDSbmtmv026YA8meEFoHhu
	mebAjiS5d6L0mqJyk2tRAUgjzIji2XnIPyYWX0PhmlOVNpQy97YO06rOTwCiU7dK
	a7nBFuRbte/LkpwLgdxU8qCgJh+Tl8sBsHz2wAu3OgkvHB1sRny0mOg7Ku+/zRR9
	Q7p72A==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9dmdfq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:45:40 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-78d25a8ff32so760728137.2
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 16:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789343140; x=1789947940; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=uIppl4N+WY/n0iZ5p2U3JRnXKjA+shABwFxLcxaGkwU=;
        b=QMWVv4EMzFqr+UJHihBonO4g0GYMhkxK8K1TLP47VmWhAzl/61mITlhjM0zriKItUR
         qVBgiOBMjRMy3MRjv43gJRso/chaa76FgqEqZ7huyLl62Sxsv9ojt68ZeRLprUw7xIOO
         gOxZQJIQzz3TKAPdWE9kJLNLN2g1VOz1dLeF44y31U3vMNAzlYIdePtDaC8DJ7YEgi/u
         YrzdTCkTEAjPdvxHRr99fvYpwcPToyo/ybvSHmBsPUw6yUoSIT2QJEY6jySvnaPCw/qS
         53Oox0YmJeCbgrmXnCRJc1VvMfgQ9SgyYgv0St00b76ocGT+68GIFdvAwxXhODmAC8ci
         k48A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789343140; x=1789947940;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=uIppl4N+WY/n0iZ5p2U3JRnXKjA+shABwFxLcxaGkwU=;
        b=W1xcK7wVoifPOFt9mdWRCnAqVV/2bsIvr5Uv/kpKLAnvPXZye6HA4RxN4VHQssqWvX
         E6+CkzclJSv5ExjbGEVKzuZOh92SMGb3htpRcBCMLSQanBHLrVB6XkRjxFOAmd8oQmAs
         4ae/SHnYXsq7Puyl674eR7W6yG6ljEYgW9VrSYP8NfzAq8Ew1b0QIJ8+laEp8R6srEqI
         CwnsvIUcOxuCetwd0gb5n7Dsuhhxni7DEoDH2axjdilVYcWKSXksDu/BIje9SAPT6Wrs
         dviRr1lmNXcKESRcO14zQCtUIIbfCqtBwa+LsFxSaHGS1pIvfr5mF96L3k4B8v7+ivCf
         fxyQ==
X-Forwarded-Encrypted: i=1; AKwUvBy1b6YXr1k71G1X6/cQs/6biN1bm/kurly19oPsbsnFApFrfObnkB40XsQWMCbuHOsXGBPyCzNEDoQ=@lists.infradead.org
X-Gm-Message-State: AFuF++mayvKDaihoc5fBq0PgrobF3tt5gova+bnjVhFHhAQsfYlwpMGa
	GsP0IqnVfpoA6up9z7jg7oxuMlnwnBdMka06TFYHz3yFfPPzm5ugjU8yMtt93bIxohHdNinxTg0
	hYdRXYF62Ypw48PAY05HwRMYdDdHHongFwy2hvqcYnXcuOgDTiSB731qbJ4VF5yPR0fyT
X-Gm-Gg: AYBFou2LtAgfHeJNlzrQ9tDaDBmHjdgQqcN+lJeqEBVupJ6TEUkpAOTTzh43c/lBWdM
	5VWnPCrA5aHdF9vFtX/0UhjUQwQukRJan8FE4nADIohF2HrbyYVMzJCY4dVNrPrIdYGAksbrpGx
	cvf9gueIXsQJvwjcx4kflZ/uCHNXev7dU+QGI17p5ub1BsBVGYemjouAtv+Z77fx+NAGsM/mILe
	4SAsrqNqkc1aiXx85E7Dmo2KB0CmB4xn7Di22TRI/+80WdKoxC6ipu5v5kkFOgUe4aFV/pyNH6q
	2sdsqKVhbyL/Kd0rQMLumsLiqpRIhPsJwN8dgAeKcVsU+WrAXE3qn6IKbQaimg9OI+VkveTNlBa
	YqL/sw0iH/6psgDuLUBl9Mb/JQb0OOjLAMG+H1ghvL27uQCDDVfa73cZC66QLgwJtelavmt00WG
	98yje0ICbq9vr7
X-Received: by 2002:a05:6102:5607:b0:790:c7bb:43fd with SMTP id ada2fe7eead31-79b5bf316f7mr8987137.8.1789343139669;
        Sun, 13 Sep 2026 16:45:39 -0700 (PDT)
X-Received: by 2002:a05:6102:5607:b0:790:c7bb:43fd with SMTP id ada2fe7eead31-79b5bf316f7mr8976137.8.1789343139111;
        Sun, 13 Sep 2026 16:45:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a04568f2sm2075707e87.19.2026.09.13.16.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 16:45:37 -0700 (PDT)
Date: Mon, 14 Sep 2026 02:45:34 +0300
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
Subject: Re: [PATCH 04/17] drm/msm/dpu: Add support for DPU 12.1 on Nord
Message-ID: <bqoezyuyrjiawudbwxybvjpdun5f3fmhhzukdeg2holuc2mykq@oa5mhoylopz7>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-4-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-4-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDM0MSBTYWx0ZWRfX4Ot6zRuwQqS4
 eWf9ktRDytVj/TClCirSkYUFy1fC7qa+3XC5zt0NcjS7lEnB4RU82fAF2cZ4I0/MR7U+msWFdSL
 9SjnIKkDGwU6coGAEGGqxewCSqK3IONltT1lk6a88Lv5auaAvWLqEFCVwIj+52smHLVASY0Z+sy
 o8RGMSy/94/s5B63R7OHnL78aAdM2oLzlBoEGS/h7l7ddjX0i7UoU8BtbS0IY9KERoL0cJixh8S
 LtiS63KE4xQAWESGTf1Gmdx21QrmJmLJ2ybRSJhJhfbfUVZ/G2HDP5PcTcgTDqkR4gcNFihrcy2
 sLmqfCbUmgb3k06TiLxix43Zsmj9lnU3upaZsoEbl1fYSPtJkAKkn6RTbLgnZqhfLsZAgjuz02R
 wFEguQNBLKiUxwPufxT39dThhc2qnIt39TF4FAjR2lOh05Z3KlSvgj4idCXHNFDbBAG/jpHB/06
 b+AehvRbSREZMt7v8Uw==
X-Proofpoint-ORIG-GUID: QgFgIpQ2hwrYhBGR5TRgHOnlpNnp3xGq
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDM0MSBTYWx0ZWRfX9c1pfD8Mw+dS
 tDg4RZJSJaYqr5qj5TVrUETz8hNnoSC3/WIINdIEE38SrYQ0B06o6yJaEbCfH8Xgrc6ESbAH6Iv
 zJZpG+rg09SYKBeXNdgDZ2RgBYV7dEQ=
X-Authority-Analysis: v=2.4 cv=Y6htIReN c=1 sm=1 tr=0 ts=6aa735a4 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=99Y8_FLkFjoiQTscg30A:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-GUID: QgFgIpQ2hwrYhBGR5TRgHOnlpNnp3xGq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 impostorscore=0
 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130341
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_164542_384675_A770515B 
X-CRM114-Status: GOOD (  30.67  )
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

On Fri, Sep 11, 2026 at 09:06:35PM +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> =

> Add the DPU catalog entry for the Qualcomm Nord SoC (MDSS 12.1, DPU
> 1499A). Nord is DP-only with no DSI, and provides 8 DSPP blocks, 2
> writeback blocks, 8 interfaces and 2 DP controllers.
> =

> Extend enum dpu_intf with INTF_9 and INTF_10, which Nord is the first
> platform to use.
> =

> Note: register addresses and xin_id values in the catalog are borrowed
> from sm8750 and precedent platforms and are marked with FIXME(REG_ADDR)
> and FIXME(XIU_MAP); they need verification against a real Nord register
> map before production use.
> =

> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  .../gpu/drm/msm/disp/dpu1/catalog/dpu_12_1_nord.h  | 588 +++++++++++++++=
++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h        |   2 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  5 files changed, 593 insertions(+)
> =

> diff --git a/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_12_1_nord.h b/driv=
ers/gpu/drm/msm/disp/dpu1/catalog/dpu_12_1_nord.h
> new file mode 100644
> index 000000000000..8eb18752f3c4
> --- /dev/null
> +++ b/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_12_1_nord.h
> @@ -0,0 +1,588 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserv=
ed.

Follow the guidelines please.

> + * Copyright (c) 2015-2018, 2020 The Linux Foundation. All rights reserv=
ed.

Oh, really?

> + */
> +
> +#ifndef _DPU_12_1_NORD_H
> +#define _DPU_12_1_NORD_H
> +
> +/*
> + * NORD DPU 12.1 catalog header. Generated from hardware summary YAML for
> + * MDSS 12.1 - DPU 1499A (Nordschleife). This is a DP-only chip with no =
DSI.

You already said that in the commit message.

> + *
> + * All register addresses and xin_id values below are borrowed from the
> + * reference chip (sm8750, MDSS 12.0) and precedent chips (Lemans, Glymu=
r).
> + * Nord's YAML provides only block counts and feature statements, not ad=
dresses.
> + * See FIXME(REG_ADDR) markers throughout for borrowed values requiring
> + * verification against a real Nord register map before production use.

What? You work at Qualcomm and you can't verify this against the memory
map? Please cross-check it and also the number of blocks, hardware
capabilities, etc.

> + *
> + * Key differences vs sm8750:
> + * - 8 DSPP blocks (4 full + 4 lite) vs sm8750's 4
> + * - 2 writeback blocks (WB1, WB2) vs sm8750's 1 (WB2)
> + * - 8 interfaces (INTF_0,3,4,6,7,8,9,10) vs sm8750's 4 (INTF_0,1,2,3)
> + * - 2 DP controllers (DP0, DP1) vs sm8750's 1 (DP0 only)
> + * - No DSI (removed entirely)

No need to. If you want, put it into the commit message.

> + */
> +
> +
> +static const struct dpu_lm_cfg nord_lm[] =3D {
> +	{
> +		.name =3D "lm_0", .id =3D LM_0,
> +		.base =3D 0x44000, .len =3D 0x400,
> +		.features =3D MIXER_MSM8998_MASK,
> +		.sblk =3D &sm8750_lm_sblk,
> +		.lm_pair =3D LM_1,
> +		.pingpong =3D PINGPONG_0,
> +		.dspp =3D DSPP_0,
> +	}, {
> +		.name =3D "lm_1", .id =3D LM_1,
> +		.base =3D 0x45000, .len =3D 0x400,
> +		.features =3D MIXER_MSM8998_MASK,
> +		.sblk =3D &sm8750_lm_sblk,
> +		.lm_pair =3D LM_0,
> +		.pingpong =3D PINGPONG_1,
> +		.dspp =3D DSPP_1,
> +	}, {
> +		.name =3D "lm_2", .id =3D LM_2,
> +		.base =3D 0x46000, .len =3D 0x400,
> +		.features =3D MIXER_MSM8998_MASK,
> +		.sblk =3D &sm8750_lm_sblk,
> +		.lm_pair =3D LM_3,
> +		.pingpong =3D PINGPONG_2,
> +		.dspp =3D DSPP_2,
> +	}, {
> +		.name =3D "lm_3", .id =3D LM_3,
> +		.base =3D 0x47000, .len =3D 0x400,
> +		.features =3D MIXER_MSM8998_MASK,
> +		.sblk =3D &sm8750_lm_sblk,
> +		.lm_pair =3D LM_2,
> +		.pingpong =3D PINGPONG_3,
> +		.dspp =3D DSPP_3,
> +	}, {
> +		.name =3D "lm_4", .id =3D LM_4,
> +		.base =3D 0x48000, .len =3D 0x400,
> +		.features =3D MIXER_MSM8998_MASK,
> +		.sblk =3D &sm8750_lm_sblk,
> +		.lm_pair =3D LM_5,
> +		.pingpong =3D PINGPONG_4,

No DSPP's?

> +	}, {
> +		.name =3D "lm_5", .id =3D LM_5,
> +		.base =3D 0x49000, .len =3D 0x400,
> +		.features =3D MIXER_MSM8998_MASK,
> +		.sblk =3D &sm8750_lm_sblk,
> +		.lm_pair =3D LM_4,
> +		.pingpong =3D PINGPONG_5,
> +	}, {
> +		.name =3D "lm_6", .id =3D LM_6,
> +		.base =3D 0x4a000, .len =3D 0x400,
> +		.features =3D MIXER_MSM8998_MASK,
> +		.sblk =3D &sm8750_lm_sblk,
> +		.lm_pair =3D LM_7,
> +		.pingpong =3D PINGPONG_6,
> +	}, {
> +		.name =3D "lm_7", .id =3D LM_7,
> +		.base =3D 0x4b000, .len =3D 0x400,
> +		.features =3D MIXER_MSM8998_MASK,
> +		.sblk =3D &sm8750_lm_sblk,
> +		.lm_pair =3D LM_6,
> +		.pingpong =3D PINGPONG_7,
> +	},
> +};
> +
> +/*
> + * Nord has 8 DSPP blocks: 4 full-featured (DSPP0-3) and 4 lite variants
> + * (DSPP4-7). The driver has no separate lite-DSPP struct, so all 8 are
> + * modeled with the same dpu_dspp_cfg/dpu_dspp_sblk structure. Lite vari=
ants
> + * have reduced features, but this is handled at runtime via feature fla=
gs,
> + * not via separate catalog entries.

Is it really handled? I don't see it.

> + * FIXME(REG_ADDR): DSPP4-7 base addresses extended via 0x2000 stride fr=
om
> + * sm8750's DSPP3 base (0x5a000). Verify against real Nord register map.

ROFL. Who is going to verify those?

> + */
> +static const struct dpu_dspp_cfg nord_dspp[] =3D {
> +	{
> +		.name =3D "dspp_0", .id =3D DSPP_0,
> +		.base =3D 0x54000, .len =3D 0x1800,
> +		.sblk =3D &sm8750_dspp_sblk,
> +	}, {
> +		.name =3D "dspp_1", .id =3D DSPP_1,
> +		.base =3D 0x56000, .len =3D 0x1800,
> +		.sblk =3D &sm8750_dspp_sblk,
> +	}, {
> +		.name =3D "dspp_2", .id =3D DSPP_2,
> +		.base =3D 0x58000, .len =3D 0x1800,
> +		.sblk =3D &sm8750_dspp_sblk,
> +	}, {
> +		.name =3D "dspp_3", .id =3D DSPP_3,
> +		.base =3D 0x5a000, .len =3D 0x1800,
> +		.sblk =3D &sm8750_dspp_sblk,
> +	}, {
> +		.name =3D "dspp_4", .id =3D DSPP_4,
> +		.base =3D 0x5c000, .len =3D 0x1800, /* FIXME(REG_ADDR): lite variant */
> +		.sblk =3D &sm8750_dspp_sblk,
> +	}, {
> +		.name =3D "dspp_5", .id =3D DSPP_5,
> +		.base =3D 0x5e000, .len =3D 0x1800, /* FIXME(REG_ADDR): lite variant */
> +		.sblk =3D &sm8750_dspp_sblk,
> +	}, {
> +		.name =3D "dspp_6", .id =3D DSPP_6,
> +		.base =3D 0x60000, .len =3D 0x1800, /* FIXME(REG_ADDR): lite variant */
> +		.sblk =3D &sm8750_dspp_sblk,
> +	}, {
> +		.name =3D "dspp_7", .id =3D DSPP_7,
> +		.base =3D 0x62000, .len =3D 0x1800, /* FIXME(REG_ADDR): lite variant */
> +		.sblk =3D &sm8750_dspp_sblk,
> +	},
> +};
> +

[...]

> +
> +/*
> + * NOTE: Each display compression engine (DCE) contains dual hard
> + * slice DSC encoders so both share same base address but with
> + * its own different sub block address. Nord retains sm8750's
> + * topology of 8 DSC instances (2 per DCE =D7 4).

Tell your AI to stop adding useless comments.

> + */
> +static const struct dpu_dsc_cfg nord_dsc[] =3D {
> +	{
> +		.name =3D "dce_0_0", .id =3D DSC_0,
> +		.base =3D 0x80000, .len =3D 0x8,
> +		.features =3D BIT(DPU_DSC_NATIVE_42x_EN),
> +		.sblk =3D &sm8750_dsc_sblk_0,
> +	}, {
> +		.name =3D "dce_0_1", .id =3D DSC_1,
> +		.base =3D 0x80000, .len =3D 0x8,
> +		.features =3D BIT(DPU_DSC_NATIVE_42x_EN),
> +		.sblk =3D &sm8750_dsc_sblk_1,
> +	}, {
> +		.name =3D "dce_1_0", .id =3D DSC_2,
> +		.base =3D 0x81000, .len =3D 0x8,
> +		.features =3D BIT(DPU_DSC_NATIVE_42x_EN),
> +		.sblk =3D &sm8750_dsc_sblk_0,
> +	}, {
> +		.name =3D "dce_1_1", .id =3D DSC_3,
> +		.base =3D 0x81000, .len =3D 0x8,
> +		.features =3D BIT(DPU_DSC_NATIVE_42x_EN),
> +		.sblk =3D &sm8750_dsc_sblk_1,
> +	}, {
> +		.name =3D "dce_2_0", .id =3D DSC_4,
> +		.base =3D 0x82000, .len =3D 0x8,
> +		.features =3D BIT(DPU_DSC_NATIVE_42x_EN),
> +		.sblk =3D &sm8750_dsc_sblk_0,
> +	}, {
> +		.name =3D "dce_2_1", .id =3D DSC_5,
> +		.base =3D 0x82000, .len =3D 0x8,
> +		.features =3D BIT(DPU_DSC_NATIVE_42x_EN),
> +		.sblk =3D &sm8750_dsc_sblk_1,
> +	}, {
> +		.name =3D "dce_3_0", .id =3D DSC_6,
> +		.base =3D 0x83000, .len =3D 0x8,
> +		.features =3D BIT(DPU_DSC_NATIVE_42x_EN),
> +		.sblk =3D &sm8750_dsc_sblk_0,
> +	}, {
> +		.name =3D "dce_3_1", .id =3D DSC_7,
> +		.base =3D 0x83000, .len =3D 0x8,
> +		.features =3D BIT(DPU_DSC_NATIVE_42x_EN),
> +		.sblk =3D &sm8750_dsc_sblk_1,
> +	},
> +};
> +
> +/*
> + * Nord has 2 writeback blocks: WB2 (matches sm8750) and WB1 (new).
> + * WB1 base and xin_id are inferred via stride from existing WB pattern.
> + * FIXME(REG_ADDR): WB1 base address inferred as 0x65000 - 0x2c8 stride.
> + * FIXME(XIU_MAP): WB1 xin_id set to 7; verify against real hardware map.

ROFL

> + */
> +static const struct dpu_wb_cfg nord_wb[] =3D {
> +	{
> +		.name =3D "wb_1", .id =3D WB_1,
> +		.base =3D 0x64800, .len =3D 0x2c8, /* FIXME(REG_ADDR): inferred */
> +		.features =3D WB_SDM845_MASK,
> +		.format_list =3D wb2_formats_rgb_yuv,
> +		.num_formats =3D ARRAY_SIZE(wb2_formats_rgb_yuv),
> +		.xin_id =3D 7, /* FIXME(XIU_MAP): inferred */
> +		.maxlinewidth =3D 4096,
> +		.intr_wb_done =3D DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 3),
> +	}, {
> +		.name =3D "wb_2", .id =3D WB_2,
> +		.base =3D 0x65000, .len =3D 0x2c8,
> +		.features =3D WB_SDM845_MASK,
> +		.format_list =3D wb2_formats_rgb_yuv,
> +		.num_formats =3D ARRAY_SIZE(wb2_formats_rgb_yuv),
> +		.xin_id =3D 6,
> +		.maxlinewidth =3D 4096,
> +		.intr_wb_done =3D DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 4),
> +	},
> +};
> +
> +/*
> + * Nord has 8 active interfaces (INTF_0,3,4,6,7,8,9,10) with no DSI.
> + * DP0 connects to INTF_0, INTF_3, INTF_6, INTF_7 (4 ports for MST).
> + * DP1 connects to INTF_4, INTF_8, INTF_9, INTF_10 (4 ports for MST).
> + * Interfaces 1, 2, 5 are skipped (removed from sm8750).
> + * All interface base addresses extend the stride from sm8750.
> + * FIXME(REG_ADDR): INTF_4,6,7,8,9,10 addresses inferred via 0x1000 stri=
de.

Same ROFL. No. Do your job, please.

> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h b/drivers/gpu/dr=
m/msm/disp/dpu1/dpu_hw_mdss.h
> index 0e65bf5ddc4a..7eccb4d2c65e 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h
> @@ -226,6 +226,8 @@ enum dpu_intf {
>  	INTF_6,
>  	INTF_7,
>  	INTF_8,
> +	INTF_9,
> +	INTF_10,

This just broke DSI tearing support. See enum dpu_hw_intr_reg

>  	INTF_MAX
>  };
>  =


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
