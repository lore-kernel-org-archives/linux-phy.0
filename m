Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200FF606B7AD
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 17:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iCLHjTfV;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=O8UYSMjh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jWfUXbE/4eU9upFMWMydzW3Fd+cbhNgRo3514k4XkQs=; b=iCLHjTfVR4X5Kf8Vt/ib8lkO/5
	bPI0QxxxY9UX+C5NSQ8MbWjBl6DPck6jFHeeR6Mot2Uj099e2jFdf0R61hGRmeYW+CSHXduaiO0Vy
	39Gz+t30wKXnKYPLZy0qz7QHXjSnK7uKvrQfu9NT+/+1aY8ZhwmrAeQrvGDCqREoJQZ/jG82wsPLg
	50zjzHC/XYzg0kAsP6pPESzn0Dz+RdF2O0Q1ZSFDXEHQNpQtNQI+WZWYpPF6MzSfgc/Lv4CMibEU4
	t+2Xj9omrcNnz0UcjRceEGveQvbaPVCQeZiTPYsFTvXFpsaS8Wwd53uYOlTvkFzCTN52kAnYTVszA
	2clbgT5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJwiJ-0000000EamT-3T3u;
	Thu, 22 Oct 2026 17:36:27 +0000
Received: from mail-pl1-x661.google.com ([2607:f8b0:4864:20::661])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJwiG-0000000Eal7-2dcH
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 17:36:26 +0000
Received: by mail-pl1-x661.google.com with SMTP id d9443c01a7336-2e977109392so59695ad.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:36:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792690583; x=1793295383;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=aQ9LiTLbh2uxFCSppkL9rHsktv+7lwK3tJuZ2euHX10=;
        b=Uf+AHXEQ1Ot9bQWGj3qcGl5R5rAEWFigVyr8x4RYVxAANV/OhSAnLd5PrAQwm87xrf
         0Mc0ElEgaskXaYcxiAOPHuxcBe1hRrLVHKKaZJ5k0UnCKMIJFmKxXdMKZ3vvViJlJ3uE
         NDiMYAtK4p7BuKtw3EPWr2ldsNXxiHFQLjlMzGPYrUH/BkFMeqY68GS0QGk6UUd7qOz4
         BWJ+Yq0YBVlF+YtqQbsxGKQIHhd7hcpCGSWw8+I8OIkOLsoQ23HKgbJeFoneVFVqfUY8
         hz3a2JXqwC0aj0lpIw2BgFut8Q3VkciOpqXadPcZLg00cDGwYBdMRl7jW3Q5fw+U7M4F
         loTw==
X-Forwarded-Encrypted: i=1; AKwUvBwoOVRo+nE04fPIFRr0azqzYtW7ESvgXVtj16WtkaA7ZnrTCOVfCDS7y8Mjt430hKv89AFO6zYkqJQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYK4eLCfmRMtx82eKiJOINU9cmit3dyybqcxwCL9t7709w2E4DOh
	g3oWL0ud2s4Kmhh/oe5DRsD40GMBQPf95RZFh6XOnIi68hGDDZw8hJsBOFNxfIW2OQwp00SxGv6
	EIi/m9ztWxQ4bYKcQ7vC4GJPUY46dDOjrqxD5OfngvYmx2LJRxMAMJCXhKxf/Q101HOZDBvobc5
	2pyS7DvNMrG2uYjf4dj/4nz2TWwtAd/n8/56saeeUCut4qbPHYeV+34eISe6BHohWfKyDFCQ+JL
	Q4n+PMtCH7jcT10TCoh27UnXg==
X-Gm-Gg: AYBFou30e2RoEfSxTkkYFdhBoNmHj4DI6iO2p3ByI+eH2yrMmVXqhNdIDdNtokad3FR
	J1VZrDSQdeuq2gkwjoJc/r1JJEKmTmYSlPl3lqrE8pmClWfX9FgXOXgO1flUvACUbP5T0dsqimQ
	JxErJ9jw6FUiRT6sxHU57S30dQMDf1OQxmuA2Hdm/j0gzaBu5LydDaShDq3qsY82tObwM08M9fJ
	X4H1s14gMJ+D6bvB9ilNv7uCT3ru/qPc+HN6jxdyjUvpnWuhIGQcUnmvae1ld1vA63HZZf8f5zu
	HGPSyN2WLCD/A6xs2S1x63gCTbyOnTUwtOhpvuVw0ZGwvm9zpVVNfmqCKj8HNCL5VMNRRW6KzbZ
	ZUDFCPrqwBrPobMAUkZEpWp8nH1pI0DA5r0gERxgYvzEWzISrUqqxAvVbnoBe2wlwwHIV5dv605
	KMII71pv7wphw+2RwiPl4TrknLXJRuJopkQWRxDbiG8uk=
X-Received: by 2002:a17:903:987:b0:2e8:e617:18 with SMTP id d9443c01a7336-2ea4402af61mr47958395ad.48.1792690582659;
        Thu, 22 Oct 2026 10:36:22 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-120.dlp.protect.broadcom.com. [144.49.247.120])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-2ea7b3a7adcsm41075ad.10.2026.10.22.10.36.22
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2026 10:36:22 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8a079256596so126669b3a.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1792690581; x=1793295381; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aQ9LiTLbh2uxFCSppkL9rHsktv+7lwK3tJuZ2euHX10=;
        b=O8UYSMjhyTgDKLc2rzopqxZa73drjEqiEyVA/Olhonp2v5Msvrr8w0PnAKdp/MrwxM
         Jp42TyDejKMt740g7b8bjf4hAD7gKfMdm0prAATdSVN1Wy+OxV3emKMX4rgDKmztavWx
         mUcJk5TmyAU9p+ZHtBZ1V9w+KLyHZj+KMwiu8=
X-Forwarded-Encrypted: i=1; AKwUvBzbydwB3G3Y3OUAr7oya/fM3v0yLyNc5kXBoeMlzhpJrXd0I7fFiyOdN50EPnchR/wT/SGhaDyXy1k=@lists.infradead.org
X-Received: by 2002:a05:6a00:2d16:b0:89f:7ac5:9d54 with SMTP id d2e1a72fcca58-8a089d0736amr5427154b3a.17.1792690580569;
        Thu, 22 Oct 2026 10:36:20 -0700 (PDT)
X-Received: by 2002:a05:6a00:2d16:b0:89f:7ac5:9d54 with SMTP id d2e1a72fcca58-8a089d0736amr5427131b3a.17.1792690580106;
        Thu, 22 Oct 2026 10:36:20 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8a0894b4292sm2389220b3a.20.2026.10.22.10.36.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 10:36:19 -0700 (PDT)
Message-ID: <84bf86db-618b-4387-bef7-5cc02078c99e@broadcom.com>
Date: Thu, 22 Oct 2026 10:36:17 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] ata: ahci_brcm: Initialize the NSP interface clock
 and reset
To: Damien Le Moal <dlemoal@kernel.org>, linux-arm-kernel@lists.infradead.org
Cc: Niklas Cassel <cassel@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Tejun Heo <tj@kernel.org>,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 "open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)"
 <linux-ide@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
References: <20261021165555.652102-1-florian.fainelli@broadcom.com>
 <20261021165555.652102-4-florian.fainelli@broadcom.com>
 <79a81f1d-2964-4b2a-80d1-64e01c202468@kernel.org>
Content-Language: en-US, fr-FR
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <79a81f1d-2964-4b2a-80d1-64e01c202468@kernel.org>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_103624_680531_333FFC79 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -2.4 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/21/26 23:50, Damien Le Moal wrote:
> On 2026/10/21 18:55, Florian Fainelli wrote:
>> The NSP probe path assumes firmware has enabled the SATA IDM interface
>> clock and released the core reset. The downstream iProc config_AHCI()
>> sequence explicitly performs both operations before accessing AHCI.
>> Without that setup, a cold boot can access an inactive controller.
>>
>> Map the optional NSP IDM register region and enable the interface clock
>> before releasing reset, retaining the downstream settling intervals.
>> Perform the sequence at probe and resume before reconfiguring SATA.
>>
>> Keep the resource optional so older device trees continue to rely on
>> firmware initialization.
>>
>> Fixes: 3ee2e6dcaa35 ("ata: ahci_brcm: Add support for Broadcom NSP SoC")
>> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
>> ---
>>   drivers/ata/ahci_brcm.c | 34 ++++++++++++++++++++++++++++++++++
>>   1 file changed, 34 insertions(+)
>>
>> diff --git a/drivers/ata/ahci_brcm.c b/drivers/ata/ahci_brcm.c
>> index 29be74fedcf0..2ed60806b671 100644
>> --- a/drivers/ata/ahci_brcm.c
>> +++ b/drivers/ata/ahci_brcm.c
>> @@ -6,7 +6,9 @@
>>    */
>>   
>>   #include <linux/ahci_platform.h>
>> +#include <linux/bcma/bcma_regs.h>
>>   #include <linux/compiler.h>
>> +#include <linux/delay.h>
>>   #include <linux/device.h>
>>   #include <linux/init.h>
>>   #include <linux/interrupt.h>
>> @@ -83,6 +85,7 @@ enum brcm_ahci_quirks {
>>   struct brcm_ahci_priv {
>>   	struct device *dev;
>>   	void __iomem *top_ctrl;
>> +	void __iomem *idm;
>>   	u32 port_mask;
>>   	u32 quirks;
>>   	enum brcm_ahci_version version;
>> @@ -230,6 +233,25 @@ static u32 brcm_ahci_get_portmask(struct ahci_host_priv *hpriv,
>>   	return impl;
>>   }
>>   
>> +static void brcm_sata_init_idm(struct brcm_ahci_priv *priv)
>> +{
>> +	u32 data;
>> +
>> +	if (!priv->idm)
>> +		return;
>> +
>> +	/* Enable the interface clock before taking the SATA core out of reset. */
> 
> Long line. Please split before 80 chars.
> 
>> +	data = readl(priv->idm + BCMA_IOCTL);
>> +	writel(data | BCMA_IOCTL_CLK, priv->idm + BCMA_IOCTL);
>> +	readl(priv->idm + BCMA_IOCTL);
>> +	usleep_range(1000, 2000);
>> +
>> +	data = readl(priv->idm + BCMA_RESET_CTL);
>> +	writel(data & ~BCMA_RESET_CTL_RESET, priv->idm + BCMA_RESET_CTL);
>> +	readl(priv->idm + BCMA_RESET_CTL);
>> +	usleep_range(1000, 2000);
>> +}
>> +
>>   static void brcm_sata_init(struct brcm_ahci_priv *priv)
>>   {
>>   	void __iomem *ctrl = priv->top_ctrl + SATA_TOP_CTRL_BUS_CTRL;
>> @@ -369,6 +391,8 @@ static int __maybe_unused brcm_ahci_resume(struct device *dev)
>>   	struct brcm_ahci_priv *priv = hpriv->plat_data;
>>   	int ret = 0;
>>   
>> +	brcm_sata_init_idm(priv);
>> +
>>   	ret = reset_control_deassert(priv->rcdev_ahci);
>>   	if (ret)
>>   		return ret;
>> @@ -453,6 +477,14 @@ static int brcm_ahci_probe(struct platform_device *pdev)
>>   	priv->version = (unsigned long)of_id->data;
>>   	priv->dev = dev;
>>   
>> +	/* Older NSP device trees rely on firmware to initialize the IDM. */
>> +	if (priv->version == BRCM_SATA_NSP &&
>> +	    platform_get_resource_byname(pdev, IORESOURCE_MEM, "idm")) {
>> +		priv->idm = devm_platform_ioremap_resource_byname(pdev, "idm");
>> +		if (IS_ERR(priv->idm))
>> +			return PTR_ERR(priv->idm);
>> +	}
>> +
>>   	priv->top_ctrl = devm_platform_ioremap_resource_byname(pdev, "top-ctrl");
>>   	if (IS_ERR(priv->top_ctrl))
>>   		return PTR_ERR(priv->top_ctrl);
>> @@ -493,6 +525,8 @@ static int brcm_ahci_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		return ret;
>>   
>> +	brcm_sata_init_idm(priv);
> 
> Here, this is called *before* the clocks are enabled, but in brcm_ahci_resume(),
> brcm_sata_init() -> brcm_sata_init_idm(() is called *after* the clocks are
> enabled. Does this matter?

The NSP platform does not support suspend/resume but the consistency 
should be preserved, logically this should be just like during 
initialization, thanks!
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
