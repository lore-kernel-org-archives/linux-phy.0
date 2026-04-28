Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CF41FF886D
	for <linux-phy@archiver.kernel.org>; Tue, 28 Apr 2026 11:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EeAQO+iiozM8hDYanqjgSX6ustJEd4zhY1PVHt2p9tc=; b=CJTC/4Ba98BlXg
	h7xt7utxL4kKk1zAZV5XU/dFMyTduxOsUohymlslzGMKuvdBOSlYUD3hce2+HtYkyCWez/8mezjCU
	1QikFhqfZW+nN0MgJRchPajk9Z4gYJQSGZqca5AqCCQa5DpnfQXJjNRLKz/48LYQtRcXhab8MLOXA
	3FnqHqxYcUrFVdKjVXNA/igFSo1zMgbzY9zNZyJHYmywhKe7D44qM52QG9JsXqMaBT04AwYJP3UuJ
	BNIBLVhQQZFOoPcgKJzaZYnn8vIU4rwZB67zhW7wm92pHtp/4XoXzz6KgeIlIk/siY7Ie7EqhGcDI
	T0THsAFi7DIvU2TycHrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHgoK-00000001N8c-061o;
	Tue, 28 Apr 2026 11:41:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHgoG-00000001N85-3HEe
	for linux-phy@lists.infradead.org;
	Tue, 28 Apr 2026 11:41:01 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63SA1ndT1329581
	for <linux-phy@lists.infradead.org>; Tue, 28 Apr 2026 11:40:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LvoV2Ov1kpFw2uDF2NI6469G
	ftqDuPAXFKdWzhpFPuk=; b=i3PpFV6ekzQiMByIbNp9zdUbr7G7ATFlOiwHGPml
	2pKxFE/jzRqhrhx2KjI4JjgmD0Dv8Z8xRlMiXG5/UdjwHFjIoaC4u/pDcz5v1mli
	DdM3yxlL5rK5SWH5hEQPAZpCQmGRrF3RACX1/hoeLd/hfU3ddHxM586IZ19uq16L
	+blZ4bXv84DuAjffcqco8HqdgW0t67hts6veCq4qZTXqnL0TyZBopD27NxEh7nRe
	ptxXHU5bRKsE3Rgf4buyCJZ+ULikPfEb21SGGPvv4wyvY/ssdniaeMuz0SquYJsJ
	KCX+ThPQbU7SMEJUBOPq41JqRro/ST13poDPcOS8syzwjA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dtnhahn1v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Apr 2026 11:40:59 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50ea1a7a5d0so205513501cf.3
        for <linux-phy@lists.infradead.org>; Tue, 28 Apr 2026 04:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777376459; x=1777981259; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LvoV2Ov1kpFw2uDF2NI6469GftqDuPAXFKdWzhpFPuk=;
        b=kd4WQ189M4PHyXONJDbP/qpeJ1+KM/23giyOQJoXGMOKASBpZc2Cz8cE/HprNk3pZi
         MxaS0iYsFfecPOCJA5XXPuTFHNcPblZr7OvQwNMzB/n2fPdwkqjy5Ms9T6Vu7Q4EDIAl
         qPFfdH4nKirrgEBysU5Jvs9A9oqI/LwvQuN5QQTEpOWwX2RvmplbduPK5eY+v5Md8zPc
         eJHz8QzNCQjKYU0GxuXL0Bj7g6Kv6hvIb27vG21j/5ajji8JPiHoZOTmD2Py2oVaXKSr
         43c7iRKk2LGT4od8xeQma3Sy0AZi6iiwLabbdVg/WSo9wXes4IEl+0FNVV6UwQ4zAxaS
         dbEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777376459; x=1777981259;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LvoV2Ov1kpFw2uDF2NI6469GftqDuPAXFKdWzhpFPuk=;
        b=E5IzJ9kdDEwT9ARssQT+rX6xWeAENkZDpTLhBs+2qkxZkLo8m+otLqeggu0E1D+O1D
         WUedc2okDQbzTyOYF+PUMo6JTS4KJIf6qysTKDgL/E/+xXzaniAxp994oGuNFVsAtfM7
         9C/HruWURTQQVZoZIel+9kTDQUs4nnEVufWVPjGNnwFNY7hVMTVbp5Iaw+0UyeVjuL5b
         4cfxGZyC/CX34XRfcQIjZWKahH1DHrDzertdRTsxnu3PMQj82qNrJOUvrErTRAsYi3kH
         SIZD0TdATjTOO2T1z2p4569xYyNEpk08oYTNjos7YDCN9+EwSG+Pqub0ZfB2yRkGXdJD
         Zi+w==
X-Forwarded-Encrypted: i=1; AFNElJ9ae5JYvKq0P/kHE2riGJ5oX+aXonZexRr81ZrgTvT+c+H7rPHNJSHSFOEFTv3wZ7fjWKn6pwYCxdU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrDdwoAU4PyBuOY54kyr1YyZciMZ9+GdrG/jjQGwq5J/sOPWvc
	jDWVzD3Rj0pI3nY852myaA2fdobcxHP3WNPTKJqWxMENB7Bb2piy05MT9V34eBJvG+XJk1dWkhj
	nbx9D3Re+GU2eDJtcc+XTZc2/hnTF23vbZVYWr7uX/UBAd3BYmSFTaO8Zoyw+QLNiJCVl
X-Gm-Gg: AeBDietpqANEW6fiHS/JZ2EIJfbKQyTLdN7tJ0W/ObuX9xbP7F2c188EfNfFeDxHuHs
	NXyWsZBTvPtOJ5KGuGgecEbeCVsySY1vkKH+SCdGIXMbBbDRVOko2pHzjnlRWFc3wcl3qpSqi5I
	8AQpB+C+xBPIflbj/bS8HacmsAFx7Syj2JQ1jYJtKlerkRAaOubtQv6Rd96S+LeABRFjqGXLpAW
	rI0S3RJKbRbnyb49wVsqCwBxab14rFMDGQAlMRl3lA89U5NAQWlPIr9SOa64zIdmQfUc2GvitW6
	218jBVeEJVlh9Y5obugLRuCQ13PiXcr1Fzh+TZCOfGHQfg/x53LDLuSSK4SZ1nGMQ5BdrM3kGNR
	iWoii2/Din7S+/SSi0G0q6JV1PQLBarVQ11nF+TAvHIl1HCWXssa+rymJr/yvyZg/lgM7D9kTjj
	NzJ/93WC2leQ/xghcDBtMYs1+WHVQWnjFsq2MMMY84Mz3PaQ==
X-Received: by 2002:a05:622a:15c7:b0:50f:ca25:fb48 with SMTP id d75a77b69052e-5100e1ea5b9mr35845441cf.55.1777376458926;
        Tue, 28 Apr 2026 04:40:58 -0700 (PDT)
X-Received: by 2002:a05:622a:15c7:b0:50f:ca25:fb48 with SMTP id d75a77b69052e-5100e1ea5b9mr35844401cf.55.1777376457975;
        Tue, 28 Apr 2026 04:40:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a7462ca617sm567782e87.5.2026.04.28.04.40.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 04:40:56 -0700 (PDT)
Date: Tue, 28 Apr 2026 14:40:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Cc: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org,
        konrad.dybcio@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        wesley.cheng@oss.qualcomm.com, krzysztof.kozlowski@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] phy: qualcomm: qmp-combo: Add support for Hawi SoC
Message-ID: <s6ortwyjjoq6lsxjjykbbshg2rczchtol4ntmxipcrsqufvsby@whwxtlnn74id>
References: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
 <20260427214217.2735240-5-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260427214217.2735240-5-ronak.raheja@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDEwNyBTYWx0ZWRfX1D7Wn0wA+QGM
 2smiGqHvUifppJZJKgw47kJnkG2Wlw9kwHXHjid8cBWkVxZ6rxHqfn5hQS7xvyKics2NbPuJtSy
 Qb6bF44bIHwY20HZFER3uQwZZEi/2OrX6gkI9JTMuWZGt0gHccaPdwukHQbEeIRjO5Nyz9dqeMP
 dHQJ+3v9PAYVHUCKhiEgbYaTN986Glwpbs1agixqQqHncJmaPhS+u4JNdEgZ62vSFrTE2yUiZ5B
 EjMAIyRNYZb1PkwTjHs1YyHObnIJvyKr9m47ISBGcjJlP9u6nmv6hvCswcJGA9edHWucEL7sQwH
 RSzM6LUHS1HUqNu+xoQuYlP9HYL4Qkvt2W+VLmTTsa4WNAKauvR0j4WnSUFnv08DMhnURJ2RYHz
 7RQoMwfPG9+iB4A4/Fi29SPW7dDVH5qz1yIIdo0egwUdfVPLC0XqTSh/dHt3Rpo6lpqM5lCpLlz
 0bjEdJgfBLG8bWX8bMg==
X-Authority-Analysis: v=2.4 cv=JoDBas4C c=1 sm=1 tr=0 ts=69f09ccb cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=REwqGe_ukdr-d6Ko48MA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: B9z_X96Zd3j8hAzac8Ikjw94ri2R6JEy
X-Proofpoint-ORIG-GUID: B9z_X96Zd3j8hAzac8Ikjw94ri2R6JEy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 clxscore=1015
 adultscore=0 phishscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604280107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_044100_939470_EDDEEF1D 
X-CRM114-Status: GOOD (  20.55  )
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

On Mon, Apr 27, 2026 at 02:42:17PM -0700, Ronak Raheja wrote:
> Add support for the USB3-DP combo PHY found on Hawi platform.
> 
> The QMP PHY for Hawi uses QSERDES V10 register layouts. Add the required
> PHY sequences from the hardware programming guide and new V10 register
> header files. Also add a new v10 offset structure to incorporate the new
> COM AON register module.

Was this tested with the DP too or did you test only the USB part?

> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-com-aon-v10.h   |  15 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 231 +++++++++++++++++-
>  .../phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h    |  15 ++
>  .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h   |  13 +
>  .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h   |  19 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h   |  34 +++
>  .../qualcomm/phy-qcom-qmp-qserdes-com-v10.h   |  89 +++++++
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h  |  89 +++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   5 +
>  9 files changed, 506 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-com-aon-v10.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h
> 
> @@ -2198,6 +2368,7 @@ struct qmp_combo_offsets {
>  	u16 dp_txa;
>  	u16 dp_txb;
>  	u16 dp_dp_phy;
> +	u16 aon_toggle;

Are there (or will there) be any other regs? Is it just one-register
space?

>  };
>  
>  struct qmp_phy_cfg {
> @@ -2705,6 +2895,27 @@ static const struct qmp_phy_cfg x1e80100_usb3dpphy_cfg = {
>  	.regs			= qmp_v6_n4_usb3phy_regs_layout,
>  };
>  
> +static const struct qmp_phy_cfg hawi_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v10,
> +
> +	.serdes_tbl		= hawi_usb3_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(hawi_usb3_serdes_tbl),
> +	.tx_tbl			= hawi_usb3_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(hawi_usb3_tx_tbl),
> +	.rx_tbl			= hawi_usb3_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(hawi_usb3_rx_tbl),
> +	.pcs_tbl		= hawi_usb3_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(hawi_usb3_pcs_tbl),
> +	.pcs_usb_tbl		= hawi_usb3_pcs_usb_tbl,
> +	.pcs_usb_tbl_num	= ARRAY_SIZE(hawi_usb3_pcs_usb_tbl),
> +
> +	.regs			= qmp_v10_usb3phy_regs_layout,
> +	.reset_list		= msm8996_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),

No DP counterpart and no mention of it in the commit message.

> +};
> +
>  static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
>  	.offsets		= &qmp_combo_offsets_v3,
>  

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
