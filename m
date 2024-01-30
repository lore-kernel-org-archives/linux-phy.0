Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04FF8C47DA9
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jan 2024 17:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdsDSqA42BUM0Vr1sb8jndfbG/MfsEB/Lanf6OgOeIc=; b=RKXZkQfRlQWxJi
	O0pF3wVAuHQoC4SJCPADlUorvzN3Nn1cB9ORQM04bZMvn9F0XAntSkLERFzbklnyH51Bl5PpjCL0d
	eXyAH2WYJSkxzwUCMv89wYYxxPEQK7JDsJnIwretorom3XQeJmAzJjpMdXgqKH6qJ6ACwKayQadDA
	GdEP4OTPRjQdWyqGAL+FyaFIcSxu914xZK0G9MqcsmKhT85LdvwaNtwYiF0tZXJ/lmGv9vyprVBtI
	RAyhhSPztkGLgfmMwhPvX5MH9b+Ti0dTZC6r1pbCuxGAR/FY81ARLocXyaUHkwsx6Ru4GUd5xpQOM
	OPoXxyQBLg96LPO215zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUrd1-0000000HVxG-2wqK;
	Tue, 30 Jan 2024 17:10:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUrcw-0000000HVwr-3RfY
	for linux-phy@lists.infradead.org;
	Tue, 30 Jan 2024 17:10:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4276E60EFB;
	Tue, 30 Jan 2024 17:10:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32125C43394;
	Tue, 30 Jan 2024 17:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706634625;
	bh=og6jQJBHeHMmvk9NQZFiuw3bMyKwy04HOIksyUv5hDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uOAoU27oTREcKJoZUokKd9l4sXYb/pYwbZ4/1YTK115qFzgbJylQ55n4pbUp7XYT9
	 vdmaHDKn3EYlB0FGXAaYhiFC0Kzt2uEig3IBzhcEVmOrl7qr7vgslyTXBJqOTDexAT
	 0jlVNHGkr6o1a19siVrDKDFcjGHcGIs+CyuXm6uSZsXO7GmVr2/i85cvDtwzxe4xu6
	 97dYrEAyrvPizmIs85TtGQEn/oKh2kFKH1TSw4QnuK4EgmCotTKlocmKtPQNJgDFmi
	 BAQjXot3dAvJJzPGNUjM/A566m4pe/Chcl/im1poUwww9YOhbXN/UXeuB8hbExi/X4
	 zq1UKVgcxA+BQ==
Date: Tue, 30 Jan 2024 22:40:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Vincent Shih <vincent.sunplus@gmail.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: sunplus: Fix a memory leak in update_disc_vol()
Message-ID: <ZbktfWM3bzuRrMok@matsya>
References: <451016052782f18c8b52ed0f836d7ab5c69bac3d.1706431643.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <451016052782f18c8b52ed0f836d7ab5c69bac3d.1706431643.git.christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_091029_628922_1C7EC893 
X-CRM114-Status: GOOD (  16.30  )
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

On 28-01-24, 09:47, Christophe JAILLET wrote:
> 'otp_v', allocated by nvmem_cell_read(), is leaking.
> It must be freed before leaving the function to avoid a leak.
> 
> Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> This patch is speculative and based on comparison on the usage of
> nvmem_cell_read() in other driver.
> 
> Review with care.
> ---
>  drivers/phy/sunplus/phy-sunplus-usb2.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
> index 637a5fbae6d9..50f1f91ac052 100644
> --- a/drivers/phy/sunplus/phy-sunplus-usb2.c
> +++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
> @@ -105,6 +105,8 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
>  	val = (val & ~J_DISC) | set;
>  	writel(val, usbphy->phy_regs + CONFIG7);
>  
> +	kfree(otp_v);

Looking at documentation, this should be nvmem_cell_put() see:
Documentation/driver-api/nvmem.rst

What do you suggest Srini?

> +
>  	return 0;
>  }
>  
> -- 
> 2.43.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
