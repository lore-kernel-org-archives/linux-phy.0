Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7434AC4167B
	for <linux-phy@archiver.kernel.org>; Mon, 11 Dec 2023 12:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enrd6Z1/lUjVupDmOOmOeev2sgg3tz7TVG+gb6PwgKw=; b=IMhWn2QpoInStM
	kow8JjoPrBhFgS4fRe8dq9dXiFEdMIJFkFVVuCqHXhJyfAD6AnMLuOYwLSeG12nVdJFJMa4x9TpOi
	j1lxDv70NhrTHoB8EX+Zz6NbTtKCPvb5smHEq8hLcBoK4OKr9WglXdY7juRrXymXrjFcj+XTHiAoi
	ANZx+8A+N39m047+c335TbgaQorzwwBsrtmBVsQ5pw28AuyGYRiLvpBz2+OlNU5Kr218gSAktP1VJ
	zbmytSGN/ttmjaMD0t6gOacKwhYqm96NRVUQ/ra7EOEVcKusmWdO3tA94uOpwE8G4qovXYL72L7D5
	hvlHbPxKY29cuKhrYN8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCfhI-004t4k-0N;
	Mon, 11 Dec 2023 12:47:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCfh8-004t3X-2m
	for linux-phy@lists.infradead.org;
	Mon, 11 Dec 2023 12:47:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A843E6124C;
	Mon, 11 Dec 2023 12:47:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4DCAC433C9;
	Mon, 11 Dec 2023 12:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702298853;
	bh=h93HF6RRAegCLvVse8r0eU7pTOKa/Pg1hLeWvROiAYc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mdcVWn5+HL6So0byxHJ3o2z96cnxvv0vvapgsXh1/CScYp9DsNQQTlHzphF0K/So0
	 NG2hXpNjBssHSXtJ/OuC34LBQBB9+cP5WJ7IXYaWhnYPK6rc3xSpokQoOvrG3xkmwc
	 QmJBdpzEuFKXUr0kyoFwz+lue86zfD8PsUsbMeR8HJ2x6IXO3Iis+NgWa9iXj1sHYg
	 9SlBHnd6BetpWFrM7YIDGrSEmC1YY6HlrvRAMG5WCz2y5iVqw8MYFjxsjcUcSgHmR1
	 /bK3vKzKq7drl4Qd/eqqww6ACG2DZgFVT2yT0FBIXMFcm0c22Kd9IqbNAtFfaA8OA1
	 Op+f1epjAKB4w==
Message-ID: <1274b111-09f7-4d90-ae4d-cf7865fa8550@kernel.org>
Date: Mon, 11 Dec 2023 14:47:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] dt-bindings: phy: cadence-torrent: Add a separate
 compatible for TI J7200
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, Swapnil Jakhade <sjakhade@cadence.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, mparab@cadence.com, s-vadapalli@ti.com
References: <20230724150002.5645-1-sjakhade@cadence.com>
 <20230724150002.5645-5-sjakhade@cadence.com>
 <20230724-shampoo-junior-f9e0bb095668@spud>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230724-shampoo-junior-f9e0bb095668@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_044735_178926_AD0A86B6 
X-CRM114-Status: GOOD (  10.89  )
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



On 24/07/2023 20:56, Conor Dooley wrote:
> On Mon, Jul 24, 2023 at 05:00:01PM +0200, Swapnil Jakhade wrote:
>> TI J7200 uses Torrent SD0805 version which is a special version
>> derived from SD0801 that has an additional input reference clock.
>> Add a separate compatible for TI J7200 platforms.
>>
>> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
>> ---
>>  Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> index ddb86ee0cebf..e3a1efd61033 100644
>> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> @@ -20,6 +20,7 @@ properties:
>>    compatible:
>>      enum:
>>        - cdns,torrent-phy
>> +      - ti,j7200-serdes-10g
>>        - ti,j721e-serdes-10g
> 
> Should the number of clocks not be restricted dynamically based on the
> compatible, since only the 7200 requires the extra refclk?
> 

Yes, this is a good idea.

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
