Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01855C67861
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 07:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8D1cxwYokvAI3kRCr2hQw/emg+G9Q7r5a/uTbOKH9Q=; b=xpRDzZQmTPLFXq
	VLvsMjip5SBJvRDudgYuLrOhbZkGdewCci2QW5BaU0ugjyy6bmYROTMNB8zTphODd1WDSNxOl8mVq
	2vltP3ZsN/jhjAShrFoF96wHIVwvKmJJF5yA1wCZPACiFAW9uMUQ95mavuinWZRvYdYnyNPk0UjcE
	6Tew25aWH61Jx903/DW/NZF6TPrkYlTypLuYq/4oziKj2zcQkPksGVrIwWj/sF8dsE5PD8orb8kYz
	xxaSaDwe2OFywiVlWA/krG71VR+rKXa34FCych1xteWc3OaA700n6UlOn4Q/uE1Yatw7XB7+aItOZ
	OJ8zcMVQMP5IXpNZxeoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt0FS-00000009rMn-2MBA;
	Sat, 06 Apr 2024 07:13:58 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt0FP-00000009rLx-3Fs9
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 07:13:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F26C8CE16E4;
	Sat,  6 Apr 2024 07:13:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58C33C433C7;
	Sat,  6 Apr 2024 07:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712387630;
	bh=otn09rFwqivh/gePwrdoAAH8dH4n60Cf1yo60ZYoNTs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KpSeMMqtXekcsG94J/slBvoWUl+5dMp2RHKq+hKlf68y0ocrjpg96nnhebCFILdaw
	 NrunEmaNoL0bpTtvBed9gXy11SlitDKfWN5bYC6S7jyADE0tCYKlKyCcrDkstZqhJ9
	 yhC9kKf7axU51TcaRiEwaQxe3O+mAXR+YdZjt0V4xZ0WCeiAZSomYn0kQKpd5xLkvV
	 idaz9bjqnGTz9DytmFiHvYBp1K6MtApeuTC8WUt9HLABYfhpxrqbnmP2VLz5QPyiNP
	 ylQEd5mJKFp+wTmoxmX93BWo995aAmsvS+LzbZSPn8e2jV41+lNG7UYZbJOYX58snS
	 Tb5bLFUvVT65w==
Date: Sat, 6 Apr 2024 12:43:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mikhail Kobuk <m.kobuk@ispras.ru>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
	Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	lvc-project@linuxtesting.org,
	Alexey Khoroshilov <khoroshilov@ispras.ru>
Subject: Re: [PATCH v2 0/2] phy: marvell: a3700-comphy: Minor fixes
Message-ID: <ZhD2KTImtCMnglG_@matsya>
References: <20240325201254.54445-1-m.kobuk@ispras.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240325201254.54445-1-m.kobuk@ispras.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_001356_016498_1C132D45 
X-CRM114-Status: UNSURE (   8.08  )
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

On 25-03-24, 23:12, Mikhail Kobuk wrote:
> Changes in v2:
> - Replace hardcode and ARRAY_SIZE() with definition
> - Link to v1: https://lore.kernel.org/linux-phy/20240321164734.49273-1-m.kobuk@ispras.ru/

This does not apply for me, pls rebase on phy/fixes

> 
> ---
> Mikhail Kobuk (2):
>   phy: marvell: a3700-comphy: Fix out of bounds read
>   phy: marvell: a3700-comphy: Fix hardcoded array size
> 
>  drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> -- 
> 2.44.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
