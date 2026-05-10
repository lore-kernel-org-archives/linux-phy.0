Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB9F0CD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 10:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZILjRIdu+uz1QtaoUl6lvmXRuGo75ot7tXyKsWOpqw=; b=KdSpzRxuj5TaBL
	nGas9VJKZ29fUFtciBeC89qHzjJLMj0sBTz0E8luE/0Nt6ONZQnp7xm4EJ8o9ARohUF4OBH5I084i
	j0jciyNNYs22aZHyCq+aeufT0a1DWaYcbkmjOpXsTAB4PalfUPPVo3ezKNutCySjk3cto40JUwhLY
	Dc57pysTHS4CjC9TmcgpiLpiLA6Z24ED5pOx2Ls8B+5xkhH9yYA9mUeLm4BK/Kbf9XOhj+Wy109LP
	GhGsQWeD9icXGHceak1IqktFUkJeH3SDoByuQ1NUljJR54Fq5HDSp188TDTiXPlmkpy1sd7ERupI+
	yD17IH6xavsHsie1pLUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM1lB-0000000Ab6H-28RR;
	Sun, 10 May 2026 10:51:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM1l8-0000000Ab5j-3Cvo
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 10:51:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1219E44142;
	Sun, 10 May 2026 10:51:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F915C2BCB8;
	Sun, 10 May 2026 10:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778410301;
	bh=QCxXfmiA59KqWTFUH9USIWlvPZ5PP7UwMzDy7DfipsM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nIRnF+DPrVYWaPJrNdeS9Nf5F0i9YVo9QTITqZrrY6eL/3ULkMplwZJb53vPdfHHQ
	 FGokGYnIN1JjtY5iccsVwjFEGsvhiQ57FJEKOsS8IKHbfKR0BZfwHYfOOrRxebis/A
	 f80jAfoyHFlPQCR+Oh8uzeySJ2aYsyxojDTH2/E3mK28nu979GzNOg+5dW4iA5o0zA
	 dfAIw/2iu129t8Q60SbITgzr+5Uag52KBA0zf+ekDcs2g3D3TqDUYzulp2qy4++aWp
	 7wmRaORrNVw+Mt3a6uA3bG7KqWnOkB/yaTgkGzfsQ9qKGzwHn5XrkkMCwIFdZXQJ+w
	 AFDYADD7V//cw==
Date: Sun, 10 May 2026 16:21:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Peng Fan <peng.fan@nxp.com>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>, Ulf Hansson <ulfh@kernel.org>
Subject: Re: [PATCH v3 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Message-ID: <agBjOmnpKuZoDfWG@vaman>
References: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_035142_826797_6B8C860C 
X-CRM114-Status: UNSURE (   8.46  )
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

On 04-05-26, 08:58, Andy Shevchenko wrote:
> The driver does two things that need to be addressed:
> - includes subject to remove gpio.h
> - checks for error code from device property APIs when it can be done in
>   a robust way
> 
> This series addresses the above and adds a couple of additional refactoring.

Sashiko flagged some issues, some of them not introduced by this, can
you please check this:

https://sashiko.dev/#/patchset/20260504070054.29508-1-andriy.shevchenko%40linux.intel.com

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
