Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12733CAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 10:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8Fbx3nwLmtVi6RzyK58IbHScTeqo/SabKlyfrS+RbY=; b=x+FYTleUCJxcOQ
	Hac9xO5jD+fMwosj1W6B3TI3dRAY9Gy4R/L19FfiORsGIHsqe6vgp7mSHlsLfE4NEuCew4F/E8d9w
	pevHG70bP/DOYTdFfeD7Xt6SPzZC01IwSPMmhdj/7hS8cNaLhn7Evur8dImOvSlBd7dGZaVRuvooV
	L9AimJ2ehy1Jk/7V2LP8EZECavA2p1Ui4/77T5VTe+k6OTGkGZmje/zgCvxMhQYNuSH4iYviHNYu/
	iLCGvyKmg9s/fvtme7tNpJEh/u3cNpS6/71PaEBMdhtK+kZGxFs2wJRBm2kOqKXBYLfw1SKVNr025
	gsEVbBq64CNRLt/UeGMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux0s9-00000008XUJ-2xBp;
	Fri, 12 Sep 2025 10:19:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux0s6-00000008XSC-0Ia7
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 10:19:16 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fPew012868
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:19:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+8BSRPhlzIdQp9y41D5xs6eH
	qedfNxQ0XWH6TT8qk+k=; b=C4+R0dLtc/nLAf2A6VgC54MT9HbrdeDyVK13a/Z1
	PEIUskUXc1uO1YjMazZiUE5+NXV1y8wDStE96FPmCHy2mLS7NktygpJf4xehUJXf
	KpyWMq0ySs4JXvyhhKvTkNCBzEbb3fhMq/TXCNV8rr5Y1vMq2OGN2xTB5mj072us
	/T5jcwsU0HALTeQmHKE/HYWPdlk3AcXq1vS9Pmv2V8+RL1FXOMWtg/+QkuTLjNvs
	Qg1MsCni9U3nnZ2CY49OApKBJg1vm8QdxnfnJOt5ebchQDq7LfHn8a65R359n5ei
	QskQueW2QmZhueOgjo+CW7dX9RXAGXRY8WQwCORKH1F04A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqgawn8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:19:13 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b60d5eca3aso45061991cf.0
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 03:19:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757672352; x=1758277152;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+8BSRPhlzIdQp9y41D5xs6eHqedfNxQ0XWH6TT8qk+k=;
        b=FOT/9DhOXU9e4tOxEHau9DWWiUOtzYIfm5ocu0UQeIb6w+YAhbjHPlvvhCdEQfPAoq
         BGn7Z0LeMXKCAE+8J8+vlmz+n5npSkkd2xp5kAL9ttbZcX9tsuCozGKN4nc3ygPQtql6
         onkULM345FEKCiKLavoEo3WKfA9YnkU0A49uQ45IEDivvIbKp4gC9RpNxnmTbgqwhTTY
         eHuRn68brvx85PBQ9omKuuEJI+tCHr4q6DJG3WHLFIomib9tVRgxBOh77dXvNZVN3PjW
         p2kFWgYgzm8X0s6Atp1yHnhNRy414+l5lnxonhHiGhMjZ5/bc8KLB9zm8pLjWd7dzbid
         2Uuw==
X-Forwarded-Encrypted: i=1; AJvYcCXrZqCbu2Jr5DZad+fE+TW8al+3seHXU28uo0Agcl2XZp5LQQNODcz5epdQri7tFFXNMtTN6vsFHdU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz097a6znhMWRh4AeLKcpefPbdx7wKjVqyUTpDS6lgu1a8D7IvB
	UvbCoV3LKx7Lmk5cQUYRxGw5GsGivNoDtP7WoG0aCpPmj38ESb6LBeTqIORrRTNyJM1EMG3QOjl
	2uQ01XX+fRRa/S1/sZiJQB5O7OQqN9aLqzokva8Q91bbXUMZ/O/SNT6npGy2Vq4o8oVTZ
X-Gm-Gg: ASbGncsEYuP9BTuGis7EdpRzTt+XEquaQbRLHmF5wOeFV0X/8/Z0Kst2NarNaGgPvJy
	0P9HH4uMKOFmRtE9r08ge7x3USW8M46HEcVxx/fjjN/P8zg5LtrU/xnGwh5VAVdsu2yltX81Evk
	mgH3E3JB0QS11/Pvz5+PkUzvpOlSN+V/7sEa8E7XuP+m18tDavPrNFo0GW4b1giyGXEhE2lw3TU
	YUQ73T7eldsBlp36bmZM5pppWSg317pB0aHKSnUVyhBngOj3t9V83fzSlT/WUq/gSh70BEYpbbv
	oY+e+v2hMPfFJyQAhiq9laC8mqF3kJzxIV3fvrOGfmhk+bGGj8Vz4kZUX3aNRf7cSZZErmslDBp
	byQIysDaQtlctuMmBahRIoXlSHd7tEIuk2ad0pJh2AbSVqkI4RwAz
X-Received: by 2002:ac8:5d51:0:b0:4b5:4874:4fa5 with SMTP id d75a77b69052e-4b77d07ee69mr30002871cf.18.1757672352010;
        Fri, 12 Sep 2025 03:19:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDr/xf3Xq/zG3qRRgOoMRE9GeT+a6DC6K2ISKAktnMWoKUg/v0LpRmDDlLQEuN+IJgK34ztQ==
X-Received: by 2002:ac8:5d51:0:b0:4b5:4874:4fa5 with SMTP id d75a77b69052e-4b77d07ee69mr30002371cf.18.1757672351305;
        Fri, 12 Sep 2025 03:19:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e6460f138sm1035638e87.111.2025.09.12.03.19.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:19:10 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:19:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 08/13] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
Message-ID: <6p43oxn57kke5eotoqtt5gqtmhmgeteoymewqm3ko5q5veyegs@krkh4dwdno5i>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-8-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-8-2702bdda14ed@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: OdDOzOXki266xvJdZIYbQxPXMs8kMDIB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX2SSPbnTvvGGt
 c/dT8hkrwcqaAmMH8R6AITMVZxgyh9r7DgfoGmLImGdmpViV7w5RwUMTQ76CHu+cBTqTEze877k
 am2VDfmDSyNtkIZXuqqIeTCzOqCXuMcIKS5ZIsb7er86OdtZJcM3vzCkrRyAfTy11h3xD+y0FrW
 2QgO3MLXvZRcgfGzmD9MdFA0pO7OxvBIKoLcFLmBTMRufL0Wgm9fww4bN5Nz1boKTzj/2vYAaNb
 WYxmOl7CKsHgMwq9NxZ2d+SnwmVa1eA2CC2fru00lGkmBVbC2cgnsDjCL6ypcCCNocOUo2rZx+x
 RzELbxVWDbFcgYgAzxIrhO464+hOZlH6JESb5sek9uqH8Ub6+YOXAtfEYxBfjDVdKi9moGM5IAD
 dYgasxSf
X-Proofpoint-GUID: OdDOzOXki266xvJdZIYbQxPXMs8kMDIB
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c3f3a1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Prb7D_9PTKkpd4Urf3EA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_031914_124384_0E76B916 
X-CRM114-Status: GOOD (  27.44  )
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

On Thu, Sep 11, 2025 at 10:55:05PM +0800, Xiangxu Yin wrote:
> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
> Extend qmp_usbc_register_clocks and clock provider logic to support both
> USB and DP instances.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 208 +++++++++++++++++++++++++++++--
>  1 file changed, 195 insertions(+), 13 deletions(-)
> 
> @@ -1276,8 +1291,11 @@ static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
>  
>  	ret = of_property_read_string(np, "clock-output-names", &init.name);
>  	if (ret) {
> -		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
> -		return ret;
> +		char name[64];
> +
> +		/* Clock name is not mandatory. */
> +		snprintf(name, sizeof(name), "%s::pipe_clk", dev_name(qmp->dev));
> +		init.name = name;
>  	}

Do we have any guarantees that memory for 'name' exists beyond this point?

>  
>  	init.ops = &clk_fixed_rate_ops;
> @@ -1286,19 +1304,176 @@ static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
>  	fixed->fixed_rate = 125000000;
>  	fixed->hw.init = &init;
>  
> -	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
> -	if (ret)
> +	return devm_clk_hw_register(qmp->dev, &fixed->hw);
> +}
> +
> +
> +/*
> + * Display Port PLL driver block diagram for branch clocks
> + *
> + *              +------------------------------+
> + *              |         DP_VCO_CLK           |
> + *              |                              |
> + *              |    +-------------------+     |
> + *              |    |   (DP PLL/VCO)    |     |
> + *              |    +---------+---------+     |
> + *              |              v               |
> + *              |   +----------+-----------+   |
> + *              |   | hsclk_divsel_clk_src |   |
> + *              |   +----------+-----------+   |
> + *              +------------------------------+
> + *                              |
> + *          +---------<---------v------------>----------+
> + *          |                                           |
> + * +--------v----------------+                          |
> + * |    dp_phy_pll_link_clk  |                          |
> + * |     link_clk            |                          |
> + * +--------+----------------+                          |
> + *          |                                           |
> + *          |                                           |
> + *          v                                           v
> + * Input to DISPCC block                                |
> + * for link clk, crypto clk                             |
> + * and interface clock                                  |
> + *                                                      |
> + *                                                      |
> + *      +--------<------------+-----------------+---<---+
> + *      |                     |                 |
> + * +----v---------+  +--------v-----+  +--------v------+
> + * | vco_divided  |  | vco_divided  |  | vco_divided   |
> + * |    _clk_src  |  |    _clk_src  |  |    _clk_src   |
> + * |              |  |              |  |               |
> + * |divsel_six    |  |  divsel_two  |  |  divsel_four  |
> + * +-------+------+  +-----+--------+  +--------+------+
> + *         |                 |                  |
> + *         v---->----------v-------------<------v
> + *                         |
> + *              +----------+-----------------+
> + *              |   dp_phy_pll_vco_div_clk   |
> + *              +---------+------------------+
> + *                        |
> + *                        v
> + *              Input to DISPCC block
> + *              for DP pixel clock
> + *
> + */
> +static int qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
> +{
> +	switch (req->rate) {
> +	case 1620000000UL / 2:
> +	case 2700000000UL / 2:
> +	/* 5.4 and 8.1 GHz are same link rate as 2.7GHz, i.e. div 4 and div 6 */
> +		return 0;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static unsigned long qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
> +{
> +	const struct qmp_usbc *qmp;
> +	const struct phy_configure_opts_dp *dp_opts;
> +
> +	qmp = container_of(hw, struct qmp_usbc, dp_pixel_hw);
> +
> +	dp_opts = &qmp->dp_opts;
> +
> +	switch (dp_opts->link_rate) {
> +	case 1620:
> +		return 1620000000UL / 2;
> +	case 2700:
> +		return 2700000000UL / 2;
> +	case 5400:
> +		return 5400000000UL / 4;

No HBR3 support? Then why was it mentioned few lines above?

> +	default:
> +		return 0;
> +	}
> +}
> +


> +static int qmp_usbc_register_clocks(struct qmp_usbc *qmp, struct device_node *np)
> +{
> +	int ret;
>  
> -	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
> +	ret = phy_pipe_clk_register(qmp, np);
>  	if (ret)
>  		return ret;
>  
> -	/*
> -	 * Roll a devm action because the clock provider is the child node, but
> -	 * the child node is not actually a device.
> -	 */
> -	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
> +	if (qmp->dp_serdes != 0) {
> +		ret = phy_dp_clks_register(qmp, np);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return devm_of_clk_add_hw_provider(qmp->dev, qmp_usbc_clks_hw_get, qmp);

Do you understand what did the comment (that you've removed) say? And
why?

>  }
>  
>  #if IS_ENABLED(CONFIG_TYPEC)
> @@ -1429,6 +1604,13 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
>  
> +	if (offs->dp_serdes != 0) {
> +		qmp->dp_serdes = base + offs->dp_serdes;
> +		qmp->dp_tx = base + offs->dp_txa;
> +		qmp->dp_tx2 = base + offs->dp_txb;
> +		qmp->dp_dp_phy = base + offs->dp_dp_phy;
> +	}
> +
>  	qmp->serdes = base + offs->serdes;
>  	qmp->pcs = base + offs->pcs;
>  	if (offs->pcs_misc)
> @@ -1537,7 +1719,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>  	 */
>  	pm_runtime_forbid(dev);
>  
> -	ret = phy_pipe_clk_register(qmp, np);
> +	ret = qmp_usbc_register_clocks(qmp, np);
>  	if (ret)
>  		goto err_node_put;
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
