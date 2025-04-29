Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1963CC369DC
	for <linux-phy@archiver.kernel.org>; Tue, 29 Apr 2025 08:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLBq65wMkI0Hz1566eYTeupEH1bDNqnqFgq4nCynShI=; b=D7ZvOH6UJhbbtA
	xyY133cz66seD0waVZh6O0TjBgyOeAdbeRMTepo8mU3HZ8KXZpZCCRAAH7cSF+dgVQ9w8TTVeWvSn
	pBC6vPMAda6RY0+1Nbh3DGyNWxL0PZoxBqH6biKqo29WDndFIeN8g1mAJsrugkMRI2TaYrnOE837x
	CihutF3ouwjYKxf9X1/CFnRky9C8Q8FyHYpVRxtzAyaO5302Rf9q2J01z08xI53+0BxDWOr0OjNI7
	/V9x+xn11AVBwVtGjuAQDyAE7KHuKI41BAqsICvm9n6JDzO7emtdJWDTu2iXiNpISxvj+dCoUA4Rn
	odyk9NZSrMYXQ4XtVKag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9gHh-00000008vib-2lEC;
	Tue, 29 Apr 2025 08:25:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9gGU-00000008vOo-2hmd
	for linux-phy@lists.infradead.org;
	Tue, 29 Apr 2025 08:24:34 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53T86111028068;
	Tue, 29 Apr 2025 08:24:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9fQR9meQutjblSLbJONQI/dFhf8KfiYCydP9hn7Oxus=; b=p8tLJXsADwi67NzI
	JV38DIxAVlwD0kqP8QJa493ejLTGjJhiSV3yJ1gYr88O7VMZ//SkNwuJHXxff4U2
	vYqx2O766uGGI7sgsy6CNJVMW5cWVMflypPjvSTYWMkQ0LA5fvJUQ+/hk7vZh+y4
	46f+hmnvZYH8QOdHBPke0SUchj7QHAS+LJq69f+RkWH6FWCoIPM8A9bCROa10e81
	TTFV5zElpWcegB1H5r8zTQz0LE5G/6+jRr8xziXumEJlgf99Iuw212gybuUBkJYt
	yU8G9T3hsJlHlOeBO69NHo1wZvupYnRwcYi+WyiWL+N3VQIfwb/cRAqNkqPJyHvO
	NpQ5GA==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468muqm0g0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Apr 2025 08:24:25 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53T8OOef015164
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Apr 2025 08:24:24 GMT
Received: from [10.239.29.178] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 29 Apr
 2025 01:24:21 -0700
Message-ID: <f44722a5-25b5-409c-baec-13d19af61d43@quicinc.com>
Date: Tue, 29 Apr 2025 16:24:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-pcie: drop bogus x1e80100 qref supply
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
CC: Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov
	<lumag@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
	<abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250429075440.19901-1-johan+linaro@kernel.org>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <20250429075440.19901-1-johan+linaro@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA2MiBTYWx0ZWRfX59sHWB4IckPG 3/F5gKpawQX9FbguZnwIRoJQI5HJrFCrrF8RYQb1ARL9ownoQDQ4yhfa7OtghIj5FKtz281WqRd VLY/fSvGviUExHNVqXYPnpEurnh5hBB1cmINyXY7bok2ofJ2eI3i+ykjsEPQzMPjWSVC4eBzm1m
 U8G8M95XQ1Jl+WBOextSdd4VKde7PB/A0bfjy0Trcfiye7owKSDlAOM168leG74/Am2b93UZLx2 HzWu9OQbOjYz+1AtQgDQ9SQef9FNf2YfIErJrNYRlOcKSw8FboP5t4WNJMbVd/i3ofdl+lS8WIg 07Hlnn3lC2AmIhvcJL7leTd73ZTv+hjlqun160oQrVT+mW076gshgA7rvKYdtOMy6wrj2Bnpaz+
 +Px393SUVgg1pBWAJ7nxwjUyPVnLySqrQYnHvwZxOLgPYLL775fV8N0xr4SfvYHK4Et3jiJ6
X-Proofpoint-GUID: dhowlwmHCW6P3TOz1bGJt9SdELdlJJEg
X-Proofpoint-ORIG-GUID: dhowlwmHCW6P3TOz1bGJt9SdELdlJJEg
X-Authority-Analysis: v=2.4 cv=M/5NKzws c=1 sm=1 tr=0 ts=68108cb9 cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=Pr32Oli86lQI5KhXujMA:9
 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxscore=0 spamscore=0 malwarescore=0 mlxlogscore=898
 adultscore=0 bulkscore=0 phishscore=0 clxscore=1011 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_012430_820351_7ECE79CB 
X-CRM114-Status: GOOD (  16.44  )
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


On 4/29/2025 3:54 PM, Johan Hovold wrote:
> The PCIe PHYs on x1e80100 do not a have a qref supply so stop requesting
> one. This also avoids the follow warning at boot:
>
> 	qcom-qmp-pcie-phy 1be0000.phy: supply vdda-qref not found, using dummy regulator
>
> Fixes: e961ec81a39b ("phy: qcom: qmp: Add phy register and clk setting for x1e80100 PCIe3")
> Cc: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
We have QREF for each PCIe port on the X1E80100, all of which consume 
the regulator L3J. Although the PCIe PHY uses QREF indirectly, this 
creates a dependency, right? If PCIe doesn't vote for it, how can the 
PMIC driver decide when to disable L3J during system suspend or runtime 
suspend? Is there a chance that L3J could be disabled while PCIe still 
requires it?
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index c232b8fe9846..e5277ce9c136 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -4233,8 +4233,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
>   
>   	.reset_list		= sdm845_pciephy_reset_l,
>   	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> -	.vreg_list		= sm8550_qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= pciephy_v6_regs_layout,
>   
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,

-- 
With best wishes
Qiang Yu


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
