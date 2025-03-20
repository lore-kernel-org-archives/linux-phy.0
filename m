Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EB68C28B30
	for <linux-phy@archiver.kernel.org>; Thu, 20 Mar 2025 11:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XCHxXtlIY8A651ZpvBhqEEdblpUYiaHhTkxJtQ38K7Q=; b=wWMIBJdL58OViY
	f35QhOuxWOctV21VfgCL3rop+Y8dfoEgwHq2DDC56YHbEsZHhCx94EDWlyUfaCgJe4m4Aw8QfXbwz
	tsBVT/X+99sXX6FihG11LcVBI8og6RWhe9dRQuhRnNbcHnNluzc5hke0cpshBf+KAFIPMs3gtB9oo
	Z2WuA7IIEPGU/quf4//A/FAf/Kc/7oj1MpZvtqWFQzjeKfgR4rsSMItg1ldzfE45a5vi5TWTJ33Vs
	c3YBDd940Kxxr2MQ0HuIypK5SI5nZFeVrxB7U+rryMKcLKxAEPimiaqaY6xA6ZZhN0B5kJkQdOLzk
	H8JcGUlG/dtCMGEteaYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvE5e-0000000BxDI-3iuX;
	Thu, 20 Mar 2025 11:29:34 +0000
Received: from out-73.smtpout.orange.fr ([193.252.22.73] helo=out.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvE5b-0000000BxCQ-33jU
	for linux-phy@lists.infradead.org;
	Thu, 20 Mar 2025 11:29:33 +0000
Received: from [172.16.82.72] ([124.33.176.97])
	by smtp.orange.fr with ESMTPA
	id vE5NtqnW0l2qkvE5StwZBJ; Thu, 20 Mar 2025 12:29:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1742470167;
	bh=HtkbDjg5JYzHIlz/GhvgabNqyIBX/GomSRMi/5wmM70=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=mKigk8MQqTSpH+DIMTQgPjZ8ir08SHXMunE3l6aJFhCLo/C2NfZfcRSThm/XplKeR
	 sYUKFJijfvEtf4qBY2pP5xldRNPytRu/w+bekSg3tjQzypZyVTSbNc/uGqqeERxxxu
	 VcXE4NxEMKtHNUQiCeKv48JhsitqduHAplFOZlbKaWM7KWHU/LzwIIsVY+a46IYz2w
	 zxPEp32PGkfVBu0Y04qXNrf37bqpoEshtIX5xQhK2vkDh23pU2bdPh/zJFUPb5KN4a
	 CgkfPEtF666z6frBEG6jVvVcp/zvgaBI9vP7fzynzXqATSuJhP7VLV2e0vixS1SZlU
	 +WnH0W4V8JuQg==
X-ME-Helo: [172.16.82.72]
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Thu, 20 Mar 2025 12:29:27 +0100
X-ME-IP: 124.33.176.97
Message-ID: <864ae6d6-4d60-4175-86a9-039b75440330@wanadoo.fr>
Date: Thu, 20 Mar 2025 20:29:16 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: can-transceiver: Re-instate "mux-states" property
 presence check
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Peter Rosin <peda@axentia.se>, Aswath Govindraju <a-govindraju@ti.com>
References: <6bcfde63b3a6b25640a56be2e24a357e41f8400f.1742390569.git.geert+renesas@glider.be>
 <9875d99a-4e16-4f0e-9249-69f0acc4c890@wanadoo.fr>
 <CAMuHMdVCmchuN1LyHGoE6A0TEpc9R1unXi2KNYO94cmT1WwOHA@mail.gmail.com>
Content-Language: en-US
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Autocrypt: addr=mailhol.vincent@wanadoo.fr; keydata=
 xjMEZluomRYJKwYBBAHaRw8BAQdAf+/PnQvy9LCWNSJLbhc+AOUsR2cNVonvxhDk/KcW7FvN
 LFZpbmNlbnQgTWFpbGhvbCA8bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI+wrIEExYKAFoC
 GwMFCQp/CJcFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQTtj3AFdOZ/IOV06OKrX+uI
 bbuZwgUCZx41XhgYaGtwczovL2tleXMub3BlbnBncC5vcmcACgkQq1/riG27mcIYiwEAkgKK
 BJ+ANKwhTAAvL1XeApQ+2NNNEwFWzipVAGvTRigA+wUeyB3UQwZrwb7jsQuBXxhk3lL45HF5
 8+y4bQCUCqYGzjgEZx4y8xIKKwYBBAGXVQEFAQEHQJrbYZzu0JG5w8gxE6EtQe6LmxKMqP6E
 yR33sA+BR9pLAwEIB8J+BBgWCgAmFiEE7Y9wBXTmfyDldOjiq1/riG27mcIFAmceMvMCGwwF
 CQPCZwAACgkQq1/riG27mcJU7QEA+LmpFhfQ1aij/L8VzsZwr/S44HCzcz5+jkxnVVQ5LZ4B
 ANOCpYEY+CYrld5XZvM8h2EntNnzxHHuhjfDOQ3MAkEK
In-Reply-To: <CAMuHMdVCmchuN1LyHGoE6A0TEpc9R1unXi2KNYO94cmT1WwOHA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_042932_181586_7C32E95C 
X-CRM114-Status: GOOD (  12.65  )
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

On 20/03/2025 at 19:25, Geert Uytterhoeven wrote:
> Hi Vincent,

(...)

>> On 19/03/2025 at 22:27, Geert Uytterhoeven wrote:
>>> On the Renesas Gray Hawk Single development board:
>>>
>>>     can-transceiver-phy can-phy0: /can-phy0: failed to get mux-state (0)
>>>
>>> "mux-states" is an optional property for CAN transceivers.  However,
>>> mux_get() always prints an error message in case of an error, including
>>> when the property is not present, confusing the user.
>>
>> Hmmm, I understand why you are doing this patch. But on the long term,
>> wouldn't it make more sense to have a devm_mux_state_get_optional()? Or
>> maybe add a property somewhere to inform devm_mux_state_get() that this
>> is optional?
>>
>> Regardless, just see this as an open question. I am OK with the approach
>> of your patch.
> 
> Alternatively, we can be proactive and add a temporary local wrapper:
> 
>     /* Dummy wrapper until optional muxes are supported */
>     static inline struct mux_state *
>     devm_mux_state_get_optional(struct device *dev, const char *mux_name)
>     {
>             if (!of_property_present(dev->of_node, "mux-states"))
>                     return NULL;
> 
>             return devm_mux_state_get(dev, mux_name);
>     }
> 
> and call that instead?  Then the probe function needs no future changes
> when the real devm_mux_state_get_optional() arrives.

This looks like a more elegant and more long term solution!

Yours sincerely,
Vincent Mailhol


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
