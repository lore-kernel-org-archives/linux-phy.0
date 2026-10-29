Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4396B606A31C
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 16:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Pb8D0Akl;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=RCyQRZGX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=j7HQksFa1SU0bdkHVr6RHMv5RCrYTsA4hSaGgXwPtGY=; b=Pb8D0Akl5UJCGVQSCVh0JrR5n2
	/HAGF9qezToPLTUjHYcIGONez/o5TNPRmqBoJ9hY3ld/uDDnV0HRmjpZpIxrGP2iz/qs5lb+FNUHe
	mJWIrrmvKbq3dWvTccJcxU79Clvjns/g82JPOXYSQqnf4VT4gOL37t3VWCwscy2zNUDvx09t6e6j7
	wR1M2eVb9BtfK6KD683oSFoonBqY/tRsAYR9e+hF4uko363KE7nLKMsykQQcvNIWjsFgHVadvUg9p
	qKkhIvnOvY5vfsw5HIFWs4aEVoeG+Hk9GRHwtR2w0Zuo/GNhzIcvNTKjCtS/g5N0dEE5E8pcn+tIU
	l1+SJ8LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMT6O-00000009orl-3Yme;
	Thu, 29 Oct 2026 16:35:44 +0000
Received: from mail-pj1-x1061.google.com ([2607:f8b0:4864:20::1061])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMT6M-00000009oqg-19DM
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 16:35:43 +0000
Received: by mail-pj1-x1061.google.com with SMTP id 98e67ed59e1d1-3ac451e128cso1727424a91.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 09:35:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793291741; x=1793896541;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=GjQwvDz4mWIuZZ+lNXDjzqnPWz3b8NLeIsPBGcLEPHs=;
        b=G+NLpM/dyWHt5jhrpoA5XtIOMxDlMnVALqF6VRdqPWNHIFuhVSP4PokauNHBUU7RTB
         X728oOJol5T6LdfxAci0c8asa6Z05jsdzRSSRlrYNf9tbOhku3nuPS12mYYQOs8qIy+Z
         AARo0/Blt8KOGNbOmYUQOdn916z+VzAAhEkukWB9kVrKlFeVS3yOaW1CoqHu1HqDwYt0
         nLG0UDMRyAaldjpqflH5V7pm4CAZyDrPuHpqnz02gIKlloEo1IEWtU8jt8B0SSS/NJHT
         0yhqkJx3MxUp7PnreO/H0BTTgim65MbOk7uo/TFSjX9NJsMSOdR9KZLnY/UlgGNt5EUa
         NfmA==
X-Forwarded-Encrypted: i=1; AKwUvBwfNlRMUaYBZcuFylDoM0NNCM59HDG4ccl3yjnO/YdO0jJVuD0ati+dx2+RTHsa/IEvXTIU+k5vNtk=@lists.infradead.org
X-Gm-Message-State: AFq9FYJOks6jEk6VquAXl6pbyiCUX4TNtoZNRwrU/cHn+9TtxjKLUWhc
	W6ig3TrM7Q9QIZ/aUpO7VqnUFgr1K23Wl47zG5t9xuXO2ugoVGuImh6tpGSBm8WQaFFJMGRHnJs
	Bbr+2yjsRFS03PxvfpL3FSrY4GQAgrJHUB7DKrATYixpR/kZWExWOUaDLq6N9+sNTD183x+Ql5G
	HJ8zzgZk4fqBR3cZNDac2jWea0kJ+HTDdhXmkuXmcRAxJxyv07VoWa06E8SXBA/l8kgZvqO3mKP
	21KAaEnnrl5IG6cHrDTFGZJb0yc
X-Gm-Gg: AYBFou3Pf01dpm5fZ0GWeqVrFM1rD8mIq5+zrZEbr40aNuO8Y4e5rwbHdMv5JlgTsBm
	X37JRb4G3z0I7A3cKAAjkYbQoVxeYtMtYBgeUW8PsXOJEBYjlkUKpnCqhsa603ETyxDg7Nw4Keu
	heLdeS2OQIBfN2pricirigtIs40+LTfvIm0gh+EtPLZvkuC7PI8g2TaSUFZSblhigBsCqM0nsh/
	qAMAIJ5bkvFRZm+b0UaumOiLF6ORZzH+hWkczlryCHw8AQvl+coNOGt11G2hh0a3SP4CBCeMMoW
	kRyVyu6TUSpHznAc3yyWhlDxd2dEIbbDyovAmxA43WrRkK+9nkSdI9xPpFp56sdBdRAD59KHbJR
	o8gdMXx3JQM6io9Bu9ep/2HnNegof0DnKXBK6z4ydW4tV6JYdIBhUq+FT3RMEMOkHMlkGeSFNOW
	hr4LZMu2nVW8GLUpbpR6hbxQXT2RM1e8eK2w8gkcIaLxk=
X-Received: by 2002:a17:90b:4a4f:b0:3ac:fe93:a731 with SMTP id 98e67ed59e1d1-3ae5822102cmr4804320a91.56.1793291740759;
        Thu, 29 Oct 2026 09:35:40 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-120.dlp.protect.broadcom.com. [144.49.247.120])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae84587856sm210007a91.3.2026.10.29.09.35.40
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2026 09:35:40 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-53395d51187so39188761cf.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 09:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793291739; x=1793896539; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GjQwvDz4mWIuZZ+lNXDjzqnPWz3b8NLeIsPBGcLEPHs=;
        b=RCyQRZGX7fyryFDiLLUaSJcaldvel8az3ObbyFv/bnZFhNcHK1DwK1LKgKs48OwU4q
         9vsKzNR3JtfU2ya0LgqjhiLZikZkfLsyPaKabHNTs6mr6c7O52h4P8Aq7WAt9eRHK9Lr
         r5LvkiNm312eytkWSolXMHB7Ws5qAivOWtNhM=
X-Forwarded-Encrypted: i=1; AKwUvBxcgZywe+L1uqA9+JLT7C4mDYlOUgkjmxSLAKPtFpcPdRsiEE5K5JN5EBYdD71NWuR18EZU+uv2Qs0=@lists.infradead.org
X-Received: by 2002:ac8:59cb:0:b0:535:fc2d:b7c2 with SMTP id d75a77b69052e-53fcb7f9340mr101251841cf.33.1793291739296;
        Thu, 29 Oct 2026 09:35:39 -0700 (PDT)
X-Received: by 2002:ac8:59cb:0:b0:535:fc2d:b7c2 with SMTP id d75a77b69052e-53fcb7f9340mr101251311cf.33.1793291738724;
        Thu, 29 Oct 2026 09:35:38 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ca31b46f3sm272576d6.45.2026.10.29.09.35.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2026 09:35:38 -0700 (PDT)
Message-ID: <cb6c4485-90c4-4ea2-8df8-4e1ccf47dbb1@broadcom.com>
Date: Thu, 29 Oct 2026 09:35:32 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] dt-bindings: ata: sata-brcm: Describe the NSP IDM
 registers
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, Damien Le Moal <dlemoal@kernel.org>,
 Niklas Cassel <cassel@kernel.org>, Rob Herring <robh@kernel.org>,
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
 <devicetree@vger.kernel.org>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
References: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
 <20261026191618.3178830-3-florian.fainelli@broadcom.com>
 <20261029-versed-automatic-orangutan-43cfde@quoll>
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
In-Reply-To: <20261029-versed-automatic-orangutan-43cfde@quoll>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_093542_317050_B4BD95C3 
X-CRM114-Status: GOOD (  10.32  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/29/26 01:09, Krzysztof Kozlowski wrote:
> On Mon, Oct 26, 2026 at 12:16:14PM -0700, Florian Fainelli wrote:
>> Northstar Plus uses the SATA IDM block to enable the interface clock and
>> deassert the core reset before accessing the controller registers.
> 
> And which compatible in the binding is "Northstar Plus"? I tried to map
> them to arm/bcm/brcm,nsp.yaml but nothing is there, so it looks like you
> are making changes without having actual compatible documented. In that
> case this is not needed. Make changes WITH documenting new compatible.

There is an existing compatible defined: brcm,bcm-nsp-ahci. NSP = North 
Star Plus.
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
