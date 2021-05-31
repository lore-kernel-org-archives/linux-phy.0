Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F42BC47082
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:34:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EEBDF61186
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:34:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EEBDF61186
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lihBvN+OFhkxSkNCElgOexYxF5E1LeLdQuMBM32xTs4=; b=av5PFCGAaCkt+v+Shd0SwLHdfZ
	/JCtYGwrDVmEph0imRYpBv+WMuvCZurH0P64HhqDx0t+FpXCsNHcmj5v+8iIqcB8InecwuCdjTstg
	LwNbVzE2xTPBhFsk6sBbgyEc6vUB/0NiG34y/BRc5dUQtgK7IyrPwewKWELRMQyTOuJPerJLPCf1e
	mECXGX7GD4sqohlDyVVSHbnsUMYlF4jptgJ3NpijFFTDtezqVf2gXOpE3CWHM09vGTY2CcqnNty8a
	CzREAMqTXDTmBZQh0QD7oOJYyfob6n2CNCc8tWOHgdJ/Qk6emoXl9n6mQB1yPguVJYZDMUQ/Q84gk
	HY9LF/jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndNd-00BTSi-D8; Mon, 31 May 2021 08:34:37 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndNa-00BTR4-C1
 for linux-phy@lists.infradead.org; Mon, 31 May 2021 08:34:36 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14V8YPIC054720;
 Mon, 31 May 2021 03:34:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622450065;
 bh=WdtpfZPowPiCpRprSpaKbtvu6+Gb9+ktjGrBmve1/Yk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=IboIlrSNI8JWHEMEHnrJLIia3sBOPpz8SkWmwEvrO9t/YWPWKkevaORko7bGucVef
 +OrG8eu9iwGxfvUdhcIrdzA0q8thkyTu841ZlZFIGbPN0uptFYg3K0ICwKWgxyujGM
 JGk7EL4wPEgl1Ye6C9JVy9NTeoDyWrgXdOOUIkL4=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14V8YPFT029524
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 31 May 2021 03:34:25 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 31
 May 2021 03:34:25 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 31 May 2021 03:34:25 -0500
Received: from [10.250.235.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14V8YI0w030521;
 Mon, 31 May 2021 03:34:20 -0500
Subject: Re: [PATCH v6 1/3] phy: core: Reword the comment specifying the units
 of max_link_rate to be Mbps
To: Vinod Koul <vkoul@kernel.org>
CC: <linux-can@vger.kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Wolfgang Grandegger <wg@grandegger.com>, Vignesh Raghavendra
 <vigneshr@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20210510051006.11393-1-a-govindraju@ti.com>
 <20210510051006.11393-2-a-govindraju@ti.com>
 <YLSNvUDJZ/v6NTuN@vkoul-mobl.Dlink>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <615d3a2a-0dc2-0e87-fdac-e170542d33da@ti.com>
Date: Mon, 31 May 2021 14:04:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <YLSNvUDJZ/v6NTuN@vkoul-mobl.Dlink>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_013434_611239_24854FA1 
X-CRM114-Status: GOOD (  21.40  )
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

Hi Vinod,

On 31/05/21 12:48 pm, Vinod Koul wrote:
> On 10-05-21, 10:40, Aswath Govindraju wrote:
>> In some subsystems (eg. CAN, SPI), the max link rate supported can be less
>> than 1 Mbps and if the unit for max_link_rate is Mbps then it can't be
>> used. Therefore, leave the decision of units to be used, to the producer
>> and consumer.
>>
>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>> Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>>  include/linux/phy/phy.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
>> index 0ed434d02196..f3286f4cd306 100644
>> --- a/include/linux/phy/phy.h
>> +++ b/include/linux/phy/phy.h
>> @@ -125,7 +125,7 @@ struct phy_ops {
>>  /**
>>   * struct phy_attrs - represents phy attributes
>>   * @bus_width: Data path width implemented by PHY
>> - * @max_link_rate: Maximum link rate supported by PHY (in Mbps)
>> + * @max_link_rate: Maximum link rate supported by PHY (units to be decided by producer and consumer)
> 
> So there are a few users of max_link_rate. It would be better that we
> document all previous users of max_link_rate that unit is in Mbps and
> then modify it here
> 

I was able to see that the max_link_rate attribute was used at,

drivers/phy/cadence/phy-cadence-torrent.c:2514:
gphy->attrs.max_link_rate = cdns_phy->max_bit_rate;

and in the bindings there is indication that the units to be used is Mbps.

Can you please point me if there is any other place that I might have
missed to look at or that might need documentation update?

Thanks,
Aswath



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
