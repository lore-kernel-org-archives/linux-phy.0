Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D38CED78305
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 10:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWre82tBV/5vVXp+Peh8JRKif4syNfHJzOs6pF6GqNc=; b=DWZ8HV2Pxe9MXp
	y6sG8GdP+MFmAt2mvRvmMUvQAotl7/TIGHRvxOxvDv/pGq7qXBU9Pm2ZksUhdkkpLmb4Y0lwjHk0m
	vABeYw46pRnC/+VV7Iu0rfCkxs4HTPsN798hq85gYn47Cmzr1yWisqI6Cb8MVHwPPk97HB6nOViYD
	PSER2hqJB9YvFk9Bd66ETJZUup9rmGMDCV6lCVGH9NK31UzmPu1RtuIV03P+UlTeeFpiUqi8NoLkj
	tu0JnXC0p1H35VbRcqPkDEVMZne29hT3ponw8saXz6jcyrKALlJSkeH+Qy3cYjpDqSy02m9koGLxY
	Jki60mCFYhfRC40Yg+2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI3jI-00000005jyr-2Y4U;
	Mon, 02 Dec 2024 10:32:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI3ik-00000005jrK-1LVN
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 10:32:03 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B28gCCM031568;
	Mon, 2 Dec 2024 10:31:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p/DdNkotzWXXhJhcfX2/UUVLN4GplZH+o2EyPdnTKmI=; b=ddEy7qfcp9aNKCU5
	pIsDynzHrdV5NX/lei/fEpzhfFwPsiuwz9zQzHVD7mTL37evINoL9/N4qORkqG0Y
	CaNhQEew0aehRTRjv/BxKKDZlp1u6rPNTo5r73x86XDneJN2dreDLQ+FNF88XEVS
	Tk5m5jM1bSeN7DzU8edtGtuEH5S19MB1S8fVQJdIYfOXAcAQ8lsLBWuVpc7AXrN4
	xIp1wZPwnIaxGajZex9i0LlvnAXSVgRjaMtxq3Id11e2EgrADLxQSZP0MuJv2isI
	MIdi0YwwQF1C4WfLEICco+0vVVqamqv2TrXqQTQZyK+vogQ0RTUqxcYqbHWnK8oh
	xPillA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437v07mcnq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Dec 2024 10:31:29 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B2AVTsu002055
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 2 Dec 2024 10:31:29 GMT
Received: from [10.233.17.145] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 2 Dec 2024
 02:31:23 -0800
Message-ID: <cae67925-bfa9-44c1-9cf8-824c5a32a3bd@quicinc.com>
Date: Mon, 2 Dec 2024 18:31:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom-qusb2: Add regulator_set_load to Qualcomm
 usb phy
To: Bjorn Andersson <andersson@kernel.org>
CC: Song Xue <quic_songxue@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay Abraham I" <kishon@kernel.org>,
        Manu Gautam
	<mgautam@codeaurora.org>,
        Vivek Gautam <vivek.gautam@codeaurora.org>, <kernel@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20241121-add_set_load_to_qusb_phy-v2-1-1c5da1befec0@quicinc.com>
 <vbuo2yel2pdcwnmz32f4t5pb6v3ptt2bcs2t6ybab2jxnkd6e7@rjnsbawj4zpb>
 <18e40154-f4ea-4100-9f4f-9c9aa5e251d7@quicinc.com>
 <5tbevb5wv2s43pccytv4qol4yhq4s7iw2mmqp23vt3ujqd6xev@hkioqmwoitbd>
From: Tingwei Zhang <quic_tingweiz@quicinc.com>
In-Reply-To: <5tbevb5wv2s43pccytv4qol4yhq4s7iw2mmqp23vt3ujqd6xev@hkioqmwoitbd>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: th-N7LjwSxospAAPdhm1dpM6a4IJeDNy
X-Proofpoint-GUID: th-N7LjwSxospAAPdhm1dpM6a4IJeDNy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 adultscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 spamscore=0 mlxscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412020093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_023202_369998_B91F83A2 
X-CRM114-Status: GOOD (  34.07  )
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

On 11/30/2024 11:59 AM, Bjorn Andersson wrote:
> On Fri, Nov 29, 2024 at 06:26:30PM +0800, Tingwei Zhang wrote:
>> On 11/29/2024 12:43 AM, Bjorn Andersson wrote:
>>> On Thu, Nov 21, 2024 at 04:09:27PM +0800, Song Xue wrote:
>>>> Set the current load before enable regulator supplies at QUSB phy.
>>>>
>>>> Encountered one issue where the board powered down instantly once the UVC
>>>> camera was attached to USB port while adding host mode on usb port and
>>>> testing a UVC camera with the driver on QCS615 platform. The extensible
>>>> boot loader mentioned that OCP(Over Current Protection) occurred at LDO12
>>>> from regulators-0 upon powered on board again. That indicates that the
>>>> current load set for QUSB phy, which use the regulator supply, is lower
>>>> than expected.
>>>>
>>>> As per QUSB spec, set the maximum current load at 30mA to avoid overcurrent
>>>> load when attach a device to the USB port.
>>>>
>>>> Fixes: 937e17f36a32 ("phy: qcom-qusb2: Power-on PHY before initialization")
>>>> Signed-off-by: Song Xue <quic_songxue@quicinc.com>
>>>
>>> The patch looks good. But if we describe the regulator(s) with
>>> regulator-allow-set-load; and not all the consumers vote for load, the
>>> sum of the load when USB phy is disabled goes to 0 and we will enter
>>> LPM.
>>
>> That's exactly the issue we encountered on QCS615 ride. Qualcomm UFS driver
>> sets load while USB phy doesn't set load. That's the reason we raised this
>> patch.
>>>
>>> For this reason we're not doing any load requests today. Can you confirm
>>
>> When I grep regulator_set_load in Kernel, there are 27 hits in drivers. You
>> are correct, it will trigger issue when some consumers set load while some
>> don't.
>> However, how can we prevent other drivers outside of Qualcomm to use
>> regulator_set_load?
> 
> We can avoid this by not specifying "regulator-allow-set-load" in
> DeviceTree.
> 
> That said, this isn't the correct solution, we shouldn't use the
> hardware description to deal with implementation issues. It is however
> the currently chosen pragmatic solution, so feel free to follow this.
> 
In that case, shall we set all regulator to HPM-only and not specifying 
"regulator-allow-set-load" in device tree? This will make it safe 
whether driver sets load or not. With this, drivers can gradually add 
set load support and "regulator-allow-set-load" can be enabled in device 
tree once all consumer drivers have set load support.

>> It will trigger the same issue.
>> Is there something we can do in regulator driver to prevent this issue? If
>> consumer doesn't set load, regulator works in HPM even another consumer set
>> load to 0?
>>
>>> that this works fine with a dtb where only HPM is permitted (as well as
>>> LPM and HPM)? If so I'd be in favor of us merging this change, but
>>
>> Do you mean test with HPM only regulator and regulator which allows to be
>> set to HPM and LPM?
>>
> 
> Yes, please double check that your patch works with and without
> regulator-allow-set-load.
> 
Unfortunatly, it won't work for regulator with regulator-allow-set-load 
when there's another consumer driver doesn't set load. Once this USB phy 
driver disable regulator and clear it's load. Regualtor will go to LPM 
even other consumer still votes enable for this regulator.

> Regards,
> Bjorn
> 
>>> keeping the dts HPM-only until someone confirms that all consumers of
>>> these regulators specify load-votes.
>>>
>>> Regards,
>>> Bjorn
>>>
>>>> ---
>>>> Changes in v2:
>>>> - Removed "---" above the Fixes.
>>>> - Link to v1: https://lore.kernel.org/r/20241121-add_set_load_to_qusb_phy-v1-1-0f44f3a3290e@quicinc.com
>>>> ---
>>>>    drivers/phy/qualcomm/phy-qcom-qusb2.c | 13 ++++++++++++-
>>>>    1 file changed, 12 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
>>>> index c52655a383cef008552ed4533b9f31d1cbf34a13..80f0d17c42717e843937255a9a780bbae5998535 100644
>>>> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
>>>> @@ -722,16 +722,27 @@ static int __maybe_unused qusb2_phy_runtime_resume(struct device *dev)
>>>>    	return ret;
>>>>    }
>>>> +#define QUSB2PHY_HPM_LOAD 30000 /*uA*/
>>>> +
>>>>    static int qusb2_phy_init(struct phy *phy)
>>>>    {
>>>>    	struct qusb2_phy *qphy = phy_get_drvdata(phy);
>>>>    	const struct qusb2_phy_cfg *cfg = qphy->cfg;
>>>>    	unsigned int val = 0;
>>>>    	unsigned int clk_scheme;
>>>> -	int ret;
>>>> +	int ret, i;
>>>>    	dev_vdbg(&phy->dev, "%s(): Initializing QUSB2 phy\n", __func__);
>>>> +	/* set the current load */
>>>> +	for (i = 0; i < ARRAY_SIZE(qphy->vregs); i++) {
>>>> +		ret = regulator_set_load(qphy->vregs[i].consumer, QUSB2PHY_HPM_LOAD);
>>>> +		if (ret) {
>>>> +			dev_err(&phy->dev, "failed to set load at %s\n", qphy->vregs[i].supply);
>>>> +			return ret;
>>>> +		}
>>>> +	}
>>>> +
>>>>    	/* turn on regulator supplies */
>>>>    	ret = regulator_bulk_enable(ARRAY_SIZE(qphy->vregs), qphy->vregs);
>>>>    	if (ret)
>>>>
>>>> ---
>>>> base-commit: decc701f41d07481893fdea942c0ac6b226e84cd
>>>> change-id: 20241121-add_set_load_to_qusb_phy-d1327c797ffe
>>>>
>>>> Best regards,
>>>> -- 
>>>> Song Xue <quic_songxue@quicinc.com>
>>>>
>>>>
>>
>>
>> -- 
>> Thanks,
>> Tingwei


-- 
Thanks,
Tingwei

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
