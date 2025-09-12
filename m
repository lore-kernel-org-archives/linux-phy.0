Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED2D7CA101F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 12:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GI1oL7s3ecypr5yWwrt4QiYuGYNLrZRZZ0EXdvcNdZ8=; b=E970gOLP/xx3Mh
	q1E//glaU4GHNIZL5jr/Id6Svg4k6I/OFxeAkE71AaU7Q90BvS4mNXEDagPQpy70gG80qn1QMNxsV
	4NwCEMIhp0vf9S0/Z5cts1dFYTlycvXs3XuRYXZ6glPrnXj+CsHY+l9eOLUOPH6tlcCR+pilo/Qni
	8rsENYF0g7JsCkhJ+ITj3CoFjcH1TQuoYqTPWlO9ni+CxiUJrnXHGHhxc9KoSTwrEBLpUZMU4oPec
	rjS4xhFlWmqg3cUjucKjQ3RVvi34UElLRTeFzQxhZT+OACLpV20IvhCseHINzaTCS2q/9K7tFLBLr
	CJs7Zzongy4fc9WChz7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2S5-000000093D8-1tb2;
	Fri, 12 Sep 2025 12:00:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2S2-000000093Ab-2K09
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 12:00:27 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fDHA015069
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:00:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fbBQL65dyCJpo/jAgC2RKL4WsdEtpLaJgdDVpNQP4NA=; b=Keedpf5mlpgcIkD+
	kDlz7ZTUS/GMyUZP4hTjgU1J7kEYbELo33PxmI1qoIOOIuqZ274iKcjMbiED3y9a
	cXheoqcb9eGFgzDqict5bl1Iz04QbYssVvyrkxVGFfqc+jivMGXo24UXSgeT4RMP
	tXw34l04FRXvKFKRTLnrN6UD1AWaxI2Yc1rTnBhFdG9g7v6Aqfqs3hYlRfT4Jk13
	+zWPoZSB5BOuw3uxvIXF7o+tZOJqO6JEpSNJIzNEkf02hT8M3xLmZpEZusf6rX86
	U5EiOS5PHGqz4sqmIcIYHhI2hTEYm+BczH8n2KohTs/Dnj2cJH4CK/In8qTRQ3vZ
	285ZVg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aaputhf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:00:25 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b5204317445so435915a12.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 05:00:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678424; x=1758283224;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fbBQL65dyCJpo/jAgC2RKL4WsdEtpLaJgdDVpNQP4NA=;
        b=Zi4np04qnmfXYTQFYHe/ZzuRc89l1YMbAW4VbcYCjXoCEhFvgJ5FWXEI7mlsCYHS9K
         mwV/Q41j41YyXgRoKimpAhuxvxTE3QtQsb8SMoCidH4onaTKcnpllR+VkEVBQ+SDRBQc
         VIbLX9Hx7lZ7faSWPUkvVmSTauUHxUK7QKiRfVx5hStO+ger/mTuQRQZejQYLsevFIHB
         ep2SDEsVRDH8Tm4QLNFbVTnM0WJfMMxWIyQvtl5VfFW+XN2sn5fgMskot4xeSExgNucS
         un/jYmE6+352sd3yYxgTyuMYRD1y/MlKMvqyC/qO2gGBEM5phEph5nYZUZrIJIjQ9O03
         aKQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVICdxYdhON9FeSiv3LtLB5BOg6eRZFXE8wZ2MUMxLXA5URlW0pQVu69HhtG8tBgEsiF2jwP7Dqsqw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqmS9mtllYUvg4fLnXREU3+fueyfd7c4Y2v2FG7Dp2OtZMkr0L
	dBrakPtYm68xXkKJbcQywJd7Z73MYoqhSOQd8P5e+vR9DCl0UcYKgddk8VDIcmyrpYa7fWFRehu
	DkcElJGXAUAL5ypLGglgzhcqXPOKUBnHTjbVemDG6vXrvBNBFX3IHYQvaQC3wrSnXbUYM
X-Gm-Gg: ASbGncsUfQAM5Y13lB0PLv5FAiJyNdukSzz8twQesaR9sFMMc+ia7E/r1+kciBmZzok
	nKkZU2YVk/3aruOZ5ey34Sk7vrsVroQKL8f+vTZrxoeFuSej24A8E7pRzwLFxX18qmalG7xpWWT
	UZVBh4PTGkeTeLGCxnR4uqh252+TGLjjCHAZqv05n4j9VwoxvTPf05Pi1tzTfGOoo3QAyxWnY3z
	qgXnAm/vlpwiXLzPkhkm4rKAM7wIGxOXBrpmOGLAXr1jk6YdjJZd7JT9sdpFhB1i0aGk1jww1Ou
	hW+jWc8G6ZQABvzvoGWvDlqPtTRszNFPcePyeW+LcRzBk77N54oNs+72Pf6mieDndzKHBJJMBh7
	a4hhA1DtEIY0o61T5uMrQbPCFxNhO+Q==
X-Received: by 2002:a05:6a20:914c:b0:251:31a0:9e70 with SMTP id adf61e73a8af0-2602cb012a7mr2002343637.7.1757678422897;
        Fri, 12 Sep 2025 05:00:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHa0BAZWf24zn+3+8j1WAhgOyGQF6J2BOIlcR+w56DOk0y+/cmniHka/roP1NPgCXMPeqLmCw==
X-Received: by 2002:a05:6a20:914c:b0:251:31a0:9e70 with SMTP id adf61e73a8af0-2602cb012a7mr2002298637.7.1757678422247;
        Fri, 12 Sep 2025 05:00:22 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607a47601sm5176550b3a.28.2025.09.12.05.00.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 05:00:21 -0700 (PDT)
Message-ID: <335ffce5-19c6-409d-8386-686fe9e5dea5@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 20:00:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/13] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
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
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-8-2702bdda14ed@oss.qualcomm.com>
 <6p43oxn57kke5eotoqtt5gqtmhmgeteoymewqm3ko5q5veyegs@krkh4dwdno5i>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <6p43oxn57kke5eotoqtt5gqtmhmgeteoymewqm3ko5q5veyegs@krkh4dwdno5i>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c40b59 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=kyIpQUSdGz_7SAUQDtwA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: aSiZhoqZn4EE0b8mybv4N06BtLh98A_1
X-Proofpoint-ORIG-GUID: aSiZhoqZn4EE0b8mybv4N06BtLh98A_1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfXxlGz+mtbCfHp
 Q3xjpXJPE6q3RgLA3JfA0OGCPqlD77HxDYj7OCPbwAqpdZTuIZdBfVpNyZeSnaHn0HChbZ6evUj
 erOftqmordG8rjvhG0TyJAhFGBOm0ooN4iP6riJfptfrwME7ueRKKZs73ToTX/awiprOSivW4Fz
 HVzKy/dVyP0wNPW8JwB8Umt3pAnIj/0wXgAIsJNG2hm2KgFH4WMl8/4RU8rgP03fVIooXoV6cC0
 /IkNR1AeTRU+ShZa53K0SgWXvK1JMQMOX2G32oUkDFLBCtBYOzE+URARLc0gV+EaHG7k/EPCfNM
 NESWfqBMlefJN9kMs7ufO305Lin010IXrRC7DOglTtx3n1u/CfUh/9Ofs7kZbn+QR4xnLuPixak
 knwA+vYs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_050026_718425_906893EA 
X-CRM114-Status: GOOD (  24.03  )
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


On 9/12/2025 6:19 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:05PM +0800, Xiangxu Yin wrote:
>> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
>> Extend qmp_usbc_register_clocks and clock provider logic to support both
>> USB and DP instances.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 208 +++++++++++++++++++++++++++++--
>>  1 file changed, 195 insertions(+), 13 deletions(-)
>>
>> @@ -1276,8 +1291,11 @@ static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
>>  
>>  	ret = of_property_read_string(np, "clock-output-names", &init.name);
>>  	if (ret) {
>> -		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
>> -		return ret;
>> +		char name[64];
>> +
>> +		/* Clock name is not mandatory. */
>> +		snprintf(name, sizeof(name), "%s::pipe_clk", dev_name(qmp->dev));
>> +		init.name = name;
>>  	}
> Do we have any guarantees that memory for 'name' exists beyond this point?


If the previous of_property_read_string() call succeeded, could 'name'
still be empty? or you means 'char name[64]' will be release after '}'?

From local verification, I can see 88e8000.phy::pipe_clk node from clk_summary.


>>  
>>  	init.ops = &clk_fixed_rate_ops;
>> @@ -1286,19 +1304,176 @@ static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
>>  	fixed->fixed_rate = 125000000;
>>  	fixed->hw.init = &init;
>>  
>> -	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
>> -	if (ret)
>> +	return devm_clk_hw_register(qmp->dev, &fixed->hw);
>> +}
>> +
>> +
>> +/*
>> + * Display Port PLL driver block diagram for branch clocks
>> + *
>> + *              +------------------------------+
>> + *              |         DP_VCO_CLK           |
>> + *              |                              |
>> + *              |    +-------------------+     |
>> + *              |    |   (DP PLL/VCO)    |     |
>> + *              |    +---------+---------+     |
>> + *              |              v               |
>> + *              |   +----------+-----------+   |
>> + *              |   | hsclk_divsel_clk_src |   |
>> + *              |   +----------+-----------+   |
>> + *              +------------------------------+
>> + *                              |
>> + *          +---------<---------v------------>----------+
>> + *          |                                           |
>> + * +--------v----------------+                          |
>> + * |    dp_phy_pll_link_clk  |                          |
>> + * |     link_clk            |                          |
>> + * +--------+----------------+                          |
>> + *          |                                           |
>> + *          |                                           |
>> + *          v                                           v
>> + * Input to DISPCC block                                |
>> + * for link clk, crypto clk                             |
>> + * and interface clock                                  |
>> + *                                                      |
>> + *                                                      |
>> + *      +--------<------------+-----------------+---<---+
>> + *      |                     |                 |
>> + * +----v---------+  +--------v-----+  +--------v------+
>> + * | vco_divided  |  | vco_divided  |  | vco_divided   |
>> + * |    _clk_src  |  |    _clk_src  |  |    _clk_src   |
>> + * |              |  |              |  |               |
>> + * |divsel_six    |  |  divsel_two  |  |  divsel_four  |
>> + * +-------+------+  +-----+--------+  +--------+------+
>> + *         |                 |                  |
>> + *         v---->----------v-------------<------v
>> + *                         |
>> + *              +----------+-----------------+
>> + *              |   dp_phy_pll_vco_div_clk   |
>> + *              +---------+------------------+
>> + *                        |
>> + *                        v
>> + *              Input to DISPCC block
>> + *              for DP pixel clock
>> + *
>> + */
>> +static int qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
>> +{
>> +	switch (req->rate) {
>> +	case 1620000000UL / 2:
>> +	case 2700000000UL / 2:
>> +	/* 5.4 and 8.1 GHz are same link rate as 2.7GHz, i.e. div 4 and div 6 */
>> +		return 0;
>> +	default:
>> +		return -EINVAL;
>> +	}
>> +}
>> +
>> +static unsigned long qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
>> +{
>> +	const struct qmp_usbc *qmp;
>> +	const struct phy_configure_opts_dp *dp_opts;
>> +
>> +	qmp = container_of(hw, struct qmp_usbc, dp_pixel_hw);
>> +
>> +	dp_opts = &qmp->dp_opts;
>> +
>> +	switch (dp_opts->link_rate) {
>> +	case 1620:
>> +		return 1620000000UL / 2;
>> +	case 2700:
>> +		return 2700000000UL / 2;
>> +	case 5400:
>> +		return 5400000000UL / 4;
> No HBR3 support? Then why was it mentioned few lines above?
>
>> +	default:
>> +		return 0;
>> +	}
>> +}
>> +
>
>> +static int qmp_usbc_register_clocks(struct qmp_usbc *qmp, struct device_node *np)
>> +{
>> +	int ret;
>>  
>> -	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
>> +	ret = phy_pipe_clk_register(qmp, np);
>>  	if (ret)
>>  		return ret;
>>  
>> -	/*
>> -	 * Roll a devm action because the clock provider is the child node, but
>> -	 * the child node is not actually a device.
>> -	 */
>> -	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
>> +	if (qmp->dp_serdes != 0) {
>> +		ret = phy_dp_clks_register(qmp, np);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>> +	return devm_of_clk_add_hw_provider(qmp->dev, qmp_usbc_clks_hw_get, qmp);
> Do you understand what did the comment (that you've removed) say? And
> why?
>
>>  }
>>  
>>  #if IS_ENABLED(CONFIG_TYPEC)
>> @@ -1429,6 +1604,13 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
>>  	if (IS_ERR(base))
>>  		return PTR_ERR(base);
>>  
>> +	if (offs->dp_serdes != 0) {
>> +		qmp->dp_serdes = base + offs->dp_serdes;
>> +		qmp->dp_tx = base + offs->dp_txa;
>> +		qmp->dp_tx2 = base + offs->dp_txb;
>> +		qmp->dp_dp_phy = base + offs->dp_dp_phy;
>> +	}
>> +
>>  	qmp->serdes = base + offs->serdes;
>>  	qmp->pcs = base + offs->pcs;
>>  	if (offs->pcs_misc)
>> @@ -1537,7 +1719,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>>  	 */
>>  	pm_runtime_forbid(dev);
>>  
>> -	ret = phy_pipe_clk_register(qmp, np);
>> +	ret = qmp_usbc_register_clocks(qmp, np);
>>  	if (ret)
>>  		goto err_node_put;
>>  
>>
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
