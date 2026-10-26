Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74842606A33D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 19:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mYk2/ypb;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=GNYsxedr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=phAWxy46cRTdLpcQITpkyhEQJHhZLdb8VJrUgSX1rJk=; b=mYk2/ypbwuWvQNqoEutgKbS0XM
	W6hkYgo1+k4AknV8SuohXVK8X9BFacTMaAPD3AVYk0k5wghAHQXd/U5wyJ8U1e/tsjTjvq7Wc9+M3
	NKzr++cnenCzqkKDiYNMrXYngo3g7GyQ05+6noaiHc91GNvGf16y8QvGoPgFLwI5tf0jy4BPYii3y
	SczWMpjaBGpasJ/CXw4xQAjXWnvjKHGF7PhBCZqjgPc86daBdEbeX9GTHHsOtkO0jLmbuJ44c/t4N
	9Ffu+T2BTTR/kh5ne1yKyRADLkgdHg3eEqtxV4QIncNhim4ngFXExA4hRCR0gJCXbJQBNeNvbizG1
	U/i8WHKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQC5-000000039Es-3xke;
	Mon, 26 Oct 2026 19:17:17 +0000
Received: from mail-qk1-x762.google.com ([2607:f8b0:4864:20::762])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQC3-000000039E4-0F7n
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 19:17:16 +0000
Received: by mail-qk1-x762.google.com with SMTP id af79cd13be357-93f3c8958d5so339869985a.2
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:17:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793042234; x=1793647034;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=BdfLZ3+TQnhk/1R/dKHjB/gyQ9lcXQ2fJWw3eaIlqVQ=;
        b=t6yvE6FpksFYiuTEs2kvE3kFwHXE1t4V/45bVbFGu28H1lHLWQFNaZb5lN3qfO3/rw
         UBSc3D+J0Rc+yRKOV7WRs/9IR9biWvEZACUcgs7tFv0jX2heiMz81u0h6o1pEiCkdrH1
         EOb/NBMPm6GN7pHTHGVKCoB1+KfY9cuaYUFnitvaKvFuIcd3w3LXRqBwKSP8JZxrVgsE
         H8kD/+7wC6gmEzbh8AeHYrqisxRHR8GRiaccH8Bzr7lbZRrEm9H/7JUTUShdwijZ82bU
         biikWcXBZdLZ4F7TN3Onv6tJyfiEBb0gD8cqi9OJS9K6MyslyLExN2e4Q8cUSaPR9aEj
         iisA==
X-Forwarded-Encrypted: i=1; AKwUvBzgowP0kH3HSmaedCZ9E3/7Zchrwoal6L/t+Y7XhQIx7yGBBbg7vBeY9y/LsRAIWk9A1KCQbZPixYE=@lists.infradead.org
X-Gm-Message-State: AFq9FYJMWmRi3/puhx1EVbXymKu8pomdi2v7DPOQKk899XXWRiATROZF
	JCwNieLP17W8rg26y67pT5Sny6HETASm4o74jFFsI9VijB+PzothLwQVwG2iBrtG44aklmnPI6+
	t/9+mZyQADumbiCDPQhh/Y7DNrc6Jc+kv1m1jJVYJ5JkzWKMqSQsizf0IjqzXScHusUNXcIFNbO
	Roj9IP9weR2ICnvC+KpGzWKSIDKMIGoUCYFvtM+/Mm0dsG1igXOs3ByurlsDQ/6x4VyASLfM5dk
	BddsDnWQuFX6qE55+l12fUeaodE
X-Gm-Gg: AYBFou27qt4fepSRJ1oVTGe35E7kVZFMrN1Ve7kUlRMffuEWXZexUZdZmif9/HI00le
	GkUt+7TJyuyqUTPty9iVmQvLgoQD9JARp10wT/gYJsjrJKeP0BSpEmBEluYDUlyMWc2BcNoPhuX
	dhBRVg7Ut152wDM3ZQGNrAYvXMzzCVml+quApKmVpC4JS4a64gWrMAI0w5niKPIcN05fNswssu+
	2mQpP/dHxNJ5Zjo/PZ4HyhGiCQBvsON/qh975786hRESb85ZkKPOGXLZIRy0MadLaYZvE4hx5y2
	35ohtXcfW/Yu7H6oCLj6xNS/4l/rhwOo2aqUjcPEITn36bj4HNxNshdVxl2zz4VoQFiiMcoR/Vf
	4B0IvxAdISL87iNt22rGGMXtRC/Vgo6mbTmB+gYntXaCLtZh9BqfXuhINgS/1SuCsfW0PIErD0S
	QY3kgDcOVaKqOPkLllkRt+Z9KXOn61ie6HQY58fv+5
X-Received: by 2002:a05:620a:4720:b0:93f:5519:5e87 with SMTP id af79cd13be357-940ef7ac1b0mr1229076285a.4.1793042233646;
        Mon, 26 Oct 2026 12:17:13 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-23.dlp.protect.broadcom.com. [144.49.247.23])
        by smtp-relay.gmail.com with ESMTPS id af79cd13be357-940f35f0251sm106006085a.5.2026.10.26.12.17.13
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 12:17:13 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91785bd637bso83228316d6.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793042233; x=1793647033; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BdfLZ3+TQnhk/1R/dKHjB/gyQ9lcXQ2fJWw3eaIlqVQ=;
        b=GNYsxedrPkFjW1UU3rZJ78s3V/cdFUslMEiPABNoncCvub/MMmmtLPzXei3+w5foWt
         ECl5RPpRuHjgaui+VfEujzkOkCNEbrV4Us/PBe4/EyaAQHbsYMtHAc5ggX2dEPbG1Ws8
         HsKHjoREaHHxHloNelLDThWpPaeev2oxrQn4U=
X-Forwarded-Encrypted: i=1; AKwUvBx924TGGZID6mRt8p9VxPQtOZI0UsnsqTIeEfgJvTs2sMqKb4T5eTJZsCf6tPnP80Rx9vypaM3S4Sw=@lists.infradead.org
X-Received: by 2002:a05:6214:2602:b0:91b:83b7:b9c3 with SMTP id 6a1803df08f44-91c48cefde5mr132806716d6.5.1793042232872;
        Mon, 26 Oct 2026 12:17:12 -0700 (PDT)
X-Received: by 2002:a05:6214:2602:b0:91b:83b7:b9c3 with SMTP id 6a1803df08f44-91c48cefde5mr132806056d6.5.1793042232303;
        Mon, 26 Oct 2026 12:17:12 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91c47ce49d9sm80619336d6.45.2026.10.26.12.17.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2026 12:17:11 -0700 (PDT)
Message-ID: <6cf34238-ed4e-477c-938f-f5d6910fda1d@broadcom.com>
Date: Mon, 26 Oct 2026 12:17:08 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] ata: ahci_brcm: Initialize the NSP interface clock
 and reset
To: linux-kernel@vger.kernel.org
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
 <devicetree@vger.kernel.org>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
References: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
 <20261026182856.3168686-4-florian.fainelli@broadcom.com>
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
In-Reply-To: <20261026182856.3168686-4-florian.fainelli@broadcom.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_121715_119834_48312796 
X-CRM114-Status: GOOD (  10.32  )
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
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/26/26 11:28, Florian Fainelli wrote:
> The NSP probe path assumes firmware has enabled the SATA IDM interface
> clock and released the core reset. The downstream iProc config_AHCI()
> sequence explicitly performs both operations before accessing AHCI.
> Without that setup, a cold boot can access an inactive controller.
> 
> Map the optional NSP IDM register region and enable the interface clock
> before releasing reset, retaining the downstream settling intervals.
> Perform the sequence at probe and resume before reconfiguring SATA.
> 
> Keep the resource optional so older device trees continue to rely on
> firmware initialization.
> 
> Fixes: 3ee2e6dcaa35 ("ata: ahci_brcm: Add support for Broadcom NSP SoC")
> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>

Apologies, this is the same as v1, I will resubmit in a short while.
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
