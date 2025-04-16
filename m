Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80367C369BD
	for <linux-phy@archiver.kernel.org>; Wed, 16 Apr 2025 12:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArDJudgraO2pI6k9wcRUu8KNiaXQSHrR7jsrGu/oHkg=; b=MXDLJSVHeloN9h
	UsutFjxioMbfwGBQT6Cg64z24Xu4s4Yr3ivtaYjxSn6hcZaEatf52m77XUA/ebCVLZYIH381uH8BI
	fSrnhhT5k9Jv+DB3lj5+aWl6ziZ7xZi0L9BvTAXothNNyujEqVrAyt0AFdCUoHSbrNGcBrXvH0CGk
	1tMvfiKf2eiojOee79jgjkRmZXNLW0OXb0mEmws5HINWarhBnpeQ5q5k8xO+HHLvg0gDFukpAO12d
	JxQzpf+izpx+f+wa2l9+q3LR6q0HBo/RaXPcC4RLA9WrIGZG6/YCVl05UqnO3Sg/cqsfWvCyJJuHj
	7tuzcM3fFK7j3m1NdYjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51ws-00000009WhY-0Vc9;
	Wed, 16 Apr 2025 12:33:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51rC-00000009VZ3-0VSG
	for linux-phy@lists.infradead.org;
	Wed, 16 Apr 2025 12:27:11 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mDWb020542;
	Wed, 16 Apr 2025 12:26:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IswbPGGAP13igDj4nUq3J/kuUfd/m5Ej3KjQNHq8od4=; b=b9cfPWqjX1XKpoPg
	kPoUli2LAAhrjtwAo0V7+4+k9cd/ir+khsqSP4dTm6HK/iMDQv5hJsPjtpIa3fwy
	vTcUEIU/oMF/uSP5vZR39NbYsZbD8OQPXIALW2bI4DVGC+nur8uzx9QFn4GYdPTI
	Do25HCgfY/Io/mz9jslE7JDnLJ3gAFBqV+0TFE7Nn4lgCiQWHv4Zhm9wDJocK1ah
	z8aO+7aQVQVWTkQpOA3Ppuf9tLJdvGRQgAWAlw2rYDTHDtk9JT0FPvPIPyCQ3H7/
	7/r78H2wXMFDFa3MGQWvTvOUcuOxu5aGtxbltfFLH9dfaQlXowEPEpZukywexPjH
	TRBxlg==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wkfue-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 16 Apr 2025 12:26:52 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53GCQpdw000371
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 16 Apr 2025 12:26:51 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 16 Apr
 2025 05:26:47 -0700
Message-ID: <1a623099-40bb-4884-8d93-132138a4150b@quicinc.com>
Date: Wed, 16 Apr 2025 17:56:44 +0530
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
 <2820908b-4548-4e0a-94b2-6065cb5ff1f3@quicinc.com>
 <c2ec6b7c-421d-43c3-8c0a-de4f7bdd867c@oss.qualcomm.com>
 <a24ff510-2afd-4aa7-a026-199fb6d87287@quicinc.com>
 <CAO9ioeUDzYLMvqmsOQ-VfgLQLavHqn=QVYxyHzetjSfmhjKFjw@mail.gmail.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <CAO9ioeUDzYLMvqmsOQ-VfgLQLavHqn=QVYxyHzetjSfmhjKFjw@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67ffa20d cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=bthNQ_mdbZiY202X5xgA:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: uf2_nzWwdmzDjmWmCrk70h3bkkY1PG-C
X-Proofpoint-GUID: uf2_nzWwdmzDjmWmCrk70h3bkkY1PG-C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_04,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_052710_349902_2122CAD1 
X-CRM114-Status: GOOD (  22.41  )
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



On 4/16/2025 5:43 PM, Dmitry Baryshkov wrote:
> On Wed, 16 Apr 2025 at 12:08, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>>
>>
>>
>> On 4/15/2025 2:59 PM, Dmitry Baryshkov wrote:
>>> On 14/04/2025 23:34, Nitin Rawat wrote:
>>>>
>>>>
>>>> On 4/11/2025 4:38 PM, Dmitry Baryshkov wrote:
>>>>> On Fri, 11 Apr 2025 at 13:50, Nitin Rawat <quic_nitirawa@quicinc.com>
>>>>> wrote:
>>>>>>
>>>>>>
>>>>>>
>>>>>> On 4/11/2025 1:38 AM, Dmitry Baryshkov wrote:
>>>>>>> On Thu, Apr 10, 2025 at 02:30:57PM +0530, Nitin Rawat wrote:
>>>>>>>> Refactor the UFS PHY reset handling to parse the reset logic only
>>>>>>>> once
>>>>>>>> during probe, instead of every resume.
>>>>>>>>
>>>>>>>> Move the UFS PHY reset parsing logic from qmp_phy_power_on to
>>>>>>>> qmp_ufs_probe to avoid unnecessary parsing during resume.
>>>>>>>
>>>>>>> How did you solve the circular dependency issue being noted below?
>>>>>>
>>>>>> Hi Dmitry,
>>>>>> As part of my patch, I moved the parsing logic from qmp_phy_power_on to
>>>>>> qmp_ufs_probe to avoid unnecessary parsing during resume. I'm uncertain
>>>>>> about the circular dependency issue and whether if it still exists.
>>>>>
>>>>> It surely does. The reset controller is registered in the beginning of
>>>>> ufs_qcom_init() and the PHY is acquired only a few lines below. It
>>>>> creates a very small window for PHY driver to probe.
>>>>> Which means, NAK, this patch doesn't look acceptable.
>>>>
>>>> Hi Dmitry,
>>>>
>>>> Thanks for pointing this out. I agree that it leaves very little time
>>>> for the PHY to probe, which may cause issues with targets where
>>>> no_pcs_sw_reset is set to true.
>>>>
>>>> As an experiment, I kept no_pcs_sw_reset set to true for the SM8750,
>>>> and it caused bootup probe issues in some of the iterations I ran.
>>>>
>>>> To address this, I propose updating the patch to move the
>>>> qmp_ufs_get_phy_reset call to phy_calibrate, just before the
>>>> reset_control_assert call.
>>>
>>> Will it cause an issue if we move it to phy_init() instead of
>>> phy_calibrate()?
>>
>> Hi Dmitry,
>>
>> Thanks for suggestion.
>> Phy_init is invoked before phy_set_mode_ext and ufs_qcom_phy_power_on,
>> whereas calibrate is called after ufs_qcom_phy_power_on. Keeping the UFS
>> PHY reset in phy_calibrate introduces relatively more delay, providing
>> more buffer time for the PHY driver probe, ensuring the UFS PHY reset is
>> handled correctly the first time.
> 
> We are requesting the PHY anyway, so the PHY driver should have probed
> well before phy_init() call. I don't get this comment.
> 
>>
>> Moving the calibration to phy_init shouldn't cause any issues. However,
>> since we currently don't have an initialization operations registered
>> for init, we would need to add a new PHY initialization ops if we decide
>> to move it to phy_init.
> 
> Yes. I don't see it as a problem. Is there any kind of an issue there?

No issues. In my next patchset, I would add a new init ops registered 
for qcom phy and move get ufs phy reset handler to it.

Regards,
Nitin

> 
>>
>> Please let me know if this looks fine to you, or if you have any
>> suggestions. I am open to your suggestions.
> 
> phy_init() callback
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
