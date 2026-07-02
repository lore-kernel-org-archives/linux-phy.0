Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54D41C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 13:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cW2XmUVfq08v9uxNmZNz2cM9ujuu4je3Q3BinKYYY0=; b=PSXN0mJGKR2b90
	nH+GVG/ePZ5I8TSol27hV9EVv/TBYPKpMhXxhtXtXcLiaxiWrrZnHvqNhqyoGxZ0FW3ZLWY0j3Wi5
	m7p5Psqxowz20pt2hfKKJB09JeRE7vL9QWTboc5+QO4AKvpYcukW8whgvZHffRDFxA4JKJ5pK9oXQ
	im452pnBSXg0xI9KIb5GulW9SEikt9JMJfUzvE9xJUHAbbfp/6F7fyMI0qC3LuXND7vSCHJSaOo2a
	G8GKvdRALMBnQvvkWH8JPsr8Xq8CQ+NDRhCdH/vy+yVH1YRxUGVcE8wZcUu/2KTkQhCHHN2cMmhWS
	hSRAuJ1OQUcZPZaHAR4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfHme-00000004Yet-0NJI;
	Thu, 02 Jul 2026 13:48:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfHmb-00000004YeV-2nuX
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 13:48:50 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 662D0a5i505194
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 13:48:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oYxkn5iUZTM90ui/LZrkij2X
	FVtbxLa8KyTrnYbeUCY=; b=CjPEAwd/YuWtofeh4ewgQBJlmCv0hPOJmA4Ru2Uy
	XYHm6aXPqq5t1a7LeRA0t+f39L4wcJu01qiZSKVpb1dfvPFDT27L8LX8B1XSmk/k
	NNr1lg15Tw24sLFgSVn/P0hHp2SqZXeTqf4mrGAnAkgPN9xpGIeijqEF994yNDSz
	aVeDmLNQ/arYoJOlASGR0bYoYMhMTaOQkwdcB6fSKegTa8/S6FWsKqSzDdzkXzmR
	EQidzpB/RojVvUVD59xjhkaGyjpQIoI3bXFs9xfbJqj88/FLpFFGZmWqGvqF5xlj
	4zUdVskC7UeL/5RwlVBkI3BD4CciPJjeXc5ZIDGpWOkYZg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5gmb25xn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 13:48:48 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5bdaa7039d7so1794554e0c.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 06:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783000128; x=1783604928; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=oYxkn5iUZTM90ui/LZrkij2XFVtbxLa8KyTrnYbeUCY=;
        b=RsD7Mkn8FxpBTT80itFTrORQzv9HRfnK6Fq8KzFKR7VLKyIUSFmyMzMHXaizlQXYUN
         qZlxSCDANBqggX3bG6DJ1HucHzICCtsGUWzCSS3GrJAZh6TJ4JipCKFPGP0Vw5EoIPJS
         7RtyKF0Rrf1Bj1Juogbfw8WGr6bZzvng3qTtNsiJHdmrNAzI50Z3XUpO+9ycw155aGfs
         Phy/Frh/1zRdZg0oNEVcOfqegxy+GGkVUsrEXMbrslU5Q4g2rSKQkbkfNep/X5hzrEiu
         sXbZIPVSeYFsBjeqRfumyDys9d0+fsoaT+WKEyzSdTC2VgFriPDdUbyaUh7f0p5u/hWn
         9uTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783000128; x=1783604928;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oYxkn5iUZTM90ui/LZrkij2XFVtbxLa8KyTrnYbeUCY=;
        b=gEP2erBp21rhr0VP/WDutTMUpgVV48SPdQ24g9h9ycVRdhhagL4peN9M1PGLMEI/iF
         QGzVRHDj668hXOIP3OTFyTaZsbkyrgXESoMQ8LLJnRtoK5BAXs505LHBqmEOOTtT5y61
         a9efoNcXN88RVflHn8zrnczHyeKeJRBIsn/NC9lYc+lrdeccccmBF4znm6t/yCJ2/wSc
         4cCd3JJGXWDAXHZ/88JOwxpHhtabBKZJVyBFdibhi0Ul3LuyPK8rg4fpy6rdZA9fQ08O
         /fXlEawkTCQjkSScYWF8EZkNQgoAgT5JjOx+Uu9hiIIz1MzWlai0Rp1GgIuEiyNwAZxf
         H7bA==
X-Forwarded-Encrypted: i=1; AHgh+RrqO9MoctzNMuO/CipQEy4Evw2kSAQNozAy6jQmPHGftOAKfwBcgI+FDl0vVomWpJoLOeOYXiE82Aw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZ43nW32lXm0rT+rPpEOEVyP6yK3d+sU+CiON1p0JEOfmC561Q
	2QgGtEXCBK9KI/jQZDtf9lZ8jjDEWABqohumW9V2aSlszE9qj8DkHoFjx2ieE7RpmV7jriLTKdH
	uy/ACERzX3LovKV3OyrNC58pPXLZebWI8A1c28Hw9kU6fK1A0LTNEt6uRyIAh/x2fqo5H
X-Gm-Gg: AfdE7ck9DAfQWadBpWeqYblEvSCFhNmLYPUZDIY3MrCab6Kq/Q5Zxy9FtP14+3IJyKJ
	Hz3QM9HsRqWfXmWWJ0GbMQor16z4Oy4VZLhNaQG7ETbF0VVtFfww4K/yXoebTgZTGDqnc5TK5w/
	sLk7YtLMyofOTuoXYkmpBokfZLmc5mxrTPeyBX0V5jKwvvVNgbKOwSvGjSoI9KQyCYqDD4CL51h
	om4RPUDfg7wVE3RXMToJnOgfZeZiZm0Im7abqMb9aSqJL5+u8YVanlwLtQ9Tqm5O1fACWMePoze
	KfJ6JSQEWdcotU7/gZM46VMeRrNGJHBaSaYtpJ4PUml04mFk1ygp+j4iCvp9MSf0XS/AAGqHwpd
	t21W1t3e0WGlor6GY3Et9Z1BDePyYV4k+7qUCAD0VnVgK68xS4OT34u540ne5qSW9QKnsqSf0Dj
	xrSrlznbEmCC0oxpfJd9VylNGm
X-Received: by 2002:a05:6122:1309:b0:5a5:4166:67c5 with SMTP id 71dfb90a1353d-5bde3a39c06mr2024692e0c.3.1783000128022;
        Thu, 02 Jul 2026 06:48:48 -0700 (PDT)
X-Received: by 2002:a05:6122:1309:b0:5a5:4166:67c5 with SMTP id 71dfb90a1353d-5bde3a39c06mr2024680e0c.3.1783000127626;
        Thu, 02 Jul 2026 06:48:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aec89dc2cbsm700630e87.64.2026.07.02.06.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 06:48:46 -0700 (PDT)
Date: Thu, 2 Jul 2026 16:48:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/4] phy: qcom-qusb2: Add support for Shikra
Message-ID: <ym4zec5vw2mudnvhw36w6vkuqupbl6up4dqmhk2sqeabphotsf@sudiy6poyjyx>
References: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
 <20260701165051.4122259-4-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701165051.4122259-4-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-GUID: iCk91ebiyyobWPpT9YfRpOiujMPtsrtm
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDE0NCBTYWx0ZWRfX65DK1llNfhj0
 HN+QlBOUNTFqpBc7S28AzY7brvS9tuovrlmYcfwryKo6qS6weXGMcp18PKALPUA268TVSssz1Ty
 P3GwNzqzRZCnDgk2NubJbPM2GU8dSSU=
X-Authority-Analysis: v=2.4 cv=aJ7Ab79m c=1 sm=1 tr=0 ts=6a466c40 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=PNGB5_nj4YWGvdh4KMsA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDE0NCBTYWx0ZWRfX0gZkjuqsmOtJ
 K1EzAHtUM49ERtC1nFPZ1AozwsDgsJYjTXmufxdFdxY+m08C6CH489pQ9ZF/3xq9ldmZv7pnt3C
 1sxnPnNfvoUD2Dils+j/PyOqNw3ol9cK8RKeAE7X5cPZ7APC0s8Hgy/TAV/vzw7/WoxhtvfHnzY
 1XPMBTsfI8MlTOklDep8ntZ3ZTbj0bjiiHdPaXx4umZ6mUqc46ZSEE8cUSQ5hjtKc+a3vULPPc6
 ZrI/ABLAL/m6k4+kz6I6IbmXhhNlH2VFMxf6B0Eewff9ssrbLixF/fgOmonAn1mkNsNqH/rqeIF
 1hnma41xfh048VfFFW6vTO8mXxhjsNNEggoo9e4XpxKbJUCY+LLr/Z72nhrA35vpShd9SVUbwkb
 DSyt1jAWT3ErRv8vxOZXXqZr7wy8a/iJ3XA31NOX6sZljwdltY+6fCtQyxA+MWsr6d74Xm2/V+P
 sJTt/nfjYqp3ogE7Ziw==
X-Proofpoint-ORIG-GUID: iCk91ebiyyobWPpT9YfRpOiujMPtsrtm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_064849_825959_7676F694 
X-CRM114-Status: GOOD (  18.78  )
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

On Wed, Jul 01, 2026 at 10:20:50PM +0530, Krishna Kurapati wrote:
> Add init sequence and phy configuration for Shikra.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index eb93015be841..ab7437e7b751 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -381,6 +381,19 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
>  	.autoresume_en	 = BIT(3),
>  };
>  
> +static const struct qusb2_phy_cfg shikra_phy_cfg = {
> +	.tbl            = qcs615_init_tbl,
> +	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
> +	.regs           = ipq6018_regs_layout,

msm8996_regs_layout (otherwise you are programming the wrong register).

> +
> +	.has_pll_test	= true,
> +	.se_clk_scheme_default = true,
> +	.disable_ctrl   = CLAMP_N_EN | FREEZIO_N | POWER_DOWN,
> +	.mask_core_ready = PLL_LOCKED,
> +	.autoresume_en   = BIT(3),
> +	.update_tune1_with_efuse = false,
> +};
> +
>  static const struct qusb2_phy_cfg sm6115_phy_cfg = {
>  	.tbl		= sm6115_init_tbl,
>  	.tbl_num	= ARRAY_SIZE(sm6115_init_tbl),
> @@ -958,6 +971,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
>  	}, {
>  		.compatible	= "qcom,sdm660-qusb2-phy",
>  		.data		= &sdm660_phy_cfg,
> +	}, {
> +		.compatible	= "qcom,shikra-qusb2-phy",
> +		.data		= &shikra_phy_cfg,
>  	}, {
>  		.compatible	= "qcom,sm4250-qusb2-phy",
>  		.data		= &sm6115_phy_cfg,
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
