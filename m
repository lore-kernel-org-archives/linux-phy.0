Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F8E9CAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 09:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1Cw+TRuWSWaMjmu7SK0X67cNF9SGPTJyQBmk/4elg4=; b=RTRLvWXzvjvcRM
	Qwk5dOZMIFfGXcYFpbILPrHmPa5exeSmc+PRGH2G1BsjUsTXfZCN6rAAuszhGP61URflKfMP3FZnL
	7Qu9sVNnI6hQGSdt8JyWPeBBXa2IE0GDJTRWEjP1NrFkl2wKWN3ZTpXap5zjIs2yxvAkxzR4oLjTw
	1pbqKii3lyOMFha8hDX4ave0aoFk9VuWd5ryMMkOmStG7BjxH8QSDNpNrIr62mWNJpH3Hj9CJchIU
	rj6YwcNl7zm4GcAPKUHP60VZF3qGEP4Sgh7JMpv8D7ePFpdNstx/BGoGSZe1Cw2Ae8kzDtHXbHte7
	Oxqz01F5B+/Codi/b8cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0d0r-00000009uUO-3AFy;
	Mon, 22 Sep 2025 09:39:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0d0p-00000009uU0-1IFn
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 09:39:12 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8v1tk008465
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 09:39:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jAx4FwcII6wbkb81OdZIPAi0
	xEvtze7qSPUTGq3+NiI=; b=bQdCtVh/6lGcmYm68OuLAMQHtqjheTJb/MMDTuIX
	knaM7VoUP44mrC3gDXYoNCsEzXPscI1MZ7D7s148GWcdxu8MbQd52HClZyWrVhXx
	mPxQ694jTIsDtrMxgrZ2vCjs0jyqW969j2NmSkqHohKGPjs/ZnYdQ8tmDB9tykzB
	7ZePQjlB33JF3CSz90w8xKrS3jKxF3sBEMcsEnEku9Fm0Dh94yW9t38uEXA2jnxA
	tUp6j/Otyf6HLRHGskP+gM4t/5fTeu+dFYkGl4+foWuRoMGpVj68W9RCMqMYUdwN
	J/T0bVU13J7x5HAOe7J8O56+q/T3+66SB06In7YYNCEjlw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mn7c8y8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 09:39:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4cf47c9bab2so11669261cf.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 02:39:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758533949; x=1759138749;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAx4FwcII6wbkb81OdZIPAi0xEvtze7qSPUTGq3+NiI=;
        b=JdbGB+TD4+5aRKztPj1chyFNVERkPx5Z7G+2ecEezRpsVmEdFbrCAKoqv4WGgqwIH4
         egN8zl64F3zxuSD6D5YXuD1du+kVQZ0E3LI1qaZaJ13RwGJcfX/M30PcQrSbY2/0Lrh4
         4E4ukT/ao3YIh3VynqAS8FOAcNVWt/7h4Mj0eaEQ+VDDBIaTmZ2BQKb31npTJaOi7WvE
         QOlVIv23du+zHa7TKGyZB1jjuBCptA5+MJrGCsuqYl0UNFkQWLhvCDcDaDE1/trr6t2h
         bsYfaOUDs75kUbEFlGYow9JCRAu/i0k6MmsBDJtwwta1zYliIgko6vT5h2lIyYriPxtT
         lizw==
X-Forwarded-Encrypted: i=1; AJvYcCVXjkE1fAVzTS5Fny05NGsfgENVv/vKz8a8hDkrTPuPRLaStY6c1F2i+RdhDwBZwpCGQrm1XIr6Jlo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwyAnsJA+jWT0SsIzLuD/JHEj86jGB9kWeApmJnzs4DuER6OX3Z
	qvtX8Qznn8PEVPTrEzIl1PiC5NZKw7w6CGi6IQO2I75SX0vmDStEk+L+TT6OeyOzgFYvW8ltU8m
	0wa+3kfdSxd2DTEtCIxnhu/8Ibi/NRuKfKuEKqGZOjVLD/UBgACVet0GH+b7xUIWH+ITe
X-Gm-Gg: ASbGncvjF66TRdrYqgWKlUew/ayNDbMK9k2eEi3hCDjAY7XOKQ2L2f9nyc/LlmcRUk7
	JuixdAwe2gnCk9XfTdN2IrgmA4gJOmVfa0SBtUhNymGwMc40m/r76933OaSH+xRlgiIR/jZVxAl
	SOQ12NA69D8Inhsfbzic1L4zosGxv11ewQlc7lvj3SwdAZRQTmdKB5+m/TlFlSisQEuGY9QTPCg
	J7JltR/0mXAaF06jqovujOEYI3IdWeCp0828r2/fSbNgdFx/b1iqwHTWEbtW4ABolNXFiGVSmMA
	3vSKD9mz/+qpS2tjo9702Y9mPVj9XDJf8Jcp7/4lp1koVsYgAYLRgfeAPLRa/s4VKNpVOXo22tG
	r9QUlrnTDaDRakaWiOqPRWBJ6B77FNDf4StWg0LiMXed9dV30NXw7
X-Received: by 2002:a05:622a:143:b0:4b5:d60c:2fc8 with SMTP id d75a77b69052e-4c0734ea370mr157007761cf.71.1758533948689;
        Mon, 22 Sep 2025 02:39:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE35/RYNkp6gQyQPasMu7rVuD0sFyNJP9oENTXh4ze2R7ETd8aNwunTy76/33FRan7WDLixdA==
X-Received: by 2002:a05:622a:143:b0:4b5:d60c:2fc8 with SMTP id d75a77b69052e-4c0734ea370mr157007381cf.71.1758533948134;
        Mon, 22 Sep 2025 02:39:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57b78577636sm1624019e87.80.2025.09.22.02.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:39:07 -0700 (PDT)
Date: Mon, 22 Sep 2025 12:39:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
Message-ID: <z6x3bwb7izywozeran5aq64uw4tiwlbwx4kekoy3vv3vt7qyip@2ibiat5focw2>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMyBTYWx0ZWRfX37DbGxqThysn
 oNFK1sMQCpIes8IGcWObhfxsv/ZTl/GqIMyA3Pjphl1EUHpTU11EPtSWksn0AXtfBCqyMyv01g1
 R2cwl4Oq9KRBzTk0OeazMpRHk/pZKhyKBxroenBmxhM+FBuseIoJpgyn/+MgfsOBXhX5bBvG0aq
 9Vb+U/9tkNGRXusP2Jn/N2JwZAv0fTMWQUZ4/g4GVcQ27rQSTyiYFuZJz2zWOCfzwOQtMnXfk/M
 KSfRSUpSnCEu2oI1cT4mwOPgwYKmPipJhlK3wlZiIDNHQrqGddNIFc+P9nS+G1iN5sFzGW+2m1G
 UXEorZ4HilkiMDQjVgLkMOgdGck2Ht3ulqBIdCicyTlMA+FgTMOgGChld1fO6qE236SYZC7O5G9
 9kkQsYts
X-Proofpoint-GUID: ICxCEysr0kO9NoSFqZT1bbCW8y8M-PCJ
X-Proofpoint-ORIG-GUID: ICxCEysr0kO9NoSFqZT1bbCW8y8M-PCJ
X-Authority-Analysis: v=2.4 cv=EZrIQOmC c=1 sm=1 tr=0 ts=68d1193d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RqUhitWEW_Btmly2q4YA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_023911_467179_BE1306DE 
X-CRM114-Status: GOOD (  22.44  )
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

On Fri, Sep 19, 2025 at 10:24:22PM +0800, Xiangxu Yin wrote:
> Move resets to qmp_phy_cfg for per-PHY customization. Keep legacy DT
> path on the old hardcoded list; non-legacy path uses cfg->reset_list.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 3b48c69f9c3cb7daec495ebc281b83fe34e56881..3d228db9ef0882eb76e7ab9e82f8122fa9cfe314 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -335,7 +335,8 @@ struct qmp_phy_cfg {
>  	int (*configure_dp_phy)(struct qmp_usbc *qmp);
>  	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
>  
> -	/* regulators to be requested */
> +	const char * const *reset_list;
> +	int num_resets;
>  	const struct regulator_bulk_data *vreg_list;
>  	int num_vregs;
>  
> @@ -428,6 +429,10 @@ static const char * const usb3phy_reset_l[] = {
>  	"phy_phy", "phy",
>  };
>  
> +static const char * const usb3dpphy_reset_l[] = {
> +	"phy_phy", "dp_phy",
> +};

This is unused in this patch. It should go to the patch adding QCS615 DP
PHY compatible and the rest of the config data.

> +
>  static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
>  	{ .supply = "vdda-phy", .init_load_uA = 68600 },
>  	{ .supply = "vdda-pll", .init_load_uA = 14200 },
> @@ -464,6 +469,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
>  	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
>  	.pcs_tbl                = msm8998_usb3_pcs_tbl,
>  	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
> +	.reset_list		= usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>  	.vreg_list              = qmp_phy_msm8998_vreg_l,
>  	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
>  	.regs                   = qmp_v3_usb3phy_regs_layout,
> @@ -480,6 +487,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
>  	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
> +	.reset_list		= usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>  	.vreg_list		= qmp_phy_sm2290_vreg_l,
>  	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
> @@ -496,6 +505,8 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
>  	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
> +	.reset_list		= usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>  	.vreg_list		= qmp_phy_msm8998_vreg_l,
>  	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
> @@ -512,6 +523,8 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
>  	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
> +	.reset_list		= usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>  	.vreg_list		= qmp_phy_qcs615_vreg_l,
>  	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
> @@ -1051,8 +1064,7 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
>  				     "failed to get pipe clock\n");
>  	}
>  
> -	ret = qmp_usbc_reset_init(qmp, usb3phy_reset_l,
> -				 ARRAY_SIZE(usb3phy_reset_l));
> +	ret = qmp_usbc_reset_init(qmp, cfg->reset_list, cfg->num_resets);
>  	if (ret)
>  		return ret;
>  
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
