Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BD17D6EBFC
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 10:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFpSnaavjG8ywA6aQvSNnHXpVvtoIaBTobYDZ1MnPv0=; b=QdA0QzikLhBESw
	D7BE4houLZRHpRIkAQdY5ySKZvsZH+wkZsPrhsZagPrNrttviMnwxadGn794vlQP1rCQkdaOJmmdD
	6iR1Ro/P4+cJT0tOV/lKg3v59SqgBejs3K1+Ousdbe4YNJSml+Ck/lpYP6ZnsbED8c3pIido2t/oC
	vWHpMBvEpRv8xxKIBkXosblKRqpe7NethEYG7HL8oiTjUU/3sMVeKksh+MJegqv6DIAZQMUaoYtlQ
	g6l1wjO/OXUeesGZz+4rnNbA18lC7JCzcdvFVOduMV5R0DXSVI37G5FljaQm9GtjhPQ0O7HZ0Pq8K
	3til2c0XkUw9FYPX7Yvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGyDS-0000000HQXA-3dKv;
	Fri, 29 Nov 2024 10:27:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGyDP-0000000HQWG-1qlr
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 10:27:13 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AT7ka6b021741;
	Fri, 29 Nov 2024 10:26:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c2aGFLtbPSrW2lem99GXveM1MWvzpMsUHGSM4GWK95A=; b=nt6+phb8GbZ1nniq
	mj7aHmh/fTNsDhA2bGtjiXezuRi7ip489SqqYNhQ4KvshtRUQvb1BDBMooc+7d9+
	lJaWOcaL352Ezgwwh06VaYNM5H8jK2xO0UE7ANLuB1Ou+wGNx2VihELafdTZOqWl
	wxe9in5MECdkkAxSOBDLUuYjKbS522nCvDnu84QmnYQM7kWkG9jX65aIVbhSWaPj
	5Lu/9ab6urbjcLUKs8NCobRwKgwwhRIuzlXuynWkqamyQR6VNZNLp0d2demoFKpy
	343acNEyHKz5IZU/FnY+5mK34DL/aZCsCfqjEnZCHuP+HzMwfFR+8n6K5oeoBjbA
	xjXNiA==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4379h68dqv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 10:26:40 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4ATAQep5018940
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 10:26:40 GMT
Received: from [10.233.17.145] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 29 Nov
 2024 02:26:33 -0800
Message-ID: <18e40154-f4ea-4100-9f4f-9c9aa5e251d7@quicinc.com>
Date: Fri, 29 Nov 2024 18:26:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom-qusb2: Add regulator_set_load to Qualcomm
 usb phy
To: Bjorn Andersson <andersson@kernel.org>,
        Song Xue
	<quic_songxue@quicinc.com>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>,
        Vivek Gautam
	<vivek.gautam@codeaurora.org>, <kernel@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20241121-add_set_load_to_qusb_phy-v2-1-1c5da1befec0@quicinc.com>
 <vbuo2yel2pdcwnmz32f4t5pb6v3ptt2bcs2t6ybab2jxnkd6e7@rjnsbawj4zpb>
From: Tingwei Zhang <quic_tingweiz@quicinc.com>
In-Reply-To: <vbuo2yel2pdcwnmz32f4t5pb6v3ptt2bcs2t6ybab2jxnkd6e7@rjnsbawj4zpb>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: hWKtQbM08weiGwECLW0VKe1_HafroQCL
X-Proofpoint-ORIG-GUID: hWKtQbM08weiGwECLW0VKe1_HafroQCL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2411290086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_022711_512036_68C0B000 
X-CRM114-Status: GOOD (  30.07  )
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

On 11/29/2024 12:43 AM, Bjorn Andersson wrote:
> On Thu, Nov 21, 2024 at 04:09:27PM +0800, Song Xue wrote:
>> Set the current load before enable regulator supplies at QUSB phy.
>>
>> Encountered one issue where the board powered down instantly once the UVC
>> camera was attached to USB port while adding host mode on usb port and
>> testing a UVC camera with the driver on QCS615 platform. The extensible
>> boot loader mentioned that OCP(Over Current Protection) occurred at LDO12
>> from regulators-0 upon powered on board again. That indicates that the
>> current load set for QUSB phy, which use the regulator supply, is lower
>> than expected.
>>
>> As per QUSB spec, set the maximum current load at 30mA to avoid overcurrent
>> load when attach a device to the USB port.
>>
>> Fixes: 937e17f36a32 ("phy: qcom-qusb2: Power-on PHY before initialization")
>> Signed-off-by: Song Xue <quic_songxue@quicinc.com>
> 
> The patch looks good. But if we describe the regulator(s) with
> regulator-allow-set-load; and not all the consumers vote for load, the
> sum of the load when USB phy is disabled goes to 0 and we will enter
> LPM.

That's exactly the issue we encountered on QCS615 ride. Qualcomm UFS 
driver sets load while USB phy doesn't set load. That's the reason we 
raised this patch.
> 
> For this reason we're not doing any load requests today. Can you confirm

When I grep regulator_set_load in Kernel, there are 27 hits in drivers. 
You are correct, it will trigger issue when some consumers set load 
while some don't.
However, how can we prevent other drivers outside of Qualcomm to use 
regulator_set_load? It will trigger the same issue.
Is there something we can do in regulator driver to prevent this issue? 
If consumer doesn't set load, regulator works in HPM even another 
consumer set load to 0?

> that this works fine with a dtb where only HPM is permitted (as well as
> LPM and HPM)? If so I'd be in favor of us merging this change, but

Do you mean test with HPM only regulator and regulator which allows to 
be set to HPM and LPM?

> keeping the dts HPM-only until someone confirms that all consumers of
> these regulators specify load-votes.
> 
> Regards,
> Bjorn
> 
>> ---
>> Changes in v2:
>> - Removed "---" above the Fixes.
>> - Link to v1: https://lore.kernel.org/r/20241121-add_set_load_to_qusb_phy-v1-1-0f44f3a3290e@quicinc.com
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qusb2.c | 13 ++++++++++++-
>>   1 file changed, 12 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> index c52655a383cef008552ed4533b9f31d1cbf34a13..80f0d17c42717e843937255a9a780bbae5998535 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> @@ -722,16 +722,27 @@ static int __maybe_unused qusb2_phy_runtime_resume(struct device *dev)
>>   	return ret;
>>   }
>>   
>> +#define QUSB2PHY_HPM_LOAD 30000 /*uA*/
>> +
>>   static int qusb2_phy_init(struct phy *phy)
>>   {
>>   	struct qusb2_phy *qphy = phy_get_drvdata(phy);
>>   	const struct qusb2_phy_cfg *cfg = qphy->cfg;
>>   	unsigned int val = 0;
>>   	unsigned int clk_scheme;
>> -	int ret;
>> +	int ret, i;
>>   
>>   	dev_vdbg(&phy->dev, "%s(): Initializing QUSB2 phy\n", __func__);
>>   
>> +	/* set the current load */
>> +	for (i = 0; i < ARRAY_SIZE(qphy->vregs); i++) {
>> +		ret = regulator_set_load(qphy->vregs[i].consumer, QUSB2PHY_HPM_LOAD);
>> +		if (ret) {
>> +			dev_err(&phy->dev, "failed to set load at %s\n", qphy->vregs[i].supply);
>> +			return ret;
>> +		}
>> +	}
>> +
>>   	/* turn on regulator supplies */
>>   	ret = regulator_bulk_enable(ARRAY_SIZE(qphy->vregs), qphy->vregs);
>>   	if (ret)
>>
>> ---
>> base-commit: decc701f41d07481893fdea942c0ac6b226e84cd
>> change-id: 20241121-add_set_load_to_qusb_phy-d1327c797ffe
>>
>> Best regards,
>> -- 
>> Song Xue <quic_songxue@quicinc.com>
>>
>>


-- 
Thanks,
Tingwei

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
