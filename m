Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D8E2C6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 13:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sttzOheM+WJQ0jfECueGUw0QZkKW6YY5Y5D0ew9g1E8=; b=Nyh08bTmSMVZ0B
	+SJ1T3jXlHjJOLCEmn2ZtrWGaH1C29iRkOycuGFkuuIhVCWTGCohq4G136gTALfhrL9d5H27ugWg3
	etXJvyX5lMQmswfxNLqCQp3CbMoNUBZ7I2r/yTgOvZE25hhDGph8fw7DSnMJp/n+U1qjquncjfeiH
	1NWJYmvV6WqiDyiUfJLvJJTLO8LjzwGxVmUFw/oHEwnrqlF/8+Noal9encXqP0qHZJ1Kls+pK506s
	IxzfNsUjUenLny+IymuXrU16Z/Lsq90wcKs1Ca/iv4OACMJXdUDK8c1+mhPU/JEAWPNhxkE622+hw
	g3ikE+jZhorsYtVlsUFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY6EF-00Aw0A-I4; Tue, 13 Sep 2022 13:45:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY6E8-00Avtv-Vd
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 13:45:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0F7836124C;
	Tue, 13 Sep 2022 13:45:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4085C433D6;
	Tue, 13 Sep 2022 13:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663076722;
	bh=b/fFdAc6KX6iXrK+9WU8aWlQUsipUh4/HMKK7rL4cio=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IwkPuyM73vsstlr5/lAcEwr3Xsspp/ARuSDnqJBJ9VIBYFYV48WVxbLuaHNKGjs53
	 HeBEubc8sQOq+EtVubzFX7qcHzVRRBT9jt5LUI3TgtZpDuk/LvAxbWF35QCZAdtvD0
	 3mGc4MvUOyqtWGjrMPs5O6xjABPRz/uXjX+zta1GuG29FxkH9Wk7T3uLlzmB3fpMhH
	 sH589CqwAnjKRYrf7XtNYsXM8uYmK+7AE+QLDwtYzcdZUMXdOccT0JJKMOq5jda3Hu
	 USiM4ypeBvZppPx7fliWH7esbdFIZlp0mAiy2hNJ6tU62soQznjaNBbflyQzfOkx+K
	 EVwiD/Vqh5Yaw==
Date: Tue, 13 Sep 2022 19:15:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	kishon@ti.com, rmk+kernel@armlinux.org.uk,
	UNGLinuxDriver@microchip.com
Subject: Re: [PATCH] phy: Add RGMII support on lan966x
Message-ID: <YyCJbj2lRWa0h7jV@matsya>
References: <20220901121455.245103-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220901121455.245103-1-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_064525_118839_2BF83E8A 
X-CRM114-Status: GOOD (  10.47  )
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

On 01-09-22, 14:14, Horatiu Vultur wrote:
> The serdes driver contains also a mux to decide which interface type to
> use. Currently the driver supports GMII/SGMII/QSGMII and partially RGMII.
> As it doesn't support all the other RGMII interfaces like
> RGMII_TXID/RXID/ID and it could run only at 1G.
> Therefore extend this for all the other speeds(10/100) and also allow
> the other interfaces.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
