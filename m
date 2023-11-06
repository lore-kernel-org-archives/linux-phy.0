Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87485C4332F
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 11:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVOmWm3M218Poe752oayuOzNePPBS6CE6zqXIPlvjCw=; b=OK0L+dGLSP+abP
	Fy/iX03msuL7e86W4xidkcIRi1B5fn/1D6j1uI82SovMgiQ+rLW3AIveJwJfgyzk4Slymo606Mq7L
	Q6yH594NG1zHZkuaIZs+CE4P6U2SiFfqhmtTJqsda6d/QCJWsn/zxJHHLXHIJNbxktRb9DFualqYR
	Jyc3sch9BiKNYcUHAUXIEWDZqBtKJ7bik+9ohAZprd5OtgQhhMXbN0II0V6FGtiGzMH0Mo71SJDah
	uK5i0TLoKK7hLoQs71sqABobqRgA7V73wPoqM88yFZdcEJdOF8JdG3pi2j1B2DFWhoMcMFhXtXtv8
	zy5iYFHaoqOwMqKd76iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzxaV-00GMlF-0s;
	Mon, 06 Nov 2023 11:16:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzxaQ-00GMkG-0N
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 11:16:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 91A8560DF7;
	Mon,  6 Nov 2023 11:16:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4619C433C7;
	Mon,  6 Nov 2023 11:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1699269362;
	bh=SoF/S94flwFOY3+izonboY5kCu20hjnARgVVQs7pwYs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hBgTmseACJnpejjeiKlxL2lrdmM3YlClw3KVIkRk2RARTjlFKbNspctPy9Qk8OR2M
	 bZiXZouKCvxa8/nzLTRUCYvf89EhiRLs8sfI+v03v8peK7JSpcpYbWwMWY2rdC9MRU
	 Rkc9fw8K+TGX9dRxs6d41/kd5rL5nuGWn4jbDkIw=
Date: Mon, 6 Nov 2023 12:15:59 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/3] Revert "usb: phy: add usb phy notify port status API"
Message-ID: <2023110623-pointing-stump-643d@gregkh>
References: <20231106110654.31090-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231106110654.31090-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_031606_208158_07F22EA3 
X-CRM114-Status: GOOD (  15.57  )
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

On Mon, Nov 06, 2023 at 12:06:51PM +0100, Johan Hovold wrote:
> The recently added Realtek PHY drivers depend on the new port status
> notification mechanism which was built on the deprecated USB PHY
> implementation and devicetree binding.
> 
> Specifically, using these PHYs would require describing the very same
> PHY using both the generic "phy" property and the deprecated "usb-phy"
> property which is clearly wrong.
> 
> We should not be building new functionality on top of the legacy USB PHY
> implementation even if it is currently stuck in some kind of
> transitional limbo.
> 
> Revert the new Realtek PHY drivers for now so that the port status
> notification interface can be reverted and replaced before we dig
> ourselves into an even deeper hole with this PHY mess.
> 
> Note that there are no upstream users of these PHYs and the drivers were
> only included in 6.6 so there should still be time to undo this.

No users of these phy drivers yet?  Why were they added?

> Preferably these should go in through Greg's tree for 6.7-rc1.

I'll be glad to take this if I can get an ack for it.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
