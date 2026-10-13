Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D969CC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 10:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypNHzgfaMhBuWE+NL3j1QzVR+7yHUwPG3cgsluFB1Cs=; b=LyJDyurP5aB7LI
	4uS++Z8iI8Fw2udxc8GaH3uDnBuByMON8HQHq4AUXbkOO6v+ebzb162ZmrGI0JtcpgAZr1IvDrs6o
	evvpCS253/4LzRmHq0ph/FZSQ71+RyJzCVTdiGcUKshQUZYbfzqRm9f3/ZqCbXNsszm/xYmeG8T7o
	3XPdS+rcbNnEzn5laDe/wx+2Q0T8Wu0z5rt5HadCK+/KU5Co9Kl+rCO4zZtawfZnkcer/G603kAJe
	xYP5FMo/iVb/J6DZuBweHzP0b9d3wsxYTHNgnJ9HcjHx7t/ndC8/gnoOcW+zKRKOUHjgyVD/H8ZO5
	DZ82BU1UCVozDbrwW1Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZpP-0000000Cb3M-3Auu;
	Tue, 13 Oct 2026 10:33:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZpM-0000000Cb2Q-3Gw0
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 10:33:50 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D7OXZc015281
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:33:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0vSG8Ljr5b10pBXucNpPOPKZ
	f1BmJbl53I6Oq9DgsGI=; b=KJ3Zlk3IhP6BXtSNbZ3XO1PwV4ShC1Vu0zAijAWN
	uWx7u6lZ/QqL7cv59e4KMrQqi5s4pg3RrgzndC7budPfwi6PpOunYbCnaKNP4bHN
	JltrgL0OmfmnXf4r47z5caLBtQc+GejYfFPLw9ZEQBHYQ3aWEPa6aij+UYnRYzYx
	X0TBBilKy44rq7kPfkGV6UIJXQpJvwK6FcmI52es5Glj5EIBOy7xYTwY5IOeDMNz
	3PVrOnJaAGSEqG5/TC0JedcxuXgBe7fqMSYRrjshyuNFIXw8AlHH6r3y+L4J/m4j
	kmnOkMIIdLlenO/2ovmsx6xF/3Nbpu8QiIO3YuUQHqMhtQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9g7ugspn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:33:48 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93e46b4b700so499599385a.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 03:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791887627; x=1792492427; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=0vSG8Ljr5b10pBXucNpPOPKZf1BmJbl53I6Oq9DgsGI=;
        b=FT46mcpWWuW9o76aK5FW3z5NyTZgOhdDcR3SzoouaV6oudG6nlOushk8HHpf2/QKAU
         RmCbJmSw7StmyhQImssalFRs+xqoC/VuY2jkB7Blezeu5D4XMYUkMkn1NzcleFwszK1E
         3pAaV8HEQFgZhrW6dwttacuRxaEk0Ofc+JFd647JnIUJOkucIq6QgXWdpmTYPxZgd3dQ
         eNplXbloLwDO5QxqRs4/DNAqs3jhIL2/K/Kk9J1Kbwn6vQfxPygMkiyXgjv/TtnoRY+t
         2ETqpD1HfB8yX35ZffeuUVIyb05J/BLktOXhAlQuQJF90CUY2deEzFrnEmxN2QUZ/3BS
         EqQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791887627; x=1792492427;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0vSG8Ljr5b10pBXucNpPOPKZf1BmJbl53I6Oq9DgsGI=;
        b=ec3cYEHPrB9eH8xRn3S2anvhx84KoRexEAozR5fFoB/GMAvUPCHuFYIJP/Xrz0cYp9
         CUhPVQwGKoS70PqAyOD5nQ0RiAaF0HmHjNzCf6J8pSPNsiMGCRF5gkIeDENxArzKHuuy
         +QZeLlDaA70+KFQBi8eh6KekbgI4AmcvyCNTScSD1+s3zcwXfGlTPYH6d9r1K2xRtn1o
         rmCNdhrl3prR+kGwGr31bwzclrmcUiZMoICXY+tj7VinUXEqMKCefxrIIzfeGMglvTWZ
         vesu9fqlG5X2pYl2Br1Y08FhnvMu1t8BBH63elO0GQAk3kdnglSRfCBpRd2QFXTU0o5l
         wKJw==
X-Forwarded-Encrypted: i=1; AKwUvBybE4pxvxOFg9H8tB5qs9yYFlCjAvdBCvViJD4l6n/O9OYoZIRtVQiIw1NTdq1ZWA0/m0MZh7ndsk4=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ2m08e2rgkhDuPtxvyuNc0F7azRn+Cy82jRQeYQq3rAnk7DdZ3
	LXeuMva55Z0jA0eKZKDz1dqLD5idedgaE6PhNsJG850MjUFYUgOxBbbinzFU57Bj0LSXTJ97j8Q
	wwnSRojMAyq/YlPJ+5Qx8yQjzA2v9u/OTaFg804ilWM9b0bab9u1LlpPQiECH0Z8BwnXI
X-Gm-Gg: AYBFou2Z8l5ViIcusBuNlC6tGGYS99TSwITQ5L3WUku8IF3ix+zVhl1Qw5lfU19xxZY
	povLkxvnu/MEYkjFiz+DOB7rwU0hr2mlzPs5sP5D21/GKgqda8WGpzW2hXSyQQerlENaAlczvq9
	qB+jSuONQyDWOLm89xPo9kTkskFeonCYRi5GUc3X3X/Xw4s7rPnhMBSUdPXTm7rls420bej1lAk
	qUYidcloPW3nbmLgv9f29QcfEMmRVmt3ACs75Tdv3fhbdenapQ0SaCcxNhu5LGXCqxounTXU3fK
	xqtOut837/Gn0XapdpI4r+YiZ+Sadkn3AF5u6GwzFy6JZQjbtXeLCGUaOMG+pWBG3u25tORqbiJ
	wqHILG3hzTVHys3rChfrfTUetTqa6VMz4nAGaV5cxyxn38aR0UrRbwuszNfmwJ/RD+al99dD3dy
	1iMFxYHd1zvtoD
X-Received: by 2002:a05:620a:2a10:b0:93e:c12c:9b71 with SMTP id af79cd13be357-93ec12c9ef0mr1880577785a.76.1791887627117;
        Tue, 13 Oct 2026 03:33:47 -0700 (PDT)
X-Received: by 2002:a05:620a:2a10:b0:93e:c12c:9b71 with SMTP id af79cd13be357-93ec12c9ef0mr1880571485a.76.1791887626526;
        Tue, 13 Oct 2026 03:33:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bcdde3667csm3574962e87.5.2026.10.13.03.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 03:33:45 -0700 (PDT)
Date: Tue, 13 Oct 2026 13:33:43 +0300
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 12/13] phy: qcom: edp: Add Nord PHY configuration data
 tables
Message-ID: <qqfucmyebsvemdr5px33wabsxxq4owozwmxcqu62sprs5k32bo@kb5pjx2m4ucq>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-12-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261012-nord-drv-dt-v2-12-a2ab9af954d2@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MSBTYWx0ZWRfX0JD6E57Vjm7F
 ZyCHTJQqpKD2qwiDtKtYYX4hIu/rCIl9er0VdeYuAXy7hyZ5w2iJXn8zxu34cdzMcCoIFgn2iVL
 cqJHHUPR1A2eeJcqg0WnExjBZtg2MZ4frhp8JXwWg6nSOpY/MacRD9KraytIZOIohxrsIq2hAlv
 mVrHICXDRnKimjWzhSBKFJkqxZOdKvvDiDOkd+MLlkD7ZLir8qbmoatND0gEHQqpUnX1yEx7RMV
 AoDyyjHvW4na6qjgkGhSOVxOw0ocDb4C9L2e7Jvh+kXd7y5aYkgy3orRSTDtHcvsAWu/A+9BaPQ
 S/yA4MZCaoHVPtMU1gNPW++G6mdQM2Kt3lSdIcU4jH2MvboNJ8nTi2S2Mfny31zWoxU7StBbRee
 pHf0t3oIYlBJGOPg/PnT8SElhhQEKQprmey/WKteMjIJ1vgiCT6nc9UvjHn01Pln0HfEfcqKXLh
 DtfQIBXxzM5jTyjUnGg==
X-Authority-Analysis: v=2.4 cv=Z495j3RA c=1 sm=1 tr=0 ts=6ace090c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=XaE-5AV0Kcntrrlu8H4A:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: wLizi7XbIR_U-iPDQiB-KbSeif0bNNR9
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MSBTYWx0ZWRfX2JLOWpXVatF1
 nywqty28/fIkR8wMWVKWwoxRLpOzhbUao+AzTyInVO2bcIpUpH2XJQFFqjnGGQ6At1Z78uOa0yF
 NvGEdsi4sUqBQjrYMcHJY0cRqVnA/rg=
X-Proofpoint-GUID: wLizi7XbIR_U-iPDQiB-KbSeif0bNNR9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 clxscore=1015
 malwarescore=0 priorityscore=1501 phishscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_033348_861627_2012FD8C 
X-CRM114-Status: GOOD (  20.75  )
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

On Mon, Oct 12, 2026 at 07:02:22PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Add Nord-specific AUX channel, VCO divider, LDO and TX resistor
> calibration data: edp_phy_aux_cfg_nord[], edp_phy_vco_div_cfg_nord[],
> qcom_edp_ldo_config_nord() and tx_res_cfg_nord[], sourced from HPG
> Tables 2-1-a, 2-1-b and 2-1-d.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 3e857d105668..cb5f6e0ae607 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -1741,6 +1741,39 @@ static int qcom_edp_com_configure_pll_nord(const struct qcom_edp *edp)
>  	return 0;
>  }
>  
> +static const u8 edp_phy_aux_cfg_nord[DP_AUX_CFG_SIZE] = {
> +	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x04,
> +};
> +
> +static const u8 edp_phy_vco_div_cfg_nord[4] = {
> +	0x00, 0x00, 0x02, 0x01,
> +};
> +
> +static int qcom_edp_ldo_config_nord(const struct qcom_edp *edp)
> +{
> +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> +
> +	writel(0xd0, edp->tx0 + TXn_LDO_CONFIG);
> +	writel(dp_opts->lanes > 2 ? 0xd0 : 0x00, edp->tx1 + TXn_LDO_CONFIG);
> +	writel(0x03, edp->edp + DP_PHY_LDO_CFG_NORD);
> +
> +	return 0;
> +}
> +
> +static const struct qcom_edp_tx_res_entry tx_res_cfg_nord[] = {
> +	{ 0, TXn_RES_CODE_LANE_OFFSET_TX0, 0x06 },
> +	{ 0, TXn_RES_CODE_LANE_OFFSET_TX1, 0x06 },
> +	{ 1, TXn_RES_CODE_LANE_OFFSET_TX0, 0x06 },
> +	{ 1, TXn_RES_CODE_LANE_OFFSET_TX1, 0x06 },
> +	{ 0, TXn_TX_EMP_POST1_LVL,         0x06 },
> +	{ 1, TXn_TX_EMP_POST1_LVL,         0x06 },
> +	{ 0, TXn_TX_BAND_NORD,             0x05 },
> +	{ 1, TXn_TX_BAND_NORD,             0x05 },
> +	{ 2, DP_PHY_TX_LN0_DRV_LVL_NORD,  0x12 },
> +	{ 2, DP_PHY_TX_LN1_DRV_LVL_NORD,  0x12 },
> +	QCOM_EDP_TX_RES_ENTRY_END,

As I was fearing, this table does more than its non-NORD counterpard.
No, please don't do it.

> +};
> +
>  static const struct of_device_id qcom_edp_phy_match_table[] = {
>  	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
>  	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
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
