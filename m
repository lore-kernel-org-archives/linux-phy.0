Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E211E606A31A
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 16:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uht9xN+T;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=rgh6V+BD;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=JFv8N5ID
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=l8ptJdFrs/QyLkNTQKiFldMD5eWNl7PU2Dav4U3Syzg=; b=uht9xN+T25Q9Qcq8bWWkoXFfOK
	rKcQzHE8e6mcYp2ILh5WEA0tWaSK4Z2RxvFJARUKgF3a5qXvquUEYrmWwBL+x27PyzW9VuyXQNH70
	r+BSvpljylEa2gs1Kt5kVSnjLBmWqabLOMyt1LXQrRqHYeIdZzX0a+wB3NT29GwU6cY5ykPYSuPGf
	KuaRSZewhR4hMFx+3ZBy5FzuIBbwaPmySZj6tnVuExoIuPpFLYuVdDR8MyQe4F3wak0lGpP06+4Vz
	a0700/BTlxuMxYPRHWaqhQtJ83zhi0DsdILDP7bg7I+U9O3K3Zv0aRnH3mBkPgH6+BmpZSxb1mPP6
	zvDKItxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWaX-000000048k0-2fCg;
	Mon, 23 Nov 2026 16:08:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWaN-000000048gF-1yDv
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Nov 2026 16:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=uGwu5CmCdNBM7nYfVxbLkG8Sm/FCcmMZiBEkkapxiDQ=; b=rgh6V+BDDo35EMP36FOZi3FEGJ
	sm+/W9vMt5mpLa80tTKM/O9GawGsuw569BVoJPzRTVCFuOwYpFjSOlKMWtprI+xApjl0jH+vEHIOS
	XJ5oPxqeGmF6eyCWy+AzrItlmWi51XbKEITF+tiGh4TVJ/1j0FRupvd5gRWslC6bMtwj+xuyzW/uD
	Qqqul0YadvF5H1USa4IlzUbeSlZJbvAgnalTf9e8T6zqQv/tXwvyV8J/kko2XCZ0CuR6PMXoxU97c
	AvF7c6mOSQu6o2af28EFR44m1/cZrcplvi7jERhHNlbWdKfM2ObQ9dboic1zE5DVwkj6GXbRjUZ7l
	RxsKq1PA==;
Received: from mail-pg1-x564.google.com ([2607:f8b0:4864:20::564])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWaK-00000003Lts-2isL
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 16:08:06 +0000
Received: by mail-pg1-x564.google.com with SMTP id 41be03b00d2f7-cc4aa18f9afso1351172a12.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 08:08:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795450081; x=1796054881;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=uGwu5CmCdNBM7nYfVxbLkG8Sm/FCcmMZiBEkkapxiDQ=;
        b=OrpNP0mm3GuwbDRd1MamewIudq8tOP2wSh6MaE8W+nT4KHo3G1Upb9cvSl8PSJpLlF
         jAjuJQB5B5Mgcn0VZao8qkSIirv4XBQRD/S91XbF8XBPqLX4MlvTNTbA3A712Xn285z/
         L/FWj7KtbZOHQQhNd4rJjGowwoMuUjagDgYlQJwWIkTK3NfW3V3LCVR1S8F9BrJr8Kwc
         HkSQdgjdeP71Zk/6Pjui9U1QkjuhmtjehA3nBBjIcu5xkHEpSDv9zoDbvyefBQtaZ3rx
         1dC7Pr6XATxXC2Aug8P6Fp4gq66hE7faaYoOpkDZBAD37Jw90un3nJjBlcvZzt9DM7Bn
         793w==
X-Forwarded-Encrypted: i=1; AL+hErF39CAWD0YpxNV4Nouq/WOVqNzEexwilLxFt95RuzvowxGEtkAAwC+FYVrSQY5iCv/0RQAGEsD0uJI=@lists.infradead.org
X-Gm-Message-State: APuU4Z9ycuNwlqzCFicjvdk7WMjrynOh/tyStQJokgLxyCqtcyR6iEbo
	hrA+k/5xSLP5QFDeuxRHQHchsP0ofgH7ykAKZnD3Xonpl3f5VdFO5faFdbKdXeOO9tAvrCY0WzD
	7wq3LXIRo1qX+VHleWVmhg4XDgXHZObWy1UYcvmaZMhWBaaLJs1nxcRlxbF4tKaQg1v/NhKMasV
	DVk3DE7y7gp2ZR25WRugrvh0eo/TEUq02ZLiV58dzCGywvT4F+YyXtPhn7kd30C1d2WgUDOQx5/
	saJKP4ShHjp0/ahn3E3fCHjcg==
X-Gm-Gg: AZFdTZc3Ylgl/AeI7sWcBhMRiPdBmK2by20BUHu8wJYfm0iAQf45y28dof7Pz5jTXic
	ug3TSDZEFRvySE5jz4dBFKWo9RVKBiUTQ/GhtbieuLojV+puPukDsxpmAeCfqbj3so2N7fEXF5i
	vGAiUhg/7jnqUHJyo6G1TvNf7kVFc7Suy8xYmMpWLXtxcW7A6d8bb9WOewvkMQv+wvql6eyQnax
	M71uIVOw3GsIwccUd8VHmST7Im18ZObKN7ULJoyMXGgjBii7xLacZu6V/GBWXfm2DDiODuxOTw5
	Q6zJZHOhS8Q+jmMBedSu0NJjnD3ltctVQYFbJ3MHp0oTF24RIG/Q0QCZxmOUXS2YH0P6Of1ow65
	r36bNMSqRO+V2z+Lt9W+vTot6KNIVF3Vp3o0Qz/tP36T1F/xfFw4RQXN7Ga0CBVHvPOFSm+jAgW
	V/7WRwwwmcB8HG5JawWm07RzXSJ4sqfguaa2kNbZ0oj0o=
X-Received: by 2002:a17:90b:3c07:b0:3ab:9c73:12f with SMTP id 98e67ed59e1d1-3b41c8fe351mr10771113a91.24.1795450080229;
        Mon, 23 Nov 2026 08:08:00 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-123.dlp.protect.broadcom.com. [144.49.247.123])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3b41ac84fd5sm8862477a91.2.2026.11.23.08.07.59
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2026 08:08:00 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-3854627c1c8so5240336eec.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 08:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1795450078; x=1796054878; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uGwu5CmCdNBM7nYfVxbLkG8Sm/FCcmMZiBEkkapxiDQ=;
        b=JFv8N5IDbbzJI1VmjZhZ6CxJhjlL03u4ggjmIo5sm5RcZRPxC8RyWMuOmVXMnoMniW
         ACixtrudXvDK8knBCFl6zTAzZXkIbZdI7+EcNcAtfwfaCvaaJAEEPu3mgQeve24BA44w
         VB2sjjde8/c+pcixeXPJYExR3xcQkjNNio6CE=
X-Forwarded-Encrypted: i=1; AL+hErEx1eBzNAdKUzmlkKr6dO+uhFn1p2TJB7qfHePyk883Yqbmmz9/FZt4gAB5zn0EYtOwip87JdXmVQw=@lists.infradead.org
X-Received: by 2002:a05:7300:7c08:b0:384:3123:a0cb with SMTP id 5a478bee46e88-3856ff5b880mr19381597eec.27.1795450078303;
        Mon, 23 Nov 2026 08:07:58 -0800 (PST)
X-Received: by 2002:a05:7300:7c08:b0:384:3123:a0cb with SMTP id 5a478bee46e88-3856ff5b880mr19381556eec.27.1795450077586;
        Mon, 23 Nov 2026 08:07:57 -0800 (PST)
Received: from [192.168.10.3] (ip70-187-214-22.oc.oc.cox.net. [70.187.214.22])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-38566cd4efesm38560278eec.12.2026.11.23.08.07.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2026 08:07:56 -0800 (PST)
Message-ID: <c5e542c2-4d34-4ee2-8bd8-e3b5b5296f7e@broadcom.com>
Date: Mon, 23 Nov 2026 08:07:56 -0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v4 0/6] Fix SATA support for NSP SoCs
To: Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Tejun Heo <tj@kernel.org>,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
 <179544998187.275844.18441245364658646762.b4-ty@kernel.org>
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
In-Reply-To: <179544998187.275844.18441245364658646762.b4-ty@kernel.org>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_160804_665586_28593A83 
X-CRM114-Status: GOOD (  12.48  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 11/23/2026 8:06 AM, Vinod Koul wrote:
> 
> On Thu, 29 Oct 2026 14:25:07 -0700, Florian Fainelli wrote:
>> This patch series fixes SATA on the Northstar Plus (BCM58xxx/8831x)
>> which was broken due to a number of things:
>>
>> - the SATA PHY assumed separate PCB windows when a shared one is used
>>    for this generation of SoCs
>> - the clock/reset (IDM) was not being configured by the driver which
>>    meant that depending upon what the boot loader did, or did not, we
>>    could have had the AHCI controller still in reset by then
>> - on some reference boards, the AHCI controller is not DMA coherent,
>>    assuming so leads to all sorts of timeouts, data corruption, etc.
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/6] phy: broadcom: brcm-sata: Keep NSP ports in the shared PCB window
>        commit: 2a27baf6e203af422db2d84f9f382153612679a9

Thank you, I took patches 4-6 through the Broadcom ARM SoC tree.
-- 
Florian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
