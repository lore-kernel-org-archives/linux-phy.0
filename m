Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28C49CAC58F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 12:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RU/U0N+ZyHDnN6tCf+jSbiZ+N/im2tuwSYk+dVJmK6E=; b=sdbeaLHA5+uYy8
	2k3ZvwXyqRMQ0BNMtUF4wxVS6a9to7xl5+qazK05RWBN+h+3rZTptfg5sJOh3xhq0dhPLhQ+ufPyQ
	M+wFWf+Ovb61nBwAq0v0bpY38iOx25epBGSgKLb9b94cpHfxkGUgSxSmwgmyLdFU1CtJkH7GEwTfv
	UEIbWrPOMuFLPoeYzz7LlGYfIfyVSfzFr2Jx7vGNruFNeHkW+jQckSb7Uyn65BCWjZ3CqBB/7D93L
	sbPFVHimdESUznVsC26TSbli5HN/Qh0L47dbrSSo++h/7RrNwDGuTbLvU7XUHE9+K47qgyogiYrDG
	RU4NLbbsWEBHXXqyq7Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2a1-0000000971P-3cPB;
	Fri, 12 Sep 2025 12:08:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2a0-000000096yz-05IB
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 12:08:41 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fsR3019689
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:08:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0oXXG099vonYe458jI6+jdyn
	M6kqgEhK5y0kr8AEekM=; b=GUQtzCm+Kv1oabrFCrcTZ/2JCOVDQrrbOkzuzAdX
	Vc05f31dhWQ/A9c4jyVLi99kBWMUgeFlDlJXrKaMmoLhASOqubcxAYKFSf1eSp/G
	OnyuEm/hR4RBM+tGYNrAVVtAa4G+N6OhSsS2nu5kCt4wYdBQychp2RoYKWxcSNa0
	QwKMP/667CTpNdz0uubf6Fy4enrnCQazxr2AtdE/brdzEqjF76s8NBN6ITqc7N+y
	mzR4CmmfOs2kwTF13/59iv8hs+NYJLYJZWGW+FyiCyWISiCnTahez1UcriM1L4Fd
	loPvoaUNnYizfdsK+kyTx5lPFc/WD/szKKwKOjarAFdV4A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8akjsy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:08:39 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-76d3633c86dso7250246d6.0
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 05:08:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678918; x=1758283718;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0oXXG099vonYe458jI6+jdynM6kqgEhK5y0kr8AEekM=;
        b=jtk1DhrxJ+piMLtuM1fT92OpU8qIH4+wnx3vxsLgXGOzf3/5fYz8vt22Ok+nB3S+V5
         e7lJFVzxcubMygn+He3HfcpefTGhwhHzMnX4q/5n4u13cJhmbVS9sOrO2tY8OSQ74JzF
         eugEKwtMsxnBDdk4t8ZUws1Y99sC4hxuytekguj99FnEVg8L0EtBw5X8jfDLuEbcWCuY
         wbVONJrOx58bapxwwBLph+E3TdeY44T7/iXVh7ag7F1kGXgJLWeEjnzHRd17RexA0aHK
         llvXyChHUjDEs15hxuSTifnW93rTB+e+STUmR54vghQHyvFXNZd+LXLKkRGpvHV3zK5A
         vpFg==
X-Forwarded-Encrypted: i=1; AJvYcCXtNN9qdziomGfkS4/MLLdXaoSHapy4t6/0nCxKWs7u8dG2/1x4nExcdfCpPR49onD0Nvxos5TrgPA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7DIm8Nze6Zx0ZCmKBEOD280NptrhZmL1yEgf+lkhCiPJ3wIJm
	LHoWOJBbmivdFj79ji9rQ3Xp2ZK4Ym5BFq2aH+WJS0PtqJehXiAr5CWwBpdEHiFLGvjWnVLRo2Y
	/e9SAD6KQJRBd2xnFBdnSFFyVJWFPPJQtNHcTN/nWDWiLv16UyXrv503YIV1E5K8rLtzG
X-Gm-Gg: ASbGncsBmAQ0OZyWv2UXwiNnokSX0PBKfZI00JHqf+kT7CdRTd5O57Qob7nd+3AADjV
	L7nydnmGF//2knb18uhsCau4OrHwsL5sjNoA6jOPXoTLbVoGz1tr2aMxFFqa8ZBUcA6bqj6+z1z
	hSacG8FuP8Q+PxpYY54yLX08CPiYXTJCKGWpy64EJLW+c19N5VqIy0iYhJeeCmMU/d9ouXVl6qR
	nbSgQokPDcU9bfvSl3MlWScBvQ8PcpdNaGAFuzJW9/w+LErPaPDeDanvEEkao8GZgI3XN0AtQqF
	qGyddMb14+UKIjitKZy3WBjMcoQ1Rc8XRmj0a44Qc5NwfgpTfScADmC4iANNK+KBTSYW9skBf/F
	fAhxVyIzsZ2b8pnC7aJl7J7mLc2EThdjWlC3t5BbRtTYsFsIQ/Ess
X-Received: by 2002:a05:6214:3018:b0:765:fe8f:13df with SMTP id 6a1803df08f44-767c50643a1mr31418606d6.63.1757678917598;
        Fri, 12 Sep 2025 05:08:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHM2i4nwyWJB0E+QBu+zEM9C2hMOxGjTWUuESDMwXmBg9KEJdV9S8YjsKklNga/yVnrgK5IRg==
X-Received: by 2002:a05:6214:3018:b0:765:fe8f:13df with SMTP id 6a1803df08f44-767c50643a1mr31417486d6.63.1757678916750;
        Fri, 12 Sep 2025 05:08:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571a0fd0825sm170007e87.125.2025.09.12.05.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 05:08:35 -0700 (PDT)
Date: Fri, 12 Sep 2025 15:08:33 +0300
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
Message-ID: <7ozv3u7xuvtz2x5q3pp5kdeydtsu5jlrgwjnxpxxiuh7przr2z@35uo7t3b4ze2>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-8-2702bdda14ed@oss.qualcomm.com>
 <6p43oxn57kke5eotoqtt5gqtmhmgeteoymewqm3ko5q5veyegs@krkh4dwdno5i>
 <335ffce5-19c6-409d-8386-686fe9e5dea5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <335ffce5-19c6-409d-8386-686fe9e5dea5@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c40d47 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=bQXPqPv9zJb0mhjPT90A:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: dmoGTeGwI0o5i2EpAMNlZtI51GopENph
X-Proofpoint-ORIG-GUID: dmoGTeGwI0o5i2EpAMNlZtI51GopENph
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX4z+Dc2xACOe6
 TiPajQR5+/+CpdNzcibXsU02I045SfpYuPoxs1tvfNfektTtDuxSc1BQTuoTpmu6Sn5JZuxrzrU
 vsRS486eejUOFu/6i6GJDYMBrkWM+gCrIehtxF3/O5r6TDvr9m1VEBqnVjt19bQIW2LhCU79hMP
 6EQlMXBngR7zY6k1HPZz/SVS+55z/q9xmuQo2N8weMpz1y/0POGRIwme0Nv76HNSCmX3V83iL/s
 ANbQDe9sJWua7FOChjbPJ58TjvhYEJIqAteVrQ0PU5dfETmQ8Nms4m8vccdcAWva6vfJvZdlxvO
 zrH0LbOm4FYMTdhYCktsuWZ9wawQ2Kw2aQxD4DWxk4i8fAGOQP3aa+jFKyRrzqRnI0bFScK4lDT
 vTGRqknN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_050840_078307_C6E9A2D3 
X-CRM114-Status: GOOD (  33.42  )
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

On Fri, Sep 12, 2025 at 08:00:14PM +0800, Xiangxu Yin wrote:
> 
> On 9/12/2025 6:19 PM, Dmitry Baryshkov wrote:
> > On Thu, Sep 11, 2025 at 10:55:05PM +0800, Xiangxu Yin wrote:
> >> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
> >> Extend qmp_usbc_register_clocks and clock provider logic to support both
> >> USB and DP instances.
> >>
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 208 +++++++++++++++++++++++++++++--
> >>  1 file changed, 195 insertions(+), 13 deletions(-)
> >>
> >> @@ -1276,8 +1291,11 @@ static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
> >>  
> >>  	ret = of_property_read_string(np, "clock-output-names", &init.name);
> >>  	if (ret) {
> >> -		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
> >> -		return ret;
> >> +		char name[64];
> >> +
> >> +		/* Clock name is not mandatory. */
> >> +		snprintf(name, sizeof(name), "%s::pipe_clk", dev_name(qmp->dev));
> >> +		init.name = name;
> >>  	}
> > Do we have any guarantees that memory for 'name' exists beyond this point?
> 
> 
> If the previous of_property_read_string() call succeeded, could 'name'
> still be empty? or you means 'char name[64]' will be release after '}'?
> 
> From local verification, I can see 88e8000.phy::pipe_clk node from clk_summary.

char name[64] belong to a stack frame that is not guaranteed to exist
after you've close this bracked. So it can be easily overwritten with
other values.

> 
> 
> >>  
> >>  	init.ops = &clk_fixed_rate_ops;
> >> @@ -1286,19 +1304,176 @@ static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
> >>  	fixed->fixed_rate = 125000000;
> >>  	fixed->hw.init = &init;
> >>  
> >> -	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
> >> -	if (ret)
> >> +	return devm_clk_hw_register(qmp->dev, &fixed->hw);
> >> +}
> >> +
> >> +
> >> +/*
> >> + * Display Port PLL driver block diagram for branch clocks
> >> + *
> >> + *              +------------------------------+
> >> + *              |         DP_VCO_CLK           |
> >> + *              |                              |
> >> + *              |    +-------------------+     |
> >> + *              |    |   (DP PLL/VCO)    |     |
> >> + *              |    +---------+---------+     |
> >> + *              |              v               |
> >> + *              |   +----------+-----------+   |
> >> + *              |   | hsclk_divsel_clk_src |   |
> >> + *              |   +----------+-----------+   |
> >> + *              +------------------------------+
> >> + *                              |
> >> + *          +---------<---------v------------>----------+
> >> + *          |                                           |
> >> + * +--------v----------------+                          |
> >> + * |    dp_phy_pll_link_clk  |                          |
> >> + * |     link_clk            |                          |
> >> + * +--------+----------------+                          |
> >> + *          |                                           |
> >> + *          |                                           |
> >> + *          v                                           v
> >> + * Input to DISPCC block                                |
> >> + * for link clk, crypto clk                             |
> >> + * and interface clock                                  |
> >> + *                                                      |
> >> + *                                                      |
> >> + *      +--------<------------+-----------------+---<---+
> >> + *      |                     |                 |
> >> + * +----v---------+  +--------v-----+  +--------v------+
> >> + * | vco_divided  |  | vco_divided  |  | vco_divided   |
> >> + * |    _clk_src  |  |    _clk_src  |  |    _clk_src   |
> >> + * |              |  |              |  |               |
> >> + * |divsel_six    |  |  divsel_two  |  |  divsel_four  |
> >> + * +-------+------+  +-----+--------+  +--------+------+
> >> + *         |                 |                  |
> >> + *         v---->----------v-------------<------v
> >> + *                         |
> >> + *              +----------+-----------------+
> >> + *              |   dp_phy_pll_vco_div_clk   |
> >> + *              +---------+------------------+
> >> + *                        |
> >> + *                        v
> >> + *              Input to DISPCC block
> >> + *              for DP pixel clock
> >> + *
> >> + */
> >> +static int qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
> >> +{
> >> +	switch (req->rate) {
> >> +	case 1620000000UL / 2:
> >> +	case 2700000000UL / 2:
> >> +	/* 5.4 and 8.1 GHz are same link rate as 2.7GHz, i.e. div 4 and div 6 */
> >> +		return 0;
> >> +	default:
> >> +		return -EINVAL;
> >> +	}
> >> +}
> >> +
> >> +static unsigned long qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
> >> +{
> >> +	const struct qmp_usbc *qmp;
> >> +	const struct phy_configure_opts_dp *dp_opts;
> >> +
> >> +	qmp = container_of(hw, struct qmp_usbc, dp_pixel_hw);
> >> +
> >> +	dp_opts = &qmp->dp_opts;
> >> +
> >> +	switch (dp_opts->link_rate) {
> >> +	case 1620:
> >> +		return 1620000000UL / 2;
> >> +	case 2700:
> >> +		return 2700000000UL / 2;
> >> +	case 5400:
> >> +		return 5400000000UL / 4;
> > No HBR3 support? Then why was it mentioned few lines above?
> >
> >> +	default:
> >> +		return 0;
> >> +	}
> >> +}
> >> +
> >
> >> +static int qmp_usbc_register_clocks(struct qmp_usbc *qmp, struct device_node *np)
> >> +{
> >> +	int ret;
> >>  
> >> -	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
> >> +	ret = phy_pipe_clk_register(qmp, np);
> >>  	if (ret)
> >>  		return ret;
> >>  
> >> -	/*
> >> -	 * Roll a devm action because the clock provider is the child node, but
> >> -	 * the child node is not actually a device.
> >> -	 */
> >> -	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
> >> +	if (qmp->dp_serdes != 0) {
> >> +		ret = phy_dp_clks_register(qmp, np);
> >> +		if (ret)
> >> +			return ret;
> >> +	}
> >> +
> >> +	return devm_of_clk_add_hw_provider(qmp->dev, qmp_usbc_clks_hw_get, qmp);
> > Do you understand what did the comment (that you've removed) say? And
> > why?


And this was ignored :-(

> >
> >>  }
> >>  
> >>  #if IS_ENABLED(CONFIG_TYPEC)
> >> @@ -1429,6 +1604,13 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
> >>  	if (IS_ERR(base))
> >>  		return PTR_ERR(base);
> >>  
> >> +	if (offs->dp_serdes != 0) {
> >> +		qmp->dp_serdes = base + offs->dp_serdes;
> >> +		qmp->dp_tx = base + offs->dp_txa;
> >> +		qmp->dp_tx2 = base + offs->dp_txb;
> >> +		qmp->dp_dp_phy = base + offs->dp_dp_phy;
> >> +	}
> >> +
> >>  	qmp->serdes = base + offs->serdes;
> >>  	qmp->pcs = base + offs->pcs;
> >>  	if (offs->pcs_misc)
> >> @@ -1537,7 +1719,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
> >>  	 */
> >>  	pm_runtime_forbid(dev);
> >>  
> >> -	ret = phy_pipe_clk_register(qmp, np);
> >> +	ret = qmp_usbc_register_clocks(qmp, np);
> >>  	if (ret)
> >>  		goto err_node_put;
> >>  
> >>
> >> -- 
> >> 2.34.1
> >>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
