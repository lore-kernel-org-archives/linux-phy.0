Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F7B0C10F16
	for <linux-phy@archiver.kernel.org>; Mon,  6 May 2024 14:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJRi6s3CLaEjD0Rz87ErvmVW0WjJrbqmi0mLzClLH1o=; b=YOus4gXg9OG6h3
	1gim21buGHT81qaxTnBdHiHFaclaauQs++DaclcsW0HNoaiStmdhAp0aBH7p7sSPrLML5gI3b3rSn
	uMK7x5HvaRkg/V7P+XwBTxIKi6mHIGpap6rck232LiGgLxPQvwIaOrPlU1u07O3P6Qx+CfKr5lt1p
	SjrjOoR823Xw2r9EqEg0Ub3R977XkMv5OXm50bqk2gyb3H8IikIAVmcuqH7VTMPYv5oKBd57ym3RG
	NZAMKeZ0Ktz6C+P6BQRs+5jyGJrHqaox+74eMAgW9WgLIw84vAH588+GKh5SqWnnQcrYwXQ9D6GC0
	P9RPqwLPdlre532BRTgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zh0-00000007l4M-0nGo;
	Mon, 06 May 2024 14:51:50 +0000
Received: from out-188.mta0.migadu.com ([91.218.175.188])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zgw-00000007l2D-06ow
	for linux-phy@lists.infradead.org;
	Mon, 06 May 2024 14:51:47 +0000
Message-ID: <c5b749c4-5277-46f9-8218-a56e63dc9028@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1715007101;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U8GrcUQlowClA2iRoj1euDYQxhz+hiklndiBkUyOg9A=;
	b=iA/8VuBfhygfV8H8eY9CJJjdeBDene9JYvUSfuRX7OJInUCUrR7JH14EgIlJrnWvraa54T
	LsEqO6jhYWi06ZEidIiKOS8RrrlhWhYDXWgjp216mHK7zDvJWs0XlZJC/2t6CzKTNQ5fjP
	c33ldu3yKYw7Nh7C8WIJ6hMMAbU1jtU=
Date: Mon, 6 May 2024 10:51:38 -0400
MIME-Version: 1.0
Subject: Re: [PATCH 3/3] phy: zynqmp: Add debugfs support
To: Vinod Koul <vkoul@kernel.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michal Simek <michal.simek@amd.com>, linux-arm-kernel@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@kernel.org>
References: <20240422185803.3575319-1-sean.anderson@linux.dev>
 <20240422185803.3575319-4-sean.anderson@linux.dev> <ZjYjAjPlM5ClOGa4@matsya>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <ZjYjAjPlM5ClOGa4@matsya>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_075146_290302_6B1B9DF4 
X-CRM114-Status: GOOD (  15.41  )
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

On 5/4/24 07:58, Vinod Koul wrote:
> On 22-04-24, 14:58, Sean Anderson wrote:
>> Add support for printing some basic status information to debugfs. This
>> is helpful when debugging phy consumers to make sure they are configuring
>> the phy appropriately.
>> 
>> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
>> ---
>> 
>>  drivers/phy/xilinx/phy-zynqmp.c | 54 +++++++++++++++++++++++++++++++++
>>  1 file changed, 54 insertions(+)
>> 
>> diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
>> index 08c88dcd7799..e2e86943e9f3 100644
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
>> @@ -122,6 +123,15 @@
>>  #define ICM_PROTOCOL_DP			0x4
>>  #define ICM_PROTOCOL_SGMII		0x5
>>  
>> +static const char *const xpsgtr_icm_str[] = {
>> +	[ICM_PROTOCOL_PD] = "powered down",
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
>> @@ -768,6 +778,48 @@ static struct phy *xpsgtr_xlate(struct device *dev,
>>  	return ERR_PTR(-EINVAL);
>>  }
>>  
>> +/*
>> + * DebugFS
>> + */
>> +
>> +static int xpsgtr_status_read(struct seq_file *seq, void *data)
>> +{
>> +	struct xpsgtr_phy *gtr_phy = seq->private;
>> +	struct clk *clk;
>> +	u32 pll_status;
>> +
>> +	mutex_lock(&gtr_phy->phy->mutex);
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
>> +static int xpsgtr_status_open(struct inode *inode, struct file *f)
>> +{
>> +	struct xpsgtr_phy *gtr_phy = inode->i_private;
>> +
>> +	return single_open(f, xpsgtr_status_read, gtr_phy);
>> +}
>> +
>> +static const struct file_operations xpsgtr_status_ops = {
>> +	.owner = THIS_MODULE,
>> +	.open = xpsgtr_status_open,
>> +	.release = single_release,
>> +	.read = seq_read,
>> +	.llseek = seq_lseek
>> +};
> 
> There are debugfs simple helpers which should help you avoid all this
> open coding and just have the read call

I assume you mean debugfs_create_devm_seqfile.

>> +
>>  /*
>>   * Power Management
>>   */
>> @@ -917,6 +969,8 @@ static int xpsgtr_probe(struct platform_device *pdev)
>>  
>>  		gtr_phy->phy = phy;
>>  		phy_set_drvdata(phy, gtr_phy);
>> +		debugfs_create_file("status", 0444, phy->debugfs, gtr_phy,
>> +				    &xpsgtr_status_ops);
> 
> generic status does not make sense, how about device-name-status

This file lives in the phy's debugfs directory already. The full path is

/sys/kernel/debug/phy/phy-fd400000.phy.0/status

so there is no need to add the phy name yet again.

--Sean

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
