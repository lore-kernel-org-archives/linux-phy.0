Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF4D3C88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 00:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ek2Sey8eDdNehQVNIPAywe3MVuz0zlk2ysA+Ff0GUtE=; b=wlbyqm/CvmLy4I
	3CXYQ3iNSg+lajhSZGTSZ4cZvXMwYLvAN3J0Mf7CRLef55j02ktt5gcOPKAxKcw4oJfJf+deUM7VY
	+WOpk5c1nCTWsgV9KhfdIcSc4CyPK+8bU/PRqy2NSIePVYp2W3AvR5cYw9KrNAaRMm1XnM1YEcGNB
	Jhpv25jG4q7Ew1AQXYrFcsgHnIbR70Bb65wHi1D/JHTMUOEPrExPC+NLdQ/A6Lj1wB75oq3I2AloU
	qZFYmEwsoRKDLku1XZFiqYSvNAGJfvQrofSp96igiLQmD7gS5wgTN0sTSbZvmKhM6j7j8klxhkKx5
	d0eEzeQ0LuZVFG9z6C0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uJM-000000027MS-1u0H;
	Mon, 14 Sep 2026 00:12:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uJH-000000027M5-06of
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 00:12:37 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68E065ZD2421585
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:12:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iBqYeqzlYtNhEASxOYthivbr
	ArLVaXRL5F5mIYJzUbE=; b=a4I1IM2R4U1J5p/cgW5v53ft0l+3aKuGkhoaeN6W
	1V9Gl1Df1TLWWTdLzhdo2d5PdVooU1TZDJya2FsJ2PaP6lAcHGGl6Od/u7hqaLlk
	FX277kySkhVlq8yo7l8ML++ln1b5Pe5+2ErKWm4Ij0cwj8UXKQSHTilzfh3Y3hAt
	8utdbXlR0jMwfFa9ffmkalPODTEXx29fXgs0lfoIvT3xAAqSbgXY5r5s795dSjhq
	bFoaVofgasBu4yN7QU1lPwZkEenBfP4ccUgpHXNn+qE37e+SOk0VDqkNmWD+0F3N
	EeWnjVbYKznK0YpQQx/E9MoktyAu0rGSVZFIagq98Vq9ZQ==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gn018m92w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:12:34 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-97c3796d17dso308848241.2
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 17:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789344753; x=1789949553; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=iBqYeqzlYtNhEASxOYthivbrArLVaXRL5F5mIYJzUbE=;
        b=hEXKxJxkrRqhHguIRFwIwD4gw4iDk24wTZ+qVGruo4FrwTp6uobBFJWwfzbFHrf++9
         N8UYupU92J0UGWd4XIr5q4aWchdCs+UmS/ZZJJ77M9kHeVnAk4mFvHje+D3OX0RW5CnJ
         HdZbRSm7xtFcopl1CWkMdnOONJfplRtXW2bOKK07zp8jaSjJjWNiE/nZygwYUKfLq+g/
         MUxvUqOWswc0WzGQiHu+tk5WA5nhj862Wht3PG4pqMtdtBx7h9RblB6jyvIUtUs8Z7Ea
         qrDovzD3a3mGZubk96U4eTPKJVPDkUHM3G3Sy3l/KFth0YEACUGlIobMG38OLrJUx+8D
         Mv9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789344753; x=1789949553;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iBqYeqzlYtNhEASxOYthivbrArLVaXRL5F5mIYJzUbE=;
        b=jXAgIQEnKz1/avnvBE47dw+lJc/nizA13dLveSRmMLkLPxxsbgX9npQ6643L0fyyZY
         7rfEwyHTc6QcsJ2BYRWzNZ3soBlOLflbVVds32VPsMeJGkDDPefPqIeM6hmZidrxKOAQ
         JYmGLBu+LaLDD0KYbiU0fm4wRKYfZATaghsyLQSCz9FH9YRPlHbQPgPqgpfdLCW01icb
         wOciyfu6yQM01Q4OLMFCNbagPIo0vlGS4DkHFNrJFzK6+WQ/kgQmQkvi5GupJJ5EYUtc
         wII+uVU57FYD8L9Zf6UnW6MiJleCAOIErDcKCUPj1BZwOD6/1j5VIWCEIluPhh4y6zqT
         EPFQ==
X-Forwarded-Encrypted: i=1; AKwUvBwXH8sPGmatTPj+cyBWFUfpizv9D89ABGmf5Dhk15Ds9q/Z77hDwombFJdubxIl4k9R6THsFYtBO2Y=@lists.infradead.org
X-Gm-Message-State: AFuF++mWzcEyXO1gIXxI7lOBMbDaKwt4vol89QTq4sgEnJqMEkX4KBQw
	BWdu3chGp0Uf5EuL9U5PKkhXxuJwxJ1o3Q/5t/v6v6YmLDSu2HzDKCP5yJoB8L2sEpvDS671j6a
	OxVpSmErxjNtJNqZiSRRAd3arhGj9bC6/Ctj9SoNj7AYa0lAx9ngZ3VMdAhAKwkng01tF
X-Gm-Gg: AYBFou2O3KCXiebcSYhQQiES++szMkFIbpq0ZoJJaDEE4/7SMAnr0Vl1IaX7kgaCz8R
	pK9yD6uWzSmH1gMXkEHXTOURbeM7AfiNagLt4pgLUcopvxS/cZC+JrlPRo32JPW4VdrTMhslrS8
	WuPeWuwZXM/IXe8VimEAom8ma+6vh16jDDfLeccmzb/naE2bKliOaMUjzvvkGIrhOBnaH6aOY0s
	IzgX5fRN5hunrQ+EQzoUFtlvJZwP6aPREcmetLpOj6i2gqsHgYrh+AwdzhkD9wrOvndfeOyuYl2
	ztLrlqtsqvbpaNFHvmXM14UFk42YXO89YjwsUePl14rQd/NZpY4cASCrRpbzS04BeFsYYGkUIoO
	zXz/5b3+rFJhRDHG32uk0x4KS+rw6tgpoi5/ZqeYXvkcXpryas0/DMpIXjyqZIKuk8T/RDkZAVr
	Tq8kaTX3KCmT66
X-Received: by 2002:a05:6102:6886:b0:790:fd7:cf36 with SMTP id ada2fe7eead31-79b5b95efa9mr63916137.11.1789344753403;
        Sun, 13 Sep 2026 17:12:33 -0700 (PDT)
X-Received: by 2002:a05:6102:6886:b0:790:fd7:cf36 with SMTP id ada2fe7eead31-79b5b95efa9mr63899137.11.1789344752966;
        Sun, 13 Sep 2026 17:12:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a047d3cbsm1975589e87.81.2026.09.13.17.12.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 17:12:31 -0700 (PDT)
Date: Mon, 14 Sep 2026 03:12:29 +0300
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
Subject: Re: [PATCH 15/17] phy: qcom: edp: Add Nord LDO, TX lane and TX
 resistor calibration callbacks
Message-ID: <ezvhdreygsfihvqsg66cp4s3jvkj5efhzpsoqmjedutn2giuad@fx734ykvkzwp>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-15-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-15-e25c073cf1b6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=c4g+0h9l c=1 sm=1 tr=0 ts=6aa73bf2 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=JfrnYn6hAAAA:8
 a=EUspDBNiAAAA:8 a=DE_EJvfAnEflg5IDAsIA:9 a=CjuIK1q_8ugA:10
 a=TOPH6uDL9cOC6tEoww4z:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDAwMSBTYWx0ZWRfX8XOzvQgAAVax
 +fEfateU4LDRVuJm6aLWM92dGsFVt94ANFpnSZevya29RJVox+QJR42uovpUcCvB/91ERBjgNia
 RXGzmhW5SEPPrGWGmwSi4bwe4u7Q1iQ=
X-Proofpoint-GUID: UU0qdn2L7hLg7eIiMwSyb3z_c86ZFjc_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDAwMSBTYWx0ZWRfX7z9PTm+nTaJq
 PzHEE7b2E0JtEQKb9UjD8h8zcMQKj2KuxI1nQiWLTnPn03mMlJnRuVkpjYT/Waa98nt0Lmv9K9w
 Cxp5a48TYxidGGTAqMRwbKwHaK1J8NLsxPZKk9MJpJ+8e75pMFQ3s8qzRVu02y1V++vS9+uorQh
 U/d0A9rmDhjdfjc0m+DcAxh/vsgF6skDjl7490GXMY2lNURjLDlODUtvNqItZhPojlTSD9BP3Ta
 9e6iJGkR+atsfAUBAHJ+0hRh/jn9D3ZYbhWX9MsuabydpPoLGmSxFx7x/kVky+/HV0z04E+ZnHT
 jhmLYEUcDDTZI3LxmicTmPXOrJtQp5Ut9KUaNad4uUDuP3C+ikbITRFP/RZeYZ+vVCVHJEOaj1h
 pg6vlQ8HFZGLi38w8mFgRM94RKmsM6baSBZKyHVkf7r0jTXDCPGpdWxUrZNKugmzEH10C+Kxn1q
 B2Fy/I7avCDeK00+6Iw==
X-Proofpoint-ORIG-GUID: UU0qdn2L7hLg7eIiMwSyb3z_c86ZFjc_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_08,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609140001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_171236_577345_C9EC855E 
X-CRM114-Status: GOOD (  21.87  )
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

On Fri, Sep 11, 2026 at 09:06:46PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord requires different LDO levels, TX lane control offsets and TX
> resistor calibration codes compared to existing SoCs.  Add
> qcom_edp_ldo_config_nord(), qcom_edp_phy_tx_lane_cfg_nord() and
> qcom_edp_phy_tx_res_cfg_nord() with values per HPG Table 2-1-d.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 47 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 4d1b2c81d956..361f4e467351 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -1800,6 +1800,53 @@ static int qcom_edp_com_configure_pll_nord(const struct qcom_edp *edp)
>  }
>  
>  
> +/*
> + * nord LDO configuration.
> + * From HPG Table 2-1-d: LDO Configuration section.
> + * eDP mode: 0xD1 for rates <= 8.1 Gbps, 0x00 for UHBR (>8.1 Gbps).
> + * DP mode: always 0x00.
> + * Also programs EDP2_DP_PHY_LDO_CFG: 0x03 for eDP rates <= 8.1G, 0x00 otherwise.
> + */
> +static int qcom_edp_ldo_config_nord(const struct qcom_edp *edp)
> +{
> +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> +	u32 ldo_config;
> +	u32 phy_ldo_cfg;
> +
> +	ldo_config = 0xd0;
> +	phy_ldo_cfg = 0x03;

You don't need those variables.

> +
> +	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
> +	writel(dp_opts->lanes > 2 ? ldo_config : 0x00, edp->tx1 + TXn_LDO_CONFIG);
> +	writel(phy_ldo_cfg, edp->edp + DP_PHY_LDO_CFG);
> +
> +	return 0;
> +}
> +
> +static int qcom_edp_phy_tx_lane_cfg_nord(const struct qcom_edp *edp)
> +{
> +	writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL_NORD);
> +	writel(0x12, edp->edp + DP_PHY_TX_LN0_DRV_LVL_NORD);
> +	writel(0x12, edp->edp + DP_PHY_TX_LN1_DRV_LVL_NORD);
> +	writel(0x05, edp->tx0 + TXn_TX_BAND_NORD);
> +	writel(0x05, edp->tx1 + TXn_TX_BAND_NORD);
> +
> +	return 0;
> +}
> +
> +static int qcom_edp_phy_tx_res_cfg_nord(const struct qcom_edp *edp)
> +{
> +	writel(0x06, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX0);
> +	writel(0x06, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX1);
> +	writel(0x06, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX0);
> +	writel(0x06, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX1);
> +	writel(0x06, edp->tx0 + TXn_TX_EMP_POST1_LVL);
> +	writel(0x06, edp->tx1 + TXn_TX_EMP_POST1_LVL);
> +
> +	return 0;
> +}
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
