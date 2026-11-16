Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29917606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 23:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BcuytNjC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=NBFYtE1U;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=CHBafn44
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mPyrsCW5Q4yDZko/WNfHTKrhb+IsV06vYeKdma6LcYo=; b=BcuytNjCaApEVkkGsrGiUg7Zhf
	s4oCYAbv/nVt160JYzb5ZJeQhQ9rT3TJxYfWHdWLp0MpwwrrKVdv/AInRhAWzyfWS/QEL40qHYcvI
	q5/uPcmSdG8HRtP/LL77LfX1JOxL8/MTL2U7isGSK5gk/otYzlb7OnnogicVSEbUPjOko5elH3ZCm
	jLcG+A0DA4Hdipz9BXkdWKtKoNadysNaMcWc3/FHJPSa35+WipYPgh+UuQccRo5hTl+RQBHPWQCQT
	AdqyzuiMFMrqLA8lTUUvhNLN2f8F9706dhXG+C9chcaNDOkK7KkxOV1vchVnzleq93V1k5JGzFox5
	gwM34oZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT5pK-0000000482p-3LDK;
	Mon, 16 Nov 2026 23:09:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT5pJ-0000000481c-2sME
	for linux-phy@bombadil.infradead.org;
	Mon, 16 Nov 2026 23:09:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=7JGRKYIhmwCYE3KPUYPJEdw6GaPbg8hbt4OXk4UERBc=; b=NBFYtE1UD9cqCbIA3pxc9OoOdq
	bxREbY0bstA9QlnVuVj8Gs8+UlaSmJaADWJkktt/N6F0LzP6lWjASLfXKMi6K49TP2fOrdu7kH8Pa
	0iA/+R9AxYlUFJyz2bH3A90fSKNcMXWt3mM1cZ27jmSYd1ucFl5YmP4ffoINxVZ0Np2sE5ecIImZL
	ynr5QHEgbAc+BfH7V3PBUbxSDvK7sxTymZIlBz+sNoT6mvb6eJB1dXn+MYg3jrjazWMXlkz1ZQYd0
	6v0Djh8mldb6NdOD6nH7gMePWeht7e70i32ivx7ALfKB6Y1Xmmg9TMtBWnXJ7li4Jx5iG1FuJFR+w
	gSnSSIJg==;
Received: from mail-oo1-xc64.google.com ([2607:f8b0:4864:20::c64])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT5pG-0000000EPEs-21ZE
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 23:09:28 +0000
Received: by mail-oo1-xc64.google.com with SMTP id 006d021491bc7-716b58a4365so2629753eaf.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 15:09:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794870563; x=1795475363;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=7JGRKYIhmwCYE3KPUYPJEdw6GaPbg8hbt4OXk4UERBc=;
        b=a+5yZrDx7WVxrzPGsKwwXAPtPA+GrlICTJ0Sr8jNUs79fmsRlnTqaDI+JerXCqCyaY
         8HyEnBH0+R/CHI00H3T4G+8yAS4yXxQ/0TMmKm779og4mbKGgRAjiKnEdlRcxznR8FOh
         1QBCegrwwP97f9yxyZvMiCvXFmJYI89dhEBynUSIviXIG8OKeUdsqKDnynHxNZyIH124
         lMovinxBk4w+ls0pApx+mkKwR2cm8C2a8t2q8k9oV2H9nkjDyn3l641amlVdWNPX4ero
         7CLY4K9iBdYdip8OQRl/sRniuCmmeTOgxVaZwnMBMPSDIXw2ufqI1LBL8uC/px1Mk7OK
         y4KA==
X-Forwarded-Encrypted: i=1; AL+hErFVDjBc8hF82yC/X4SxSfXAqy8zsjH6Mh86dVMsFjqWHOdaH60yngfDw/kIiUAAHH70s/40jo/H7Xg=@lists.infradead.org
X-Gm-Message-State: APuU4Z9HArBbxWjPWMkG4AQYK/1huxb/Gl7LMT9mWgqlqFuoYPmELgii
	IwCQrctTQInSK9u87EvsX9fD8x8PJKSaaz9rnGVgPSbiNVrz3GAIwhxVrTMNISLoGixPyf9tnk4
	FpdSCiLEkWkjm4ufh+wKkRpxVclqAlJLmdVyhcMMRWv9vFlF+KnjWImrYjzoMfvjC7ajqry1gaa
	YybmUUOaMLCTVnt5imJxpkMemd/+Bd0WHkUtP8bhhy5y0HJB0Q+J8Mc46hvXSyoRitZEaihbolJ
	zrXJcs53oVegMzxmUPokKwZIg==
X-Gm-Gg: AYBFou3D5mz6raf3JGcgMmZoTbv9W5lR/XSzbHfenmk2dWpfCmluk0z26jMxurSM+eK
	gW5tabU0kKr1sSsbg1D0hMKxjm4MJIuxiB+iRjVYCn3KQ+ldkpWujgwx2imFuj4PExU327IJnwJ
	eky0bFnWO2QEdfXq6NmTcMjL69XTefC1dYBv5Nyw/dhDzs0cDMtYr1RJ+Mzhh+5oiT4NjC7HL07
	VHItk/PfTJ5tgL1fCS9510yWJyqKemOkZ1GWrkVhhh4dLd6RrPMTiVrHZmZex+VHjuLCwJD3RLH
	U5IY7lWZkgUILZ8BoZigxeYs+mSVMKkpHvDsVISHcPTXMwHIzSzv1Oj9hmp/vHJ60hDbW+1laZI
	/lW/qleTo+BIlhP7DDkhVLxIsq49w40v1HwagBxfyqsFO9hHf73BsuSuzhmhn4N+xtXNdoBJEpO
	A+GJCVq3DxfYUG5qfKUEw3IA6J+3cHD2MDGnK+eF3z
X-Received: by 2002:a05:6820:c2d3:20b0:71a:fef5:8126 with SMTP id 006d021491bc7-71afef5cb52mr1086848eaf.5.1794870563310;
        Mon, 16 Nov 2026 15:09:23 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-28.dlp.protect.broadcom.com. [144.49.247.28])
        by smtp-relay.gmail.com with ESMTPS id 586e51a60fabf-4afe21eaf5esm116795fac.17.2026.11.16.15.09.22
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2026 15:09:23 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-139b62317d0so5858710c88.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 15:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1794870561; x=1795475361; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7JGRKYIhmwCYE3KPUYPJEdw6GaPbg8hbt4OXk4UERBc=;
        b=CHBafn44HdkZ84mGH9ZvhsWfKl02fPGkGYQ0X+0uSDELe1w9tgBO8nEAFj5cEHY38Q
         dtp89/3tE9EBNrWroZH/Odc8Q94VPlimsIOqdZzpY7TawQIDbqbnAU68fJkdasXj+vv9
         aJv7j311hte1fUP5A5bi7qxT5QnBQ6jjwP+PE=
X-Forwarded-Encrypted: i=1; AL+hErHk+5NPyL8hU47KtG4WyVh3lSVIictUw7arC9ibUhTVlBKol0TLboSLXe5zLCNT3A9DkKfNydAFOko=@lists.infradead.org
X-Received: by 2002:a05:701b:4508:20b0:194:9e7a:3ba2 with SMTP id a92af1059eb24-1b50306c4d3mr12089861c88.2.1794870561021;
        Mon, 16 Nov 2026 15:09:21 -0800 (PST)
X-Received: by 2002:a05:701b:4508:20b0:194:9e7a:3ba2 with SMTP id a92af1059eb24-1b50306c4d3mr12089825c88.2.1794870560347;
        Mon, 16 Nov 2026 15:09:20 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b50316e008sm35222352c88.6.2026.11.16.15.09.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2026 15:09:19 -0800 (PST)
Message-ID: <1b7b63a6-ef87-4a2d-be3a-ec6ee34c6173@broadcom.com>
Date: Mon, 16 Nov 2026 15:09:17 -0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/6] phy: broadcom: brcm-sata: Keep NSP ports in the
 shared PCB window
To: linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Tejun Heo <tj@kernel.org>,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 "open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)"
 <linux-ide@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
 <20261029212513.4126083-2-florian.fainelli@broadcom.com>
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
In-Reply-To: <20261029212513.4126083-2-florian.fainelli@broadcom.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_230926_586781_EA406565 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -0.2 (/)
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

On 10/29/26 14:25, Florian Fainelli wrote:
> Northstar Plus has one PCB register aperture for both SATA ports. Its
> per-port OOB settings use separate banks, while the PLL registers are
> shared.
> 
> The 40nm MDIO refactor made all non-40nm platforms use a 0x1000 per-port
> stride. NSP previously passed the shared base directly to the helpers.
> For port 1, the new stride moves the bank selector from 0x1804033c to
> 0x1804133c in the AHCI register window, outside the PHY resource, and
> prevents the second PHY from being initialized correctly.
> 
> Exclude NSP from the per-port aperture offset in both read and write
> helpers, preserving its existing bank selection.
> 
> Fixes: 0ed41b33882c ("phy: brcm-sata: Correct MDIO operations for 40nm platforms")
> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
> ---
>   drivers/phy/broadcom/phy-brcm-sata.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/broadcom/phy-brcm-sata.c b/drivers/phy/broadcom/phy-brcm-sata.c
> index fb69e21a0292..b5fb9dff1ae9 100644
> --- a/drivers/phy/broadcom/phy-brcm-sata.c
> +++ b/drivers/phy/broadcom/phy-brcm-sata.c
> @@ -215,9 +215,10 @@ static void brcm_sata_phy_wr(struct brcm_sata_port *port, u32 bank,
>   	void __iomem *pcb_base = priv->phy_base;
>   	u32 tmp;
>   
> +	/* NSP has one shared PCB window; its per-port OOB banks are selected below. */
>   	if (priv->version == BRCM_SATA_PHY_STB_40NM)
>   		bank += (port->portnum * SATA_PCB_REG_40NM_SPACE_SIZE);
> -	else
> +	else if (priv->version != BRCM_SATA_PHY_IPROC_NSP)
>   		pcb_base += (port->portnum * SATA_PCB_REG_28NM_SPACE_SIZE);
>   
>   	writel(bank, pcb_base + SATA_PCB_BANK_OFFSET);
> @@ -233,7 +234,7 @@ static u32 brcm_sata_phy_rd(struct brcm_sata_port *port, u32 bank, u32 ofs)
>   
>   	if (priv->version == BRCM_SATA_PHY_STB_40NM)
>   		bank += (port->portnum * SATA_PCB_REG_40NM_SPACE_SIZE);
> -	else
> +	else if (priv->version != BRCM_SATA_PHY_IPROC_NSP)
>   		pcb_base += (port->portnum * SATA_PCB_REG_28NM_SPACE_SIZE);
>   
>   	writel(bank, pcb_base + SATA_PCB_BANK_OFFSET);

Vinod, can you apply this patch now since the other 5 went through their 
respective trees? Thanks!
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
