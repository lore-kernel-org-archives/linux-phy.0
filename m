Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01FF1C369CF
	for <linux-phy@archiver.kernel.org>; Sat, 19 Apr 2025 20:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEwJfJTStdS+yZv9noK5W/CYIvT1BqdU5Y7eL/T0QNM=; b=qGK1St/h3V48Sv
	gX1GU9+scN6htr2aMmaZg4bLa60cxHZ9a/uY3n25GPii8eUVnL0WntPW9NDM3beVDmtZ+DG5bXAjq
	hbcmzBcNamJTucAFG9CW9RtyA+Gly/nCp5MbSv4KFYJWCTz3OyDJCbu7m59cuyIV6KX8Bd+ANZByd
	SmnvnrslnFHii9t2Zr76EmKhlbh6drJJ7imBNj91C6UGAPY/M2vY9Bs3hSoJzmeJl/ehm74V4RAjx
	yT8vdU/u8MZbYbBIAEw/ZDS9oAG9yapF6hpMVKj0Xl7MCT9vQ4NIbxSCr544Neg5lQB0bYdcciomp
	GeI8CL32b1DNBIYX2hYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6EV2-00000001lki-1J1Y;
	Sat, 19 Apr 2025 20:09:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6EUz-00000001lkA-1aQ0
	for linux-phy@lists.infradead.org;
	Sat, 19 Apr 2025 20:09:15 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53JJqtWE024291;
	Sat, 19 Apr 2025 20:08:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D6+NpKZ7gqgcoEwQPOm/EI7HAda5WGlRaDZuMVRMruU=; b=oOJZKpkkUCWsSqJY
	ymau2aZ4Q+Fz1XgEOG5pbPP1fNhQN0GnS35oRtqeyhpWHktTsTYbfy6fOZUuULbO
	TVMgepDgZ9ltKxtZjA7aAUmR0A6j0PN/WcfBMMpeG9k0jwgiC6nGGO06+d5DjrfJ
	e791o5ULiKyQphV29KMau3PpfHkUqZGgz5ZJf0YT/JqllRZ5OCN7C2NzPa0yIOH5
	bogvECOOkC8zy/VhWajquLiPurSln8aQVQ37YxVueAqxZopMp/jRVzwacvMfevEo
	YQKbFEX4p5EdbYgz8pIJiFJrw/dOQ5ALjCXguk5h6HUFhsCKmSxHRYUs9LHcqj9A
	IZxkag==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46435j91hj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 19 Apr 2025 20:08:54 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53JK8qvG024707
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 19 Apr 2025 20:08:52 GMT
Received: from [10.216.62.173] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sat, 19 Apr
 2025 13:08:45 -0700
Message-ID: <0d763853-5b1a-433e-9fa1-23ea0184b9bb@quicinc.com>
Date: Sun, 20 Apr 2025 01:38:40 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 5/9] phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
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
 <20250410090102.20781-6-quic_nitirawa@quicinc.com>
 <zvc3gf7mek7u46wlcrjak3j2hihj4vfgdwpdzjhvnxxowuyvsr@hlra5bmz5ign>
 <4557abf9-bcd2-4a06-8161-43ad5047b277@quicinc.com>
 <CAO9ioeXyDWOhe1cbGO_tR=ppZd1aC0GSdeMzQjir4XmDRMQ3Jg@mail.gmail.com>
 <64216a90-e2e0-435c-87bc-388c72a702c0@quicinc.com>
 <sajcoh34gyfcvhik3yairil65guvp2rt2xdmbmlpmlcjvst5ci@qojbxhmrnrxj>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <sajcoh34gyfcvhik3yairil65guvp2rt2xdmbmlpmlcjvst5ci@qojbxhmrnrxj>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=EOYG00ZC c=1 sm=1 tr=0 ts=680402d6 cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=JfrnYn6hAAAA:8 a=COk6AnOGAAAA:8 a=PNvhjDC_c5CfWSYif1gA:9
 a=QEXdDO2ut3YA:10 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: O95NvhS4UrMRpq3tkLm5GO6Yujv1slXV
X-Proofpoint-ORIG-GUID: O95NvhS4UrMRpq3tkLm5GO6Yujv1slXV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-19_08,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 phishscore=0 spamscore=0 adultscore=0 impostorscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504190168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250419_130913_572305_F1FD52F2 
X-CRM114-Status: GOOD (  21.24  )
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



On 4/14/2025 1:13 PM, Dmitry Baryshkov wrote:
> On Mon, Apr 14, 2025 at 12:58:48PM +0530, Nitin Rawat wrote:
>>
>>
>> On 4/11/2025 4:26 PM, Dmitry Baryshkov wrote:
>>> On Fri, 11 Apr 2025 at 13:42, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>>>>
>>>>
>>>>
>>>> On 4/11/2025 1:39 AM, Dmitry Baryshkov wrote:
>>>>> On Thu, Apr 10, 2025 at 02:30:58PM +0530, Nitin Rawat wrote:
>>>>>> Simplify the qcom ufs phy driver by inlining qmp_ufs_com_init() into
>>>>>> qmp_ufs_power_on(). This change removes unnecessary function calls and
>>>>>> ensures that the initialization logic is directly within the power-on
>>>>>> routine, maintaining the same functionality.
>>>>>
>>>>> Which problem is this patch trying to solve?
>>>>
>>>> Hi Dmitry,
>>>>
>>>> As part of the patch, I simplified the code by moving qmp_ufs_com_init
>>>> inline to qmp_ufs_power_on, since qmp_ufs_power_on was merely calling
>>>> qmp_ufs_com_init. This change eliminates unnecessary function call.
>>>
>>> You again are describing what you did. Please start by stating the
>>> problem or the issue.
>>>
>>>>
>> Hi Dmitry,
>>
>> Sure, will update the commit with "problem" first in the next patchset when
>> I post.
> 
> Before posting the next iteration, maybe you can respond inline? It well
> might be that there is no problem to solve.a

Hi Dmitry,

Apologies for late reply , I just realized I missed responding to your 
comment on this patch.


There is no functional "problem" here.
===================================================================
The qmp_ufs_power_on() function acts as a wrapper, solely invoking 
qmp_ufs_com_init(). Additionally, the code within qmp_ufs_com_init() 
does not correspond well with its name.

Therefore, to enhance the readability and eliminate unnecessary function 
call inline qmp_ufs_com_init() into qmp_ufs_power_on().

There is no change to the functionality.
==================================================================


I agree with you that there isn't a significant issue here. If you 
insist, I'm okay with skipping this patch. Let me know your thoughts.


Regards,
Nitin


> 
>>
>> Thanks,
>> Nitin
>>
>>>> Regards,
>>>> Nitin
>>>>
>>>>
>>>>
>>>>>
>>>>>>
>>>>>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>>>> ---
>>>>>>     drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 44 ++++++++++---------------
>>>>>>     1 file changed, 18 insertions(+), 26 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>>>> index 12dad28cc1bd..2cc819089d71 100644
>>>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>>>> @@ -1757,31 +1757,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>>>>>>        qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
>>>>>>     }
>>>>>>
>>>>>> -static int qmp_ufs_com_init(struct qmp_ufs *qmp)
>>>>>> -{
>>>>>> -    const struct qmp_phy_cfg *cfg = qmp->cfg;
>>>>>> -    void __iomem *pcs = qmp->pcs;
>>>>>> -    int ret;
>>>>>> -
>>>>>> -    ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
>>>>>> -    if (ret) {
>>>>>> -            dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
>>>>>> -            return ret;
>>>>>> -    }
>>>>>> -
>>>>>> -    ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
>>>>>> -    if (ret)
>>>>>> -            goto err_disable_regulators;
>>>>>> -
>>>>>> -    qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
>>>>>> -
>>>>>> -    return 0;
>>>>>> -
>>>>>> -err_disable_regulators:
>>>>>> -    regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>>>>>> -
>>>>>> -    return ret;
>>>>>> -}
>>>>>>
>>>>>>     static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>>>>>>     {
>>>>>> @@ -1799,10 +1774,27 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>>>>>>     static int qmp_ufs_power_on(struct phy *phy)
>>>>>>     {
>>>>>>        struct qmp_ufs *qmp = phy_get_drvdata(phy);
>>>>>> +    const struct qmp_phy_cfg *cfg = qmp->cfg;
>>>>>> +    void __iomem *pcs = qmp->pcs;
>>>>>>        int ret;
>>>>>> +
>>>>>>        dev_vdbg(qmp->dev, "Initializing QMP phy\n");
>>>>>>
>>>>>> -    ret = qmp_ufs_com_init(qmp);
>>>>>> +    ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
>>>>>> +    if (ret) {
>>>>>> +            dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
>>>>>> +            return ret;
>>>>>> +    }
>>>>>> +
>>>>>> +    ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
>>>>>> +    if (ret)
>>>>>> +            goto err_disable_regulators;
>>>>>> +
>>>>>> +    qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
>>>>>> +    return 0;
>>>>>> +
>>>>>> +err_disable_regulators:
>>>>>> +    regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>>>>>>        return ret;
>>>>>>     }
>>>>>>
>>>>>> --
>>>>>> 2.48.1
>>>>>>
>>>>>
>>>>
>>>
>>>
>>
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
