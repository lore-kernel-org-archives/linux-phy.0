Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7EB5C02180
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jan 2025 08:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuoIu3hGddFz+Rr5e3SH/4wjceDbt3i4N7fTpZFlYt4=; b=y1zuXmtcA0RP3B
	l4gwElZYc7DXu6tP8HafclLnTyHxPFZisLSFcWCP+f6wiGuaPaBzX1u/dXRZskZ2KVmTGosvU6l54
	nL6SI48SrB/8i5ZyEtV6SB/pja9oETN5SoTL4YXRsAKgOPemEGaCPDgWqpQLA2xcQlCGExuRTOmER
	bBBY4EaP/70cLOgBgIe5OvL1XsXhHGtqKvZ4HM9KQc6cjvz0eUa6CV3JZSBuq7YYZQXmxlYt3S2Ys
	pU05Ic8a15ZHeKPOGWdOdTLzzhXgrBSxsGqKMRaW8V+3/rR7WN+Lcz6iCTLZEsuTnkqkdzoMcOwJF
	8BV7kBIt7kp9Df7H/cVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXyTN-0000000B2Wx-2Qha;
	Wed, 15 Jan 2025 08:09:57 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXyRX-0000000B2BX-1RPu
	for linux-phy@lists.infradead.org;
	Wed, 15 Jan 2025 08:08:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1736928483;
 bh=qucqar6HUi7wGW1W5TC3J/YSVkxpWjIVUzY/b7JOA4M=;
 b=W8oXVsSYfR6tKiRwNJ8+eoWfysYv1Q1VlyX6aTkNjp+e5CTtdN/3t6X3AaOSH8MU/DFHSsuwD
 cwEYBsC2R8+k9vDVuSC+cQEs//SLwn+f0EffqbTkHXmAYlOJ9O+pWK2/lLBQiYfDXIjYtQYzS6Z
 cSLoczhcfDWXb99ojYEydEAk1+YGks4fvn7We5qwgClBTmzerdQwXBQllSKsLu29nULWrAHNhl+
 dBjNAAuKODCj7K9pZqglzUEIaJd1Qkgc3L3bRBaO07Sn78Ry6aN8MmAc5hqVIKxLf6fKIs6xZHM
 /ewQNJ5VI1t3IJuwzeKHlC8j1QIPyl9RQaB73/psnlEw==
X-Forward-Email-ID: 67876cd77efc61f2763fc053
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <2c221084-eef5-434c-9919-f6746eae8e0e@kwiboo.se>
Date: Wed, 15 Jan 2025 09:07:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] phy: rockchip: naneng-combphy: compatible reset
 with old DT
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: "heiko@sntech.de" <heiko@sntech.de>, "kishon@kernel.org"
 <kishon@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "liujianfeng1994@gmail.com" <liujianfeng1994@gmail.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>
References: <df8e0ff8-355b-4c18-9349-0f04ae16e01b@kwiboo.se>
 <20250115040003.29306-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250115040003.29306-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_000803_411580_176D265B 
X-CRM114-Status: UNSURE (   8.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Chukun,

On 2025-01-15 05:00, Chukun Pan wrote:
> Hi,
>> The commit fbcbffbac994 ("phy: rockchip: naneng-combphy: fix phy reset")
>> broke backwards compatibly with old DTs and has already been backported
>> breaking i.e. PCIe and USB on Rockchip RK356x boards on stable and
>> longterm kernels.
> 
> The dts changes have been merged into v6.13-rc7,
> maybe it can be sent to linux-stable.

The original commit broke ABI and does not allow upgrading Linux using
an existing device tree, even if the DT patch adding reset-names props
also is backported you still have uses in the wild e.g. U-Boot v2024.10
and newer that comes bundled with an unpatched DT.

Trying to boot into Linux v6.1.123+, v6.6.69+ and v6.12.8+ using the 
U-Boot bundled DT for RK356x boards now result in broken PCIe, SATA and
USB thanks to the offending commit fbcbffbac994 ("phy: rockchip:
naneng-combphy: fix phy reset").

Regards,
Jonas

> 
> Thanks,
> Chukun
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
