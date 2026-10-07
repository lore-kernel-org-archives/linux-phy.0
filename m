Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E930ECA5FF1
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 06:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lng07hpofQPsxMOIZBeNmDwiZbPdLsujfKPFMQzTQHQ=; b=T7TVkIuDmDLklW
	teGaLeeixod4wGx3/PrpPHijsimaCRy2a0GQQuCzLFdWgUHB4bfAhKgaZiOEYd+hsNJ6N9OAkoGwb
	3+Qfz5sEcYipC350MK8lj523wVKIlqWIzjcJra1QOgvmivsrCdtcZOc/hUWUdbiMp/r5HauMZSEtS
	apUK5TPyT1EAgGCkeVsE6ntqCUy7xMMXCj4uoYJOCtZ7RVld2Lis2HlOiKdEzQ3AgXs0SIh5ApNlq
	1aH0QuOy+6QyOBeou8o6HESyhZxQQj+JaMU7fIUy8vuDdjRdd9/gwPLS6/8O29ckYvtt8Az/jT2/u
	u04V3n9D5wnZVUmul9kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELId-00000001n0w-3RhP;
	Wed, 07 Oct 2026 06:38:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELIb-00000001n0Q-3LTr
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 06:38:47 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6974TwZ32878535
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 06:38:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8ACzqyHWtdt0fC2Pj9BbXxAGnwUR8TgCimh4uH8dmHU=; b=A+fkf6ZwKdcZqsQB
	R5sqmyDRCWMhhL6Kk5TJNPUsv4X4Muz9ttlYFFzsmQYceKrnW9DoTjwS54/XrXiV
	QhZdm8GYApm29GXjrRnLMZWd/ucrRMZONkWbdiscyaKKb0cbxCpzq1DqnqcZALge
	rL+kw+9gITbWt6EtG8soeH0khhOWMwH5gPAPGLV++oQtZuK0RuBW6vpOA0gvG5wA
	154KDLYhvLuZzw1jy5kSDXDh7DP6GkZSi9MPmePE38IBbDCJRVws+Sr2gEN3DLde
	cztO4G/h3L9aXRrrhhSG9tX1NIRWS1xAyWFwHadAQ3gkEMdtqy7ERtbknCXvsXxz
	omi3QQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h4xc9vecu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 06:38:44 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2e5cb9d39c0so11788795ad.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 23:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791355123; x=1791959923; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8ACzqyHWtdt0fC2Pj9BbXxAGnwUR8TgCimh4uH8dmHU=;
        b=AIlpbuJXHq9ih5DK1oMCX2824Z8T4XgGRPrvx9opy4fwnRl4ClEZTUMokX/+Uh4VIG
         OtGDgUKR2KjYZCHcNmig37OCqVYzYkNMsCkHJduF2zLvzMZQ0sa62gAccCHygs55ohNi
         Obcnr5NmAPOpgCALAdCVTb+MOPonyyz2GLFD9I+HyDTarFq2T3rlMtAV4mmTdqAMfxhT
         ITsQN6OYHJd8V+OANuM4CQDDgN+Lf+YHfPfrmf68teCwTu+aqKG+gTaV5AsIg/05mDrQ
         OnxtQAoX4764qumpinxuvUnVOJLpdjhWfSHmrUk26JOoK2lFqkmnN/r//eSjZZJk0CLk
         /wMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791355123; x=1791959923;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8ACzqyHWtdt0fC2Pj9BbXxAGnwUR8TgCimh4uH8dmHU=;
        b=RXCyO+wkBLBjUDc7z4Oobdxj2PTG2YiWAd255FQ+JuiGQYIH3B7T0KSkEqKh6cWypx
         UKc3vQfmkKzmBLQqnJu99Hitq7n+WYYy94CxV/XIfAN1O2Khzqyg2v0RFxI1NxXjBACv
         ZLCwadabTH2FuOU7ouzzB6poSDOAiLZQ/PJyfeUum1XUtQI7u5KH+Fxdpazy+2ErV0pj
         /DKdaEh1vF7k0kgwDxBJZDqCkmObo1E/qBB3JiitXjhdiI133j2U9LQ9JYoSl4lNefP4
         GACfEvynJ9m0WHyWOowZRaC5S4dhxnMw+69FVZhbk+LodQSnHu/51xJLR62LLiybelbS
         wDRQ==
X-Forwarded-Encrypted: i=1; AKwUvBxeKbjOdl26Sg+SruiHLSO7H1NyoyjxOjWIKjF0ZzwVcJA/Ktjd0Y4yH1sRTHsJ91B8cQA7zD5gA2g=@lists.infradead.org
X-Gm-Message-State: AFq9FYIOBUXTDvWN9qDfvU5vhwlWS5826ZJ1wBeRdyIneeRBXsc0VMs7
	nr3ntFO63vPrwGxWMl8MZ/e9I6l6DyNmtkcnBXrvzu9Ab3o39MDqeIq82OlGlLPlPqrdMrBrgUR
	rQw+esIkPpYWGi1Re95X9CVwTd6sxtlnSqflQt9rFIpAH0uBAYUo3bUfXzrTPVWfini+a
X-Gm-Gg: AYBFou0ykvPJXnk83TNrUbElJ8AfDZO8GZrsLlsF64hI/EkPkOdHf4j2CPdjVrXK3J0
	jhCfAhbdzSL47wP+QDrEQv68d+wDRCWhanRcNGvsoQgt3OWb0wEN3XJGTmIz01n6NEeTM7OQJuZ
	+fBq+/WjBeHfX43esC6D0y0qqqPIi8MEZiOZL3nm5AqSXt+kIJgTviz2wf/ZT87AHmlUmVp9gZY
	kCGiByC8vnLJK4zE09S62OWd3ythw4rHblkPWIXOMGFgfnclFLpQ4BlFxh3LXjEc04oPI7aiCw/
	jKYbnAzfTrWukNbHkXc+80Z6XRLHKEXtyx2XBjhhO0PYvyn29C0o4pv6ziJimYtwFzGmmf1Uevf
	fEToH4MitZ94w62nJdSQltBk6Oxxd
X-Received: by 2002:a17:903:184b:b0:2df:a608:27d5 with SMTP id d9443c01a7336-2e6003b5d8cmr13570945ad.12.1791355123220;
        Tue, 06 Oct 2026 23:38:43 -0700 (PDT)
X-Received: by 2002:a17:903:184b:b0:2df:a608:27d5 with SMTP id d9443c01a7336-2e6003b5d8cmr13570745ad.12.1791355122781;
        Tue, 06 Oct 2026 23:38:42 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e6046fdbcasm5501515ad.13.2026.10.06.23.38.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2026 23:38:42 -0700 (PDT)
Message-ID: <8e7ac84c-5ac0-4e62-9aff-f1151eda5def@oss.qualcomm.com>
Date: Wed, 7 Oct 2026 12:08:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/17] phy: qcom: edp: Add Nord AUX channel and VCO
 divider configuration tables
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
 <20260911-nord-drv-dt-v1-9-e25c073cf1b6@oss.qualcomm.com>
 <clxbpw3awcpispcixwrvwj7hocvoag6fhhp7d4azamxghk5x5o@ar3infqpcy56>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <clxbpw3awcpispcixwrvwj7hocvoag6fhhp7d4azamxghk5x5o@ar3infqpcy56>
X-Authority-Analysis: v=2.4 cv=ctMOAF4i c=1 sm=1 tr=0 ts=6ac5e8f4 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=jUuSjYW6OROygl6o7qcA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDAyNiBTYWx0ZWRfX9X/4ymo3BVGZ
 TNAURhTdjtM/tTJKeEKGecTvTPm5V/aDaZjpcdbFzRnrpJStI98sDgJQDMS/U1IhH36vemKjIm3
 D+iYraqGbvFGQMz305VdFLZznHXs2GY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDAyNiBTYWx0ZWRfX/RWiEgCM14WL
 3kPhkNOQ/5WsgLVzwhkA/1G/lyEo+UBYMvnu+CgBigyj0wnfZeRjRoi/F9bMnOqHEXsFCCZ0QPU
 PvGs62JTGmj66FLA48m1TnGN3qbGfzys9Ai5EXS/YcZG2lVFSXR87p3avcnyg/WrE75AFaowW6J
 Py6eu5GqTF/XHdQ3BCj+w6wUw389u8isMWSJSi92UoUE1x361pbpB5wCs6IrCCu/4+R8pks8SFi
 Uq1bvRUH7yXiWNMwQgoWBXtyF1pgEvddYaW8G7CYppAyDGEpqAScPCpQyu7P27SVTYzSGn4pFhy
 XuqJ2R6NSB3n/ch/BfKzlz4Ynd5uW1efrou4aPhzV8jVGq4nc6fldH0twvBC4KCaEGAoxRqCOiJ
 a3hiTxWKjEOfucHB/2ClzzumcPCk0jSxPY0N7+46CjoZCDW5AQ5v+Jus/B24uoCvdLUVH8fLQxw
 lrdL1NWt/L1b1dwfLuw==
X-Proofpoint-ORIG-GUID: 1U9lWbAZK9zgdn_rVXNwRC8tZUGi3yBw
X-Proofpoint-GUID: 1U9lWbAZK9zgdn_rVXNwRC8tZUGi3yBw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 spamscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610070026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_233845_962866_A89EE458 
X-CRM114-Status: GOOD (  19.09  )
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


On 9/14/2026 5:33 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 11, 2026 at 09:06:40PM +0530, Nabige Aala wrote:
>> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>>
>> Nord requires different AUX channel and VCO divider settings compared
>> to existing SoCs.  Add edp_phy_aux_cfg_nord and edp_phy_vco_div_cfg_nord
>> with values sourced from HPG Tables 2-1-a and 2-1-b respectively.
>>
>> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-edp.c | 19 +++++++++++++++++++
>>   1 file changed, 19 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
>> index 373f13b3d6d5..ee0d7f1a90fe 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
>> @@ -1508,6 +1508,25 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>>   	return PTR_ERR_OR_ZERO(phy_provider);
>>   }
>>   
>> +/*
>> + * nord AUX config (eDP mode).
>> + * From HPG Table 2-1-a: edp_phy_aux_bist.csv
>> + * Index:  0     1     2     3     4     5     6     7     8     9    10    11    12
> Drop useless comments.
Ack
>
>> + */
>> +static const u8 edp_phy_aux_cfg_nord[DP_AUX_CFG_SIZE] = {
>> +	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x04,
> So, it's the same as edp_phy_aux_cfg_v5, except for the last register?

Yes, it is same as edp_phy_aux_cfg_v5 except for the last register.

you want to use the "edp_phy_aux_cfg_v5" for nord also?

>
>> +};
>> +
>> +/*
>> + * nord VCO_DIV config for eDP mode.
>> + * From HPG Table 2-1-b AUX Clock Settings (eDP mode) - Nominal/Turbo column.
>> + * Indices: [0]=1620, [1]=2700, [2]=5400, [3]=8100
> :-(
>
> If it's AI, fix the AI prompt, please.

Sorry about that, that's on me. The AI-generated comments are a bit 
excessive here. I will trim them down from all over the patch series.

Thanks,

Nabige

>
>> + */
>> +static const u8 edp_phy_vco_div_cfg_nord[4] = {
>> +	0x00, 0x00, 0x02, 0x01,
>> +};
>> +
>> +
>>   static const struct of_device_id qcom_edp_phy_match_table[] = {
>>   	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
>>   	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
>>
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
