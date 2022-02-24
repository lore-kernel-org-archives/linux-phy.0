Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32554C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 15:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sthja4mToNlmkh9ID9r2D6WDnj2mIF/SQaYcXlZ/JCQ=; b=qCHINVSJw0xey4
	yEeApt2/GVtodlIQss7DdQ3D4JG+RKKp9LUZ/5sIPKqZnLPzYh8Sarad4USpNzWYH0Y82J/aRJWaZ
	IumaIL7Rh8TtI0YQ+TMWFz8zOmDVM0WDlseyL8DqnvsPLabYRwbnveuXahsjReMRljLR2Fmb5PcaY
	pJxkhIcsPANL/H/+S9rNILCcOmO3/+iEgqKzuCkeAazvg3s7ENYQcaTMrOltRibqiYnhAbik+mu2U
	73IrBMrEQwPoEKU9CTpUiSeIDhW4cSKlANjKMPETqkEVvqY6E1vBowzGsijNfLmS8rNk044UHcLZ5
	3ZGllJd+Ct2aoYbheuKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNFpg-001Eo9-F6; Thu, 24 Feb 2022 15:15:04 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNFpd-001Eme-RA
 for linux-phy@lists.infradead.org; Thu, 24 Feb 2022 15:15:03 +0000
Received: by mail-pj1-x102e.google.com with SMTP id
 q8-20020a17090a178800b001bc299b8de1so2309928pja.1
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 07:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=T3bIx55FqVQ1q2zMwJZ6wtIuFG7xRq8/Y23nwx5aoLo=;
 b=zVU/BUOvQm2ISsW8qlI8nplc3XropAgpoNTZfylq2ewgILD1KVYx8SEMlVytsACUrJ
 YLdcT3843wmbSYTei8xVPerCkSiMzwu5Ad0db8+8kjeY+k1CMcnY3GmF0+FgBwO0BxFh
 ArrL8rL/Pu7aaEe749JFeeUD6sg9LS4RecPGKzlwDOF0tKEr5T/SADyA0fj0S8jhDZNY
 wOV6p7LUcb3lUGW/hnyceMESXERfjSEeHSxXC0OLvK1GSY2QIwZi86gtXGMgUgPBBNL9
 qpK5WNgxFW4vTpA/Tp/dzxIV9n/4p0N5ZnMmKryu+3cAGUWjhcC6oMTdjkfBY8DqyKb0
 yo3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=T3bIx55FqVQ1q2zMwJZ6wtIuFG7xRq8/Y23nwx5aoLo=;
 b=kxC+41dAPllN7g6rtw/xU5WV2AWYyAk4j9cShKONeEKivA5xJlhyvsMYWS4zNzoisI
 8F5JbHPmgytMimjHe7Dd7SqV4enmlzkxrJNhtwZUFNkwN3lFdp25ATIlgaX3yzPEL2Xy
 PY1CGTZzxetr7fp1a6sh2d4RsQpuRBUEK1wr2NfKd3+7+Ku2RlJGMr4qdC2wZqUHUY2w
 RPeptGxDdlltp8mY8U1yO1JyZ5afEpgGut5zW7ffyJoaIsnySzM2IIIabhnoSqEd80W5
 ZYbHVQl6J5lQ2YcaxDXkUVLAy1kU/ZqH8MhUp1AZwQn+nJvXqUxNX+BQHWwD1aGn9YkV
 T/QQ==
X-Gm-Message-State: AOAM530ZMZeEqUJUDGCTdmR1/86uVZ32uO62GGtF/fFkUUrZCbXqbeIk
 LAajANpU67Rx76lH5pMkgM9J5w==
X-Google-Smtp-Source: ABdhPJx7RkqJ90wV7wdVl+GK7UsXaLQ7Tmhy8Ise/hX0OBjTbIZkcTwLqNT7lPByOzekdokTW3n3AA==
X-Received: by 2002:a17:90a:d50c:b0:1bc:6d27:75b with SMTP id
 t12-20020a17090ad50c00b001bc6d27075bmr3265987pju.94.1645715700536; 
 Thu, 24 Feb 2022 07:15:00 -0800 (PST)
Received: from [192.168.4.155] (cpe-72-132-29-68.dc.res.rr.com. [72.132.29.68])
 by smtp.gmail.com with ESMTPSA id z14sm4535814pfh.173.2022.02.24.07.14.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Feb 2022 07:15:00 -0800 (PST)
Message-ID: <6082e3a5-aaf7-f876-b1ec-c6627fba1503@kernel.dk>
Date: Thu, 24 Feb 2022 08:14:58 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH phy v4 3/5] Revert "ata: ahci: mvebu: Make SATA PHY
 optional for Armada 3720"
Content-Language: en-US
To: =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 pali@kernel.org, Damien Le Moal <damien.lemoal@opensource.wdc.com>
References: <20220203214444.1508-1-kabel@kernel.org>
 <20220203214444.1508-4-kabel@kernel.org> <20220224161324.6ac0061c@dellmb>
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <20220224161324.6ac0061c@dellmb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_071501_993154_F8A2A058 
X-CRM114-Status: GOOD (  18.98  )
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

On 2/24/22 8:13 AM, Marek Beh?n wrote:
> Dear Jens,
> 
> could you please send Ack for this patch?
> https://lore.kernel.org/linux-phy/20220203214444.1508-4-kabel@kernel.org/
> 
> It is a revert of another patch that was added because of potential
> problems in comphy driver, and these are now solved by this series, but
> Vinod says he can apply the ATA patch but he needs your Ack.

I'm not maintaining libata anymore, adding Damien who's the new
maintainer. Leaving email below.

> 
> Thanks.
> 
> Marek
> 
> On Thu,  3 Feb 2022 22:44:42 +0100
> Marek Beh?n <kabel@kernel.org> wrote:
> 
>> From: Pali Roh?r <pali@kernel.org>
>>
>> This reverts commit 45aefe3d2251e4e229d7662052739f96ad1d08d9.
>>
>> Armada 3720 PHY driver (phy-mvebu-a3700-comphy.c) does not return
>> -EOPNOTSUPP from phy_power_on() callback anymore.
>>
>> So remove AHCI_HFLAG_IGN_NOTSUPP_POWER_ON flag from Armada 3720 plat data.
>>
>> AHCI_HFLAG_IGN_NOTSUPP_POWER_ON is not used by any other ahci driver, so
>> remove this flag completely.
>>
>> Signed-off-by: Pali Roh?r <pali@kernel.org>
>> Signed-off-by: Marek Beh?n <kabel@kernel.org>
>> Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
>> ---
>>  drivers/ata/ahci.h             | 2 --
>>  drivers/ata/ahci_mvebu.c       | 2 +-
>>  drivers/ata/libahci_platform.c | 2 +-
>>  3 files changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
>> index eeac5482f1d1..a57d90dd4964 100644
>> --- a/drivers/ata/ahci.h
>> +++ b/drivers/ata/ahci.h
>> @@ -240,8 +240,6 @@ enum {
>>  							as default lpm_policy */
>>  	AHCI_HFLAG_SUSPEND_PHYS		= (1 << 26), /* handle PHYs during
>>  							suspend/resume */
>> -	AHCI_HFLAG_IGN_NOTSUPP_POWER_ON	= (1 << 27), /* ignore -EOPNOTSUPP
>> -							from phy_power_on() */
>>  	AHCI_HFLAG_NO_SXS		= (1 << 28), /* SXS not supported */
>>  
>>  	/* ap->flags bits */
>> diff --git a/drivers/ata/ahci_mvebu.c b/drivers/ata/ahci_mvebu.c
>> index 3ad46d26d9d5..d4bba3ace45d 100644
>> --- a/drivers/ata/ahci_mvebu.c
>> +++ b/drivers/ata/ahci_mvebu.c
>> @@ -227,7 +227,7 @@ static const struct ahci_mvebu_plat_data ahci_mvebu_armada_380_plat_data = {
>>  
>>  static const struct ahci_mvebu_plat_data ahci_mvebu_armada_3700_plat_data = {
>>  	.plat_config = ahci_mvebu_armada_3700_config,
>> -	.flags = AHCI_HFLAG_SUSPEND_PHYS | AHCI_HFLAG_IGN_NOTSUPP_POWER_ON,
>> +	.flags = AHCI_HFLAG_SUSPEND_PHYS,
>>  };
>>  
>>  static const struct of_device_id ahci_mvebu_of_match[] = {
>> diff --git a/drivers/ata/libahci_platform.c b/drivers/ata/libahci_platform.c
>> index 18296443ccba..b26755bdc9d6 100644
>> --- a/drivers/ata/libahci_platform.c
>> +++ b/drivers/ata/libahci_platform.c
>> @@ -59,7 +59,7 @@ int ahci_platform_enable_phys(struct ahci_host_priv *hpriv)
>>  		}
>>  
>>  		rc = phy_power_on(hpriv->phys[i]);
>> -		if (rc && !(rc == -EOPNOTSUPP && (hpriv->flags & AHCI_HFLAG_IGN_NOTSUPP_POWER_ON))) {
>> +		if (rc) {
>>  			phy_exit(hpriv->phys[i]);
>>  			goto disable_phys;
>>  		}
> 


-- 
Jens Axboe


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
