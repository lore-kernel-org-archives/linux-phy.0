Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D136C48BC3
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 11:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puVTQDgQwnpWbzA0lwCxwej6cxZt3/rRYowAHO/5S8A=; b=oLZrqpFWlWUaMy
	sZ9DIxz3egJZ0tpA0G0G0NwN6Ya6YRzEJHljbLwhPzT8+Jc/+3DpbQMGWDQGW4AT9u2iO4moY/feG
	crWTu2F612l+nKIrTn0t1U1h0YwUCy2n896Nb9DWbFRLNU3kQi6Y1oKnTxxQm7A2RPC3IFX8w9Dw3
	FxhzKw+qoDj3/SyQbJbQT53rj9OOUMMkYqXI5ApKrfwCLrqo8miwUoGUsFutJH2pVrHpiJW+OlWXC
	0+qIdJjIdu96uwbJx8mtfw3GjylByiZd3X2sS4kiClpadsTL8LqkPvqx/39IVMkxlevlXOdqTepCb
	2M6aioKzpQ8ljtrkggHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rckxd-00000000jkT-0b8O
	for linux-phy@archiver.kernel.org;
	Wed, 21 Feb 2024 11:40:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rckxa-00000000jj4-2XbD
	for linux-phy@lists.infradead.org;
	Wed, 21 Feb 2024 11:40:24 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41L8AB6D010696;
	Wed, 21 Feb 2024 11:40:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=55EJpJjN/7VQPyDIfbMUTZRT/+5KZL9krJsL+5YEq/s=; b=E/
	eZZMw31yXmpyBtXkDf6YPpYZF9nFNwRWXViSFQYjyZBSgwg6Ni3GDyUchinVC5nc
	F/GPackZq2AqwlLtF7QDnnR+3ZbMtrgs04IAEbO/oNAZSEZnwiS3AEoMNmRS+ik/
	Der8LrqNK/SxU1xv3XgkXWDJSS2DiRGfOuBdn69lCXXFtEkyR7jNXwy088V3kpNo
	emS9lEvRpGH72oPaWnHe6WfpKeeg2CnLZUPCI8KJh+Fke+06D1tDynQ4F0ZTLZgy
	0AbdUSg91QyE2x9BiuAxDO5npwLOgPz9vPsgOg0jrRjgYmsaQfkx9M7BR9qaV4D3
	x3VTN1BmBr4aZCdw1LbQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wdddg0ey0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Feb 2024 11:40:17 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 41LBeG3T021375
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Feb 2024 11:40:16 GMT
Received: from [10.216.53.46] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 21 Feb
 2024 03:40:12 -0800
Message-ID: <00bd50ed-bc7c-482f-b126-321d1ac9228d@quicinc.com>
Date: Wed, 21 Feb 2024 17:10:07 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-snps: Fixed order of enabling regulators
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_ppratap@quicinc.com>,
        <quic_jackp@quicinc.com>
References: <20240221103202.3628142-1-quic_kriskura@quicinc.com>
 <CAA8EJprMd5tr91gm99GyP1oefO_=tNQzxKA6hmB-xtBNVTbeeQ@mail.gmail.com>
Content-Language: en-US
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <CAA8EJprMd5tr91gm99GyP1oefO_=tNQzxKA6hmB-xtBNVTbeeQ@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: P90DIIVEW0y5-5QJQhHZwpZwmt94OTHk
X-Proofpoint-ORIG-GUID: P90DIIVEW0y5-5QJQhHZwpZwmt94OTHk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-20_06,2024-02-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=999
 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2402210090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_034022_700181_B89C4F93 
X-CRM114-Status: GOOD (  19.00  )
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



On 2/21/2024 4:26 PM, Dmitry Baryshkov wrote:
> On Wed, 21 Feb 2024 at 12:32, Krishna Kurapati > <quic_kriskura@quicinc.com> wrote:
[...]
>> ---
>>
>> Downstream kernels on QC targets use this sequence to power up
>> the phy and this has been tested extensively on multiple targets.
>> This change has been tested with upstream kernel on QCM6490-IDP
>> without EUD to ensure there is no loss or breakage of functionality.
>>
>>   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> index eb0b0f61d98e..e86d221b7397 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> @@ -79,7 +79,7 @@
>>   #define LS_FS_OUTPUT_IMPEDANCE_MASK            GENMASK(3, 0)
>>
>>   static const char * const qcom_snps_hsphy_vreg_names[] = {
>> -       "vdda-pll", "vdda33", "vdda18",
>> +       "vdda-pll", "vdda18", "vdda33",
> 
> NAK.
> The driver uses regulator_bulk_enable, which enables all three
> regulators simultaneously via async calls, thus your change doesn't
> have any effect.
> 
Hi Dmitry,

  Thanks for this information. I thought it was synchronous but you are 
right, I see in code they are async:

                 async_schedule_domain(regulator_bulk_enable_async,
                                       &consumers[i], &async_domain);

  I think separating them out and calling regulator_enable on each one 
might work out.

> Also note, that these regulators are frequently shared between
> different consumers. As such, even if you have tight control of
> regulator ordering in the driver, other drivers might enable
> corresponding regulators on their own, breaking the ordering.
> 

You are right. Let me check how the phy regulators are allocated in 
different femto phy targets.

Thanks for the review.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
