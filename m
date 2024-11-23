Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4436E6ADE4
	for <linux-phy@archiver.kernel.org>; Sat, 23 Nov 2024 05:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ec+2WEztYejheC5EV0Y8JMGWQUHRgxkqt3c54LVAcG4=; b=EPiSfiF/i5usdP
	XLRvfY4UKtBLfiggaru4qC0q96l67t/IDUhgtEI7X8KvcxIVlTgOGndQaXBPmm/CPmEeeUpDYH+zU
	lFiWTVGaJj5Sswf/rLMYEiab6TmPU1cHvFPD44/pCXq1TPK3YdlNpR+QZE/hVsCvkG3gAevPA9OtW
	0FIY8chVJAMWINfpUdc3oetAjOM+tCn8e7pH/aY2EbM2PUbk9HsRmKQf3JuG18pZqbj5u7MUdS0wg
	cxfP6GEVvzzeV+VU5uoZatfAF2JXg6pIvf6uVzCSu9+Zoy672lo2oVNLQLwUqqX1r53wZcR0WvrOe
	Izl7LQS9gOiIt38Kp5Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEiN5-00000003mGD-2DFF;
	Sat, 23 Nov 2024 05:07:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEiN2-00000003mFl-3AHs
	for linux-phy@lists.infradead.org;
	Sat, 23 Nov 2024 05:07:50 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AN4epau026083;
	Sat, 23 Nov 2024 05:07:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iHPi2UueuCGaZwoFZeuex97y1jXPUPoI3V5NZS7xEm4=; b=H+i9TyOe9PMZqaUF
	o9Pm6De8nkv0etlK3xwzCELp9ZbuF3Mp3+6nBMScGwkjojlPRHnYERb+KBPCwEIV
	fGF+XDE2Ef8+2Tu5jItAz3gRyCk44SpnHF+6UqzzS4WEO4V1KEBhSYfRAFzpC1R6
	C7rELBDITc+N+OJGKO/0KEeT2eaKiEeQIrTU2Stqp52XbfJAgDAh6t/A33dwfPiG
	MOj77jnpN4Sy97XzWdDluun/m6IBZ9XP6aztxrTA/2NcCltsGwpzcBgapp+vDp7M
	gxZKdjYJKMcvFNz6RusISlzxoAO3oTcx/YOgAFj7eK21quoWwQmzPkmSUmnzKagV
	H9Mnpg==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43387j812y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 23 Nov 2024 05:07:15 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AN57EwZ027870
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 23 Nov 2024 05:07:14 GMT
Received: from [10.253.78.207] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 22 Nov
 2024 21:07:08 -0800
Message-ID: <b8cd1434-8096-4d52-8499-9d25cf3805b8@quicinc.com>
Date: Sat, 23 Nov 2024 13:07:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom-qusb2: Add regulator_set_load to Qualcomm
 usb phy
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>,
        Vivek Gautam
	<vivek.gautam@codeaurora.org>, <kernel@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20241121-add_set_load_to_qusb_phy-v2-1-1c5da1befec0@quicinc.com>
 <7qj4szkw365ve45hm5w475xs2vlfsfg5pcpc44bo3s5vhrcmuu@bh5swbug4ywi>
Content-Language: en-US
From: Song Xue <quic_songxue@quicinc.com>
In-Reply-To: <7qj4szkw365ve45hm5w475xs2vlfsfg5pcpc44bo3s5vhrcmuu@bh5swbug4ywi>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: IaaVYCvSpmgEqtHfHqQFO8o_pzagdxtR
X-Proofpoint-GUID: IaaVYCvSpmgEqtHfHqQFO8o_pzagdxtR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 malwarescore=0
 suspectscore=0 priorityscore=1501 mlxlogscore=999 bulkscore=0
 impostorscore=0 mlxscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2411230038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_210748_806589_F036A84B 
X-CRM114-Status: GOOD (  23.30  )
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



On 11/22/2024 6:24 AM, Dmitry Baryshkov wrote:
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
> 
> Please use regulator_set_mode() instead. Or just fix the mode in the
> device tree, if the device can not operate if the regulator is in
> non-HPM mode.
> 
Thanks for comment.

 From my point, regulator_set_mode() will change the regulator's 
operating mode including current and voltage, which will also influence 
the other shared consumers. Meanwhile it is unacceptable to fix mode in 
the device tree because it is determined by regulator's device tree.

According to the required fix, regulator_set_load() simply aggregates 
the current load for the regulator and does not affect other shared 
consumers. Setting the current load is relevant to the issue.

Regards,
Song
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
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
