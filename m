Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A65AACFB424
	for <linux-phy@archiver.kernel.org>; Sun,  6 Oct 2024 08:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SeL5dP+bL63PsbAftB7hn4P0QucpWYE4I7Mu88wSRCg=; b=LDKMFgLLYQ5b+O
	sMYrtrWZtpzHQoj23AnTf4kR8Bd/i5AhvLv5huYOysraZ7cTpLS02hVHMFNq2eGiZa2o2w+7R8ja4
	ccegJ33Yw638aXEgFhP3xsUDyGvw4BvdZK+Z0g3eTES/cxrh1F7cYHImuS1ZsjG3SEYNTKiEMGwgu
	pAAb6wDDzOJUzEie8u23OozL0JHkP63abRtbt/fYNMchErBzfpcVe7AThXC8cPZOCsgf7T7P8SdzC
	XIUngathotKbdMLDy3OXFoo7cBrU0SW2dYLBSSVYOstArgdTOVbR2cFPka0rsDtOJH61+G1B0Ic9n
	uG2sbrqFO07Zse8XNIog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxMTT-0000000HKHn-1arp;
	Sun, 06 Oct 2024 08:18:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxMTQ-0000000HKHO-35LL
	for linux-phy@lists.infradead.org;
	Sun, 06 Oct 2024 08:18:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AFBAF5C5755;
	Sun,  6 Oct 2024 08:18:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C80BC4CEC5;
	Sun,  6 Oct 2024 08:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728202719;
	bh=Qc7z33jtVEI1rdef/ofh3IAJna1XhyEiaCc2L+lX35g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Oo9FkCiGgnlTzo/OhapBaSxkiczxSP9AKs6f4rw8ShulhQS4lNW0mc/v1b20v/R5b
	 P9yIXTn6p6kf6ZBcZgH/d6wocRjwYLxkanwb0d6IFCGvBpJNHLCOEgh1xb/zIljXLG
	 TkhoowFxXI7XGWxeTpXs70L2OMxHXkIkBBZpjB2AzHOuYiJboalYDC+eP/Trq6svcT
	 p1ctHDNpBxByCxQPihXMLHDhP9qsXmbYVdRCExwHqdWtXrCYcUjpelodMbSv+g4yPq
	 nSU6R63lZwnrvHwOI4ALqpwieazHyWv+k/GIpmsQuUj147b/A9h2s/LkYy5Mzn0/FH
	 onbeIGDyxSUvA==
Message-ID: <362ccc22-9f7d-43de-9670-380a1a57e886@kernel.org>
Date: Sun, 6 Oct 2024 10:18:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Aw: Re: [PATCH 4/4] phy: Realtek Otto Serdes: add devicetree
 documentation
To: Markus Stockhausen <Markus.Stockhausen@gmx.de>
Cc: linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
 <20241004195712.1891488-5-markus.stockhausen@gmx.de>
 <085c03f4-8b1e-413a-a72e-0dd3ec60a667@kernel.org>
 <trinity-30f499cf-b454-4ee8-981b-51f950858c68-1728124094345@3c-app-gmx-bs38>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzSVLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+wsGVBBMBCgA/AhsDBgsJCAcDAgYVCAIJCgsE
 FgIDAQIeAQIXgBYhBJvQfg4MUfjVlne3VBuTQ307QWKbBQJgPO8PBQkUX63hAAoJEBuTQ307
 QWKbBn8P+QFxwl7pDsAKR1InemMAmuykCHl+XgC0LDqrsWhAH5TYeTVXGSyDsuZjHvj+FRP+
 gZaEIYSw2Yf0e91U9HXo3RYhEwSmxUQ4Fjhc9qAwGKVPQf6YuQ5yy6pzI8brcKmHHOGrB3tP
 /MODPt81M1zpograAC2WTDzkICfHKj8LpXp45PylD99J9q0Y+gb04CG5/wXs+1hJy/dz0tYy
 iua4nCuSRbxnSHKBS5vvjosWWjWQXsRKd+zzXp6kfRHHpzJkhRwF6ArXi4XnQ+REnoTfM5Fk
 VmVmSQ3yFKKePEzoIriT1b2sXO0g5QXOAvFqB65LZjXG9jGJoVG6ZJrUV1MVK8vamKoVbUEe
 0NlLl/tX96HLowHHoKhxEsbFzGzKiFLh7hyboTpy2whdonkDxpnv/H8wE9M3VW/fPgnL2nPe
 xaBLqyHxy9hA9JrZvxg3IQ61x7rtBWBUQPmEaK0azW+l3ysiNpBhISkZrsW3ZUdknWu87nh6
 eTB7mR7xBcVxnomxWwJI4B0wuMwCPdgbV6YDUKCuSgRMUEiVry10xd9KLypR9Vfyn1AhROrq
 AubRPVeJBf9zR5UW1trJNfwVt3XmbHX50HCcHdEdCKiT9O+FiEcahIaWh9lihvO0ci0TtVGZ
 MCEtaCE80Q3Ma9RdHYB3uVF930jwquplFLNF+IBCn5JRzsFNBFVDXDQBEADNkrQYSREUL4D3
 Gws46JEoZ9HEQOKtkrwjrzlw/tCmqVzERRPvz2Xg8n7+HRCrgqnodIYoUh5WsU84N03KlLue
 MNsWLJBvBaubYN4JuJIdRr4dS4oyF1/fQAQPHh8Thpiz0SAZFx6iWKB7Qrz3OrGCjTPcW6ei
 OMheesVS5hxietSmlin+SilmIAPZHx7n242u6kdHOh+/SyLImKn/dh9RzatVpUKbv34eP1wA
 GldWsRxbf3WP9pFNObSzI/Bo3kA89Xx2rO2roC+Gq4LeHvo7ptzcLcrqaHUAcZ3CgFG88CnA
 6z6lBZn0WyewEcPOPdcUB2Q7D/NiUY+HDiV99rAYPJztjeTrBSTnHeSBPb+qn5ZZGQwIdUW9
 YegxWKvXXHTwB5eMzo/RB6vffwqcnHDoe0q7VgzRRZJwpi6aMIXLfeWZ5Wrwaw2zldFuO4Dt
 91pFzBSOIpeMtfgb/Pfe/a1WJ/GgaIRIBE+NUqckM+3zJHGmVPqJP/h2Iwv6nw8U+7Yyl6gU
 BLHFTg2hYnLFJI4Xjg+AX1hHFVKmvl3VBHIsBv0oDcsQWXqY+NaFahT0lRPjYtrTa1v3tem/
 JoFzZ4B0p27K+qQCF2R96hVvuEyjzBmdq2esyE6zIqftdo4MOJho8uctOiWbwNNq2U9pPWmu
 4vXVFBYIGmpyNPYzRm0QPwARAQABwsF8BBgBCgAmAhsMFiEEm9B+DgxR+NWWd7dUG5NDfTtB
 YpsFAmA872oFCRRflLYACgkQG5NDfTtBYpvScw/9GrqBrVLuJoJ52qBBKUBDo4E+5fU1bjt0
 Gv0nh/hNJuecuRY6aemU6HOPNc2t8QHMSvwbSF+Vp9ZkOvrM36yUOufctoqON+wXrliEY0J4
 ksR89ZILRRAold9Mh0YDqEJc1HmuxYLJ7lnbLYH1oui8bLbMBM8S2Uo9RKqV2GROLi44enVt
 vdrDvo+CxKj2K+d4cleCNiz5qbTxPUW/cgkwG0lJc4I4sso7l4XMDKn95c7JtNsuzqKvhEVS
 oic5by3fbUnuI0cemeizF4QdtX2uQxrP7RwHFBd+YUia7zCcz0//rv6FZmAxWZGy5arNl6Vm
 lQqNo7/Poh8WWfRS+xegBxc6hBXahpyUKphAKYkah+m+I0QToCfnGKnPqyYIMDEHCS/RfqA5
 t8F+O56+oyLBAeWX7XcmyM6TGeVfb+OZVMJnZzK0s2VYAuI0Rl87FBFYgULdgqKV7R7WHzwD
 uZwJCLykjad45hsWcOGk3OcaAGQS6NDlfhM6O9aYNwGL6tGt/6BkRikNOs7VDEa4/HlbaSJo
 7FgndGw1kWmkeL6oQh7wBvYll2buKod4qYntmNKEicoHGU+x91Gcan8mCoqhJkbqrL7+nXG2
 5Q/GS5M9RFWS+nYyJh+c3OcfKqVcZQNANItt7+ULzdNJuhvTRRdC3g9hmCEuNSr+CLMdnRBY fv0=
In-Reply-To: <trinity-30f499cf-b454-4ee8-981b-51f950858c68-1728124094345@3c-app-gmx-bs38>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_011840_899728_F9BD16E0 
X-CRM114-Status: GOOD (  16.30  )
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

On 05/10/2024 12:28, Markus Stockhausen wrote:
>> ...
>>> + The primary serdes register memory location. Other SerDes control and
>>> + management registers are distributed all over the I/O memory space and
>>> + identified by the driver automatically.
>>> +
>>> + controlled-ports:
>>> + description: |
>>> + A bit mask defining the ports that are actively controlled by the driver. In
>>> + case a bit is not set the driver will only process read operations on the
>>> + SerDes. If not set the driver will run all ports in read only mode.
>>
>> You have never tested it.
> 
> Maybe I left the wrong impression. I'm currently very hard trying to get this driver
> working on 4 different SoCs. The only environment I can do this porperly is an OpenWrt
> toolchain and a lot of patches. With other bits in place I can even start a Zyxel
> GS1920 (RTL839x) through serial console, setup the SerDes and activate the attached
> Realtek PHYs.
> 
> https://github.com/openwrt/openwrt/pull/16577
> https://github.com/openwrt/openwrt/pull/16123

I am talking about binding. You never tested the binding.

Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

> 
> An older DT from last weekend:
> 
> https://github.com/openwrt/openwrt/pull/16123/commits/716b01afd35fcc708c0204ca237d8541a8000ffa
> 
>>> +
>>> + "#phy-cells":
>>> + const: 4
>>> + description: |
>>> + The first number defines the SerDes to use. The second number a linked
>>> + SerDes. E.g. if a octa 1G PHY is attached to two QSGMII SerDes. The third
>>> + number is the first switch port this SerDes is working for, the fourth number
>>> + is the last switch port the SerDes is working for.
>>> +
>>> + cmd-setup:
>>> + description: |
>>> + A field of 16 bit values that contain a patch/command sequence to run on the
>>> + SerDes registers during driver setup.
>>
>> None of these fields match DT. Drop all of driver related stuff.
> 
> Hm, what would be the best way to run magic vendor patch sequences that setup
> registers and do not pollute driver?

These belong to driver. What do you mean "pollute"? The driver is the
place for these, not DT!

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
