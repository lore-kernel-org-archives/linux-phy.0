Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4850C54FB9
	for <linux-phy@archiver.kernel.org>; Thu, 16 Nov 2023 11:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYTuLcDpxU/aEniPKZxuVgxAkROlqRppwXA7oRA8eEU=; b=xcdkQ8wzOr3gxp
	MiAFkwOgBpr8cno3HgD2fuo8afejQvw/5zTAD9Zsv+3/gV3zHethxGSjKIrS5cVyDX8iBW8zuTjiv
	dM0tZOAxmKPmfAdX6n0pTgQ6IFHDbSuc3/RhGdNBWworbucDKkjxueJw66nHDrApEJKGfxfreDZHp
	SNe0NBISuIZHq9gPFwV8nFPLJBRo/gsXWwlk4wanWoPP9Ytt5LCoD+GwrI8aXnPU6rBwKAKTitk9F
	F5VA4OGgJk9akB8lEYm0kQUq9Ds5ImI5ScBaHMeirWcvwvyx4iuisQGfo6+nUbIRpSvFQ59HqgB4i
	25xU7pPJ9bD58EVrOzsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3aVx-003EPO-29;
	Thu, 16 Nov 2023 11:26:29 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3aVu-003EOm-39
	for linux-phy@lists.infradead.org;
	Thu, 16 Nov 2023 11:26:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id F2109B81C9F;
	Thu, 16 Nov 2023 11:26:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B47BC433C7;
	Thu, 16 Nov 2023 11:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700133984;
	bh=91H4/KMPMkjTV+q/X6xZwFVszTpe0ikL12Gouw7eKGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KKdL9HlGEpg2+x2JaPqMsP65qQ2zD0VpHPw/eWcBXd/31rSP0TT56j7WPO3yL31cI
	 b4Gz5gT93Gy2DKQ2aw9u5kjKTrUfY9LkaoiL57bTne9851WEnssHXqclvRLTG1vZyJ
	 h31dHdthwKqIKCmdIg0oy9snapn7Zdb3g7TZaY09AAdFGS9yj/F2XMV6pcm4//vGuv
	 R+WmH/3Ne+Vx2DPowxrqJs6306RnsEUvKiakJgpia2dx/YIZvIxQL0a9EIqa1TGBxp
	 p+OV10sluVANNKwC+M1k4jVaJyW0O8AOCUg5n4abq8p8QuM4enjY3yfVi29x4aZy55
	 Do9ybUoDd8riA==
Date: Thu, 16 Nov 2023 16:56:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Su Hui <suhui@nfschina.com>
Cc: kishon@kernel.org, u.kleine-koenig@pengutronix.de,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: mapphone-mdm6600: fix an error code problem in
 phy_mdm6600_device_power_on
Message-ID: <ZVX8W8+cM0U4j6Wh@matsya>
References: <20231020091413.205743-1-suhui@nfschina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231020091413.205743-1-suhui@nfschina.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_032627_185442_E27195CA 
X-CRM114-Status: GOOD (  17.52  )
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

On 20-10-23, 17:14, Su Hui wrote:
> When wait_for_completion_timeout() failed, error is assigned
> '-ETIMEDOUT'. But this error code is never used. Return '-ETIMEDOUT'
> directly to fix this problem.

Where is patch 2/2?
> 
> Signed-off-by: Su Hui <suhui@nfschina.com>
> ---
> 
> I'm not sure that return directly is true or not, maybe need some 
> process before return directly.
> 
>  drivers/phy/motorola/phy-mapphone-mdm6600.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
> index 1d567604b650..e84e3390bff0 100644
> --- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
> +++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
> @@ -421,8 +421,8 @@ static int phy_mdm6600_device_power_on(struct phy_mdm6600 *ddata)
>  			dev_info(ddata->dev, "Powered up OK\n");
>  	} else {
>  		ddata->enabled = false;
> -		error = -ETIMEDOUT;
>  		dev_err(ddata->dev, "Timed out powering up\n");
> +		return -ETIMEDOUT;

>  	}
>  
>  	/* Reconfigure mode1 GPIO as input for OOB wake */
> -- 
> 2.30.2

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
