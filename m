Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8275DC3DA42
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jul 2024 07:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ys4KMqYT46HT0lQcZd/Af20SSaRd6SKVZReTcH5eo3U=; b=pQ0F8F0BscC9ff
	Ck01S7ONKzzYcv5WswPSRC/ciaeIzqFO+GGIjGuZW4ILmJHwyDBy9qric1fZJdDauyuqtOM2kB3B/
	4SKLVwmXwNkrb2+B3+GgDXojYuZgyAfIQsY/PByMYkIse0w81kMEyZlUadQn9a5gFeyDgqrRZ54GJ
	BCMNNyZRymxRaLRcrygdhJ2kTLUJ1gJTChsq7Emu3qSj1YE5Rt9nlhidVGT6whexHuMiJdH+I3IAa
	PiRmQFRvhHhZ42yusWGKiGlHDZk1Ul4jkqtjJB24FiYQEmb9PctOXPBsMxDmEVnM50biLyPpsF2mh
	/80uuA09qfNJo3frMauA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQj61-000000034l2-0Or8;
	Mon, 08 Jul 2024 07:47:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQj5t-000000034gx-0Gcr;
	Mon, 08 Jul 2024 07:47:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4680RHHV026697;
	Mon, 8 Jul 2024 07:45:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CUrEaasZcP96iIVmL1qwVUoCV1iP6X5mUSGG7CJe278=; b=D/V89zxlYAEunKVV
	toXEImY8NtvS7EfmU+slUSikwYNAgmwpxd7w5ysNiQ0l84+NrueWdaD/xJgNCbxG
	SaXkk1QGER6Nuw4lW9w8nuqtgGK21EFlouL+xu4MDOMBfwKaCioqDfAoznjCPTDz
	GsvssgaqSIftpgiAKM4+eUjMwZ/xyBKcMBq8jnhbnr4NfTry/Fp5Cw556pYG+tq+
	Wpvg7lKvqtRiupzJNMsIbH0IOkAXTAk2iHkyNOeNQpHXfy0lpkEuuYqbPsHvW92I
	gG/KnbmYFFObHu1kSHWBa6Yn7Hy/+Mm+6LQEYb2tfQoaf1hXOCgTM5NEUZDdsbLs
	L3vOYg==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406we8txru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Jul 2024 07:45:55 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 4687jr5h002187
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 8 Jul 2024 07:45:53 GMT
Received: from [10.239.132.204] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 8 Jul 2024
 00:45:31 -0700
Message-ID: <7dba494a-54e2-4032-88a1-0a50f301b5da@quicinc.com>
Date: Mon, 8 Jul 2024 15:45:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 29/47] dt-bindings: net: qcom,ethqos: add description for
 qcs9100
To: Andrew Lunn <andrew@lunn.ch>
CC: Andrew Halaney <ahalaney@redhat.com>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <djakov@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <jassisinghbrar@gmail.com>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <manivannan.sadhasivam@linaro.org>, <will@kernel.org>,
        <joro@8bytes.org>, <conor@kernel.org>, <tglx@linutronix.de>,
        <amitk@kernel.org>, <thara.gopinath@gmail.com>,
        <linus.walleij@linaro.org>, <wim@linux-watchdog.org>,
        <linux@roeck-us.net>, <rafael@kernel.org>, <viresh.kumar@linaro.org>,
        <vkoul@kernel.org>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>, <mcoquelin.stm32@gmail.com>,
        <robimarko@gmail.com>, <bartosz.golaszewski@linaro.org>,
        <kishon@kernel.org>, <quic_wcheng@quicinc.com>,
        <alim.akhtar@samsung.com>, <avri.altman@wdc.com>, <bvanassche@acm.org>,
        <agross@kernel.org>, <gregkh@linuxfoundation.org>,
        <quic_tdas@quicinc.com>, <robin.murphy@arm.com>,
        <daniel.lezcano@linaro.org>, <rui.zhang@intel.com>,
        <lukasz.luba@arm.com>, <quic_rjendra@quicinc.com>,
        <ulf.hansson@linaro.org>, <quic_sibis@quicinc.com>,
        <otto.pflueger@abscue.de>, <luca@z3ntu.xyz>,
        <neil.armstrong@linaro.org>, <abel.vesa@linaro.org>,
        <bhupesh.sharma@linaro.org>, <alexandre.torgue@foss.st.com>,
        <peppe.cavallaro@st.com>, <joabreu@synopsys.com>,
        <netdev@vger.kernel.org>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <bhelgaas@google.com>, <krzysztof.kozlowski@linaro.org>,
        <u.kleine-koenig@pengutronix.de>, <dmitry.baryshkov@linaro.org>,
        <quic_cang@quicinc.com>, <danila@jiaxyga.com>,
        <quic_nitirawa@quicinc.com>, <mantas@8devices.com>,
        <athierry@redhat.com>, <quic_kbajaj@quicinc.com>,
        <quic_bjorande@quicinc.com>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <quic_tsoni@quicinc.com>,
        <quic_rgottimu@quicinc.com>, <quic_shashim@quicinc.com>,
        <quic_kaushalk@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_aiquny@quicinc.com>, <srinivas.kandagatla@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-pm@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-crypto@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <iommu@lists.linux.dev>, <linux-gpio@vger.kernel.org>,
        <linux-watchdog@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>, <kernel@quicinc.com>
References: <20240703025850.2172008-1-quic_tengfan@quicinc.com>
 <20240703025850.2172008-30-quic_tengfan@quicinc.com>
 <u5ekupjqvgoehkl76pv7ljyqqzbnnyh6ci2dilfxfkcdvdy3dp@ehdujhkul7ow>
 <f4162b7f-d957-4dd6-90a0-f65c1cbc213a@quicinc.com>
 <add1bdda-2321-4c47-91ef-299f99385bc8@lunn.ch>
From: Tengfei Fan <quic_tengfan@quicinc.com>
In-Reply-To: <add1bdda-2321-4c47-91ef-299f99385bc8@lunn.ch>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: sFPwXVmKHEHL1PGsOXMibBQUqRsvod3U
X-Proofpoint-GUID: sFPwXVmKHEHL1PGsOXMibBQUqRsvod3U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-08_02,2024-07-05_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 mlxlogscore=703 malwarescore=0 mlxscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2406140001
 definitions=main-2407080059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_004729_263803_7887AFF4 
X-CRM114-Status: GOOD (  14.56  )
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



On 7/5/2024 12:03 AM, Andrew Lunn wrote:
> On Thu, Jul 04, 2024 at 09:13:59AM +0800, Tengfei Fan wrote:
>>
>>
>> On 7/3/2024 11:09 PM, Andrew Halaney wrote:
>>> On Wed, Jul 03, 2024 at 10:58:32AM GMT, Tengfei Fan wrote:
>>>> Add the compatible for the MAC controller on qcs9100 platforms. This MAC
>>>> works with a single interrupt so add minItems to the interrupts property.
>>>> The fourth clock's name is different here so change it. Enable relevant
>>>> PHY properties. Add the relevant compatibles to the binding document for
>>>> snps,dwmac as well.
>>>
>>> This description doesn't match what was done in this patch, its what
>>> Bart did when he made changes to add the sa8775 changes. Please consider
>>> using a blurb indicating that this is the same SoC as sa8775p, just with
>>> different firmware strategies or something along those lines?
>>
>> I will update this commit message as you suggested.
> 
> Hi Andrew, Tengfei
> 
> Please trim emails when replying to just the needed context.
> 
> Thanks
> 	Andrew

Thank you for pointing out this. In the future, I will pay attention to 
trimming emails when I reply.

-- 
Thx and BRs,
Tengfei Fan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
