Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ACF0C54E90
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 22:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iglShXPnxsIJs0BDED59g73BXwjKOPFjGToIkYWF1NM=; b=Jm0870slKRXYIa
	PTN8m9xggP2aP+Zmsq5B9uZ3XYBfYCxexWm5AKvOdjKFqLxgsWtXBMq96SJRBPh+ZUuutIlOEX+Lg
	9RUX8OhlHZJOr/bU3U2AhCWciBXWN69ttaR12NaYNHXLLmDKT/mqydzYRSYXPKX08HskZ1zQjOY1F
	GSOO0vg45nVuhry2BPRg5wMuKtLGBkSHUs9zS0M0luQMrzpFALBIuXPPbi9tc5VNBm+1H5v6B8ziD
	+oIAd5WTr4J5FMkNTCg3ajp049A+orVJ4A8nfx/g3P5YA5ZoEMW+GGbGs9ZTa0Rhy1O4JPtR5/NXT
	2lM7xu6y16OPa/IxkiBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHrp7-0000000GunW-3aBW;
	Wed, 21 May 2025 22:22:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHrp5-0000000Gun7-1Vtp
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 22:22:04 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LI2OtK031724;
	Wed, 21 May 2025 22:21:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	POcXLIudDGVcz6rdm3O49J2/G55IJi0wf+rYtTutV1E=; b=RwmDeznQ4sPduLK/
	SVwv1AJDFndXkGloLCmpMJ//VS1Mi95FqlFbRgPqKGCzB65QOu2XJ262fyCVlqZS
	pseIZwpvFG24VIhEISQHaUecQqyEGwm0YPfcn32cujxgSna2RWZ38fIjaOiqZ4Fu
	K7nbn8Lyk+YIYBwv1u1cbbtCMfB107QNiTW2CLNPbu99blYzcbQXTh4ZOpXVw/fZ
	Rz190knd9B5sGVuy5V6/bUn/Mb6xBUeiOaNwOwMS+6Qx5NRqIV0ybRNHHsCThdOI
	vPH1+oiwAhwjrwhPJy59H3I+UTIyaHe75GcV2eHP06gNyZkEsKv29Bvcj5DWS383
	4zazCg==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s8c22wb7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 May 2025 22:21:40 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 54LMLdgh009813
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 May 2025 22:21:39 GMT
Received: from [10.216.45.12] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 21 May
 2025 15:21:33 -0700
Message-ID: <e04f35f7-f4b3-4269-8524-b6aaeb1ace0c@quicinc.com>
Date: Thu, 22 May 2025 03:51:29 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 11/11] scsi: ufs: qcom: Prevent calling phy_exit before
 phy_init
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
 <20250515162722.6933-12-quic_nitirawa@quicinc.com>
 <xxkv25y4m2lr6746fddzlxmgmgqazdqh2pjfzymuatkmrthsnw@6i52rpntjl34>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <xxkv25y4m2lr6746fddzlxmgmgqazdqh2pjfzymuatkmrthsnw@6i52rpntjl34>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDIyMiBTYWx0ZWRfX3QPt0jfG8roO
 9QAgJ1YvYP0ggtHPeilULKSwzM1pZHmLkq2bZXhkfeL2elsv9MZB0d7jHpdNLXYCIb2D6JUNj6C
 w+NpWuAvRXO+sHviEC99kVydIqFvBVhbyIs0PuhKxEG90DWJEHFVisV10s297fRmkGXVaEINS34
 JyTonX4pAzBK18JjfzfZjxCfIzSJh1b91BsBlBNMUzth1Kk5qJQi0FwX0OqrfuLpymsarli+kYT
 N20yuFr0dlF+VEKnhPB+j+UrQ/sx7N8VBrpO6wxx7R4BDr+Mhy3WA6WY1C9051OB/K4jEyTEBFq
 GK79dYTkt11crIxUFwXAzcWADJSQQ0KwwpucooKTTyQCL28h9MaXtLTztITgr4M2M51KeKTEB4p
 3d67NLsBrsNwkLYmsGfXyyYJfW6B0rbgnc1FLhPBYITFKKyjX4PigYn5RS8oiYWnQPhUWV6U
X-Authority-Analysis: v=2.4 cv=RIuzH5i+ c=1 sm=1 tr=0 ts=682e51f4 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=mrhtVqWoyDjAaArD0-sA:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: vn7evCruDhawtzabzytE2MzsdJMgj9DQ
X-Proofpoint-GUID: vn7evCruDhawtzabzytE2MzsdJMgj9DQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_07,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505210222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_152203_408676_B6B9E699 
X-CRM114-Status: GOOD (  15.37  )
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



On 5/21/2025 7:35 PM, Manivannan Sadhasivam wrote:
> On Thu, May 15, 2025 at 09:57:22PM +0530, Nitin Rawat wrote:
>> Prevent calling phy_exit before phy_init to avoid abnormal power
>> count and the following warning during boot up.
>>
>> [5.146763] phy phy-1d80000.phy.0: phy_power_on was called before phy_init
>>
>> Fixes: 7bac65687510 ("scsi: ufs: qcom: Power off the PHY if it was already powered on in ufs_qcom_power_up_sequence()")
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> You should move this fix to the start of the series so that it can be applied
> separately if needed and also to be backported cleanly.

sure , will move

> 
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>   drivers/ufs/host/ufs-qcom.c | 1 -
>>   1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
>> index 583db910efd4..bd7f65500db7 100644
>> --- a/drivers/ufs/host/ufs-qcom.c
>> +++ b/drivers/ufs/host/ufs-qcom.c
>> @@ -540,7 +540,6 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>>   
>>   	if (phy->power_count) {
>>   		ufs_qcom_phy_power_off(hba);
>> -		phy_exit(phy);
>>   	}
> 
> You don't need braces now.
will remove.
> 
> - Mani
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
