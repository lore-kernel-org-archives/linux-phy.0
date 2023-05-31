Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 884FDC77B7A
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 09:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3AveDEgy8qd/Qp7obh7hVfwGrQijHrYkQP+ZASJZ7Q=; b=lnn+ffWsguPbfR
	LUNGHENaeuPenGcIiwfDz/Uff2GHHEZZkat/83KWtcvN/Cz4/8Xt5fllPmZPJ8dwz52KRVOFCDQl5
	3dOe3va5jfeiVcABzuyoQc3gaZMgsNkNIuDfEUv+anV8kFgZwh8eBekJnfHKLgwi+RRzSbqcUJAA3
	bGClHWHarP5PspeMjoIpwf1PFUtzXgPZqsOwo7M8HjmsEXtmW9Hpye9xsxAdTPkrmbDhRWuDpvWss
	nWQb8OMboGOrF49LQLbnazUWbwsmXqPwxPgNbl29afDVt7xYhV4f1+M1sOlBKd8A3ShVDyrJFOw0G
	lsX9MGi+JVORamCRhzqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4I8p-00GsMC-0j;
	Wed, 31 May 2023 09:29:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4I8m-00GsLj-38
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 09:29:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BD8B860FE9;
	Wed, 31 May 2023 09:29:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83E2DC433EF;
	Wed, 31 May 2023 09:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685525351;
	bh=E4OOWND/O2V794VqFyeXOFmM+c2PxO1jZMV//2VMdXs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Yn6q0WgHiNht9FyrnkKELEy7A87uKUqwOR9JHSmXwfhs1tE6OA5EbgScaf8AvDlCz
	 +luW42lPZNv6oiBQj4atUwzznUBlpZDSZaho/MS8mhf94e6kZOcecqmcgT90qA5M0K
	 IXAZIgN3LfxX4rD7r96ZoNOA7UmLaa0tMI8A9Pmkea9+uMGlscUGS5cbIGJVNoKxID
	 1qkuJa0kHVvwZ7rRvnU5dmNwUfYLjsPUrKEmvrTjIhmxdC/gpjwICe6SDYTLsYuPGP
	 kl18a8C0Do05kf/3cW051NwOBZCz7pKzTE3ctzXqX3TVoyiUjFkI683B4T2LsSn67S
	 XaQwEydKsQ5Tg==
Message-ID: <41a167bf-509e-d64e-1ce4-d76e05b7e8ce@kernel.org>
Date: Wed, 31 May 2023 12:29:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] phy: cadence-torrent: Add single link USXGMII
 configuration for 156.25MHz refclk
Content-Language: en-US
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: mparab@cadence.com, s-vadapalli@ti.com
References: <20230530143853.26571-1-sjakhade@cadence.com>
 <20230530143853.26571-2-sjakhade@cadence.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230530143853.26571-2-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_022913_075497_9E90E096 
X-CRM114-Status: UNSURE (   6.46  )
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



On 30/05/2023 17:38, Swapnil Jakhade wrote:
> Add register sequences for single link USXGMII configuration supporting
> 156.25MHz reference clock frequency.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
