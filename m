Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87D79CD1284
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 00:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neu3AeFaQg7xQBHGgoB+41AiEW8vEGtqcnRwb/ysFBw=; b=b6dbJl1oKQ0sIu
	EatnSkiVA6bCbsaJZXTwllZKDtT6DxcxqmSjfpBgrZBFPbdmongfH8iOuQskxrd/O6tJF7igFjxnG
	NxQ6QNqbM2u7mwham/kq9YlpZ9m+VMr0T1EcJ7kCQk8IjVVhWf7WRjevzblv0gvcRvUhV3VxRWSF/
	2lIsAGiBRg+I8qbCia/vkmbtnMHFJQZHa/CSCoIOLWAW6yMZ+Oe4EHDew17N4WAEwNHcrl5di8sVg
	5ITogYxjFYrd0dgXe0NWeW/jppr/eJjXreJ6INFrZeV20oN53G5Uji67aL2CoLTsw1fCeeejV+wOy
	MAXMn1Wi5LKXHNMUzXUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsX2I-00000004fhh-08id;
	Fri, 05 Apr 2024 00:02:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsX2E-00000004ffE-454l
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 00:02:24 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 434NAeLr030052;
	Fri, 5 Apr 2024 00:02:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=TD5oyqVKB4jfM/BR7AZ9j8sXSzPQIq9BgDIENBz6KKQ=; b=Nn
	Mehlyyipz7OdjTFvBf69BsEby7oJZpzZjnw+pV551sHekFezYboshGVIrRJ3tTg8
	Dqk+OPP89jxUdkSymndmrY8pNN5j233SP96plXH2aG8hRxscl/53QFPZcN+J11Gr
	YsrXmd1dsBAPXaADqPe3NUV/Aa8Er55x2iwjECwhYRm/WDIspAlF5KmtsBbBG5V+
	44vaVTvbmF1rT7l1AT6hjef2u9FDcrrxje5xNChPo+kCeHbF19SymFpleYAGs9kW
	nT2jW+143fi348/EtsAixvQ9Kfd6m1v1bY2hWfkaxen40PF8OrW8n/PNf9aNaavc
	j/aszn4wFbPLaw7uaDZg==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3x9ep4ts85-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 Apr 2024 00:02:12 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43502BC9003661
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 5 Apr 2024 00:02:11 GMT
Received: from [10.71.109.81] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 4 Apr 2024
 17:02:10 -0700
Message-ID: <f7f7d56a-3292-4641-a479-c0b72d611bc3@quicinc.com>
Date: Thu, 4 Apr 2024 17:02:09 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] phy: qcom: qmp-combo: Fix VCO div offset on v3
Content-Language: en-US
To: Stephen Boyd <swboyd@chromium.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon
 Vijay Abraham I <kishon@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <patches@lists.linux.dev>,
        <linux-arm-msm@vger.kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        <linux-phy@lists.infradead.org>,
        Neil
 Armstrong <neil.armstrong@linaro.org>,
        <freedreno@lists.freedesktop.org>,
        Douglas Anderson <dianders@chromium.org>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>
References: <20240404234345.1446300-1-swboyd@chromium.org>
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
In-Reply-To: <20240404234345.1446300-1-swboyd@chromium.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Q_wGZcMFoP8FLWWXYAMl7MlV2SE4NBke
X-Proofpoint-GUID: Q_wGZcMFoP8FLWWXYAMl7MlV2SE4NBke
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-04_20,2024-04-04_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 malwarescore=0
 bulkscore=0 impostorscore=0 clxscore=1011 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 adultscore=0
 mlxlogscore=926 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404040171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_170223_229684_530349DC 
X-CRM114-Status: GOOD (  17.34  )
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



On 4/4/2024 4:43 PM, Stephen Boyd wrote:
> Commit ec17373aebd0 ("phy: qcom: qmp-combo: extract common function to
> setup clocks") changed the offset that is used to write to
> DP_PHY_VCO_DIV from QSERDES_V3_DP_PHY_VCO_DIV to
> QSERDES_V4_DP_PHY_VCO_DIV. Unfortunately, this offset is different
> between v3 and v4 phys:
> 
>   #define QSERDES_V3_DP_PHY_VCO_DIV                 0x064
>   #define QSERDES_V4_DP_PHY_VCO_DIV                 0x070
> 
> meaning that we write the wrong register on v3 phys now. Add another
> generic register to 'regs' and use it here instead of a version specific
> define to fix this.
> 
> This was discovered after Abhinav looked over register dumps with me
> from sc7180 Trogdor devices that started failing to light up the
> external display with v6.6 based kernels. It turns out that some
> monitors are very specific about their link clk frequency and if the
> default power on reset value is still there the monitor will show a
> blank screen or a garbled display. Other monitors are perfectly happy to
> get a bad clock signal.
> 
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Fixes: ec17373aebd0 ("phy: qcom: qmp-combo: extract common function to setup clocks")
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 

I cross-checked the foll chipsets which use qmp_v3_usb3phy_regs_layout:

-> sdm845
-> sc7180
-> sm6350

All of them have VCO_DIV at offset 0x64.

And, I cross-checked the foll chipsets which use 
qmp_v45_usb3phy_regs_layout:

-> sc8180x
-> x1e80100
-> sm8250
-> sm8350

All of them have VCO_DIV at offset 0x70.

Now, thing look in order to me.

Hence,

Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
