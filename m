Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB84C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 06:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ww6AAt53KnuWm7EukdnF0R7QY5VXrtIFGrjP2D35hDk=; b=U4VhmTtlitGHx1
	JNErplaAvmkbWF0cuOGB7Q4DASQIZR6PrLSrzlzw8+ig1sORCiXqBK1H3zUlS8ovzF20SoFm5DMPe
	gjay9v1vpnebZO6BuH4LMyAn+8A81TQtv+YklUO3e7KOFkMzMaHrPneD6szlLpOTisbIVAfQfhDsB
	cctAnM60FnZiaoNIfk1TsHXDNXHW+r/t99cNTHLu8MMtJTi5Ue3ZCGSbtcEfZr1HSzqIhTzG0+bmE
	8teUm695pcbWON1BsTiIlzAS6VkiLqYgbUtrS0hcYF52Xk6UJA+u3oEHSd14AQwYmJUyKmvUBjvKz
	/H+jfuPIW42FYwzmYxjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neW5N-00GyBW-B9; Wed, 13 Apr 2022 06:02:37 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neW5G-00Gy51-5J
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 06:02:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BA315B820FE;
 Wed, 13 Apr 2022 06:02:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1539C385A3;
 Wed, 13 Apr 2022 06:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649829747;
 bh=HvrUsmz71cLj1divu5+NeKrK0QccgLx3LKBNNoPFmqY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IS7lC7N/coBra+4TEgAvwz0NGNcPYY06a6Aj7vRVJ/P0ZTjZ78RBVoXicQaqe6zuV
 kQxUI7ozwL+lBiDN4rxqsKsRgsNoJPrKTh53Z6NuSc7NKJsmmonos0NIV1CWUTrTqf
 MzJbiNtFjnBAqF4BontGHIkwvcpXmHHE4nlVzaVJdhnf3T5ItKrNfEjJLNjsKEeh6l
 oAfUTrBrloqCAVyUPoYRO91/X9e9ytB/CYtP4kp+pYWtCQXvHC0v+Fy9gU/ant2Ulx
 B4GQkYlVAiJVF+9FaAJf77+qnfxkaQmxpHpC01PpXMSUFVph18pIfAY66YbLa0OFj7
 TmzZ8KPfKtIgg==
Date: Wed, 13 Apr 2022 11:32:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Amelie DELAUNAY <amelie.delaunay@foss.st.com>,
 Yann Sionneau <ysionneau@kalray.eu>,
 Michael Grzeschik <mgr@pengutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH RESEND v3 2/3] phy: core: Update documentation syntax
Message-ID: <YlZnb2dJjaroDfyu@matsya>
References: <20220407102108.24211-1-jmaselbas@kalray.eu>
 <20220407102108.24211-3-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407102108.24211-3-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_230230_406938_3A675338 
X-CRM114-Status: GOOD (  21.20  )
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

On 07-04-22, 12:21, Jules Maselbas wrote:
> Update the syntax used by the documentation of phy operation functions.
> This is to unify the syntax with the newly added documentation.

Is there any reason for using this sytax, is it documented somewhere..?
How does this syntax help?

> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
> v2: new patch
> v3: no change
> 
>  drivers/phy/phy-core.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index d1817a0f2d09..d11b517e283a 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -467,7 +467,7 @@ EXPORT_SYMBOL_GPL(phy_reset);
>   * runtime, which are otherwise lost after host controller reset and cannot
>   * be applied in phy_init() or phy_power_on().
>   *
> - * Returns: 0 if successful, an negative error code otherwise
> + * Return: %0 if successful, a negative error code otherwise
>   */
>  int phy_calibrate(struct phy *phy)
>  {
> @@ -493,7 +493,7 @@ EXPORT_SYMBOL_GPL(phy_calibrate);
>   * on the phy. The configuration will be applied on the current phy
>   * mode, that can be changed using phy_set_mode().
>   *
> - * Returns: 0 if successful, an negative error code otherwise
> + * Return: %0 if successful, a negative error code otherwise
>   */
>  int phy_configure(struct phy *phy, union phy_configure_opts *opts)
>  {
> @@ -527,7 +527,7 @@ EXPORT_SYMBOL_GPL(phy_configure);
>   * PHY, so calling it as many times as deemed fit will have no side
>   * effect.
>   *
> - * Returns: 0 if successful, an negative error code otherwise
> + * Return: %0 if successful, a negative error code otherwise
>   */
>  int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
>  		 union phy_configure_opts *opts)
> -- 
> 2.17.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
