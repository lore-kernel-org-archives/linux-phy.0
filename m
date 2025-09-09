Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D118CAC596
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 17:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rx4Yg3+50g0bGMos/PZ9iBolPYEMegx5g6lwFgBtfw=; b=Y7sPIASmGxeRth
	bxU0uxBr+JJ/xa9pEcwzE1jpMrZ8Zy8LeU4ihidisJQ+AkwJLaabDApEYcwb4k3YCfClYS74ams5B
	pFdf9yQ+EmWuJ3ysJ7WUuRy32K1focipfUaMGRb/lkCzH0QrnfH2XFRsIPLHyKcp3Lyl1Utj+WdqS
	tBAIzNHpMv+uARp22FpjEJLTPp6rFy0Y6y09X3fywRQIxfTkXs1GyLi64LG3vNDSMzyMeZdoYhmeQ
	QvL2OkMi68spl6hDOISLdRcSei0O58YXxFKfw4SelUAwNOByvqRQqDjyYPh5mxGfgvxtbAMydIv/F
	fQq6vWrQ9qtNi2zOKA/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw1vB-00000008mi5-3uhh;
	Tue, 09 Sep 2025 17:14:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvwOA-00000006gTs-1IhO
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 11:19:55 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LQT9029773
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 11:19:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=q14H0KT1COSDYSRp0kk+HYET
	w3KiV71BJr5ELJZUOaU=; b=YbPRU7G8kgcfMyBcs0cpK74fK0Wq27pJqrjPwAFL
	jHn8H3TOyLZPmrsuPh+3o+j6OQcNODjqRxN6lqnXslf3vMLS0gRmxJMDQ0A/B0M0
	5D8Qx/tfKtQVCL40gEz2RxqKcxpIQITm45dw0WePWTwMWUoaMuTMLFFKJ9RT6fj2
	uHFAcrxteguq7WRx40QQgskdEK4rHplvrEWUDuXbeokAa8saflNdZJdr0xCAadav
	79Eng+5gPuqcGBfNAd8LOcNK4W8QkGlYKws9B5lB3TPwBSlAnC0XDIKVejEHdGxR
	QfQZMSbnk2Rd9ePNWJt3wve73zn7fKLCIaswm2NjV+xy8g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37vg83-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 11:19:53 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-718c2590e94so152700686d6.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 04:19:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757416792; x=1758021592;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q14H0KT1COSDYSRp0kk+HYETw3KiV71BJr5ELJZUOaU=;
        b=QnTqpDu1ezYU5tOpHNJPL/8RvGVOmXhuryccUVHKsJh/t5E1RqRYb4gFa/C5Wmizy6
         1CTvTjmOXppGWihfE3xLL8l6U+zxPyJWztFbIlrlvYQOOaTDPf1LmIUZf/PfXdN2JdGk
         6ENdK6rslTFpb4I2jnhdGckbNyYsgQadq97gSwg4ugPriK56uMpI/wvbEtKFWHUxuZeK
         Fy/07zQM31/lW/63WmIDWBFfBQ6N7CGAphv5GnZ1V2cAW/MKAKy4ETIzEuVt28ggevMf
         vFHucvvCHU6DxkyKi38CbP+I/0e1Fw47ERcKe4FWlNPSgC14G7jc/+hq0ScwA7oV49Yh
         xp5A==
X-Forwarded-Encrypted: i=1; AJvYcCXRXM/yrwGwbFMUKZUGYCpUDi97I7/VBmvjw/D6YgrO9E7DDDlueo3a+ACDJBIsGSAAuI9o219aNtA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzE86pWaE2IgMpAvd7/hto/nMOnICTWEE3XaNMQ/R843X4MlP3g
	8TGzTSFC5ML0Km/nN906s2Zh5O1C8pmFSMOcOiI2jcsTDJak2AviVK9Pj3SqS/wsEoIqhnLdaVY
	y4dAV3LHdhuJQTV4cR2iE32rIW2XJaxbJRwUlFd9ZWHINIok04+4I0e7EvRitJ6CmGVvI
X-Gm-Gg: ASbGncvhZDoYaxbG5mAT2fiJ66N/vY6yF6CkPsUvN4pcADgFnpLluZgwzOwygO0g/DZ
	53ReM3/FZHuTmhtIqCxolBJI7FpylZTrC/UTr6S1DpGobzO4ZlEwGQHRve2FpRZrSX94ta9IEU8
	HQCY7YBLR8WQhlGMno4zW85UuD//S1y894xdIpRowMX44WHcB72tpvCGUzHOuCmRSjPba0pJ9BJ
	dbJDZpOuSn2A1sQ8Tjkq+r85CHVQh9+Lc12HWMYeIs/OjmfDffr+H0Cwm5oDCGvZQ3f9WXEBY57
	MGQdhSfcbxO992Hed/FfwWds5AjXgSZ7Lwk3s3Fg4HOI2yofHgpIWd2fdt0ChVE0/n3WeCMGApm
	uu49Mf3r/hcHEIGGzKSvNNANXc8mt6WJAVFKxXiF/Il/3ww58Nrc9
X-Received: by 2002:a05:6214:224b:b0:715:538a:2fee with SMTP id 6a1803df08f44-72bc3373bb1mr136679936d6.20.1757416792261;
        Tue, 09 Sep 2025 04:19:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFz8PDFRuBVWB09FnFcdYcVbjIUOegYWwGsl9hFOnuToizyvXk+fLn95vq1GBCcAt1nIqfWag==
X-Received: by 2002:a05:6214:224b:b0:715:538a:2fee with SMTP id 6a1803df08f44-72bc3373bb1mr136679576d6.20.1757416791580;
        Tue, 09 Sep 2025 04:19:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5680cce9f3csm458968e87.52.2025.09.09.04.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 04:19:50 -0700 (PDT)
Date: Tue, 9 Sep 2025 14:19:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
Message-ID: <3xw54kzk36u7zrfhgva4p577nzle3ctzi3lyhcxapczv2bhceo@23zcaylkqoff>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-2-02553381e47d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250909-phy-qcom-edp-add-glymur-support-v2-2-02553381e47d@linaro.org>
X-Proofpoint-ORIG-GUID: ZqQy4uAXjlZMbbHbgyEmK_Wql7fb_1LL
X-Proofpoint-GUID: ZqQy4uAXjlZMbbHbgyEmK_Wql7fb_1LL
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c00d59 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=Et_T-Xu_rDMQo3vlGccA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX5+iw80rlgl1y
 PKdlFttX/1ny1oy068dOHwXItSfKn8Y7udozwXr2dqoGUmavkKLMjsrZ3B77FOLTwg28eZAYMd9
 fYGa2J8OEZ83eywzox4nUUKiOId6QiI+KRr4FsoXnPjV06N+Sz6ncf1yYukQLaWQhLlh6rkY831
 pSvfw04vMyAftjAOetU3FTIEPX1ddkJmFTrOrjfII/koNoI/a7u3q4PnN9r9win2NV30U4k+tO3
 nP3pQZGwYLgBlt4EXvqBE5ShCJqO2kc2aXi7wzim1logFj1L4Itu1WQh+163y8A7BF1dbaUTAoV
 6OH6JhEj+aSsKApml6GNjbohOpmCgZKwXb/tWqAWWgHSyx0w62lpMMHfemBgoY7hiHV6ML1FSG/
 XfEtv1WW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_041954_357031_5179806A 
X-CRM114-Status: GOOD (  22.05  )
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

On Tue, Sep 09, 2025 at 01:07:27PM +0300, Abel Vesa wrote:
> Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
> for the same version number. So in order to be able to differentiate
> between them, add these ones with DP prefix.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  | 52 ++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..2bef1eecdc56a75e954ebdbcd168ab7306be1302
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
> @@ -0,0 +1,52 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2025 Linaro Ltd.
> + */
> +
> +#ifndef QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
> +#define QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
> +
> +/* Only for DP QMP V8 PHY - QSERDES COM registers */
> +#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
> +#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
> +#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
> +#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
> +#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
> +#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
> +#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
> +#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
> +#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
> +#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
> +#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
> +#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
> +#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
> +#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
> +#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
> +#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
> +#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
> +#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
> +#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
> +#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
> +#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
> +#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
> +#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
> +#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
> +#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
> +#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
> +#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
> +#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
> +#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
> +#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
> +#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
> +#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
> +#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
> +#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
> +#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
> +#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
> +#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174

The registers are the same at least up to this point. Would it make
sense to keep common part in the same header and define only those bits
that actually differ between DP and PCIe parts? (Is it really about PCIe
or is it eDP vs everything else?)

> +#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL		0x180
> +#define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
> +#define DP_QSERDES_V8_COM_CMN_STATUS			0x314
> +#define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
> +
> +#endif
> 
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
