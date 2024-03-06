Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADD36C5475B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 16:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+ZYuec70yP7Gsizrfns7HBfzP8phwIFdr2Jm4Ii3u4=; b=RVG2GozgUdeFHq
	fTF2B9szVTfGN9L7TzhFfSpQUfXq0CH4rT4yfIJwjQyF9HDSzh/MKpU6NSjhbxZ6TIuN+LyFew7gD
	8lu1dli6KdPGBkQGFT2XYIBoO7m6IFops97vU7Tz5dd9f5xvaE3SnFU1q096e67OVF2C4u9NzCARj
	zrs8G+qjRjWhbr/PkKTinyi5CqyvSh3lEPVAGoDQXaFdKS0RTODcwLQA9cQONlW1viYnvhU1Ezrl7
	SoyxrmVi+06kMvw8lZGezp9oFgat52T/AbDR1HwJOOHl1PiWPy4vFw7fD+k1u3l/hxCtlcHBzrw/1
	si45hQgmpvJ0Co/6S8Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhu1g-00000000z1g-1XuE;
	Wed, 06 Mar 2024 16:21:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhu1d-00000000z1D-3OxP
	for linux-phy@lists.infradead.org;
	Wed, 06 Mar 2024 16:21:51 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 426E51Pa018824;
	Wed, 6 Mar 2024 16:21:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=QWFLfWj16qFeY/nCYrLyMJLG6BpWmGjJ0lQF7qVji+Y=; b=Is
	kWZ51L6Ycw8N3a5FFvsMRf+e88D/QFmIHwVNX4wTSeoWILWgwZZPOGV0JL8zPcdp
	bh+hUR6b/Xxl5Cpr5jv5acxnRQL+w3w75k8XH/cRh4c0zr6WfZVqH9rqgWbWV7iP
	gBLMAuIv7X8p3ZS3u/IAA3L6D2hrI+TP3b6JIj+KOWegmHu3bGyB7frIWS78rBGO
	S+ykzxJgfvfVlpqty8OKBhlGI2yrtdOeXqaOQQfiPUa1bYFL3AMjKxoo3Q1KMqIK
	Y//Itu1zxAVSdbbEH1kBTr2hrFq75DEHoLS5qO+E1vv8f2F0So4KgxhI0VuwRyzL
	jBvEAHu3vxjaShpr3y/g==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wpsxhgbf7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Mar 2024 16:21:41 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 426GLeJ9030403
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Mar 2024 16:21:40 GMT
Received: from [10.216.51.173] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 6 Mar
 2024 08:21:34 -0800
Message-ID: <b3d925b8-62b5-4745-8e4b-d94a5b23346a@quicinc.com>
Date: Wed, 6 Mar 2024 21:51:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 2/3] USB: dwc3: qcom: Add support for firmware managed
 resources
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>
CC: <konrad.dybcio@linaro.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <robh@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
        <quic_wcheng@quicinc.com>, <Thinh.Nguyen@synopsys.com>,
        <p.zabel@pengutronix.de>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <quic_psodagud@quicinc.com>, <quic_nkela@quicinc.com>,
        <manivannan.sadhasivam@linaro.org>, <ulf.hansson@linaro.org>,
        <sudeep.holla@arm.com>, <quic_shazhuss@quicinc.com>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-3-git-send-email-quic_sriramd@quicinc.com>
 <ltjrdqxvupzjdqa22fvpzndeh7pc7zfmi5ybqxu2izjnnxjon7@jojqkltzukvv>
From: Sriram Dash <quic_sriramd@quicinc.com>
In-Reply-To: <ltjrdqxvupzjdqa22fvpzndeh7pc7zfmi5ybqxu2izjnnxjon7@jojqkltzukvv>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: LJ5kl66O_6t4gibEM_oVH9GJdafvjZ0R
X-Proofpoint-ORIG-GUID: LJ5kl66O_6t4gibEM_oVH9GJdafvjZ0R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-06_10,2024-03-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 spamscore=0 impostorscore=0
 mlxlogscore=999 priorityscore=1501 malwarescore=0 clxscore=1015 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403060131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_082150_116245_45EEDF67 
X-CRM114-Status: GOOD (  31.35  )
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

On 3/6/2024 12:52 AM, Bjorn Andersson wrote:
> On Tue, Mar 05, 2024 at 10:27:37PM +0530, Sriram Dash wrote:
>> Some target systems allow multiple resources to be managed by firmware.
>> On these targets, tasks related to clocks, regulators, resets, and
>> interconnects can be delegated to the firmware, while the remaining
>> responsibilities are handled by Linux.
>>
>> The driver is responsible for managing multiple power domains and
>> linking them to consumers as needed. Incase there is only single
>> power domain, it is considered to be a standard GDSC hooked on to
>> the qcom dt node which is read and assigned to device structure
>> (by genpd framework) before the driver probe even begins.
>>
>> This differentiation logic allows the driver to determine whether
>> device resources are managed by Linux or firmware, ensuring
>> backward compatibility.
>>
>> Furthermore, minor cleanup is performed for the private data of
> 
> No "futhermore"s please, separate matters should be proposed as separate
> patches. Perhaps these can be sent separately and merged immediately?
> 

Thanks Bjorn.
Will take this separately.

>> the SNPS Femto PHY. However, ACPI handling is omitted due to the
>> absence of clients on the ACPI side.
>>
>> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 290 ++++++++++++++++++++------
>>   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 213 +++++++++++++++----
>>   drivers/usb/dwc3/dwc3-qcom.c                  | 259 +++++++++++++++++------
> 
> You're making independent changes across three different drivers across
> two different subsystems, with different maintainers, this is not
> acceptable as a single patch.
> 

Sure. will split the patches in next version.

>>   3 files changed, 594 insertions(+), 168 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
>> index 8525393..1ac1b50 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
>> @@ -21,6 +21,9 @@
>>   
>>   #include "phy-qcom-qmp-common.h"
>>   
>> +#include <linux/pm_opp.h>
>> +#include <linux/pm_domain.h>
> 
> Why are these includes alone here? Integrate your changes with the
> driver properly.
> 

Sure. will take care in the next version.

>> +
>>   #include "phy-qcom-qmp.h"
>>   #include "phy-qcom-qmp-pcs-misc-v3.h"
>>   #include "phy-qcom-qmp-pcs-misc-v4.h"
>> @@ -1212,6 +1215,9 @@ struct qmp_phy_cfg {
>>   	unsigned int pcs_usb_offset;
>>   };
>>   
>> +#define DOMAIN_GENPD_TRANSFER			0
>> +#define DOMAIN_GENPD_CORE			1
> 
> Does this really represent the hardware? What hardware constructs does
> "transfer" and "core" maps to?
> 

The idea was to club the resources in 2 buckets.
Which are essential for the IP core to be active
(ex : regulators, gdsc ) form the part or genpd core
and the resources which are controlled from Clock cluster
in another bucket, used for transfers.


>> +
>>   struct qmp_usb {
>>   	struct device *dev;
>>   
>> @@ -1236,6 +1242,19 @@ struct qmp_usb {
>>   	struct phy *phy;
>>   
>>   	struct clk_fixed_rate pipe_clk_fixed;
>> +
>> +	struct dev_pm_domain_list *pd_list;
>> +	struct device *genpd_core;
>> +	struct device *genpd_transfer;
>> +
>> +	bool fw_managed;
>> +	/* separate resource management for fw_managed vs locally managed devices */
>> +	struct qmp_usb_device_ops {
>> +		int (*bus_resume_resource)(struct qmp_usb *qmp);
> 
> Not only does these function pointers make the drivers much harder to
> follow, your naming of these seems chosen to maximize the confusion.
> 
> In your managed case this doesn't seem to relate to any "bus", in the
> "local" case, this doesn't relate to a "bus", and these callbacks are
> decoupled from the actual runtime resume and suspend cycle of the QMP
> device itself...
> 

Understood. Will make the decision to use fw managed
method or local management of resources based on the
fw_managed property rather than fixing it to function
pointer.

>> +		int (*runtime_resume_resource)(struct qmp_usb *qmp);
>> +		int (*bus_suspend_resource)(struct qmp_usb *qmp);
>> +		int (*runtime_suspend_resource)(struct qmp_usb *qmp);
>> +	} qmp_usb_device_ops;
>>   };
>>   
>>   static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
>> @@ -1598,6 +1617,41 @@ static const struct qmp_phy_cfg x1e80100_usb3_uniphy_cfg = {
>>   	.regs			= qmp_v7_usb3phy_regs_layout,
>>   };
>>   
>> +static void qmp_fw_managed_domain_remove(struct qmp_usb *qmp)
>> +{
>> +	dev_pm_domain_detach_list(qmp->pd_list);
>> +}
>> +
>> +static int qmp_fw_managed_domain_init(struct qmp_usb *qmp)
>> +{
>> +	struct device *dev = qmp->dev;
>> +	struct dev_pm_domain_attach_data pd_data = {
>> +		.pd_flags	= PD_FLAG_NO_DEV_LINK,
> 
> Iiuc, you attach the two power-domains with NO_DEV_LINK, such that the
> pm runtime state of the device itself won't reflect on the power
> domains, and then you hand-code all the involved logic yourself?
> > Why can't you integrate with the device and use its runtime state?
> Please clearly explain why you're doing it like this in your commit
> messages.
> 

OK.
Got suggestion from Dmitry to either pass empty list or
dev_pm_domain_attach twice. I will use the later.

> Regards,
> Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
