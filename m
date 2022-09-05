Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 402FAECAAA1
	for <linux-phy@archiver.kernel.org>; Mon,  5 Sep 2022 08:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYNVe7sG4+NGbCaUqk/jN+4Oi1pUvMOG/a0z9mvacRk=; b=W4Dk8ba779NS8J
	+GtuD/hOSkO8BKoah3sm3uBhlwEkpIRX4uydlK9+prtYSo3V5QuvB9jOwhg7Oq9y0LlmPzfWWuRTW
	v3Xm7e9W7NR1n66Uno6mi1jKMNEjMajsetV49Kw/GOuCS0C+oe+EbPmQNM2/RmW6I7ni1HI29qDjG
	3soHbQiMd5mUkh3mLX0Tn9Pk0ei1pdSudzh0Tcs0I6TWqosCQuFeq6Wk93loeArvd7Du5nCD/0eVw
	ydkXNrCcspAqLaHPKUJi6TvIzlNRuoUxDZUp6JZDxgm6hOrMRpS6P83S2T/BEXng9HZL0WWMJPXOA
	Z2t+3dg9DmweZm5xwOBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV7Ds-00EFTJ-BE; Mon, 05 Sep 2022 08:12:48 +0000
Received: from m1550.mail.126.com ([220.181.15.50])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV6Rq-00DDFt-Jd
	for linux-phy@lists.infradead.org; Mon, 05 Sep 2022 07:23:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=3IE3d
	zk/VTnsLuNQeAdIqoveF+hpvUgCqNR8N13XKHw=; b=JKlnbwpXazEn1s3hwadbA
	o4ooDsUxgLuhGAf2vk6YKNACZi2C1N4cDwyM3grkdkw/dakicSRU+/9Jr9Qd0fWU
	z8fKdwR99qRruVhfCXZUbCG0RMpzN6tR46j8iKAwSt4tAxgduijMfnFJB1b7uUPn
	lPx8X6dPd9Y/vp4HTW899g=
Received: from windhl$126.com ( [124.16.139.61] ) by ajax-webmail-wmsvr50
 (Coremail) ; Mon, 5 Sep 2022 15:21:57 +0800 (CST)
X-Originating-IP: [124.16.139.61]
Date: Mon, 5 Sep 2022 15:21:57 +0800 (CST)
From: "Liang He" <windhl@126.com>
To: "Vinod Koul" <vkoul@kernel.org>
Cc: kishon@ti.com, narmstrong@baylibre.com, khilman@baylibre.com, 
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, 
	linux-phy@lists.infradead.org
Subject: Re:Re: [PATCH] phy: amlogic: phy-meson-axg-mipi-pcie-analog: Hold
 reference returned by of_get_parent()
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20220113(9671e152)
 Copyright (c) 2002-2022 www.mailtech.cn 126com
In-Reply-To: <YxIkGocG/WuwtI7d@matsya>
References: <20220705021526.281441-1-windhl@126.com>
 <YxIkGocG/WuwtI7d@matsya>
MIME-Version: 1.0
Message-ID: <6e6f3989.4cf5.1830c86ff8b.Coremail.windhl@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: MsqowAAnffGVoxVja3BnAA--.21823W
X-CM-SenderInfo: hzlqvxbo6rjloofrz/1tbi3BdzF1pEENSN3wADsk
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_002311_025984_D530A069 
X-CRM114-Status: GOOD (  11.11  )
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




At 2022-09-02 23:41:14, "Vinod Koul" <vkoul@kernel.org> wrote:
>On 05-07-22, 10:15, Liang He wrote:
>> We should hold the reference returned by of_get_parent() and use it
>> to call of_node_put() for reference balance.
>
>And why should we hold and drop reference?

>
Hi, Vinod Koul,


Thanks very much for your review.


As the of_get_parent() will increase the refcount of the node->parent  and the reference will be discarded 
so we should hold the reference , with which we can decrease the refcount.


If there is any misunderstanding about the of_get_parent() API, please correct me.


Thanks very much.


Liang

>> 
>> Fixes: 8eff8b4e22d9 ("phy: amlogic: phy-meson-axg-mipi-pcie-analog: add support for MIPI DSI analog")
>> Signed-off-by: Liang He <windhl@126.com>
>> ---
>>  drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c | 6 ++++--
>>  1 file changed, 4 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c b/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c
>> index 1027ece6ca12..a3e1108b736d 100644
>> --- a/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c
>> +++ b/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c
>> @@ -197,7 +197,7 @@ static int phy_axg_mipi_pcie_analog_probe(struct platform_device *pdev)
>>  	struct phy_provider *phy;
>>  	struct device *dev = &pdev->dev;
>>  	struct phy_axg_mipi_pcie_analog_priv *priv;
>> -	struct device_node *np = dev->of_node;
>> +	struct device_node *np = dev->of_node, *parent_np;
>>  	struct regmap *map;
>>  	int ret;
>>  
>> @@ -206,7 +206,9 @@ static int phy_axg_mipi_pcie_analog_probe(struct platform_device *pdev)
>>  		return -ENOMEM;
>>  
>>  	/* Get the hhi system controller node */
>> -	map = syscon_node_to_regmap(of_get_parent(dev->of_node));
>> +	parent_np = of_get_parent(dev->of_node);
>> +	map = syscon_node_to_regmap(parent_np);
>> +	of_node_put(parent_np);
>>  	if (IS_ERR(map)) {
>>  		dev_err(dev,
>>  			"failed to get HHI regmap\n");
>> -- 
>> 2.25.1
>> 
>> 
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
>
>-- 
>~Vinod
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
