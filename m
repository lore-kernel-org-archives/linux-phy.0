Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 211FBC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 06:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iahNT9qpxL1qdlAWsDwXUpvSwD8MU0qrxs6W93A4yUA=; b=WjNRmGsuI7tWy2
	TLDSTsKfQJIqPH+wvv3Luxm63IW4c4yxN5Xlj2uLqW0+TreEhrpCqTPDaLQiRe/5Fi4EvtURk9yKh
	1zwYnz2elO4x6H9UXeP4td1Cm7TSw3KxmyKxrj4WkMDIXmuxeqUq8V0xJDjS6HkeAGTjm3p0O9iBT
	+43pLC4gN78x/FlHw/B9ciKoZB0eX4aKKD0cwBwt0HZEtxZFtaghRD9/UjkJhynGi/MJfVzcthZkY
	VDOChE2BwrGnCHodsFkDzwMcLR+GVHTa19jKBgoAODFEqld5PuO2VY4jl6LC7toJFriA08dN03K8w
	/MKPTZdZFDYO8/f+6W5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHtt-00E8ZD-GA; Wed, 01 Jun 2022 06:32:13 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHtq-00E8Xl-TP
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 06:32:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1654065130; x=1685601130;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=s9gUxig0ok1ngcEsz0djAAmFBWB9OcXhuz4rut5eERE=;
  b=SSeumqbPmawMkOfSN7jnaFNq7PsaFFbjF5ma7JI/kwCXWyereJ50pk/Q
   6eHjUGgqeCX4RNvJXqYsHVg1PdlEDzOZDczj0RZKmjWRy+9XzaLGbDWHr
   e0ikzu6MMQoAeYzlFm3eCgCCBEvoKO/ACcg6lXQ2at5Cb3larUZj0653/
   Y=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 31 May 2022 23:32:05 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2022 23:32:05 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 31 May 2022 23:32:04 -0700
Received: from [10.216.54.83] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Tue, 31 May
 2022 23:31:58 -0700
Message-ID: <4849065c-f743-884e-2afe-d802efde0a99@quicinc.com>
Date: Wed, 1 Jun 2022 12:01:54 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v7 2/3] phy: qcom-snps: Add support for overriding phy
 tuning parameters
Content-Language: en-US
To: Pavan Kondeti <quic_pkondeti@quicinc.com>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
	<robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson
	<bjorn.andersson@linaro.org>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Stephen Boyd <swboyd@chromium.org>, "Doug
 Anderson" <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>, <devicetree@vger.kernel.org>,
	<linux-arm-msm@vger.kernel.org>, <linux-usb@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>
References: <1654013693-21484-1-git-send-email-quic_kriskura@quicinc.com>
 <1654013693-21484-3-git-send-email-quic_kriskura@quicinc.com>
 <20220601020856.GA20979@hu-pkondeti-hyd.qualcomm.com>
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <20220601020856.GA20979@hu-pkondeti-hyd.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_233211_027977_BF214403 
X-CRM114-Status: GOOD (  17.29  )
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


On 6/1/2022 7:38 AM, Pavan Kondeti wrote:
> On Tue, May 31, 2022 at 09:44:52PM +0530, Krishna Kurapati wrote:
>> Add support for overriding electrical signal tuning parameters for
>> SNPS HS Phy.
>>
>> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 268 +++++++++++++++++++++++++-
>>   1 file changed, 266 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> index 5d20378..3a17216 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> @@ -52,6 +52,12 @@
>>   #define USB2_SUSPEND_N				BIT(2)
>>   #define USB2_SUSPEND_N_SEL			BIT(3)
>>   
> <snip>
>
>> +static void qcom_snps_hsphy_override_param_update_val(
>> +			const struct override_param_map map,
>> +			s32 dt_val, struct phy_override_seq *seq_entry)
>> +{
>> +	int i;
>> +
>> +	/*
>> +	 * Param table for each param is in increasing order
>> +	 * of dt values. We need to iterate over the list to
>> +	 * select the entry that has equal or the next highest value.
>> +	 */
>> +	for (i = 0; i < map.table_size - 1; i++) {
>> +		if (map.param_table[i].value >= dt_val)
>> +			break;
>> +	}
>> +
>> +	seq_entry->need_update = true;
>> +	seq_entry->offset = map.reg_offset;
>> +	seq_entry->mask = map.param_mask;
>> +	seq_entry->value =  map.param_table[i].reg << __ffs(map.param_mask);
>> +}
>> +
>> +static void qcom_snps_hsphy_read_override_param_seq(struct device *dev)
>> +{
>> +	struct device_node *node = dev->of_node;
>> +	s32 val;
>> +	int ret, i;
>> +	struct qcom_snps_hsphy *hsphy;
>> +	const struct override_param_map *cfg =
>> +		(struct override_param_map *) of_device_get_match_data(dev);
> As mentioned in the previous patch-set, the explicit typecast is not needed.
>
> overall, looks good to me. After fixing the above, feel free to use
>
> Reviewed-by: Pavankumar Kondeti <quic_pkondeti@quicinc.com>
>
> Thanks,
> Pavan
My bad, Thanks for the review Pavan. Will fix it in the next patch.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
