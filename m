Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26F32C10DC1
	for <linux-phy@archiver.kernel.org>; Tue, 28 Nov 2023 10:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvXm+94zlh0pQ7fhpjurdJeLriq7YzT23azbtr9IULY=; b=n9fsfNFDHgRSqZ
	ZQw4guG7wwi9rNYuwjRTEbc1U6biOT/miea4e/Tc09si1angYGG/maWDtJxrIw7hCYMAzgH2Aaso+
	KiSdPLRVDFTZ7p26Un51ZJ0J7u6kY198cnE6E+H3rG5lhFyx1UIyMmBCSvcuyI3W6EjAQD4bWqzZ+
	WmS1igAIGqpKUGw1m+ns7v5oEa2aonZTfiMuJYNxu/FZAifg5Oa/GDbqwor9kckE6+vVpQFFwjqSh
	1DMfOQqfI1UoX+ONObMEX8X8BVlO2RLrFsxi+7tA6ck3mWkFH88ef1cfNDJOF1tIE9uAGiUb2SKRB
	ha1Cwg6ONToW7LuVpBwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ux5-004oMl-2m;
	Tue, 28 Nov 2023 10:04:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ux3-004oMS-32
	for linux-phy@lists.infradead.org;
	Tue, 28 Nov 2023 10:04:23 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AS9CPVK030785;
	Tue, 28 Nov 2023 10:04:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=vpTPxQ+fdoF6wnOYXP6scd3ZnbO2OTplcLMU91k9FQU=;
 b=YpUkbCE7GYXiSeRSEKzhX2LjR+WXvN7VczVySWwSJdU3V6YPUxB8LuAhzkgNDH0d8QwH
 Yo3dWhG8hDbDUKcZusTly7QAtUew4q25x4bCQZwaJT5lyLBhfHwpTfeyyHFSYRmmz8mG
 sTaa3IYcKpS0ZxN+aJdNM9WSUW8ZkCCogS/UEPhgHQuHPGqTp6JV/NUFlAWgMZHbm3gC
 vsPm8hWSO8RNOUuLVEThzbZyuB/SFHT5y+zhJlIMuLN0lR1hbAs/oS4fVWOd1xiiiXnB
 dBdM+SV6iu2zQ7fnf40i0HOQIH/a6pG+s8wbgCHt4CqhOJB3hrQi9YO+eUOJdK59Cbwj +w== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3undc583hw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Nov 2023 10:04:16 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3ASA3t15024268
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Nov 2023 10:03:55 GMT
Received: from [10.253.11.37] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 28 Nov
 2023 02:03:51 -0800
Message-ID: <4038b408-838d-4804-8866-cc8471749daa@quicinc.com>
Date: Tue, 28 Nov 2023 18:03:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 09/10] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed
 Gear 5 support for SM8550
Content-Language: en-US
To: <neil.armstrong@linaro.org>, <bvanassche@acm.org>, <mani@kernel.org>,
        <adrian.hunter@intel.com>, <beanhuo@micron.com>, <avri.altman@wdc.com>,
        <junwoo80.lee@samsung.com>, <martin.petersen@oracle.com>
CC: <linux-scsi@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        Andy Gross
	<agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay
 Abraham I <kishon@kernel.org>,
        "open list:GENERIC PHY FRAMEWORK"
	<linux-phy@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
References: <1700729190-17268-1-git-send-email-quic_cang@quicinc.com>
 <1700729190-17268-10-git-send-email-quic_cang@quicinc.com>
 <0d8fe915-4d53-414b-b145-231fe913474d@linaro.org>
From: Can Guo <quic_cang@quicinc.com>
In-Reply-To: <0d8fe915-4d53-414b-b145-231fe913474d@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: v4UaJZUiA_8JVfm66l1wLIT-EEmzcPj7
X-Proofpoint-ORIG-GUID: v4UaJZUiA_8JVfm66l1wLIT-EEmzcPj7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-28_09,2023-11-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 spamscore=0
 priorityscore=1501 mlxlogscore=999 mlxscore=0 suspectscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311060000
 definitions=main-2311280079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_020421_986048_59F5D7B6 
X-CRM114-Status: GOOD (  17.79  )
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

Hi Neil,

On 11/28/2023 5:59 PM, neil.armstrong@linaro.org wrote:
> Hi,
> 
> On 23/11/2023 09:46, Can Guo wrote:
>> On SM8550, two sets of UFS PHY settings are provided, one set is to 
>> support
>> HS-G5, another set is to support HS-G4 and lower gears. The two sets 
>> of PHY
>> settings are programming different values to different registers, mixing
>> the two sets and/or overwriting one set with another set is definitely 
>> not
>> blessed by UFS PHY designers.
>>
>> To add HS-G5 support for SM8550, split the two sets of PHY settings into
>> their dedicated overlay tables, only the common parts of the two sets of
>> PHY settings are left in the .tbls.
>>
>> Consider we are going to add even higher gear support in future, to avoid
>> adding more tables with different names, rename the .tbls_hs_g4 and 
>> make it
>> an array, a size of 2 is enough as of now.
>>
>> In this case, .tbls alone is not a complete set of PHY settings, so 
>> either
>> tbls_hs_overlay[0] or tbls_hs_overlay[1] must be applied on top of the
>> .tbls to become a complete set of PHY settings.
>>
>> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> 
> Since Vinod has already merged SM8650 UFS PHY support, I'm afraid this
> serie will break UFS if the SM8650 UFS tables aren't updated aswell.
> 
> Could you confirm if this will be the case ?

Because this change modifies data struct, it would be caught during 
compiliation stage even if this change applies cleanly, hence it won't 
break UFS.

Thanks,
Can Guo.

> 
> Thanks,
> Neil
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
