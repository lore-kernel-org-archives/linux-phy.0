Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D407C3DA62
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jul 2024 19:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYo4Leii8mQYILQyUF8WXiRgfF+qZj2jmIAJLOFRwxk=; b=Qn31eAN86irU4V
	3z4OWJtGoP5XE+Jh3VcJDbxcdRn4OEZ/JEiO5FDba1vFvdBLl/Mo8uHEFY4m9aPC4GdTpWVXs5XVg
	1ABgcdiNtYWgMUx8N/dNAb8nnf86ReBDFEa+ZMPKAJ5DPH/T/GKgW7HOUMISWtBjDqInnY82reBhC
	0S5TKXmooegCjZbcZZTQ0NHJfyA2HeujW39zY+Z5OCTHdakiCJr7uJ0peJlNzeOdvJTctia4Rn0/5
	j9tjNKyTsj/+HIWRsrEs4PaQH6MouXNOnsHBbsCSIbIvVBAHnqWZhMf9YysPisOEJnZgxtm61cuBt
	+6pl3R5kz5Ce7cpghgbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUAUO-0000000EjIR-3WZR;
	Wed, 17 Jul 2024 19:39:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUAU3-0000000EjEj-3mzU;
	Wed, 17 Jul 2024 19:38:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7B692614D5;
	Wed, 17 Jul 2024 19:38:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A870C2BD10;
	Wed, 17 Jul 2024 19:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721245118;
	bh=81NOFCtH51EtoVS2k7EUuY27b0cO9Y8jY8unhH+llsk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qD9u/xkN7TBm3bqzSQLagzRROSxr7PSo7K1jf5+NrT84mQjCZlIAu5X5OcfocNKMM
	 y1KhPNEf2XkJZ5+aBe80LoonznWGNRmp8m60vNIdNW8RPnXrivwTpNkq7KklCr3fsv
	 ohOwIdBFupNP2iGX4b30DPqr7NwH5KQbX85tF7zHaR4X3+tY811Hy+ZP8ZNYkmG7mG
	 TdlLd4pU0B9HmSO5Zk3Wa28+Wg7Nhqh9oyeUv5ya4BB43H6drM2z8WXCHULC6djo6Q
	 jrMBQ58Kf1YhcMhdZs8kk1SRbNB7gttCgxL/nDiMUxvHtGslhIxM63wR/GSwftryMW
	 KChCkbdUFSNBQ==
Message-ID: <1c393235-3bf3-4c89-ab54-42de5a33c8c2@kernel.org>
Date: Wed, 17 Jul 2024 22:38:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] phy: cadence-torrent: add support for three or more
 links using 2 protocols
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org, p.zabel@pengutronix.de, sjakhade@cadence.com,
 thomas.richard@bootlin.com, theo.lebrun@bootlin.com, robh@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20240716102442.1605280-1-s-vadapalli@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20240716102442.1605280-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_123840_019669_73748C1E 
X-CRM114-Status: UNSURE (   7.88  )
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



On 16/07/2024 13:24, Siddharth Vadapalli wrote:
> The Torrent SERDES can support at most two different protocols (PHY types).
> This only mandates that the device-tree sub-nodes used to represent the
> configuration should describe links with at-most two different protocols.
> 
> The existing implementation however imposes an artificial constraint that
> allows only two links (device-tree sub-nodes). As long as at-most two
> protocols are chosen, using more than two links to describe them in an
> alternating configuration is still a valid configuration of the Torrent
> SERDES.
> 
> A 3-Link 2-Protocol configuration of the 4-Lane SERDES can be:
> Lane 0 => Protocol 1 => Link 1
> Lane 1 => Protocol 1 => Link 1
> Lane 2 => Protocol 2 => Link 2
> Lane 3 => Protocol 1 => Link 3
> 
> A 4-Link 2-Protocol configuration of the 4-Lane SERDES can be:
> Lane 0 => Protocol 1 => Link 1
> Lane 1 => Protocol 2 => Link 2
> Lane 2 => Protocol 1 => Link 3
> Lane 3 => Protocol 2 => Link 4
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
