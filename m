Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2E8CCAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ss4veYqMGeaQHpzWkmfPDXZxE3W0b+HwrbS46DvxqS4=; b=ugFgWL8Sr7mtuV
	agy5YYPu27U/bwcMMTp0SzVHbuX0cc0Sig955rHlrXh4jHiwMv19Lxcs5sFaUJ1EAto+stZGt8d+v
	mHt7l2g5K7umMcylnAv2cFmv3gA3YqMbhaW22BdnE/kzEkpsug6Ge5QodE+B6IQequ93naLwWGY2R
	hn3s8/Bu3M7tqx0j3URAMb1Zw3+AJ1Nz1cDMVujsOib929Nv2rqEj335xBSkyYqkdfcPTxsLiJjCz
	4L/IfPM/WL8ulHIkIT7O/iYEdpKZzGBuBumQ8QTHH66jEtI15zjBrsjDPYRNw+pToJgO/sqKFGoyQ
	pygVSJJW+4Yu2PW+T6xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1c8O-00000005MH0-24VX;
	Thu, 25 Sep 2025 02:55:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1c8L-00000005MGW-2pJN
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:55:02 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONiZDu022454
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:55:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5qc2kjNdpU+Ilinxlsz6Brx3
	M0lwHT1wZVUtKam6+GA=; b=oC6v6fJbG/C2Sv8NIRf1HC8NhJtgOv1kmlCBKK7V
	W6gZjv97Nth+siQt+Dp7WQb7vfjPWg4+m6Z8ZtbATMtkYqFjUCDeuTn2e1183bZP
	xfiv6fkvr8VrHLmzdfSl//F//rdC9/BlALYGlBZM78WMD4VYBatfJ3Tx0DBZxzci
	f7WMwWx5/Pfsd/MZILKCGUUQ60kkisntAJ3gmytOWKQxRoMv80PZXJxtBuW9UVvt
	SLYaJEccjYJHZbjM7CE5k6xzhfV+/iZyy7y4TzP40IQljR1Xqu1NQm9Y0uhAO57/
	gWa+ArYwrITDdyyiF4NYyNMvVsJB7L4QETVfbQM4x6gXvw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budae2rf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:55:00 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4cce66e91e3so16113041cf.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:55:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758768899; x=1759373699;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5qc2kjNdpU+Ilinxlsz6Brx3M0lwHT1wZVUtKam6+GA=;
        b=JGU7o3GXiixdV92kvBRblx3NHtALNeWk5I8Gbrl9ihUNxadXNj7d1nIcmDLvNKqa3A
         SGKiWp8nPO/VMoiXiBZk41qEESVlDZO5Zqkpp/YemwB2Dmu+Aviw02WF2hmNhIT26N2d
         pCK/ipPTnMArDvaHl6kaqmlATbcXoHToz71qcffnHWezqOiRkjTIXII5/bHMkdQquCo1
         qFHI0NjM+x189dU9vnC/+ZyaRJJXz+VyqTWpx1BiBmqfHv9ks4smqtkG4gOmv4yCF/6T
         yC47rlOk0DKPfAjlUk4y7scyMvtmZ+V0frjllOxWHVmTF7FnE1FveIb0kbFdu86MYh98
         jc2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWcGRepKOW/mGAEpMET3zZnjw9AfnqAdUYhFx6BQgdnKBkPTB17nHa4rlZGoxZ+z3EtkwOrZsD7cl0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+oXEJfQvTB7AHY5m9b9jGR8cD/cF2VkeQ8J8JbcdC04ZwJx5H
	nYuoxFymYOYrZD4GoyJ6hpRAJG39LHzzYJs76wTa6H6bZoA7WWxxYi9VKEGMhJayHKseFbPK093
	AJluDNzB0+ukAkRjSrcAXkZPAWZhIY8Q39KTiDNsjepzYwY0HFlioGaAWvt29C88G7Yvz
X-Gm-Gg: ASbGncsEKuf/jwJwE6sWBrbeOYW56ks2r0Zl4nq5AXsFCUqDy+ah+2yIMw2ln8zSV4K
	Kif3xW/JAln7DYrG2qzgfLWd91/oHOVtFHi3ERfUMZq9okiwJsjhOIZbMdBzSfAAmHBVwDuptJt
	6sdyZnDlGGRQfabEf7ZQLKzzazqKaSIf7MqYMUNoErxHSfebV7AMQYk9nyKRPP+ev1XbEdsa5zs
	P6hSCqFf/g5MbYfQXbDFCmWHwyr7J48xvBRniu+O6A8bdeYZOrNAwAcbXxzfwpajwhk8JjIxKI7
	GgCI2d+3oStII1cvjaJ50fiO7IE0SDtQ2MCZU+F9j2JfaNtF/JFlzu8qLg1Pcnoc6owMMaOY5Xz
	4HU0GDRw5wEwxKaPFTyVgAQnp0J0ZQicq/zJbKvT3Sx3Bgo67YD3P
X-Received: by 2002:ac8:5f53:0:b0:4b7:9ddb:abbd with SMTP id d75a77b69052e-4da48c83c0fmr29976601cf.27.1758768898983;
        Wed, 24 Sep 2025 19:54:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+wX0KgM5CRfCAhfR9yvHW5QMrj5JET9e3yAt5sYvlw+SROD2nT79PnMZGnXjEN0cJtYx4zA==
X-Received: by 2002:ac8:5f53:0:b0:4b7:9ddb:abbd with SMTP id d75a77b69052e-4da48c83c0fmr29976331cf.27.1758768896998;
        Wed, 24 Sep 2025 19:54:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316ff5f0fsm256240e87.135.2025.09.24.19.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:54:56 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:54:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <oecyjwj7ouufjbiq2fpvlhhuaof5agm22fdsruf3ppayiu4kkm@wvi4no53x64y>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: jAaE6zYIn_Bq-bj2qiH1dWLAv0e5WZsY
X-Proofpoint-ORIG-GUID: jAaE6zYIn_Bq-bj2qiH1dWLAv0e5WZsY
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d4af04 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=bgMNcTsuivlx1WpOe6cA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX5Juy7jhANey2
 o2yz/Bi/88no+7ZQCnuWrMfHjGvR9fiG0nLsg1o/ZerryNEbPmDfXjTOW0INExbT2/BbXVrftbh
 LtT2X5WoVsz3YYfvNr4SY2ieU+4oxtOScLNJSLEwh0ZUqE478Le34akzdw5yTwdnYS/31HSWjZ9
 84eXj5HPSIIk+CrSja2kon+2rGOE4nEQmm20okDtUGoqcFMwnXojxeuPh3QSUx68IvAEYq0OiRW
 TU+UQ+7ivXF4DpTGFJF/gNLHQgHX9XSFp+0wuHNRNheUUJyP4S8MueyfchXBNIyOejfSHUOPqKT
 tAh14lCC/xTG+5bF2l/8+mbGUIwaKn8Rnfj+KoxlbuZpzRvtMncmFNuom7HiaYTg0gllM102x4Z
 ZQobwepX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_195501_841685_44BAE6A3 
X-CRM114-Status: GOOD (  23.25  )
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

On Wed, Sep 24, 2025 at 07:28:47PM -0700, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> There are also some PHY init updates to modify the PCS MISC register space.
> Without these, the QMP PHY PLL locking fails.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 311 +++++++++++++++++++++-
>  drivers/phy/qualcomm/phy-qcom-qmp.h       |   4 +
>  2 files changed, 314 insertions(+), 1 deletion(-)
> 
> +
> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_misc_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1, 0x01),

Why is this V4 all of sudden?

> +};
> +
> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG1, 0xc4),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG2, 0x89),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG3, 0x20),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG6, 0x13),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_REFGEN_REQ_CONFIG1, 0x21),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_SIGDET_LVL, 0x55),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_RSYNC_TIME, 0xa4),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_CONFIG, 0x0a),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_DLY_TIME, 0x04),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG1, 0xd4),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG2, 0x30),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_PCS_TX_RX_CONFIG, 0x0c),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG1, 0x4b),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG5, 0x10),
> +};
> +
> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_usb_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
> +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RXEQTRAINING_DFE_TIME_S2, 0x07),
> +};
> +
> @@ -1667,6 +1899,12 @@ static struct qmp_regulator_data qmp_phy_vreg_l[] = {
>  	{ .name = "vdda-pll", .enable_load = 36000 },
>  };
>  
> +static struct qmp_regulator_data qmp_phy_vreg_refgen[] = {
> +	{ .name = "vdda-phy", .enable_load = 21800 },
> +	{ .name = "vdda-pll", .enable_load = 36000 },
> +	{ .name = "refgen", .enable_load = 936 },

Is this a meaningful value?

> +};
> +
>  static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
>  	{ 0x00, 0x0c, 0x15, 0x1a },
>  	{ 0x02, 0x0e, 0x16, 0xff },

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
