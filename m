Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0AF3C55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 15:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojWZ6BylX/8ni1iR48xZq3hTBbVzdoYGSbcHND8UtMk=; b=noMfpu/oEeUrqN
	ttA0kFQfAzLi0U5tG8yFr+crDIiQ7aIwhPhIpEb4LPJxoJnG9pvR0srENx4uZn7Kfu4Q4piHdqiEc
	rWM3gZiEuCfmNJOIosjDYf2mUS/FS+GuJstzciIWxn144RYS8rikt3iZRrfrZI6//sEEzNyqJiTPF
	HT+5ixZj+84+hBG3gGLM1cfhTosONvvxwd7nvv3Q6DpYA7aHif8AcNO2jqrvVZd30+zx53/gqf/si
	m+Eybdgl8IsGpy+4gRTdM8IeRME7TJut+KUKFbOfN+K2gbYr8mbvKdoAawIs/VSCyMvKOs5EDC89v
	sC2Mt5rwFz/c2f4LrDkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wquV9-0000000HWBc-1N6F;
	Mon, 03 Aug 2026 15:22:51 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wquV6-0000000HWA9-2RHD
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 15:22:50 +0000
Received: from [IPv6:2a0a:edc0:0:900:1d::4e] (lupine.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::4e])
	(Authenticated sender: pza@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AD76C2008B9;
	Mon, 03 Aug 2026 17:22:40 +0200 (CEST)
Message-ID: <62323293f3b1f58871e6e078e2bbf5efbab62c09.camel@pengutronix.de>
Subject: Re: [PATCH] phy: sunplus: fix error handling in sp_uphy_init()
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Felix Gu <ustc.gu@gmail.com>, Vincent Shih <vincent.sunplus@gmail.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 03 Aug 2026 17:22:40 +0200
In-Reply-To: <20260803-sunplus-usb3-v1-1-5a562524c869@gmail.com>
References: <20260803-sunplus-usb3-v1-1-5a562524c869@gmail.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_082248_764267_DABB5335 
X-CRM114-Status: UNSURE (   6.11  )
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

On Mo, 2026-08-03 at 23:15 +0800, Felix Gu wrote:
> Fix the error paths of sp_uphy_init() to undo exactly what each stage
> did: return directly if clk_prepare_enable() fails, release only the clock
> if reset_control_deassert() fails, and jump to err_reset if
> update_disc_vol() fails so the clock and reset are not leaked.
> 
> Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
> Signed-off-by: Felix Gu <ustc.gu@gmail.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
