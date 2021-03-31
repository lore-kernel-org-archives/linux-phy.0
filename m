Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A624C433C1
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 11:19:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E41776195D
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 11:19:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E41776195D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hzUhjCJDPWgrk2Z5HleF9GgiQRKY9CGAKDw5epimgCM=; b=HDohN3fRzWSBWYTqtKEgStFYP
	u2RHknfPFq9D5wPB+L1s7UGwjZ77Dr2Emb9PpMphoLhtPW2h+EBXbHBf4oEno33vHPgSGcOaRU2CB
	scv0i2NCxiArVLIRZEqr5YL3W76c5IdUSYKDL7wJ6/dxE/b+1R3WVf3hzOFdEcLaLQ+WpqEgfP7uO
	/KJr6FZeUNuaL8OgA2uxwEIp1qYsjpvYFM2/FuUZyLYV1wRcEXgGKcpNnBKFx9bV6cwPXKs0xZ0tQ
	Q3CduRc8C1Vn0s3P8rLomgdaF8vIkr1UAzCPd8cHPokr6zBdHYuDD7AvUIJ+vE1RIIngOikpOEIZQ
	t7kz5ExQA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRYsL-006QOj-W6; Wed, 31 Mar 2021 11:19:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRYpQ-006P7f-Jh
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 11:16:09 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D24A6195D;
 Wed, 31 Mar 2021 11:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617189363;
 bh=+y8vuiilDhv05xBYXqxQZWWGkxtIXm6bEVC8PvtrtPI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XhBzSkzs7ZEnue62eQDuGw6bZaLK1fxVz24GDP3I9dHzN0GzTrnyt3BfngA3JQSA4
 ccgPrhju27iJuz4bth/+QdLEkaSgwNX1eiKAO8paigXXJqeorLGDvVVmiAtQY55W6z
 oHVUSEDY1B1LrRYxLfFb0NX03pYYgirJsVyVzfdINA29IyPsnj68lUvFaSUWYATyd8
 mz+cnzDJ+3SR4cS0lcQqEiRtA//a3EJDlfXaWUeDJuvkTejd5arIo/k+Bag93gCK1f
 9Rm76OddPXOl4yVjSv3NDsOr9QrtWURdoOClLHpGHGFwykNdAT4XSJCB2/aRAXnxhV
 RhyJkLoa7scHw==
Date: Wed, 31 Mar 2021 16:45:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v2 0/5] j721e-wiz/cadence-torrent: Support to skip SERDES
 configuration
Message-ID: <YGRZ7oAiawC46zVF@vkoul-mobl.Dlink>
References: <20210330110138.24356-1-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330110138.24356-1-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_121605_332018_A044A6A2 
X-CRM114-Status: UNSURE (   6.06  )
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

On 30-03-21, 16:31, Kishon Vijay Abraham I wrote:
> Add support to skip SERDES configuration if it's already configured in
> bootloader.
> 
> The wiz part was initially sent in [1] but that was sent more in the
> context of Sierra but this is in context of Torrent. The Sierra part
> would be sent later.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
