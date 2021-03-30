Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6199C433DB
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 09:57:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A35661996
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 09:57:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7A35661996
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KaOn/su68DHPrcKWDBCnHC6oMEf1CJY1X3Z5gq5T4VM=; b=JTe4FS08qoi3ZbfYDXSn4TKWk
	msUn8oR9A+yASr2dyu53le7Asdmiam6pJPyQLAluo6ALWPD8vgpjUqvCKbb5QLqYByKOPkpehNlFr
	2z6+t6hDp5P928g3L5819lA9umVwDSvL09BsR5TljdPzGTwd1AO+oKFlblEcpAqGsTtOHm25wEZ35
	t1sX6AQ1UnjslwqGtCZgoPTVGK7LluHaKR72sHtNjU7vyfczWA80ou+mDNgUXA0oc71Jn9XkW4mQd
	IJ28TLNAsI7USiG8Gtg2PFUDrADE3BrYmNdd8rf1biRv1izDC+XOiYseba20G+DjpdwScuT5+iB87
	kje0zpFOA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRB7u-003Jud-4g; Tue, 30 Mar 2021 09:57:34 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRB7q-003JtV-TJ
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 09:57:33 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12U9vRbw035815;
 Tue, 30 Mar 2021 04:57:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617098247;
 bh=s1IRPKekap/KeHWrvnoB6bo3nQJKU83+bPlbVaGgETo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=vplOSmPsHUH+BAx7CzWQ2qV1X87ui5NvGbxRMCip2+8p1LWmTVMVqHjf98YUvCDBw
 CH3+JDBmn2mGXihxy+fWLq7xHc8njzNLCHSGTuKCN/mvhWrnMPDC6DnhwWTNZEpMLg
 KZ1Vo96fQgxBRfbpQZVWHU4oayoqifY1IqQaz+GA=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12U9vQlL036489
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Mar 2021 04:57:26 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 30
 Mar 2021 04:57:26 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 30 Mar 2021 04:57:25 -0500
Received: from [10.250.234.46] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12U9vM2H018630;
 Tue, 30 Mar 2021 04:57:23 -0500
Subject: Re: [PATCH 3/4] phy: cadence-torrent: Do not configure SERDES if it's
 already configured
To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>, Vinod Koul
 <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Lokesh Vutla
 <lokeshvutla@ti.com>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>
References: <20210310155445.534-1-kishon@ti.com>
 <20210310155445.534-4-kishon@ti.com>
 <MN2PR07MB61607501847D2DD1C62A84F0C5699@MN2PR07MB6160.namprd07.prod.outlook.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <88abbe18-8bc9-8f64-ceb5-df178a0f21d9@ti.com>
Date: Tue, 30 Mar 2021 15:27:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <MN2PR07MB61607501847D2DD1C62A84F0C5699@MN2PR07MB6160.namprd07.prod.outlook.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_105731_253015_784D5746 
X-CRM114-Status: GOOD (  18.45  )
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

Hi Swapnil,

On 18/03/21 3:25 pm, Swapnil Kashinath Jakhade wrote:
> 
> 
>> -----Original Message-----
>> From: Kishon Vijay Abraham I <kishon@ti.com>
>> Sent: Wednesday, March 10, 2021 9:25 PM
>> To: Kishon Vijay Abraham I <kishon@ti.com>; Vinod Koul
>> <vkoul@kernel.org>; Rob Herring <robh+dt@kernel.org>; Philipp Zabel
>> <p.zabel@pengutronix.de>; Swapnil Kashinath Jakhade
>> <sjakhade@cadence.com>
>> Cc: linux-kernel@vger.kernel.org; devicetree@vger.kernel.org; Lokesh Vutla
>> <lokeshvutla@ti.com>; linux-phy@lists.infradead.org
>> Subject: [PATCH 3/4] phy: cadence-torrent: Do not configure SERDES if it's
>> already configured
>>
>> EXTERNAL MAIL
>>
>>
>> Do not configure torrent SERDES if it's already configured.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  drivers/phy/cadence/phy-cadence-torrent.c | 32 ++++++++++++++++-------
>>  1 file changed, 22 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c
>> b/drivers/phy/cadence/phy-cadence-torrent.c
>> index ab51c4bf7b30..5ee1657f5a1c 100644
>> --- a/drivers/phy/cadence/phy-cadence-torrent.c
>> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
>> @@ -371,6 +371,10 @@ static const struct phy_ops cdns_torrent_phy_ops =
>> {
>>  	.owner		= THIS_MODULE,
>>  };
>>
>> +static const struct phy_ops noop_ops = {
>> +	.owner		= THIS_MODULE,
>> +};
>> +
>>  struct cdns_reg_pairs {
>>  	u32 val;
>>  	u32 off;
>> @@ -2306,6 +2310,7 @@ static int cdns_torrent_phy_probe(struct
>> platform_device *pdev)
>>  	struct device_node *child;
>>  	int ret, subnodes, node = 0, i;
>>  	u32 total_num_lanes = 0;
>> +	int already_configured;
>>  	u8 init_dp_regmap = 0;
>>  	u32 phy_type;
>>
>> @@ -2344,16 +2349,20 @@ static int cdns_torrent_phy_probe(struct
>> platform_device *pdev)
>>  	if (ret)
>>  		return ret;
>>
>> -	ret = cdns_torrent_reset(cdns_phy);
>> -	if (ret)
>> -		goto clk_cleanup;
>> +	regmap_field_read(cdns_phy->phy_pma_cmn_ctrl_1,
>> &already_configured);
>>
>> -	ret = cdns_torrent_clk(cdns_phy);
>> -	if (ret)
>> -		goto clk_cleanup;
>> +	if (!already_configured) {
>> +		ret = cdns_torrent_reset(cdns_phy);
>> +		if (ret)
>> +			goto clk_cleanup;
>> +
>> +		ret = cdns_torrent_clk(cdns_phy);
>> +		if (ret)
>> +			goto clk_cleanup;
>>
> Should if (!already_configured) be checked while calling clk_disable_unprepare()?

Both clk_unprepare() and clk_disable() checks for passed clk for ERR or
NULL. So don't think it's necessary to have !already_configured check.
> Otherwise,
> Reviewed-by: Swapnil Jakhade <sjakhade@cadence.com>

Thanks
Kishon

> 
> Thanks & regards,
> Swapnil
> 
>> -	/* Enable APB */
>> -	reset_control_deassert(cdns_phy->apb_rst);
>> +		/* Enable APB */
>> +		reset_control_deassert(cdns_phy->apb_rst);
>> +	}
>>
>>  	for_each_available_child_of_node(dev->of_node, child) {
>>  		struct phy *gphy;
>> @@ -2423,7 +2432,10 @@ static int cdns_torrent_phy_probe(struct
>> platform_device *pdev)
>>  		of_property_read_u32(child, "cdns,ssc-mode",
>>  				     &cdns_phy->phys[node].ssc_mode);
>>
>> -		gphy = devm_phy_create(dev, child,
>> &cdns_torrent_phy_ops);
>> +		if (!already_configured)
>> +			gphy = devm_phy_create(dev, child,
>> &cdns_torrent_phy_ops);
>> +		else
>> +			gphy = devm_phy_create(dev, child, &noop_ops);
>>  		if (IS_ERR(gphy)) {
>>  			ret = PTR_ERR(gphy);
>>  			goto put_child;
>> @@ -2507,7 +2519,7 @@ static int cdns_torrent_phy_probe(struct
>> platform_device *pdev)
>>  		goto put_lnk_rst;
>>  	}
>>
>> -	if (cdns_phy->nsubnodes > 1) {
>> +	if (cdns_phy->nsubnodes > 1 && !already_configured) {
>>  		ret = cdns_torrent_phy_configure_multilink(cdns_phy);
>>  		if (ret)
>>  			goto put_lnk_rst;
>> --
>> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
