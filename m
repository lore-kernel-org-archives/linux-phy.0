Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27B70CE7CE6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Oct 2024 07:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DANO1v8F2FrjjFlAtAXFCBzG5ZH07Frsupfy+zBrvg0=; b=eVrXnUDgEzFyui
	8BQIG0dQgakyeYc8Qzaeo+LdafpvCvJ4LxlNyQAad38sRfGPnAMEX8rzRLhvNG/P8b2AF6qMOAItn
	/rEBO8uMlmXz3H0a9vu2JmWPAySzeLrWyLZiduATPMcN7qh4KEXBKfKpC+PBDQ2IyrEZl9IMpN+tI
	1LIXoLSeZr+yue8oyEQ3sahLQDlaAZf6frorX91Ox3QGGQ6AYlnMWEhKusntpjm1dJA+xLucZlhQe
	cBr1YWCb9cbqbMienJBl9+Da3mHn3COxtG7BlKpGqIuUHsZdrio3H0SwCu64Xi+kQeV7wHDOg3MZj
	4WR80shwojN3xA24IYMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svXjC-00000001xOf-3ZoU;
	Tue, 01 Oct 2024 07:55:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svXfY-00000001wkj-1tS9;
	Tue, 01 Oct 2024 07:51:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9766C5C06A8;
	Tue,  1 Oct 2024 07:51:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFBADC4CECD;
	Tue,  1 Oct 2024 07:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727769099;
	bh=TBwGr7hAFCtcE9EAP5sScKW1xltCT+lyob5l+b6uvXk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=a9Y6YVP8BdzEssOIq1RGS4jmrGBAhP2I2AtQ2gj8Ovsmj+h/dlD33kFLANJTzlndI
	 vHPN2uv5im13vPbiUO/0SYNpPGSH9rxKOz4Qui8uqFNpKwbiBIzrDKOtotSoKm/Jii
	 rL0S16kHXitkoG1EQX60ykXn0wlRk+2syRgC0wexZv6mN9EvQzeLLtvZZiWA5gv31+
	 RlmJ1V+ZvQaHlqQ5d4paJLfmPgvgbdsx9y+1wnZ3DivyMsGzw4x/2psMpE5RQglhsa
	 wQWy6A9gQRqflivigKeRp0R1YGoxPMULnIsrIj8GfiiKgJGJ/TYEG2JZNOjqEFMOuQ
	 xOpd1DOUVqPTg==
Message-ID: <59baaefa-4b57-4c76-ad19-3d16eaeb587c@kernel.org>
Date: Tue, 1 Oct 2024 10:51:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: ti: phy-j721e-wiz: fix usxgmii configuration
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: vkoul@kernel.org, kishon@kernel.org, thomas.richard@bootlin.com,
 krzysztof.kozlowski@linaro.org, nichen@iscas.ac.cn, c-vankar@ti.com,
 t-patil@ti.com, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20240930095745.3007057-1-s-vadapalli@ti.com>
 <4b42b8e5-3246-4f58-b494-735930d2424a@kernel.org>
 <c5ef5303-6390-4f2b-b9d2-3d1f3085e15f@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <c5ef5303-6390-4f2b-b9d2-3d1f3085e15f@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_005140_591752_7B5177FE 
X-CRM114-Status: GOOD (  14.48  )
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



On 01/10/2024 06:10, Siddharth Vadapalli wrote:
> On Mon, Sep 30, 2024 at 05:06:35PM +0300, Roger Quadros wrote:
> 
> Hello Roger,
> 
>> Hi Siddharth,
>>
>> On 30/09/2024 12:57, Siddharth Vadapalli wrote:
>>> Commit b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in
>>> wiz driver") added support for USXGMII mode. In doing so, P0_REFCLK_SEL
>>> was set to "pcs_mac_clk_divx1_ln_0" (0x3) and P0_STANDARD_MODE was set to
>>> LANE_MODE_GEN1, which results in a data rate of 5.15625 Gbps. However,
>>> since the USXGMII mode can support up to 10.3125 Gbps data rate, the
>>> aforementioned fields should be set to "pcs_mac_clk_divx0_ln_0" (0x2) and
>>> LANE_MODE_GEN2 respectively. Fix the configuration accordingly to truly
>>> support USXGMII up to 10G.
>>>
>>> Fixes: b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in wiz driver")
>>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> 
> [...]
> 
>>> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
>>> index a6c0c5607ffd..c6e846d385d2 100644
>>> --- a/drivers/phy/ti/phy-j721e-wiz.c
>>> +++ b/drivers/phy/ti/phy-j721e-wiz.c
>>> @@ -450,8 +450,8 @@ static int wiz_mode_select(struct wiz *wiz)
>>>  		} else if (wiz->lane_phy_type[i] == PHY_TYPE_USXGMII) {
>>>  			ret = regmap_field_write(wiz->p0_mac_src_sel[i], 0x3);
>>>  			ret = regmap_field_write(wiz->p0_rxfclk_sel[i], 0x3);
>>
>> I'm not sure. Don't we have to change rxfclk as well?
> 
> This patch was validated on a custom board with the J7200 SR 2.0 SoC.
> The signal corresponding to the USXGMII lane of the SERDES was measured
> to be 5 Gbps without this patch and 10 Gbps with this patch applied,
> with no other changes required. Apart from measuring the signal, ping
> was also validated.

Thanks. This is useful piece off information that could go in the commit log.

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
