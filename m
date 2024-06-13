Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F093C27C75
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jun 2024 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIUvL468klXXS+oe7b5A2D16sSiW8Kb1r+g8bipD3OU=; b=ZCd2yL1sgWXzXw
	X8qP/ONCI/ysdtefGxeIJxsF9K60NFhPqWn4rsbxlOK4Xk5I5j/RC0aBl57AlOWeX2h9tRHbs2act
	Ktve/CjQ+BU/q4ta/BlVCS+w7k0Fkiy+y7P1vIFi8a7arX1Wjwh6hnInA5e0KxtY+/nk/8jiNn6QS
	5CqoSU0Jx69IKilBflTPt1PwzPVgh6gTrsO4jamgIj50dyjYfIFXe2DqCFaalJyPKdqPdAOJtlZ/M
	D0Ge5VwEbxiScEt94cMkU/lwUAaEO8n9Aibwfso4rqxyDKq6zN8Fb6o1dgUchpb9iOhLWGp4uFYOP
	k5sExtdaGrHAtKFCkIDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHlyC-0000000H4Je-3nA4;
	Thu, 13 Jun 2024 15:02:32 +0000
Received: from out-183.mta1.migadu.com ([2001:41d0:203:375::b7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHly7-0000000H4Hc-0XdY
	for linux-phy@lists.infradead.org;
	Thu, 13 Jun 2024 15:02:29 +0000
X-Envelope-To: radhey.shyam.pandey@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1718290942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JEBRwGHuYYeaiNTmDNEUKdsVRARs0SvHUnnIMjbyCE4=;
	b=dnRQCXmWGraLUliXWOcCW9NwR9J69w4NkRGqqRYDwsNfThTkQMQDJuIO/PWh2XM9B0pMZ5
	i0Tdf37wyFJYrle1RU5KtND6cmEm506iyx8qtvQsKI8PVU3I9gwBEp9awJx55G6JGaLJKC
	qm5hTtyZMNMp2XCXIy23MzRJZpsSp3A=
X-Envelope-To: laurent.pinchart@ideasonboard.com
X-Envelope-To: linux-phy@lists.infradead.org
X-Envelope-To: vkoul@kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: michal.simek@amd.com
X-Envelope-To: kishon@kernel.org
Message-ID: <8349516a-84bc-45bf-a84c-ff05d8f50bf7@linux.dev>
Date: Thu, 13 Jun 2024 11:02:15 -0400
MIME-Version: 1.0
Subject: Re: [PATCH v2 4/4] phy: zynqmp: Add debugfs support
To: "Pandey, Radhey Shyam" <radhey.shyam.pandey@amd.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Cc: Vinod Koul <vkoul@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Simek, Michal" <michal.simek@amd.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>
References: <20240506170110.2874724-1-sean.anderson@linux.dev>
 <20240506170110.2874724-5-sean.anderson@linux.dev>
 <MN0PR12MB5953519A685A222CC603A2FEB7C12@MN0PR12MB5953.namprd12.prod.outlook.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <MN0PR12MB5953519A685A222CC603A2FEB7C12@MN0PR12MB5953.namprd12.prod.outlook.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_080227_461238_ED844734 
X-CRM114-Status: GOOD (  15.35  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 6/13/24 05:20, Pandey, Radhey Shyam wrote:
>> -----Original Message-----
>> From: Sean Anderson <sean.anderson@linux.dev>
>> Sent: Monday, May 6, 2024 10:31 PM
>> To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>; linux-
>> phy@lists.infradead.org
>> Cc: Vinod Koul <vkoul@kernel.org>; linux-arm-kernel@lists.infradead.org;
>> linux-kernel@vger.kernel.org; Michal Simek <michal.simek@amd.com>;
>> Kishon Vijay Abraham I <kishon@kernel.org>; Sean Anderson
>> <sean.anderson@linux.dev>
>> Subject: [PATCH v2 4/4] phy: zynqmp: Add debugfs support
>> 
>> Add support for printing some basic status information to debugfs. This
>> is helpful when debugging phy consumers to make sure they are configuring
>> the phy appropriately.
>> 
>> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
>> ---
>> 
>> Changes in v2:
>> - Use debugfs_create_devm_seqfile
>> 
>>  drivers/phy/xilinx/phy-zynqmp.c | 40
>> +++++++++++++++++++++++++++++++++
>>  1 file changed, 40 insertions(+)
>> 
>> diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-
>> zynqmp.c
>> index b86fe2a249a8..2520c75a4a77 100644
>> --- a/drivers/phy/xilinx/phy-zynqmp.c
>> +++ b/drivers/phy/xilinx/phy-zynqmp.c
>> @@ -13,6 +13,7 @@
>>   */
>> 
>>  #include <linux/clk.h>
>> +#include <linux/debugfs.h>
>>  #include <linux/delay.h>
>>  #include <linux/io.h>
>>  #include <linux/kernel.h>
>> @@ -123,6 +124,15 @@
>>  #define ICM_PROTOCOL_DP			0x4
>>  #define ICM_PROTOCOL_SGMII		0x5
>> 
>> +static const char *const xpsgtr_icm_str[] = {
>> +	[ICM_PROTOCOL_PD] = "powered down",
> 
> Protocol saying powered down seems confusing.
> Should we say None or None(power down)?

Either works I guess. I'm just matching the define.

>> +	[ICM_PROTOCOL_PCIE] = "PCIe",
>> +	[ICM_PROTOCOL_SATA] = "SATA",
>> +	[ICM_PROTOCOL_USB] = "USB",
>> +	[ICM_PROTOCOL_DP] = "DisplayPort",
>> +	[ICM_PROTOCOL_SGMII] = "SGMII",
>> +};
>> +
>>  /* Test Mode common reset control  parameters */
>>  #define TM_CMN_RST			0x10018
>>  #define TM_CMN_RST_EN			0x1
>> @@ -788,6 +798,34 @@ static struct phy *xpsgtr_xlate(struct device *dev,
>>  	return ERR_PTR(-EINVAL);
>>  }
>> 
>> +/*
>> + * DebugFS
>> + */
>> +
>> +static int xpsgtr_status_read(struct seq_file *seq, void *data)
>> +{
>> +	struct device *dev = seq->private;
>> +	struct xpsgtr_phy *gtr_phy = dev_get_drvdata(dev);
>> +	struct clk *clk;
>> +	u32 pll_status;
>> +
>> +	mutex_lock(&gtr_phy->phy->mutex);
> 
> Do we see any need for this lock? This function simply read hw register 
> /phy members and decodes it.

It's to protect against modifications to gtr_phy->refclk and ->instance.

These are accessed under lock elsewhere; this is not a fast path and I don't
want to have to reason about the semantics when using a mutex is definitely
correct.

--Sean

>> +	pll_status = xpsgtr_read_phy(gtr_phy, L0_PLL_STATUS_READ_1);
>> +	clk = gtr_phy->dev->clk[gtr_phy->refclk];
>> +
>> +	seq_printf(seq, "Lane:            %u\n", gtr_phy->lane);
>> +	seq_printf(seq, "Protocol:        %s\n",
>> +		   xpsgtr_icm_str[gtr_phy->protocol]);
>> +	seq_printf(seq, "Instance:        %u\n", gtr_phy->instance);
>> +	seq_printf(seq, "Reference clock: %u (%pC)\n", gtr_phy->refclk, clk);
>> +	seq_printf(seq, "Reference rate:  %lu\n", clk_get_rate(clk));
>> +	seq_printf(seq, "PLL locked:      %s\n",
>> +		   pll_status & PLL_STATUS_LOCKED ? "yes" : "no");
>> +
>> +	mutex_unlock(&gtr_phy->phy->mutex);
>> +	return 0;
>> +}
>> +
>>  /*
>>   * Power Management
>>   */
>> @@ -937,6 +975,8 @@ static int xpsgtr_probe(struct platform_device *pdev)
>> 
>>  		gtr_phy->phy = phy;
>>  		phy_set_drvdata(phy, gtr_phy);
>> +		debugfs_create_devm_seqfile(&phy->dev, "status", phy-
>> >debugfs,
>> +					    xpsgtr_status_read);
>>  	}
>> 
>>  	/* Register the PHY provider. */
>> --
>> 2.35.1.1320.gc452695387.dirty
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
