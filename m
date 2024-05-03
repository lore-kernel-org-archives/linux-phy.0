Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B388C4345F
	for <linux-phy@archiver.kernel.org>; Fri,  3 May 2024 05:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAbwDIV18pm25B8w6BvfcLTqsqqbIEUEGLpDgO5z9VI=; b=4d/ClNURG5LD5f
	bu+Nui+wvfUPnlU0f9rD0xvOEj0FOR5/JsRoHxUWK41hQKYKyZP2yGu7UEPux1fA9qzGft2tslKRN
	EjWmfBeuR/HxPQxXnta6wamJSjjCSL3nT3X8cais2Gkc7MxS1qZvyxj6ptHSxA2AhnDp9fOXfcw/D
	sjYn88jIUjxH0qyVZHH00FgOtjA3RVUhkoBZxGUvzgdpDZFXGSBvS00gguQ3H6B/b+ZcoiWfkT4A0
	FKuFgEKNJG052RD29txARa1WiOW5NFfFcqczO+SWXjLZSeZ5ttczGHUr7DZhA5KEodlrBhVJY0FHM
	vjjYjSEndsc2eTm+exbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2lOw-0000000F8eu-3M3U;
	Fri, 03 May 2024 05:24:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2lOs-0000000F8eK-2EnO
	for linux-phy@lists.infradead.org;
	Fri, 03 May 2024 05:24:04 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4434hH9p004580;
	Fri, 3 May 2024 05:23:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=I6xdoCHOHKehKUSxYk5VnCRqgQe/24QjHGkXEwwcr0c=; b=Ay
	iS+Pki+B9YbmaWEvLQ3w4G/LbP6p6RyJSoxk7X2esMgZuJcqeQs0KI1HLG3tDAZy
	oP9maPQrqWk0RE3pgWWJF2Tidnuuh25Ts6OZLcta+7P4Nzf73Aife6GmAW26NOZm
	5MIJcnuNi73QnRvkrEpqUesCviMi8MnreY9HfIs9sVAFYrMBw39KkVIys9GTD4kK
	ttzWGmSPOWb0M0Dbhbirv3EGs1+WcYXLrbbDER8bjECmBMh50dX+RVND7EfAUnNT
	zyNB8MSbW6SP4fV6ddWqpkeQ7LJjRB5MNfginueQookgKtMUpCohFEtxTvp4nanN
	25kMSZ7+pCVPZbYbauiw==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xv7pxj6y5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 May 2024 05:23:57 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 4435Nuh2020700
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 3 May 2024 05:23:56 GMT
Received: from [10.217.219.221] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 2 May 2024
 22:23:53 -0700
Message-ID: <2f3dd278-02b8-4939-8b75-55c342adcddf@quicinc.com>
Date: Fri, 3 May 2024 10:53:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-snps-femto-v2: Add load and voltage setting for
 LDO's used
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay
 Abraham I <kishon@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20240502123312.31083-1-quic_ugoswami@quicinc.com>
 <CAA8EJppeQTadmny=hcs4xCQDXHwXEBHXjeecvZCUVcSXmwBTgg@mail.gmail.com>
Content-Language: en-US
From: Udipto Goswami <quic_ugoswami@quicinc.com>
In-Reply-To: <CAA8EJppeQTadmny=hcs4xCQDXHwXEBHXjeecvZCUVcSXmwBTgg@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: IMh8dstdDZSkJ0k__r6y4e0xJkgEhb7g
X-Proofpoint-ORIG-GUID: IMh8dstdDZSkJ0k__r6y4e0xJkgEhb7g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-03_03,2024-05-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 adultscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 lowpriorityscore=0 mlxscore=0
 bulkscore=0 spamscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2404010003
 definitions=main-2405030035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_222402_783930_F39B494C 
X-CRM114-Status: GOOD (  30.81  )
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

Hi Dmitry,

On 5/2/2024 6:42 PM, Dmitry Baryshkov wrote:
> On Thu, 2 May 2024 at 15:33, Udipto Goswami <quic_ugoswami@quicinc.com> wrote:
>>
>> The Femto phy depends on 0.88/ 1.8/ 3.3V regulators for its operation.
>> If one of the regulators is not voted to the required minimum voltage
>> for phy to operate, then High speed mode of operation will fail.
>>
>> On certain targets like (qcm6490_rb3gen2) where the minimum voltage
>> of the regulator is lower than the operating voltage of the phy.
>> If not voted properly, the phy supply would be limited to the min value
>> of the LDO thereby rendering the phy non-operational.
>>
>> The current implementation of the regulators in the Femto PHY is not
>> setting the load and voltage for each LDO. The appropriate voltages and
>> loads required for the PHY to operate should be set.
> 
> Please move min/max voltages to the DTS. There is no need to set them
> from the driver.
that also can be done.
> 
> Also, is there any reason why you can't use `regulator-initial-mode =
> <RPMH_REGULATOR_MODE_HPM>;` like other boards do?


but the regulator loads & voltages for the phy doesn't change for every 
platform.
Phys operational limits will still be the same for all the different 
platforms which exists today and the upcoming ones as well if they use it.

Suppose te LDO's HPM is 2000 but the phy require 6000, its not getting 
enough power, same for reverse say 6000 in LDO's HPM and phy require 
2000, isn't this power leakage ?

This also seems to be the case with voltages as well, the phy require 
0.88V for operation but if LDO is lower then that say 0.70, phy won't work.

So instead of doing it seperately doesn't it make sense to do it in driver ?
> 
>>
>> Implement a bulk operation api to set load & voltages before doing bulk
>> enable. This will ensure that the PHY remains operational under all
>> conditions.
>>
>> Signed-off-by: Udipto Goswami <quic_ugoswami@quicinc.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 121 +++++++++++++++++-
>>   1 file changed, 114 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> index eb0b0f61d98e..cbe9cdaa6849 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> @@ -78,11 +78,39 @@
>>
>>   #define LS_FS_OUTPUT_IMPEDANCE_MASK            GENMASK(3, 0)
>>
>> -static const char * const qcom_snps_hsphy_vreg_names[] = {
>> -       "vdda-pll", "vdda33", "vdda18",
>> +
>> +struct qcom_snps_hsphy_regulator_data {
>> +       const char *name;
>> +       unsigned int enable_load;
>> +       unsigned int min_voltage;
>> +       unsigned int max_voltage;
>> +};
>> +
>> +static const struct qcom_snps_hsphy_regulator_data hsphy_vreg_l[] = {
>> +       {
>> +               .name = "vdda-pll",
>> +               .enable_load = 30000,
>> +               .min_voltage = 825000,
>> +               .max_voltage = 925000,
>> +       },
>> +
>> +       {
>> +               .name = "vdda18",
>> +               .enable_load = 19000,
>> +               .min_voltage = 1704000,
>> +               .max_voltage = 1800000
>> +       },
>> +
>> +       {
>> +               .name = "vdda33",
>> +               .enable_load = 16000,
>> +               .min_voltage = 3050000,
>> +               .max_voltage = 3300000
>> +       },
>> +
>>   };
>>
>> -#define SNPS_HS_NUM_VREGS              ARRAY_SIZE(qcom_snps_hsphy_vreg_names)
>> +#define SNPS_HS_NUM_VREGS              ARRAY_SIZE(hsphy_vreg_l)
>>
>>   struct override_param {
>>          s32     value;
>> @@ -132,12 +160,90 @@ struct qcom_snps_hsphy {
>>          struct clk_bulk_data *clks;
>>          struct reset_control *phy_reset;
>>          struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
>> +       const struct qcom_snps_hsphy_regulator_data *vreg_list;
>>
>>          bool phy_initialized;
>>          enum phy_mode mode;
>>          struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
>>   };
>>
>> +static int __vdda_phy_bulk_enable_disable(struct qcom_snps_hsphy *hsphy, bool on)
> 
> Separate functions, please.
sure.
> 
>> +{
>> +       int ret = 0;
>> +       int i;
>> +
>> +       if (!on)
>> +               goto disable_vdd;
>> +
>> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
>> +
>> +               ret = regulator_set_load(hsphy->vregs[i].consumer,
>> +                                        hsphy->vreg_list[i].enable_load);
>> +
>> +               if (ret < 0) {
>> +                       dev_err(hsphy->dev, "unable to set HPM of %s %d\n",
>> +                                               hsphy->vregs[i].supply, ret);
>> +                       goto err_vdd;
>> +               }
>> +       }
>> +
>> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
>> +               ret = regulator_set_voltage(hsphy->vregs[i].consumer,
>> +                                           hsphy->vreg_list[i].min_voltage,
>> +                                           hsphy->vreg_list[i].max_voltage);
>> +               if (ret) {
>> +                       dev_err(hsphy->dev,
>> +                               "unable to set voltage of regulator %s %d\n",
>> +                                               hsphy->vregs[i].supply, ret);
>> +                       goto put_vdd_lpm;
>> +               }
>> +       }
>> +
>> +       ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>> +       if (ret)
>> +               goto unconfig_vdd;
>> +
>> +       return ret;
>> +
>> +disable_vdd:
>> +       regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>> +
>> +unconfig_vdd:
>> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
>> +               ret = regulator_set_voltage(hsphy->vregs[i].consumer, 0,
>> +                                           hsphy->vreg_list[i].max_voltage);
>> +               if (ret) {
>> +                       dev_err(hsphy->dev,
>> +                       "unable to set voltage of regulator %s %d\n",
>> +                                       hsphy->vregs[i].supply, ret);
>> +               }
>> +       }
>> +
>> +put_vdd_lpm:
>> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
>> +               ret = regulator_set_load(hsphy->vregs[i].consumer, 0);
>> +
>> +               if (ret < 0) {
>> +                       dev_err(hsphy->dev, "unable to set LPM of %s %d\n",
>> +                                               hsphy->vregs[i].supply, ret);
>> +               }
>> +       }
>> +
>> +err_vdd:
>> +       return ret;
>> +
>> +}
>> +
>> +static int vdda_phy_bulk_enable(struct qcom_snps_hsphy *hsphy)
>> +{
>> +       return __vdda_phy_bulk_enable_disable(hsphy, true);
>> +}
>> +
>> +static int vdda_phy_bulk_disable(struct qcom_snps_hsphy *hsphy)
>> +{
>> +       return __vdda_phy_bulk_enable_disable(hsphy, false);
>> +}
>> +
>>   static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
>>   {
>>          struct device *dev = hsphy->dev;
>> @@ -390,7 +496,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>>
>>          dev_vdbg(&phy->dev, "%s(): Initializing SNPS HS phy\n", __func__);
>>
>> -       ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>> +       ret = vdda_phy_bulk_enable(hsphy);
>>          if (ret)
>>                  return ret;
>>
>> @@ -471,7 +577,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>>   disable_clks:
>>          clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
>>   poweroff_phy:
>> -       regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>> +       ret = vdda_phy_bulk_disable(hsphy);
>>
>>          return ret;
>>   }
>> @@ -482,7 +588,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
>>
>>          reset_control_assert(hsphy->phy_reset);
>>          clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
>> -       regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>> +       vdda_phy_bulk_disable(hsphy);
>>          hsphy->phy_initialized = false;
>>
>>          return 0;
>> @@ -592,8 +698,9 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
>>
>>          num = ARRAY_SIZE(hsphy->vregs);
>>          for (i = 0; i < num; i++)
>> -               hsphy->vregs[i].supply = qcom_snps_hsphy_vreg_names[i];
>> +               hsphy->vregs[i].supply = hsphy_vreg_l[i].name;
>>
>> +       hsphy->vreg_list  = hsphy_vreg_l;
>>          ret = devm_regulator_bulk_get(dev, num, hsphy->vregs);
>>          if (ret)
>>                  return dev_err_probe(dev, ret,
>> --
>> 2.17.1

-Udipto

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
