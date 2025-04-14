Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E58EAC369B2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 20:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFzG2dyFF1tKEiX51yV/EfIB5vvBjHy2CGy3A0Lptyk=; b=DkpFXtxmUjn7VJ
	MueZ1N4yxBL+Y/SaI5KBG+STrM/qMqyNbCrF1peXFCcXYzFVV55xT4rzdV+fZvqok8xVNDttfvGii
	AJdR9q2uI/4bxMmbjNW/aoMPuWL8ev2H1NlNlXwv5jvtgPlfVAHDNnNAY7gdWVs0/lNvCdIiwSYCC
	1fUZDvp+Bxnv5koaVolkm38q9B63u/ZnRu90hWF7E50N2a0jEq3htOsveFyJXNjmesxDGl4dCW4Kt
	+8b39ZCN/3pXGHb6yJzd/e0dpMslsKbEdHf9TiDCOXt+Pn1qnI4/Xcr8s5bRaF5aI313oleIKxaAJ
	6pGu50UvsEkNrDkglUzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4QVy-00000003U75-1yyG;
	Mon, 14 Apr 2025 20:34:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4QVw-00000003U6d-0g9E
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 20:34:45 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53EIZGYM011445;
	Mon, 14 Apr 2025 20:34:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0gng3sqqxIlJmhQilx3F09jbWC+oiPHZRB5KQiL612k=; b=eZSXaXe3VUEwwm/T
	mDurgoQw0r6IUPkgyXY4QC6WMyYJ29M3JlFEuyRI+bGpinqAu8ZplT4/PAPmZAaS
	KnSH552QxDIPQvcydZj4XtQWFdjuFnm5RnadKFJPXtkVVWbSD805W969uR09o4D4
	S9VA0Besl0DMbw/47nTAa9CaL7Ji8BFdt0HHQfkdpLis8CiVucxfl8PL2H7eHmF5
	I4PX7MKwIXA3/vdxT1G5pHEvkE6knK2OehjP0DWrqlMHq2mRthbRLr8M5TvQoXQJ
	2O190R9W4880PLXhZRXUA+kogQLI6I7RzHW+rdW1gB3oXf/HwCSQCLdoVV4aRUcK
	r7OJRQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wdqra-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Apr 2025 20:34:26 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53EKYPRg011037
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Apr 2025 20:34:25 GMT
Received: from [10.216.50.219] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 14 Apr
 2025 13:34:19 -0700
Message-ID: <2820908b-4548-4e0a-94b2-6065cb5ff1f3@quicinc.com>
Date: Tue, 15 Apr 2025 02:04:15 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/9] phy: qcom-qmp-ufs: Refactor UFS PHY reset
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>,
        <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@hansenpartnership.com>, <martin.petersen@oracle.com>,
        <bvanassche@acm.org>, <bjorande@quicinc.com>,
        <neil.armstrong@linaro.org>, <konrad.dybcio@oss.qualcomm.com>,
        <quic_rdwivedi@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-5-quic_nitirawa@quicinc.com>
 <pur4y63xhfmqlyymg4pehk37ry4gg22h24zceoqjbsxp3hj4yf@4kptase3c4qp>
 <317faeaa-3130-4e28-8c5d-441a76aa79b4@quicinc.com>
 <CAO9ioeXnnbNzriVOYPUeBiWdrPfYUcMk+pVWYv0vZpJbFeByoQ@mail.gmail.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <CAO9ioeXnnbNzriVOYPUeBiWdrPfYUcMk+pVWYv0vZpJbFeByoQ@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67fd7152 cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=KyqiolPXePoYZYstDAYA:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Qp6V9r-XsKanonvNaC6fF3HXP4mYl63i
X-Proofpoint-GUID: Qp6V9r-XsKanonvNaC6fF3HXP4mYl63i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_07,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_133444_347842_563E34F8 
X-CRM114-Status: GOOD (  27.04  )
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



On 4/11/2025 4:38 PM, Dmitry Baryshkov wrote:
> On Fri, 11 Apr 2025 at 13:50, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>>
>>
>>
>> On 4/11/2025 1:38 AM, Dmitry Baryshkov wrote:
>>> On Thu, Apr 10, 2025 at 02:30:57PM +0530, Nitin Rawat wrote:
>>>> Refactor the UFS PHY reset handling to parse the reset logic only once
>>>> during probe, instead of every resume.
>>>>
>>>> Move the UFS PHY reset parsing logic from qmp_phy_power_on to
>>>> qmp_ufs_probe to avoid unnecessary parsing during resume.
>>>
>>> How did you solve the circular dependency issue being noted below?
>>
>> Hi Dmitry,
>> As part of my patch, I moved the parsing logic from qmp_phy_power_on to
>> qmp_ufs_probe to avoid unnecessary parsing during resume. I'm uncertain
>> about the circular dependency issue and whether if it still exists.
> 
> It surely does. The reset controller is registered in the beginning of
> ufs_qcom_init() and the PHY is acquired only a few lines below. It
> creates a very small window for PHY driver to probe.
> Which means, NAK, this patch doesn't look acceptable.

Hi Dmitry,

Thanks for pointing this out. I agree that it leaves very little time 
for the PHY to probe, which may cause issues with targets where 
no_pcs_sw_reset is set to true.

As an experiment, I kept no_pcs_sw_reset set to true for the SM8750, and 
it caused bootup probe issues in some of the iterations I ran.

To address this, I propose updating the patch to move the 
qmp_ufs_get_phy_reset call to phy_calibrate, just before the 
reset_control_assert call.

This change will delay the UFS PHY reset as much as possible in the 
code. Additionally, moving it from phy_power_on to calibrate will ensure 
that qmp_ufs_get_phy_reset is called only once during boot, rather than 
during each phy_power_on call.

Please let me know your thoughts.
=====================================================================================================
  static int qmp_ufs_phy_calibrate(struct phy *phy)
  {
         struct qmp_ufs *qmp = phy_get_drvdata(phy);
@@ -1793,6 +1826,12 @@ static int qmp_ufs_phy_calibrate(struct phy *phy)
         unsigned int val;
         int ret;

+       pr_err("%s %d\n", __func__, __LINE__);
+
+       ret = qmp_ufs_get_phy_reset(qmp);
+        if (ret)
+                return ret;
+
         ret = reset_control_assert(qmp->ufs_reset);
         if (ret)
                 return ret;
@@ -1817,7 +1856,7 @@ static int qmp_ufs_phy_calibrate(struct phy *phy)
                 dev_err(qmp->dev, "phy initialization timed-out\n");
                 return ret;
=====================================================================================================


Regards.
Nitin
> 
>>
>> Regards,
>> Nitin
>>
>>
>>>
>>>>
>>>> Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>>>> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>>>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>> ---
>>>>    drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 61 +++++++++++++------------
>>>>    1 file changed, 33 insertions(+), 28 deletions(-)
>>>>
>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>> index 636dc3dc3ea8..12dad28cc1bd 100644
>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>> @@ -1799,38 +1799,11 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>>>>    static int qmp_ufs_power_on(struct phy *phy)
>>>>    {
>>>>       struct qmp_ufs *qmp = phy_get_drvdata(phy);
>>>> -    const struct qmp_phy_cfg *cfg = qmp->cfg;
>>>>       int ret;
>>>>       dev_vdbg(qmp->dev, "Initializing QMP phy\n");
>>>>
>>>> -    if (cfg->no_pcs_sw_reset) {
>>>> -            /*
>>>> -             * Get UFS reset, which is delayed until now to avoid a
>>>> -             * circular dependency where UFS needs its PHY, but the PHY
>>>> -             * needs this UFS reset.
>>>> -             */
>>>> -            if (!qmp->ufs_reset) {
>>>> -                    qmp->ufs_reset =
>>>> -                            devm_reset_control_get_exclusive(qmp->dev,
>>>> -                                                             "ufsphy");
>>>> -
>>>> -                    if (IS_ERR(qmp->ufs_reset)) {
>>>> -                            ret = PTR_ERR(qmp->ufs_reset);
>>>> -                            dev_err(qmp->dev,
>>>> -                                    "failed to get UFS reset: %d\n",
>>>> -                                    ret);
>>>> -
>>>> -                            qmp->ufs_reset = NULL;
>>>> -                            return ret;
>>>> -                    }
>>>> -            }
>>>> -    }
>>>> -
>>>>       ret = qmp_ufs_com_init(qmp);
>>>> -    if (ret)
>>>> -            return ret;
>>>> -
>>>> -    return 0;
>>>> +    return ret;
>>>>    }
>>>>
>>>>    static int qmp_ufs_phy_calibrate(struct phy *phy)
>>>> @@ -2088,6 +2061,34 @@ static int qmp_ufs_parse_dt(struct qmp_ufs *qmp)
>>>>       return 0;
>>>>    }
>>>>
>>>> +static int qmp_ufs_get_phy_reset(struct qmp_ufs *qmp)
>>>> +{
>>>> +    const struct qmp_phy_cfg *cfg = qmp->cfg;
>>>> +    int ret;
>>>> +
>>>> +    if (!cfg->no_pcs_sw_reset)
>>>> +            return 0;
>>>> +
>>>> +    /*
>>>> +     * Get UFS reset, which is delayed until now to avoid a
>>>> +     * circular dependency where UFS needs its PHY, but the PHY
>>>> +     * needs this UFS reset.
>>>> +     */
>>>> +    if (!qmp->ufs_reset) {
>>>> +            qmp->ufs_reset =
>>>> +            devm_reset_control_get_exclusive(qmp->dev, "ufsphy");
>>>
>>> Strange indentation.
>>>
>>>> +
>>>> +            if (IS_ERR(qmp->ufs_reset)) {
>>>> +                    ret = PTR_ERR(qmp->ufs_reset);
>>>> +                    dev_err(qmp->dev, "failed to get PHY reset: %d\n", ret);
>>>> +                    qmp->ufs_reset = NULL;
>>>> +                    return ret;
>>>> +            }
>>>> +    }
>>>> +
>>>> +    return 0;
>>>> +}
>>>> +
>>>>    static int qmp_ufs_probe(struct platform_device *pdev)
>>>>    {
>>>>       struct device *dev = &pdev->dev;
>>>> @@ -2114,6 +2115,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
>>>>       if (ret)
>>>>               return ret;
>>>>
>>>> +    ret = qmp_ufs_get_phy_reset(qmp);
>>>> +    if (ret)
>>>> +            return ret;
>>>> +
>>>>       /* Check for legacy binding with child node. */
>>>>       np = of_get_next_available_child(dev->of_node, NULL);
>>>>       if (np) {
>>>> --
>>>> 2.48.1
>>>>
>>>
>>
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
