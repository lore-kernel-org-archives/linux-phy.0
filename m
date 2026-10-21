Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6B7606A31B
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 17:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bpZMO6UL;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=RF3YvWkB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBW6H88b+3lQW6EIQUqnLspj/lpI9Yifdxut0NMKfuI=; b=bpZMO6ULSPvoAA
	JshNphJNcaY6WoDeeSC7dSvxlaUtLyJZo2wNFA+EASUJ8Y7lQwcW7KNJWm0n9uslTvLOE89GBdxE8
	cMOOvEV7htPCGuMq449y1goOvB14hlOCK7yYye2fUbK5R0OLnYRG+ux3S9VxrlzBWOs/UewifhsJ6
	rQ81B/BY7fcYcb3+NBMgwHmmjld9hmRPVmqCotN2CC7BXfnzlH1HhtTVvTv+JGd+43LY0BmJeAQ+x
	/2ezOXHC4tDfLZP9Gx1wLhi4htRBku9SSPZIdsUzGB4WsSvWqMbV2DFtm1BRjl6FZ5vQ/Ovxgcmul
	qi62d0l8XhV3QsQX4Q5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJZi3-0000000CVRt-2tAV;
	Wed, 21 Oct 2026 17:02:39 +0000
Received: from mail-pj1-x1064.google.com ([2607:f8b0:4864:20::1064])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJZi0-0000000CVQj-0XeW
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 17:02:38 +0000
Received: by mail-pj1-x1064.google.com with SMTP id 98e67ed59e1d1-3ab2cb8d577so865316a91.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 10:02:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792602155; x=1793206955;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=8hOuabnxLm0beCp1h5BHdKuYcbUneAYJ9aWN1l0DLgQ=;
        b=ZasOoCdsH4D8jhBj5WX1J0yT8R/6MVE3YP1/8NJ6OdTvSKgOozhJEu0aN79jPkhKKe
         rzFH9wNmcJyNJbcehFoACvPcepnGgrlmCj04Q1NQcsVFoko3x8vXpStxWXFNWCCXq3BW
         F1P3bwsTn9LfXQuJ7fuiGSqOEQS16pZsbCSpXYaqVhIe5z+7CY1Cf25JfyOLP9wnhn+S
         hY467vcnx9CW995HFgG3K9bDeB+CVibZbIsGpWgqXgsKltcJ3Ev8VZoOLCb7flpUv0BM
         4pAVPIieKJqRID08gVDXJvEEPyY6hZGhea4WVA1Sbx9x0ozVk3uZCoeXQHRC2fa1SXJl
         6cAg==
X-Forwarded-Encrypted: i=1; AKwUvBxR65hEGQCUlLNDam39C3GHAbOjFKm3v0vhvrfHa2iVWCM3/VkUtA4RNMnONv7zNqLKDD7+h0wjpKw=@lists.infradead.org
X-Gm-Message-State: AFq9FYIV3fvuumxsMMJ0uRkZHi6F+FTghobibsOqhxUG0rWZxscqfjKu
	kJ8zRcIHX9l7IW37VAhGlLj5wwBBWwSuSmWIJJ6g2qWj7gob8wU0Uv9Yu+FZvjkOTYEWXP3xAFD
	tM8tYtBV2boD3tbtZduPtmO9TbwaVeaKa1283PYMktPRrdyFST+kmLOy+KFOckYGoBO7W8DKZ7j
	PGZSyi/8o88VyK8ursOvCIR6+FjsbenNztO57HwS0BYzwgj1y6fdagmeynl3WJK1cGm5c/QB9GU
	p4QFbGtWz1kq8k93BaQ1Dr+5A==
X-Gm-Gg: AYBFou0KWEEYEHEdQ5XHLn7JevEvXU+spDwxrrgqlq41nEZes7ZVyncA8HDr3wkvP1B
	4rpj8Tin+lahHbfCYdow1fs3TiLCaYrQRJHOtvieddHfZwMtL5ME7g15/FAF6cf2PEdM/bGdOYK
	HMU3Lnul1UFk3BO17BMNzZ9wW6pM9nUgrB3poBXNh/fCK1Us83iFbx/ug/2jEilK6Nx0r8LRD8A
	ixAa6mNFJAUfYaSGA2Kpgg3NYEI0AmZnuL12gDPlzY+lUsJllSP8WueTRmgqhFk/pL3qAsEe92Z
	IBU/ZV3mrBAvVTfgjHyfLlLxMJ47VT1u40kMHY9w61MS4rulpK4Vx6tWgleGKPigYIsE7lcz9sI
	6RTF1SIOMkOGFA9HCOmWxDF+noP14QnixIqIX1kB++qeeecj9FEIGDOU5kqxNYdYzPDhPsBEBIt
	cvzSWz8GJXijy65+khDbwpQnepE8c9BfscTJHFlIysE7s=
X-Received: by 2002:a17:90b:17c2:b0:3a7:b260:9ccc with SMTP id 98e67ed59e1d1-3ad870b7de1mr1986667a91.65.1792602154337;
        Wed, 21 Oct 2026 10:02:34 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-120.dlp.protect.broadcom.com. [144.49.247.120])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ad8602f10asm962934a91.1.2026.10.21.10.02.33
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2026 10:02:34 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3ac575a9198so1581347a91.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 10:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1792602152; x=1793206952; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8hOuabnxLm0beCp1h5BHdKuYcbUneAYJ9aWN1l0DLgQ=;
        b=RF3YvWkBDlNRlKBhbFxCjg3o8EtHmHZezlvBJpy4TJAB3Izor+nJKifL0ZsqD96hmY
         oPJlZxD3JX6tCXhdOpuMsC0rvHdQG9o2qFXn25TOlAVsW32ZUwPt3myGiCHTJC3pW4gj
         yYN83sYP8m/NCkpc78qhnPtQQau4ujZ3jGJjE=
X-Forwarded-Encrypted: i=1; AKwUvBwJX3UwaMQEQRTeN20i0Zhb1ngmFIml7LME1MWqZhMFSzzkzM36ZcOYvKvuikqr8cY7OxPBscbyHQI=@lists.infradead.org
X-Received: by 2002:a17:90b:582d:b0:3a8:d71:5fda with SMTP id 98e67ed59e1d1-3ad870b2e7cmr2118616a91.63.1792602152086;
        Wed, 21 Oct 2026 10:02:32 -0700 (PDT)
X-Received: by 2002:a17:90b:582d:b0:3a8:d71:5fda with SMTP id 98e67ed59e1d1-3ad870b2e7cmr2118588a91.63.1792602151503;
        Wed, 21 Oct 2026 10:02:31 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ada4890c56sm333869a91.2.2026.10.21.10.02.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 10:02:29 -0700 (PDT)
Message-ID: <45bc44ff-664b-4a18-bdcc-bb812220e2e6@broadcom.com>
Date: Wed, 21 Oct 2026 10:02:26 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] Fix SATA support for NSP SoCs
To: linux-arm-kernel@lists.infradead.org
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
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
In-Reply-To: <20261021165555.652102-1-florian.fainelli@broadcom.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_100236_184581_4D5D5F8C 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/21/26 09:55, Florian Fainelli wrote:
> This patch series fixes SATA on the Northstar Plus (BCM58xxx/8831x)
> which was broken due to a number of things:
> 
> - the SATA PHY assumed separate PCB windows when a shared one is used
>    for this generation of SoCs
> - the clock/reset (IDM) was not being configured by the driver which
>    meant that depending upon what the boot loader did, or did not, we
>    could have had the AHCI controller still in reset by then
> - on some reference boards, the AHCI controller is not DMA coherent,
>    assuming so leads to all sorts of timeouts, data corruption, etc.
> 
> Since this touches several subsystems: DT, PHY, AHCI and DTS, I would be
> keen on having Damien merge all of those via his tree if acceptable by
> the DT and PHY maintainers, I am OK either way for Broadcom SoC.

Argh, looks like I submitted patches 5 and 6 twice after I had 
re-ordered them, the correct order is in the cover letter:

ARM: dts: broadcom: Use noncoherent SATA DMA on BCM958625HR
ARM: dts: broadcom: Enable SATA on BCM958625HR

Will wait for feedback and resubmit if necessary. Thanks!
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
