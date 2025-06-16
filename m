Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79258C71155
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 12:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3AOvGoUALU1cUm+2j0FkDZgUdXXg3HgCLl7WFdVVvc=; b=LeFMfivxQouvs4
	rmw7SUUyXEMAHifUhdObSNnQ/vXVAmZqn6dHOyH/fMlSMjVk/zmVZdnpTDmnDssEjOBbU6Q4KTs3l
	K+q4ruxNlMBJ/jGScmtG7GogqCz+42UY/ITrMVb1+/oFopuaMUY1Xtq+/LtPDco7zozsjtObAaSAG
	nOa3GH+KTmOmI4fXPhHZ2qb5l1DkydmvN+HLxQPTQUEnca8zs6Oq0Rhur4xKtHoAWFEKHzCpSjcT7
	WDI6+u9T9Wy3+8lt9miKazTjAdl6PSAOWFj7S280fi6KQo8n6UcRZeFsiTbMGP8pbzo8rYAKgr4re
	QrXel22oKULS1eKob1Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR9IP-00000004QeO-0gbH;
	Mon, 16 Jun 2025 12:50:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8Cd-00000004EMZ-1qR6
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 11:40:40 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55G947n3029575
	for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 11:40:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sU9oQKJ9CXQPwDKh9YrC0FRF
	yn4HmwQPux4WlLidHvQ=; b=gvEwwKbitZsu1mMmSO0EnwkzfmRzVPolUoc6trSx
	vkcap6Gxd2aLi2LoxvgV4hKseot6Z2mHH+WvVYkMXU/NUkNqWckMj3x/v01E0bBG
	4pmLOjYVTVaW2UhuQ6CnYK/PYyMIp8TTxqLlkZrHVdC9lbNw1xKhjeq84x0sXQ9B
	BcR/Y7NKthVJwxghEvzEZTwfvo9w/bfsZQsH3PpW5dOxD/DlZqCGxC6/VTmoUXzA
	T1CefGkczhlAi1qdgYeZVoofVQ5yR3wFLkGQPh8XP3+kvV8lR3R0c7sb9u6nZwFo
	iDNQOddlSGrjcMnQZhgHuC1LNELY6OSrl8G3cRLc8XapCQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791ugc7a8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 11:40:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d15c975968so785027385a.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 04:40:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750074037; x=1750678837;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sU9oQKJ9CXQPwDKh9YrC0FRFyn4HmwQPux4WlLidHvQ=;
        b=awTFOcjbmifvkJiyIHctzKybndwUHSqkCEA/7dGXoEAz9JKIlymfr3VA4ruwr7KvU7
         ZaHMBlawv6cS/vMQSAp2fw+oX2EDXaX6etYQ0xY88nUeBMcjMgNDzCG08PzXQWp0ugN3
         7RiiVdYNlXNmyHAXfTq7GNoYKE5T24R9ceIdKiB4b/euBJfXWDT1AthNpaTMIRfK2dlT
         Oa/UN/P5jY+QAV7MZuZyT3OUIlJh2SJ2vDVtXJYgGPETKD/OznM5akdyxprwXOHYRZ6y
         xQGhBpauBD8aeL6ffTA8C8ZIdWqCYueq13pz1cd3juKugtw0ovg79UE7+LLc66vfbAfG
         eN+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVDyrYJSx2pwkDPTIWq5NKyKQlAKyGC7XGK5jZJCwIeG8PzkuYo7u9WlFbphAcEdIDuhNqcHE9YkqY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzBGXMK1pLoD26TdaRSI/BjlOtk4Ik4NDNKXXDxCmUZ8u+dWQLX
	3zeofAt4HWPwJYL2SQHcXI7yIuCkauqv1PMya6TFKvZ10NLz8LsUu3/DZUsqO6gVS5QLXVI+YV0
	hzsWHIhXbb/A0UA9dxQsck4/XJGHWPQEvpVLaJiEvdlGxoorUJvj1T03b39F7ldrB68He
X-Gm-Gg: ASbGnctvKmVSh6stuba0AXvA1XKOBazKVRl5VpDzT1XzjSiSDIgF+vh2u8vCIZnY29a
	XmxRQpl7yi5pxpv+qRHPliykDn1VHRqHXqkbTAnN/8ljULMWWN37/OaOxyLb9vdcSGYF0lZDQCR
	D4jqpnODCyq2RxbLulxhwgy0biVYyL722olDiDJpLR9X6qeWMbLq7wxDMZUq5swqeMP77YyRp/w
	v1TsqIqC6NALg2uGveFQPoIoRqDQ/YzmU4GCeCvN0PSoLDghdmdEDF+FDXKGCN+ktgDeNHOiHDE
	qsVd7tPyz5UuJPaS2uHXxoXUrTXZvlcKnHWj9GOUeqNguLwpnn8lVmycJvTNxd/NuL00ZmYB0K3
	xGfBzHJ01gl5B1P2fMz3D0PEsOmIhsNy5HaU=
X-Received: by 2002:a05:620a:2a0f:b0:7d0:9f1e:40dc with SMTP id af79cd13be357-7d3c6d0caf4mr1552506185a.56.1750074037324;
        Mon, 16 Jun 2025 04:40:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9s64+AUEQh7O6C8bv6bysqjaSeP/EDjHBrywB+0/u+u/JEszrb4CKMujLx374cWraAyL0lA==
X-Received: by 2002:a05:620a:2a0f:b0:7d0:9f1e:40dc with SMTP id af79cd13be357-7d3c6d0caf4mr1552500885a.56.1750074036881;
        Mon, 16 Jun 2025 04:40:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac1ab619sm1530482e87.136.2025.06.16.04.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 04:40:35 -0700 (PDT)
Date: Mon, 16 Jun 2025 14:40:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
Message-ID: <qmcoh5lysln46mg7tbmeelmnzc7s6o7bssir3a7r3n3x5lnboq@cizzodjel4ut>
References: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
 <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA3MiBTYWx0ZWRfXwE/9DHtFejWV
 +rmPvVGkLRoyvm1QXlTnXS1VIvNCXD4WI5QriN+wRtvQgrpytlDOg6I+I0Ok7cTWYdeyovCy7Db
 Hnzb7Nshe1jYyWl8nb3QNriP2IwjBX7akjBh0ptdH81IP7Fmw9+VvdMymHqvuJf5cepsXurifSg
 nV791xNXywhqY1dkuAdCX644zVNTYhNThdCEkRFYSZNKBFh4puWYoR6RdpRdMusYkT+MTOH/LZ9
 eTwsFVceaW1syvdP/0UzRTAp7ZKd4XCHFhZaQHEjJLdVfSswn3ciZ2H5UsQkxrbcEnM7xsDSd2A
 GF0meYJfCjlig1+yJCi1/bEr7nLkM9PbUlPebAQnGvXdTbf+TIUE2wUc6uTAqHcRP6/2q6GFpZG
 yU32yCHdQElrDfFMZATtp1PlRBv7tMlE63kX0pj8+5y2+IXY9sGv8ofaY/RAFbd96drRY4e+
X-Proofpoint-GUID: -GnLdarRKv_Vho2oKxDl-Ko8-L0MGDjo
X-Authority-Analysis: v=2.4 cv=NtnRc9dJ c=1 sm=1 tr=0 ts=685002b6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=QGoD4uD7uq53lMcaTbkA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: -GnLdarRKv_Vho2oKxDl-Ko8-L0MGDjo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 clxscore=1015 malwarescore=0
 impostorscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506160072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_044039_483299_9B0FF2ED 
X-CRM114-Status: GOOD (  27.00  )
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

On Mon, Jun 16, 2025 at 11:45:12AM +0200, Luca Weiss wrote:
> Zeroing out registers does not happen in the downstream kernel, and will
> "tune" the repeater in surely unexpected ways since most registers don't
> have a reset value of 0x0.
> 
> Stop doing that and instead just set the registers that are in the init
> sequence (though long term I don't think there's actually PMIC-specific
> init sequences, there's board specific tuning, but that's a story for
> another day).
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 63 +++++++++++++-------------
>  1 file changed, 32 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index 6bd1b3c75c779d2db2744703262e132cc439f76e..a246c897fedb2edfd376ac5fdc0423607f8c562b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -61,8 +61,13 @@ enum eusb2_reg_layout {
>  	LAYOUT_SIZE,
>  };
>  
> +struct eusb2_repeater_init_tbl_reg {
> +	u8 reg;
> +	u8 value;
> +};
> +
>  struct eusb2_repeater_cfg {
> -	const u32 *init_tbl;
> +	const struct eusb2_repeater_init_tbl_reg *init_tbl;
>  	int init_tbl_num;
>  	const char * const *vreg_list;
>  	int num_vregs;
> @@ -82,16 +87,16 @@ static const char * const pm8550b_vreg_l[] = {
>  	"vdd18", "vdd3",
>  };
>  
> -static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
> -	[TUNE_IUSB2] = 0x8,
> -	[TUNE_SQUELCH_U] = 0x3,
> -	[TUNE_USB2_PREEM] = 0x5,
> +static const struct eusb2_repeater_init_tbl_reg pm8550b_init_tbl[] = {
> +	{ TUNE_IUSB2, 0x8 },
> +	{ TUNE_SQUELCH_U, 0x3 },
> +	{ TUNE_USB2_PREEM, 0x5 },
>  };
>  
> -static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
> -	[TUNE_IUSB2] = 0x5,
> -	[TUNE_SQUELCH_U] = 0x3,
> -	[TUNE_USB2_PREEM] = 0x2,
> +static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
> +	{ TUNE_IUSB2, 0x5 },
> +	{ TUNE_SQUELCH_U, 0x3 },
> +	{ TUNE_USB2_PREEM, 0x2 },
>  };
>  
>  static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
> @@ -129,17 +134,10 @@ static int eusb2_repeater_init(struct phy *phy)
>  	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
>  	struct device_node *np = rptr->dev->of_node;
>  	struct regmap *regmap = rptr->regmap;
> -	const u32 *init_tbl = rptr->cfg->init_tbl;
> -	u8 tune_usb2_preem = init_tbl[TUNE_USB2_PREEM];
> -	u8 tune_hsdisc = init_tbl[TUNE_HSDISC];
> -	u8 tune_iusb2 = init_tbl[TUNE_IUSB2];
>  	u32 base = rptr->base;
> -	u32 val;
> +	u32 poll_val;
>  	int ret;
> -
> -	of_property_read_u8(np, "qcom,tune-usb2-amplitude", &tune_iusb2);
> -	of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &tune_hsdisc);
> -	of_property_read_u8(np, "qcom,tune-usb2-preem", &tune_usb2_preem);
> +	u8 val;
>  
>  	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
>  	if (ret)
> @@ -147,21 +145,24 @@ static int eusb2_repeater_init(struct phy *phy)
>  
>  	regmap_write(regmap, base + EUSB2_EN_CTL1, EUSB2_RPTR_EN);
>  
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_HS_COMP_CUR, init_tbl[TUNE_EUSB_HS_COMP_CUR]);
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_EQU, init_tbl[TUNE_EUSB_EQU]);
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_SLEW, init_tbl[TUNE_EUSB_SLEW]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_HS_COMP_CUR, init_tbl[TUNE_USB2_HS_COMP_CUR]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_EQU, init_tbl[TUNE_USB2_EQU]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_SLEW, init_tbl[TUNE_USB2_SLEW]);
> -	regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, init_tbl[TUNE_SQUELCH_U]);
> -	regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, init_tbl[TUNE_RES_FSDIF]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_CROSSOVER, init_tbl[TUNE_USB2_CROSSOVER]);
> +	/* Write registers from init table */
> +	for (int i = 0; i < rptr->cfg->init_tbl_num; i++)
> +		regmap_write(regmap, base + rptr->cfg->init_tbl[i].reg,

Init tables have TUNE_foo values in the .reg field instead of
EUSB2_TUNE_foo, which means that writes go to a random location.

> +			     rptr->cfg->init_tbl[i].value);
>  
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, tune_usb2_preem);
> -	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, tune_hsdisc);
> -	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, tune_iusb2);
> +	/* Override registers from devicetree values */
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
>  
> -	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, val, val & RPTR_OK, 10, 5);
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
> +
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
> +
> +	/* Wait for status OK */
> +	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
> +				       poll_val & RPTR_OK, 10, 5);
>  	if (ret)
>  		dev_err(rptr->dev, "initialization timed-out\n");
>  
> 
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
