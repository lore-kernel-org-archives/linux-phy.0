Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A2B7C54E65
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 10:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRVBlAH3WCpvrErM0vMpUEmjEFrm77KvvT3XeMefNsc=; b=fC/xNoiN+1xEgu
	5AfhQDy5s+Xz3mu910tQ2U1xuxCTYYZBOaFNg+3OHHFaydIKZIHYF+gKe50BZW8osaeDpdsntw/Mn
	ZkmsIvSFVdYZ2dZ90TTGT1yhyAVIu/h7/1eHbLL4AoSDo2WF0Pyb4kWPJ0IiHl7oLy6Wqp/PzFn0e
	efZmi8HlHO/vt9wwdygqMJBI7P67f9SZVVU9+2rGAIkLzZLOxfJayjbG3Pw/m4luwDn1TrjiqY1jd
	qc3qidnX8lsdZYy504N7TjITFa1TgOsfUdH73ig70xnHeH7ltI3SauxH1Sh2tr8I+4zHXFzbCgYlK
	DdOrD0Yxa+2Y7Of/ivEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI390-00000000hJV-1MRz;
	Thu, 22 May 2025 10:27:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI38b-00000000h9n-3Oq6
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 10:26:59 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54M7Dgpi031676;
	Thu, 22 May 2025 10:26:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/o7YX+evW2GN6E32XpMY9VwoShfAa5vC1VTKim8kbAg=; b=j/sPI59VR8m9SpQU
	oLDGlmC36LS8Ci2kEJNr6ypD7Iw7z96Ja5TobfK0bs43BdR5akvCp1Q97HCh5Flt
	JhdtM8XWqRCMhzy+tr4T9Q60iOY0iVTP4YRKg99GJpu5qB4AocGCaOBeGOpXlFPz
	G8EvNyl+U9rfLgFRLRJwIl8Z+yhArn4xTasAOPhe/EhXaibunqgVr9aCSR1KLP0g
	94C8MxdeY29+C5xVPN/8XyPs7h5Hl23fO26aC4IGd+Syg7RjndXzvpesxZwN+orV
	0Xo0xJ9GR0JFDNPHe17Bplai3DHkOQW+kVtvVf3EU49spiKn1M+bTsnWmQ9rqPUh
	ogHD9A==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s8c24jfp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 May 2025 10:26:38 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 54MAQcpa017628
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 May 2025 10:26:38 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 22 May
 2025 03:26:33 -0700
Message-ID: <226fa4de-f3a7-4bf0-a960-263443af7de8@quicinc.com>
Date: Thu, 22 May 2025 15:56:30 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 10/11] scsi: ufs: qcom : Introduce phy_power_on/off
 wrapper function
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>,
        <James.Bottomley@hansenpartnership.com>, <martin.petersen@oracle.com>,
        <bvanassche@acm.org>, <andersson@kernel.org>,
        <neil.armstrong@linaro.org>, <dmitry.baryshkov@oss.qualcomm.com>,
        <konrad.dybcio@oss.qualcomm.com>, <quic_rdwivedi@quicinc.com>,
        <quic_cang@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-11-quic_nitirawa@quicinc.com>
 <k37lk3poz6kzrgnby4sikwmz6rg4ysxsticn3opcil4j3njylp@cvmgwiw6nwy5>
 <9092ed42-ef8b-42cc-a423-c5a486d3b998@quicinc.com>
 <zelvl7b5ov66lzbgay42ncdbkof3flv7g3gybqexth5hty6mvq@eemod4qy6gqs>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <zelvl7b5ov66lzbgay42ncdbkof3flv7g3gybqexth5hty6mvq@eemod4qy6gqs>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDEwNSBTYWx0ZWRfXxAc0lDBwNYpv
 /wSwUawIE3WdBtHKJfadnGg5NwLZM9ya7PqrdNcFSMIdeeODpgQO5chFEOaL8gn8awiLe6JeO23
 FuqqTS7/D+P7oMq83xuM+cxST2lQCOqHU49+WYPTg+ylaZOqHZFS7XInv+Reyt7qdfC811YYJWz
 DnVlVX+Pr9TUnb0Kmp4/fMx7Ie/jKl27/vD3nHDLl7PQnC5KXeMp3muULlY5oGqFKtx0dewdqc4
 44915J37BN792r2550s76jhzsUsOrdrUgCAbPazthOU8G3hR68MIfcaEQCCLZ1g7QwYS0bblVhW
 hdCZs4hnO1Hou5d4uVM8aFEHvK7yK3+gkLp8zS8BCwyJeU88jt4F39qnLaXV3LBWIBMU+jVpQi6
 z1vHJ8XO+DHjtCHDaJc+e5FaK45FbH8we3D1x1yvA/H97pSml+wMCXvM+7gQPLxhnBpm1pT2
X-Authority-Analysis: v=2.4 cv=RIuzH5i+ c=1 sm=1 tr=0 ts=682efbdf cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=YvcutQcU1dviTmGepvQA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: oXpZXqg-0jlmksyzSRFg-HDgntXfLOxB
X-Proofpoint-GUID: oXpZXqg-0jlmksyzSRFg-HDgntXfLOxB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_05,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_032657_889513_CF835AFB 
X-CRM114-Status: GOOD (  20.49  )
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



On 5/22/2025 3:01 PM, Manivannan Sadhasivam wrote:
> On Thu, May 22, 2025 at 03:48:29AM +0530, Nitin Rawat wrote:
>>
>>
>> On 5/21/2025 7:31 PM, Manivannan Sadhasivam wrote:
>>> On Thu, May 15, 2025 at 09:57:21PM +0530, Nitin Rawat wrote:
>>>
>>> Subject should mention ufs_qcom_phy_power_{on/off} as phy_power_{on/off} are
>>> generic APIs.
>>>
>>>> There can be scenarios where phy_power_on is called when PHY is
>>>> already on (phy_count=1). For instance, ufs_qcom_power_up_sequence
>>>> can be called multiple times from ufshcd_link_startup as part of
>>>> ufshcd_hba_enable call for each link startup retries(max retries =3),
>>>> causing the PHY reference count to increase and leading to inconsistent
>>>> phy behavior.
>>>>
>>>> Similarly, there can be scenarios where phy_power_on or phy_power_off
>>>> might be called directly from the UFS controller driver when the PHY
>>>> is already powered on or off respectiely, causing similar issues.
>>>>
>>>> To fix this, introduce ufs_qcom_phy_power_on and ufs_qcom_phy_power_off
>>>> wrappers for phy_power_on and phy_power_off. These wrappers will use an
>>>> is_phy_pwr_on flag to check if the PHY is already powered on or off,
>>>> avoiding redundant calls. Protect the is_phy_pwr_on flag with a mutex
>>>> to ensure safe usage and prevent race conditions.
>>>>
>>>
>>> This smells like the phy_power_{on/off} calls are not balanced and you are
>>> trying to workaround that in the UFS driver.
>>
>> Hi Mani,
>>
>> Yes, there can be scenarios that were not previously encountered because
>> phy_power_on and phy_power_off were only called during system suspend
>> (spm_lvl = 5). However, with phy_power_on now moved to
>> ufs_qcom_setup_clocks, there is a slightly more probability of phy_power_on
>> being called twice, i.e., phy_power_on being invoked when the PHY is already
>> on.
>>
>> For instance, if the PHY power is already on and the UFS driver calls
>> ufs_qcom_setup_clocks from an error handling context, phy_power_on could be
>> called again which may increase phy_count and can cause inconsistent phy
>> bheaviour . Therefore, we need to have a flag, is_phy_pwr_on, in the
>> controller driver, protected by a mutex, to indicate the state of
>> phy_power_on and phy_power_off.
>>
> 
> If phy_power_on() is called twice without phy_power_off(), there can be only 2
> possibilities:
> 
> 1. phy_power_off() is not balanced
> 2. phy_power_on() is called from a wrong place
> 
>> This approach is also present in Qualcomm downstream UFS driver and similiar
>> solution in mtk ufs driver to have flag in controller indictring phy power
>> state in their upstream UFS drivers.
>>
> 
> No, having this check in the host driver is clearly a workaround for a broken
> behavior. I do not want to carry this mess all along.
> 

Hi Mani,

I double checked the code again error handling scenarios which i mention 
is my earlier reply is actually under runtime suspend check so this 
issue won't occur there which means as of now we have no scenarios which 
exists as per our understanding where existing code will break w.r.t 
phy_on/_off , hence i can drop this patch from this series.

Regards,
Nitin


> - Mani
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
