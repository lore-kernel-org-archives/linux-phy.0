Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D7D0C4167B
	for <linux-phy@archiver.kernel.org>; Tue, 28 Nov 2023 10:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgz/rWKtGiHgIFkXW3faZXnxeXH6aqcga8/AqSCpJP0=; b=ASpI/CPddPrkrO
	1nT2cqOXfcHSerZ8LZJc2jteEqCIomB2A7W/ounemvrSOwdJ/afGT5Uyv9fJZ29HAv6f8AdPtJuml
	ItCDXJmDuEyU5iy04i8rNDc4AxZBkhnGhi+q5K1nnTg2O9GzZHx08ogeMewLWhutQ/Ri1uBRZVRs+
	mJvOJqHqR5iwMQ2FJoO3zphlOBJ0BXYAL+7IIaZ2N/VjS3IgNcXURl3G6D4eREiwWdyOXj73CAQAQ
	oOpcvY+gj+HUNJDw9BzlV9tpeEvc+2ZDl1V9FVCYIsWqwWnjW6ZhN3kW0RWQwh10xdu6D+Tk1JqVL
	Ll2AkjHMsuFyW0em4bHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7uti-004o1r-1L;
	Tue, 28 Nov 2023 10:00:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7txW-004cup-0h
	for linux-phy@bombadil.infradead.org;
	Tue, 28 Nov 2023 09:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=QNUfJP5CeHay+odZ5ulMZu+ozmExmA/WZe/PCTme/DY=; b=AlhhWR9Qe2zVhHIKVu1sDiMdEW
	XheQQOH8lVNYlLDCWUWrksGktz8MyvBjSi0zLSVSCDN0UvehIQXZNQX1m1JMgvQu2fUho1K4knI73
	oMsGNGywCljoJyux5bXspUJWTQSwzR8gCVsyDq5P9YGKqluZsVOe9G2jy7SUxP0BtWTRhaFScYRjV
	5cE69yv1BcWR2x/lyaX+FSAh+nUMArw/RiqsI7xWQsKVYOx8eng+BEV7UXOTgEAxiaksdSvil7T0l
	gnhhB3EuCM3Gv4c4nmOvgLjYVnoU8YxdhpHHNas7f1lYRtR3W/rUaj1GHJwmsVe+DigjWk6TuBxNy
	8KBfs/5A==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7txQ-00GYXV-2u
	for linux-phy@lists.infradead.org;
	Tue, 28 Nov 2023 09:00:44 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AS5S1cU001271;
	Tue, 28 Nov 2023 09:00:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=QNUfJP5CeHay+odZ5ulMZu+ozmExmA/WZe/PCTme/DY=;
 b=l7aFcmLdZI1heAuASu2Q5JmMVorhQXJC5ZuMAvcOm+a+UWqB7gzTyqKn6dd14ZGn0Cl+
 cr0TfZhRov6FB0+Z52IF5SufTeySWVBhIfQ8imRnw+7olCXcwxCuu2DNLaAbCXVT6dVt
 J6rNd6TVXjF2SvflFp0ns9jIFbAy++VnNrs3F2vippWXqxGjqTnICYYbeZUQq2wrbqQc
 ZkN0t9oW+gzlMBE9pwtDQ3hlwlaN56U2EMbP5wU8B9iyhOsXRR2Ht2XdbvKa9yOSc10g
 9+bzX7aWleytlrXB1Y0d2RDJipHkLqor5SX6ZM+Pg7ASKJPOJDFCdyP2qnbLURldsOTQ DA== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3un04bhpne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Nov 2023 09:00:15 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AS90EDZ029313
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Nov 2023 09:00:14 GMT
Received: from [10.253.11.37] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 28 Nov
 2023 01:00:11 -0800
Message-ID: <f989335d-5b63-4a2c-b778-5d315ed5874f@quicinc.com>
Date: Tue, 28 Nov 2023 17:00:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 09/10] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed
 Gear 5 support for SM8550
Content-Language: en-US
To: Manivannan Sadhasivam <mani@kernel.org>
CC: <bvanassche@acm.org>, <adrian.hunter@intel.com>, <beanhuo@micron.com>,
        <avri.altman@wdc.com>, <junwoo80.lee@samsung.com>,
        <martin.petersen@oracle.com>, <linux-scsi@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn
 Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
        open list
	<linux-kernel@vger.kernel.org>
References: <1700729190-17268-1-git-send-email-quic_cang@quicinc.com>
 <1700729190-17268-10-git-send-email-quic_cang@quicinc.com>
 <20231128064721.GJ3088@thinkpad>
From: Can Guo <quic_cang@quicinc.com>
In-Reply-To: <20231128064721.GJ3088@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 9FxvVzWu_21JcRrCVEpDnKKh4Bybp0IQ
X-Proofpoint-GUID: 9FxvVzWu_21JcRrCVEpDnKKh4Bybp0IQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-28_07,2023-11-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 malwarescore=0 mlxscore=0
 mlxlogscore=999 bulkscore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311280070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_090041_469334_7C6F8289 
X-CRM114-Status: GOOD (  27.83  )
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



On 11/28/2023 2:47 PM, Manivannan Sadhasivam wrote:
> On Thu, Nov 23, 2023 at 12:46:29AM -0800, Can Guo wrote:
>> On SM8550, two sets of UFS PHY settings are provided, one set is to support
>> HS-G5, another set is to support HS-G4 and lower gears. The two sets of PHY
>> settings are programming different values to different registers, mixing
>> the two sets and/or overwriting one set with another set is definitely not
>> blessed by UFS PHY designers.
>>
>> To add HS-G5 support for SM8550, split the two sets of PHY settings into
>> their dedicated overlay tables, only the common parts of the two sets of
>> PHY settings are left in the .tbls.
>>
>> Consider we are going to add even higher gear support in future, to avoid
>> adding more tables with different names, rename the .tbls_hs_g4 and make it
>> an array, a size of 2 is enough as of now.
>>
>> In this case, .tbls alone is not a complete set of PHY settings, so either
>> tbls_hs_overlay[0] or tbls_hs_overlay[1] must be applied on top of the
>> .tbls to become a complete set of PHY settings.
>>
> 
> Thanks for the update! This really helps in minimizing the changes for future
> gears.
> 
>> Signed-off-by: Can Guo <quic_cang@quicinc.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |   2 +
>>   drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |   2 +
>>   .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |   9 ++
>>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 174 ++++++++++++++++++---
>>   4 files changed, 166 insertions(+), 21 deletions(-)
>>
>>   
> 
> [...]
> 
>> -static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg *cfg)
>> +static bool qmp_ufs_match_gear_overlay(struct qmp_ufs *qmp, const struct qmp_phy_cfg *cfg, int *i)
>> +{
>> +	u32 max_gear, floor_max_gear = cfg->max_supported_gear;
>> +	bool found = false;
>> +	int j;
>> +
>> +	for (j = 0; j < NUM_OVERLAY; j ++) {
>> +		max_gear = cfg->tbls_hs_overlay[j].max_gear;
>> +
>> +		if (max_gear == 0)
> 
> Is this condition possible for hs_overlay tables?

Yes, now there are 2 overlays for SM8550, but only one overlay for the 
rest targets. For those who has only one overlay, this check fits them.

> 
>> +			continue;
>> +
>> +		/* Direct matching, bail */
>> +		if (qmp->submode == max_gear) {
>> +			*i = j;
>> +			return true;
>> +		}
>> +
>> +		/* If no direct matching, the lowest gear is the best matching */
>> +		if (max_gear < floor_max_gear) {
> 
> Can you start the loop from max? If looks odd to set the matching params in the
> first iteration itself and then checking the next one.

OK, will start from j = NUM_VERLAY - 1; in next version. When I wrote 
the code, I was not expecting the max is always in the last overlay, 
they can come in any orders.

> 
>> +			*i = j;
>> +			found = true;
>> +			floor_max_gear = max_gear;
>> +		}
>> +	}
>> +
>> +	return found;
>> +}
>> +
>> +static int qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg *cfg)
>>   {
>> +	bool apply_overlay;
>> +	int i;
>> +
>> +	if (qmp->submode > cfg->max_supported_gear || qmp->submode == 0) {
>> +		dev_err(qmp->dev, "Invalid PHY submode %u\n", qmp->submode);
>> +		return -EINVAL;
>> +	}
> 
> This check should be moved to qmp_ufs_set_mode().

OK.

Thanks,
Can Guo.

> 
> Rest LGTM.
> 
> - Mani
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
