Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24712D6DDD5
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 06:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLYLTq+YVZ88DcLe6kqlaO9WLCX/JKCXy80KdCCT29Q=; b=cwxkqeQKSOjAAp
	Y2w3MeQ2B/FNbefIDPsqKOkTI7n3/ZDzAolgdSUIBjlP536/aEpskcTkscaDyZuwnsVX2oOirZnMI
	OrXT7BLponyiZfhbJOoc+9Cji/RTfsg2wHL9wT+A8Gs4sYV5v8ks+84/kvyLDCjYNGuhm1+aU4ttU
	i9CzLEKB8qi5d7cDLTHNLBn5+cQJBjX+02jjppzl/cPfRXlHKjvttkoGHnXHPljak0Ag4mRHcBB2h
	qMt5gR3vz7E+fTmSrg9sk1dGmimni+zb3F9tt58oT677FtgOJxZ4v3OL+e+z3EyTitxDGTSbF0ZtN
	TKcPATfxwHZc/mg9E0Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBq2w-00000001p36-3dVG;
	Fri, 15 Nov 2024 06:43:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBq2u-00000001p1e-0Sno
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 06:43:09 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AEHHxGo023742;
	Fri, 15 Nov 2024 06:43:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wdCqxFgKYBBW+wSh2Dq7JpS+yUVwsYdQXDlP9OW1jYc=; b=EiGEL29yT7AbHxRf
	iUodtjZ0d40Rs3KPoNEuOjyN1qptflhK6khqaDZAbnK+Y8Rpp38GKFnlAJ1L2/ca
	gQ8P0NuJf2lPbcGecOUuNyjaqkn4NdlYsDii18HeRabuaDMTMylhqpDaHJEEfSn8
	EEDL5WY2JM/jW4ZXsjSDzcq3Ms6x/hwBg1KMPQmosq/Q6IeRAT739OJtNawm2BbY
	r+5FBJeTrKMECNPJMrxbg1g8h2jAaU6IH4KCOVRNXcEj+IfulaWaTrvj6YuqvfE4
	arZJt17MKHafOGSqSGpNx+TpD/9zfC6PqHAKUu9rWCqTdIi/CFWjEo17HLdc4kIe
	El0oEA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42w66gwbw6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Nov 2024 06:43:01 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AF6h0xX014079
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Nov 2024 06:43:00 GMT
Received: from [10.233.17.145] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 14 Nov
 2024 22:42:50 -0800
Message-ID: <bb6ae010-5dbf-455c-a53c-6c0e688f0ebc@quicinc.com>
Date: Fri, 15 Nov 2024 14:42:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcs8300: enable pcie0 for QCS8300
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Ziyue Zhang
	<quic_ziyuzhan@quicinc.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <manivannan.sadhasivam@linaro.org>, <bhelgaas@google.com>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <quic_qianyu@quicinc.com>,
        <conor+dt@kernel.org>, <neil.armstrong@linaro.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <quic_shashim@quicinc.com>, <quic_kaushalk@quicinc.com>,
        <quic_tdas@quicinc.com>, <quic_aiquny@quicinc.com>,
        <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-5-quic_ziyuzhan@quicinc.com>
 <rg4isufmnhnbsiljm34rfdsn46gfpatbsiscynaqtsnykbhnm3@ovcaulkfj4nk>
 <26943ea3-109c-473d-818b-2a08dba859ab@oss.qualcomm.com>
 <288be342-952b-4210-afe7-6e194dfd54a9@quicinc.com>
 <cp2g6j43zlx2njou5qz5tmwsnnzahqtk2hsxkj2ftrzbcmy742@ysca5ica4mvr>
From: Tingwei Zhang <quic_tingweiz@quicinc.com>
In-Reply-To: <cp2g6j43zlx2njou5qz5tmwsnnzahqtk2hsxkj2ftrzbcmy742@ysca5ica4mvr>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: B-EQsEH5OUakbYjiFEDH5wuxrJBqyiqs
X-Proofpoint-ORIG-GUID: B-EQsEH5OUakbYjiFEDH5wuxrJBqyiqs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=923
 mlxscore=0 malwarescore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411150055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_224308_280760_FE9D72DD 
X-CRM114-Status: GOOD (  17.20  )
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

On 11/15/2024 2:26 PM, Dmitry Baryshkov wrote:
> On Fri, Nov 15, 2024 at 12:59:12PM +0800, Tingwei Zhang wrote:
>> On 11/14/2024 9:03 PM, Konrad Dybcio wrote:
>>> On 14.11.2024 1:10 PM, Dmitry Baryshkov wrote:
>>>> On Thu, Nov 14, 2024 at 05:54:08PM +0800, Ziyue Zhang wrote:
>>>>> Add configurations in devicetree for PCIe0, including registers, clocks,
>>>>> interrupts and phy setting sequence.
>>>>>
>>>>> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
>>>>> ---
>>>>>    arch/arm64/boot/dts/qcom/qcs8300-ride.dts |  44 +++++-
>>>>>    arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 176 ++++++++++++++++++++++
>>>>>    2 files changed, 219 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>>>>> index 7eed19a694c3..9d7c8555ed38 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>>>>> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>>>>> @@ -213,7 +213,7 @@ vreg_l9c: ldo9 {
>>>>>    &gcc {
>>>>
>>>> The patch doesn't seem to update the gcc node in qcs8300.dtsi. Is there
>>>> any reason to have the clocks property in the board data file?
>>>
>>> Definitely not. Ziyue, please move that change to the soc dtsi
>>
>> Gcc node is updated in board device tree due to sleep_clk is defined in
>> board device tree. Sleep_clk is from PMIC instead SoC so we were requested
>> to move sleep_clk to board device tree in previous review [1].
> 
> Note, the review doesn't talk about sleep_clk at all. The recent
> examples (sm8650, x1e80100, sa8775p) still pull the clocks into the SoC
> dtsi, but without the freq.
> 
It's begining of the discussion of the PMIC clock for SoC. Sleep clock 
specific discussion is here [2].
[2]https://lore.kernel.org/all/be8b573c-db4e-4eec-a9a6-3cd83d04156d@kernel.org/
>>
>> [1]https://lore.kernel.org/all/10914199-1e86-4a2e-aec8-2a48cc49ef14@kernel.org/
>>>
>>> Konrad
>>
>>
>> -- 
>> Thanks,
>> Tingwei
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
> 


-- 
Thanks,
Tingwei

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
