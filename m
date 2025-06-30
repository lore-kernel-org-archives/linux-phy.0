Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 885ECC83038
	for <linux-phy@archiver.kernel.org>; Mon, 30 Jun 2025 19:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+Nbu0sieqsWVAAjjkSIG0VD3OW+45NHIPbbTJzFj48=; b=wESZQagJdtAJgm
	jzb4JNgNv4bSxP2mj/DzGIbO0/C0/Cj5aw7b1jAieNXX9gy3XT6wy48g2hahleyE/MUztMpyAWmaz
	3Z+A+tj1Gsbx5e2vLQVYtacg8PtO7YaoEXm9HOGDGQ4gqS+2FlYPkh1Sx2Ot5x2h3qnEFphdX+alV
	r9Wnm56+fNYac6aSr596LcdEDUZ2mo339obwo+tYBcvi1JSIQmjA4yROBFFIlzarEiz8F30uMGPxd
	P5FWs7kZNye0Oiq1KXvqom62clrvpNEzzD4aZSdek9OsrfP7RASMLt8NRbHe+dbcGRVGfdfkAZvf/
	MgyLS/jY5/mFamVMEh6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWJxT-00000003Gi1-0nkL;
	Mon, 30 Jun 2025 19:14:27 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWJpk-00000003Flu-36cU
	for linux-phy@lists.infradead.org;
	Mon, 30 Jun 2025 19:06:30 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-237e6963f63so14236705ad.2
        for <linux-phy@lists.infradead.org>; Mon, 30 Jun 2025 12:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1751310388; x=1751915188; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1ifqxTBeQ+hR1fKmYKfMtsbKbYA3naoBciBfh4zZv5Y=;
        b=MNxEqIxA5NQnWxjxfWGaWGsz8I2jZvAosMJbExwAwVpX2GAJM1jYuKhdiXJSIRwR9w
         DDkWCqgiKZmQObrIh2DF8BbBLpo7TgxWLeryrG9O8SnaTnPxf6LX/3l4/9AszruWXgbD
         R1s3pSAYaGwijRal0iE8oq3IeP/HRRxE1vx7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751310388; x=1751915188;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ifqxTBeQ+hR1fKmYKfMtsbKbYA3naoBciBfh4zZv5Y=;
        b=iUmXrTdHRiwLtWR5agHI9bWR1RcWzHuEcFCOebNUue+ccGKEIj0plod/mqyGL8v1m5
         pNFVStAXYVEkQJTqkUMcc91oAVp63aKW2jKZlXmEfplr+Tq7EX73xOrUu0bK7ozbV9Ko
         GLKA4Nbtgo9cVgwGvSLvEGLvs3RP8r0udi9hPtdpr5TFAHKJy+8Z+zWHGuV27hNWdVXS
         luMU7rNOTE4Uozm11tTiPI3O7kb3fuRQiOVA0z2HBv0/ezndmoK3QHjcd6KAS32yhEyD
         K4QRBKyt3ZFJCbsRXsI/PlsbiyCWvEnPJVytvItE6U5vuUDDnD8rBJPYC9jc9fiJFz9Z
         0i0A==
X-Gm-Message-State: AOJu0Yx3RWbP3ArCCUF2pb3fBeS/R6gkvlHzGki8THx/aNu69jYscwjG
	90J8Bs+HJ3D4lvjAA69qT6swbi78RTnlDB1ujQHikSFLdl7j4cLc5esvV7UDAnY3VQ==
X-Gm-Gg: ASbGnctnSqjBa5r8Y2sIA9g7okHe0HHROSiL7dXJQ22tqfBrQ1JGrdIqrMsRsZR/niX
	RBnMsGZvtAEYdeHonoFrZCt2OAz4eDrAHaKScVCzZyHT8BzuDpv92YbLYRadmP8PJX9ZtHFjbQl
	7hmVhoDTy5+Vczm9Gp1kpcGjRy+whaUFnRofJN+KP1SteBbBUYBj7Y7vR1mh1o57mDLrLCtHo/d
	b3avMJwDHN+BBYH9qU2kuOzsGK7begZKzsEiwoeGOa2gVMzcs5Cy2zDNj7ptNr8tocqKqmBAgom
	Xui5RTXzDus0Fpo3NbW+Pd/ckmtZZf8c3snODXUN0OLrNX56BgM2cL1mdx/GkXJs508bI08Nql9
	Pwm8sUPg0D+PliqzmRZew8jEkTQ==
X-Google-Smtp-Source: AGHT+IGrr+s2yHRofWEifQmJDsOPRoZeaxvkG2kjOYNFEpJTQ0qMZgmXnhWfnA7mYAH2pHmMqgczjw==
X-Received: by 2002:a17:902:f606:b0:237:cc75:77b0 with SMTP id d9443c01a7336-23ac4633f4cmr184335375ad.30.1751310387627;
        Mon, 30 Jun 2025 12:06:27 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb3ba530sm85783255ad.200.2025.06.30.12.06.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 12:06:26 -0700 (PDT)
Message-ID: <5a374bbf-8f2e-49fb-9e9f-a55a8362e134@broadcom.com>
Date: Mon, 30 Jun 2025 12:06:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: phy: Convert brcm,sr-usb-combo-phy to DT
 schema
To: "Rob Herring (Arm)" <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250627220126.214577-1-robh@kernel.org>
Content-Language: en-US
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
In-Reply-To: <20250627220126.214577-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_120628_785960_E1987324 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 6/27/25 15:01, 'Rob Herring (Arm)' via BCM-KERNEL-FEEDBACK-LIST,PDL 
wrote:
> Convert the Broadcom Stingray USB PHY binding to DT schema format. It's
> a straight forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
