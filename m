Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D10E77188
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jan 2025 06:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nwmMF0iRyk9TWWznLrhUoy1398EpO+G7+F8wCOoHSQ=; b=C8gY47VLg6deP4
	y9pj3kWErAlstNchPRMoC3L5sxZWWiqsF+HufBX524/erLBv5JBPySMhAXhek7ZlcNpzMBWXJrq5d
	a/1nlDiejXNpf+nt7AVCLPC04Oa76cVxUIH6NIreroh33foNkVMcAvRuvofyN2ByDrxeLTsAheSMA
	IcD5zb99GEZPQ6mwB10a8P/uBBODZbvgSxoiFLLMDGumWIN34QTGMdjP41WaVT9kbeV3ZLsLI56Tb
	mX9UPZLpX5s0CmcwrcWtl9ZJzVORVJVYrh6R21CepDyhGU5Htj6TlhNzKpqST2rWYj1fWotbSMjEE
	nZYA5Iq+M7xybnpi1MdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVPhp-00000007I04-14G9;
	Wed, 08 Jan 2025 06:38:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVPh3-00000007HsX-0cFi
	for linux-phy@lists.infradead.org;
	Wed, 08 Jan 2025 06:37:30 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5085HbPk029651;
	Wed, 8 Jan 2025 06:37:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rBAWxMEQzLDbB6v5Poioh18LeW3jAbE13taGzyFSkLo=; b=kHlf+s2+s291tF2U
	mJnhToUqRrMWQl7bR5uv0ADOYzq2CXtjBaW2fphcdMoVh5VwXf7B/PlglOYxKA1C
	EAtLX0yVpuQ/ASkz+RZos36OH5+qRuU9/w8dqatWxOyWm3jRuj4moZSj9rt7te2u
	KlyNIfKnUpU/n5Idrc2QJXyIMAixIvTeHYUqzVk5MlA6XrtxKAC5bpumOq+8mZCa
	BLVufKZRldssBbiJB97RNs0ZAF51oEg3FApiBimgW5iNDvZCCCeMIFt/S6Cgp9Kx
	Zi3rh+UwqLOIEY+vkUzhcHQeCJi1FN0blIh+yWHFnQdvCkGod2uZuq4zkY+URaoR
	u8Zzyg==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 441k3b85sq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Jan 2025 06:37:19 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5086bI1P022863
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 8 Jan 2025 06:37:18 GMT
Received: from [10.64.68.119] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 7 Jan 2025
 22:37:11 -0800
Message-ID: <9388d86e-b3c1-421c-aa3c-e198d108350a@quicinc.com>
Date: Wed, 8 Jan 2025 14:37:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: display/msm: Document the DPU for
 QCS8300
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        "Kuogee
 Hsieh" <quic_khsieh@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon
 Vijay Abraham I" <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
 <20241226-mdssdt_qcs8300-v2-1-acba0db533ce@quicinc.com>
 <66x4orucj6kenpwetugmng3kmuzjoagjkmctrn727j5hayjhhe@dvzdd6a2ehzn>
Content-Language: en-US
From: Yongxing Mou <quic_yongmou@quicinc.com>
In-Reply-To: <66x4orucj6kenpwetugmng3kmuzjoagjkmctrn727j5hayjhhe@dvzdd6a2ehzn>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: oqGmcMF_MEYb_3Iw2wUAIyEAPOwRI81A
X-Proofpoint-ORIG-GUID: oqGmcMF_MEYb_3Iw2wUAIyEAPOwRI81A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 bulkscore=0 phishscore=0 adultscore=0 spamscore=0 clxscore=1015 mlxscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 mlxlogscore=914
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501080051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_223729_309788_D4B95CA5 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
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



On 2024/12/27 16:41, Krzysztof Kozlowski wrote:
> On Thu, Dec 26, 2024 at 05:40:45PM +0800, Yongxing Mou wrote:
>> Document the DPU for Qualcomm QCS8300 platform.It use the same DPU
> 
> Missing space after full stop.
> 
Got it. thanks, will fix it in next patch.
>> hardware with SA8775P and reuse it's driver.
>>
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
