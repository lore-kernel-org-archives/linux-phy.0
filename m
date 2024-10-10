Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26741D24451
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 20:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiYvjGp+Yx2juDMPiRC4NOWQBVBuV7YvPVFDRqn5A0w=; b=ungYuyXeqsVAYA
	UmX3X4JkxvQovCEhqLaogi+uOdyPMSNzpERImEnLm5KQyiPZWMkUCaxeT4xogQC9WEUpxpUI42hDi
	X8zVFiErcvSgvvxU0MjithcU3K/RWtXKhwWUNwG9sOxSdjDVx5ffvVmkS9N6xs9CS5Xbzp6JTRCGM
	gzgfl+4Z8bL4aekyjXOfPBF4C8MmAxrMCOnakUaLJnxHZhneU2zNqp8vSwG6nWnZo54o/LxjxBYDI
	kub51xKpPFM4YoCbIF2acf7TGrEWRkwUINql9MiWMVWncW7UMa+CGSqPA9HA5uuDnHRYBy2CZ15J4
	7o6x3ip5ZeudjKEajINw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syzyS-0000000EIvC-3DMO;
	Thu, 10 Oct 2024 20:41:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syzPD-0000000EDq2-43cU
	for linux-phy@bombadil.infradead.org;
	Thu, 10 Oct 2024 20:05:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=1kfxY5dxa3KZn7mw1I9qDDMM0VyCHvSNS/OoZLwB0jk=; b=GGeTty/XKhb6so32XBfT53xiS6
	Uu4a1NmDg6W7HbZbM9UqBwL9OLOkn2Ph0DLQaVfcwCSyQzqqEAdtd34l6GCWv5b5l+oKYNykzmH91
	dBc0DH58NYpYfkUE5B1euMA9Y+8Py3GVk0gZG8xoyY92RvxSf7cKhE9g+WkMgqmh1q3MeuQT7JkkF
	f32b3VywQFafMhO3sfAf9QhWehbb7GZ8fVZz6xSoRPeSwYqokyhScomygxtmDwKLy1+df7MBfi8VJ
	8+LKa91zWDe7yUgwsp+4RrKBo3TzOqvAQ0e2ttZVzoFpamSOqmEJ96ntferkpRBTQrkAZZzpmZxuP
	X4pM8mdA==;
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syzP2-00000005c5H-2yKN
	for linux-phy@lists.infradead.org;
	Thu, 10 Oct 2024 20:04:58 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-7e9f355dd5dso634999a12.0
        for <linux-phy@lists.infradead.org>; Thu, 10 Oct 2024 13:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728590687; x=1729195487; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1kfxY5dxa3KZn7mw1I9qDDMM0VyCHvSNS/OoZLwB0jk=;
        b=JM1NNR1M9V9ocycy9cbPyA+FsWAwnt/FoNECCldOURWjjGZeE3fG9wAFjzJ5wHuB95
         A77OnvGmCAtvYyV7voPbvpvzluZVZIxu2dbVCn4OWLcyXcTP0k5MadZrTW9giW7E2dL9
         8qZvW6taTitkJjzQ7mebV6SkG+GmywsWuC3bY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728590687; x=1729195487;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1kfxY5dxa3KZn7mw1I9qDDMM0VyCHvSNS/OoZLwB0jk=;
        b=TKGzCLwd/qfOHHxnb9ALQiPwVfNUZFA7inxw8wL7FY3VtpLPDxk6y6S4CoT7QoTRxM
         kY+Kc8O5uD5Rrz/SvBY0LWiptu4SfltooY1rW3b35VK6kofjJnycD443acpNt0+nHcdr
         OyP8kqsSh9hq4dLuIuYmS7ts4XNpDbk3Hck6HQGEpnBcdoOeSKM/HaJfmR3cYSu/ty4W
         Aul7DmaqHrrXbDT2vlpA8q1pkxkntjWba2gZ1f904v8UIWAlEDvBl+YsA0cwjnM97woI
         +4Van7hs315ECOIRwduRrSFRsPOOn5bb2nb6bq0mxoXizVNXHK8BILYdzA05HECctolF
         c1Gg==
X-Forwarded-Encrypted: i=1; AJvYcCXp7YNH/+qTESz4IsbIi7C1aTHc6zzkP/XV23G36gSJOt9vc4skAOR3aS1sy+Oe/qz2mzbU8JiSga0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyDecriuAc2pdphafozoFvOIJRthlMAbBtt+H5eLSa+v/ueuDIj
	2sy98oleHtf1LRxTaFeBSIC5o6vFzoVjA/WFMPnhyrNHLwUyu3I5MBawBkFbHw==
X-Google-Smtp-Source: AGHT+IFiicFTOFjgd1LeCJfuwm9PawoG5N0RN3W/CQbaf/Xyzo0b5JzKnfXqEP1L6A1NF/njMFIADw==
X-Received: by 2002:a05:6a21:3116:b0:1d8:a7a8:8b6f with SMTP id adf61e73a8af0-1d8bcf2c5a7mr271243637.14.1728590687133;
        Thu, 10 Oct 2024 13:04:47 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2ab109e4sm1406357b3a.206.2024.10.10.13.04.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2024 13:04:46 -0700 (PDT)
Message-ID: <f9b54eb5-fa11-4781-bdef-711f3ba527b9@broadcom.com>
Date: Thu, 10 Oct 2024 13:04:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: usb: disable COMMONONN for dual mode
To: Justin Chen <justin.chen@broadcom.com>, linux-phy@lists.infradead.org
Cc: kishon@kernel.org, vkoul@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, alcooperx@gmail.com
References: <20241010185344.859865-1-justin.chen@broadcom.com>
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
In-Reply-To: <20241010185344.859865-1-justin.chen@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_210454_407694_6E2D8008 
X-CRM114-Status: UNSURE (   7.86  )
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

On 10/10/24 11:53, Justin Chen wrote:
> The COMMONONN bit suspends the phy when the port is put into a suspend
> state. However when the phy is shared between host and device in dual
> mode, this no longer works cleanly as there is no synchronization between
> the two.
> 
> Fixes: 5095d045a962 ("phy: usb: Turn off phy when port is in suspend")
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Acked-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
