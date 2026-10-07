Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62574CA6004
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 06:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gl1aTVeXDuns48iQBba/dVSLDOyEUzgLrLKujMCQT4g=; b=PSngQhSFifPlru
	Jf5hEFvJ8HBHwI0pvfbGRj6LIaRNjrCUkdFkd6f8+v8A2QnRyixkJmZZlRqLXvPzzfqkeEUWakKO0
	xWZWp5ahUCiTviyIulUi9tJ9bDirbOg3MU5Ldj3utN3z7zgqKcfU1yGnAz2mQIjmqbp2lLfBJZyMZ
	rKwfifrQ6gq/B5zYBqd/gC1pwdcoJ+8+OEXyH83LegIvlJaQLVFYVwxFCzZ/8z96VvjORpTG7gXVs
	CViCf4edA7mlBlfsE0EATTj3q7KB8dw6B8IJhGraUSNVPxMKtLSQOLt5hY7ngzrFImM+FFDBG8TqF
	HLg00guWNeRLcQTUfK5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEL7N-00000001m48-0J1Q;
	Wed, 07 Oct 2026 06:27:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEL7J-00000001m3m-364T
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 06:27:07 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6974UBRU3264068
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 06:27:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Cl6uQFa+n5AW/tdXzfCPHDiO4SySDJDdRMN6Z7wpw8=; b=pQr8HF4+R+USK0/0
	YhmBYiPm6QStkGpYu56s7w67YR6kBhKzyOZK96+UNbegYVGvxlKkOdQuoqybb6BH
	wDBOfT/YDTlSJ4Al133Fwst1T+K7BNJGlqFy2fJpVIbXVlGlk+zRt8wP2Nrt8mrj
	ct8yWuo8hUQPlwBhiThljQHkDTj9F9pfzE5jHRHJQZZUVF4LA3opR+1jUkh8jtL4
	37MWFsBA4U+eaJKQcvK0OfWzEOvxkioOdlMaoDG2FpOvVPedaMj9dSVxkBpnG25X
	DNXSkugPu+P2jtj5o20PHbzYlxbf9PNkwh7kS4Gry8ZvgNvYlJd21GwbD+niWqGI
	I84csA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5c608v2d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 06:27:04 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc7695f6a30so4503559a12.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 23:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791354424; x=1791959224; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2Cl6uQFa+n5AW/tdXzfCPHDiO4SySDJDdRMN6Z7wpw8=;
        b=KCC1vG+27mH8kQDdkD9r/RUD3IHbZOviTIpj+sZJW/RcLrbS4btfSstkB8fBzHgiA0
         GLtW5gbZAu5IHS3nDbcfQVmZTSgbhI/XcHLs1JR1tBnvteIj7EJhP/5g1Le9Bb07opsR
         VmbZe3+DLyJxkJv9/HEFPpp+SVH6ya/lavKGOE0tMSqzQjpQPrF+kwZlSQCK9udDbHNw
         H1+DIMUV4pYjM49DYM5jxemtgE5TOvtVCLCsLSrWKXB4uzW4kLnfrIa1LHfmQksKOYS3
         UpxkMkBdpTWgpGTb5TYv+VFejlbQSjZN59zWEnySXBlSlKTwUAfVPxtChdvuwOiKZMie
         0kkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791354424; x=1791959224;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2Cl6uQFa+n5AW/tdXzfCPHDiO4SySDJDdRMN6Z7wpw8=;
        b=AzPAMR55eS0IBKzoGTP/QTXjXDGTEhACEhpopwTfqNfCOYEc2QP87pFZEJY6j66A8r
         VJvqFOyzOa5gi2r08DyDXAsqHC/L+HdEYgbyWk47pZunVrzOdwt73KrYba4jesveMbiQ
         i70ceCFggeRgRERZbbeFd3M3r8+zpQZTLizdPgIPMMFPmyykwGMAyuUCQDzOmF+DoMva
         CVqy3pMwfR6r5bUi5ri7rkUbe2MIO42iSJy+Uk4bN2MTOBuXd8UtL0Ab4vBHfUtpLjS0
         2Cq7W1cdBdmn9W9E0xHT/OKZie/WpNVDN3s59gbbAu5kgH/vqt96OufoU1DHi3AfN69Z
         XwKA==
X-Forwarded-Encrypted: i=1; AKwUvBwZsIG3Br7y86Y2kc8UiDJ5ezWThzCYf8VBAmFgLbnLPwizUj03vEYifvewG8KMIDj3c2POd8+Erv4=@lists.infradead.org
X-Gm-Message-State: AFuF++mKO1YqM7WBTQSVu4bQrjrHMbiiUv/VJo2dYIIoR0O3mRI9fmtF
	XyHvCOYMnlyirOUXoBA3S6qbJbyTdTyrp5xAjmvpfHN5Bunbf+7zhdwn+XlcL4MgGxXVeYljnJy
	zImJpp8C2+CKhugIca73QZo5RJfWoHt+986To03SS3Hqvdwt71dW1L69kYYGaQ68G/esq
X-Gm-Gg: AYBFou2MeEhnp/nbIPRRM0n3phjQVjAxFrKi7dIqVAz8e8UIiIk/ItkXQqPvuA4/07i
	sOTkEKmYUN2PCk3j6qIZX8ujTikgUzM/ZlSJB6qwPwpdah38H/chiJwe2OAYFO9TRmzyClesI80
	4aVGZdS0+R+JnfgzvVI1ni0v6br3Lwu/qYwIXOtqiY1IwzOfYpFTH8dGvLMJQoSqLcD8dnTxm5/
	qY4fihuh5HxtFQIhH0cy9B/jYuygw2DpkacaHf4Tfss67kQA12oLN15Ani4D0kILNkFt/T6t9xb
	m7FkylZBNgqroITxFQBnaf9Nzl9y1ZXGZ2W9MQ+SpDbHZwTieTU0MB9PZ0O2jZXXFM8OAFJVI5g
	WJ/RdIXSvFbxlgp8GaGoZkKbbrDcw
X-Received: by 2002:a05:6a21:3b92:b0:3cc:8344:1213 with SMTP id adf61e73a8af0-3e133db4acfmr1098870637.8.1791354423596;
        Tue, 06 Oct 2026 23:27:03 -0700 (PDT)
X-Received: by 2002:a05:6a21:3b92:b0:3cc:8344:1213 with SMTP id adf61e73a8af0-3e133db4acfmr1098857637.8.1791354423123;
        Tue, 06 Oct 2026 23:27:03 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cd0a92d6547sm850526a12.13.2026.10.06.23.26.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2026 23:27:02 -0700 (PDT)
Message-ID: <10b8c78d-7981-400b-8270-db0c54509272@oss.qualcomm.com>
Date: Wed, 7 Oct 2026 11:56:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/17] phy: qcom: edp: Generalize power-on path to support
 per-SoC overrides
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
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
        Ritesh Kumar
 <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-8-e25c073cf1b6@oss.qualcomm.com>
 <mpkoztwm2ts4pb3m4t6347wfes4yeua5a5uxrn66dgmn6b6gpq@syu2fxzfmvp7>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <mpkoztwm2ts4pb3m4t6347wfes4yeua5a5uxrn66dgmn6b6gpq@syu2fxzfmvp7>
X-Proofpoint-ORIG-GUID: W8IYHhqPbbV2dn9QZWh_Zkq84VV0oZ_S
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfX9kUmNJsGEZ8h
 Ta37ASDR2OB8V3VIKPaMDycsvXBsnvWscuklm23GQcZh4v4lDOHyXSDfj9QfOiaw7y8Ury5tbvr
 1SXoRKZ5yT1kftIuTr2zxadPmlnYwLI=
X-Authority-Analysis: v=2.4 cv=PM+aavqC c=1 sm=1 tr=0 ts=6ac5e638 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=LataAnNBLSGNWv3D5v0A:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: W8IYHhqPbbV2dn9QZWh_Zkq84VV0oZ_S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfXyJoFoWGcek2y
 jK9YFLVnKrSK4KPxysUlkx/ak7rKaIDqPZbHwPByl0KA9RxgNRdtVnyMFRktW0Qn69yiYCRma6z
 12VpBnS3217W4Wr8JgJa8XP4CgItubqN3/5+q5xCvgYUHnjW6b33JqqvteliNJdKFdPcHYJr/Ky
 UL9DH160RKGASNeyF8Zay8B7kibItfql8DGCc4fnUDMWRsCJteHom39DF72590Ww9ebzW8oTw16
 XE9YYxCEKpD+lu1PVSB9MSnOP69gVx5XfA1R6e1J37mI9gho+jcn11H45l1+qyWdVBOxszw6vCB
 u8stQnNBVT9PSda/ebNojmGOl4+4N03QltwfAWpDQrcAc+sh/B+Kg+3D6t0vz4Hqu/n7Ug2LtTj
 EvbBEE17KuBoIEc+scVvIwANqRiilF5wID15kWngFdO6AT610zwZzreGmq6EImd9Rsc2MafIVfl
 trJV3tcie91m6mUkNkg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 malwarescore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610070025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_232705_930118_74F877C7 
X-CRM114-Status: GOOD (  24.97  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 9/14/2026 5:30 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 11, 2026 at 09:06:39PM +0530, Nabige Aala wrote:
>> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>>
>> Nord has a different register layout and power-on sequence that the
>> existing hard-coded paths cannot accommodate.  Make com_clk_fwd_cfg
>> optional,
> Why?
As per the HPG, Nord does not require the com_clk_fwd_cfg callback 
implementation. However, qcom_edp_phy_init() currently invokes this 
callback unconditionally, without checking whether it is present.

I see two possible ways to address this:

1. Add a dummy com_clk_fwd_cfg implementation for Nord.
2. Check whether the com_clk_fwd_cfg callback is present before invoking 
it. This is the approach I have taken in this patch.

Do you have a preference between these approaches? Alternatively, if you 
think there is a better way to handle this, I would appreciate your 
guidance.
>
>> add phy_tx_lane_cfg and phy_tx_res_cfg callbacks to
>> phy_ver_ops, and add phy_status_reg and bias1_en_2lane fields to
>> qcom_edp_phy_cfg so each SoC can override the defaults.  No
>> functional change for existing SoCs; new fields default to zero/NULL.
>>
>> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-edp.c | 43 ++++++++++++++++++++++++++-----------
>>   1 file changed, 30 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
>> index bf8a17336c7e..373f13b3d6d5 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
>> @@ -92,6 +92,8 @@ struct phy_ver_ops {
>>   	int (*com_configure_pll)(const struct qcom_edp *edp);
>>   	int (*com_configure_ssc)(const struct qcom_edp *edp);
>>   	int (*com_ldo_config)(const struct qcom_edp *edp);
>> +	int (*phy_tx_lane_cfg)(const struct qcom_edp *edp);
>> +	int (*phy_tx_res_cfg)(const struct qcom_edp *edp);
>>   };
>>   
>>   struct qcom_edp_phy_cfg {
>> @@ -101,6 +103,8 @@ struct qcom_edp_phy_cfg {
>>   	const struct qcom_edp_swing_pre_emph_cfg *dp_swing_pre_emph_cfg;
>>   	const struct qcom_edp_swing_pre_emph_cfg *edp_swing_pre_emph_cfg;
>>   	const struct phy_ver_ops *ver_ops;
>> +	u32 phy_status_reg;
>> +	u8 bias1_en_2lane;
>>   };
>>   
>>   struct qcom_edp {
>> @@ -316,9 +320,11 @@ static int qcom_edp_phy_init(struct phy *phy)
>>   
>>   	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
>>   
>> -	ret = edp->cfg->ver_ops->com_clk_fwd_cfg(edp);
>> -	if (ret)
>> -		return ret;
>> +	if (edp->cfg->ver_ops->com_clk_fwd_cfg) {
> Why?
>
>> +		ret = edp->cfg->ver_ops->com_clk_fwd_cfg(edp);
>> +		if (ret)
>> +			return ret;
>> +	}
>>   
>>   	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
>>   	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
>> @@ -1131,7 +1137,13 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>>   
>>   	/* TX Lane configuration */
>>   	writel(0x05, edp->edp + DP_PHY_TX0_TX1_LANE_CTL);
>> -	writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL);
>> +	if (edp->cfg->ver_ops->phy_tx_lane_cfg) {
>> +		ret = edp->cfg->ver_ops->phy_tx_lane_cfg(edp);
>> +		if (ret)
>> +			return ret;
>> +	} else {
>> +		writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL);
> if it's about a single register, add a register to the map instead.
Ack, I will update this in the next revision.
>
>> +	}
>>   
>>   	/* TX-0 register configuration */
>>   	writel(0x03, edp->tx0 + TXn_TRANSCEIVER_BIAS_EN);
>> @@ -1169,13 +1181,18 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>>   	writel(0x00, edp->tx1 + TXn_TX_POL_INV);
>>   	writel(0x10, edp->tx0 + TXn_TX_DRV_LVL_OFFSET);
>>   	writel(0x10, edp->tx1 + TXn_TX_DRV_LVL_OFFSET);
>> -	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX0);
>> -	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX1);
>> -	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX0);
>> -	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX1);
>> -
>> -	writel(0x10, edp->tx0 + TXn_TX_EMP_POST1_LVL);
>> -	writel(0x10, edp->tx1 + TXn_TX_EMP_POST1_LVL);
>> +	if (edp->cfg->ver_ops->phy_tx_res_cfg) {
>> +		ret = edp->cfg->ver_ops->phy_tx_res_cfg(edp);
>> +		if (ret)
>> +			return ret;
>> +	} else {
>> +		writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX0);
>> +		writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX1);
>> +		writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX0);
>> +		writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX1);
>> +		writel(0x10, edp->tx0 + TXn_TX_EMP_POST1_LVL);
>> +		writel(0x10, edp->tx1 + TXn_TX_EMP_POST1_LVL);
> Either use a register map or move defaults to the callback too. My
> preference is towards the former option.
Ack, I will use the register map approach
>
>> +	}
>>   	writel(0x1f, edp->tx0 + TXn_TX_DRV_LVL);
>>   	writel(0x1f, edp->tx1 + TXn_TX_DRV_LVL);
>>   
>> @@ -1187,7 +1204,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>>   		cfg1 = 0x1;
>>   	} else if (edp->dp_opts.lanes == 2) {
>>   		bias0_en = 0x03;
>> -		bias1_en = 0x00;
>> +		bias1_en = edp->cfg->bias1_en_2lane;
>>   		drvr0_en = 0x04;
>>   		drvr1_en = 0x07;
>>   		cfg1 = 0x3;
>> @@ -1210,7 +1227,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>>   
>>   	writel(0x19, edp->edp + DP_PHY_CFG);
>>   
>> -	ret = readl_poll_timeout(edp->edp + DP_PHY_STATUS,
>> +	ret = readl_poll_timeout(edp->edp + (edp->cfg->phy_status_reg ?: DP_PHY_STATUS),
> No hidden defaults, thank you.
>
>>   				 val, val & BIT(1), 500, 10000);
>>   	if (ret)
>>   		return ret;
>>
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
