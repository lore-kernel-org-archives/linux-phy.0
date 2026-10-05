Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04A3CCA5FCE
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 09:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBlQS2Hqd+1ZboXO2vuJBB7zdyRbVb8hReVxiIKdaO0=; b=kIXqMPH21/siKQ
	T/QNMcqQHIwLfHIAQllZhYKBIf4R3OHjerDY7A9Ac1FKhGhktN0cRaoFP4hPT30ZseydBMSAB8Nwy
	zta0NbSwl7GLHQkYFtGVvHeEG1Onzf3r1H7k9r49K5zzFxN4EUlOc7vQqT3OzanJvuYgZFhQluLP/
	Lgjzck06Una9+WUro4y1npct404p8S7pc/wuzJwk6Tjhn3Ith+XBC7Fzn8bkJXYBbKwkcxkd0yQPl
	0XreI+XosDplUWK1ojOxu+eziNPSJ5wJIBa8Gra0cvyHyXp1BDn2p7rs2sVawhRAWj311H7qzoWH2
	8kvp2yuiOUMEc53rx7Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDfRa-0000000G6Y2-0hl9;
	Mon, 05 Oct 2026 09:57:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDfRW-0000000G6Wf-47PP
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 09:57:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B774C40552;
	Mon,  5 Oct 2026 09:57:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18BD01F000FF;
	Mon,  5 Oct 2026 09:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791194230;
	bh=YcSoPbLaWh0ot66x48z9S3+qMbs44+arAPPBRj/XpXI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=n8CPP3CVET9hDcw2Mg9pszo/RhXfl022Lf1qN2MsXKunAk85H8ZNxVfSO45jdrly7
	 r5gTRMDBEi85qTEtjqSHZiwxqae63IgpYNl8jacNtaNEMyi61UFPT8/N8VLLkrXuE3
	 ISa/JyUJPvJNcSXmJh/RrIppqYV0Bfk9dAK3688ERx5Cd/8DLDT91i3sdpwqz8Rwez
	 ZH5qqnnBgsq9tnRGtgw+Ka2qR1Ty1kgBazZlx0UUwzA6l47Q6YW5zMbInwt8aFKpd2
	 NRHREJPZd/bHKyyon3pPFdzoBSLhj83+do6J4yjOpot/6dcTcw3Du/+kzqf5+a9eLg
	 R4uDQZUvV/RSA==
Date: Mon, 5 Oct 2026 11:57:07 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Ruslan Vagner <rusya92266@gmail.com>
Cc: linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: omap-control: fix comment typo
Message-ID: <asN0c5W7Hq7u2upE@parshuram>
References: <CAF9RqJ7iqOjXqX+95eM-0Hv1o=ZTJZaF8cMePGi7_NFnmsptzw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF9RqJ7iqOjXqX+95eM-0Hv1o=ZTJZaF8cMePGi7_NFnmsptzw@mail.gmail.com>
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

On 15-09-26, 05:56, Ruslan Vagner wrote:
> Fix the spelling in comments. No functional change.

This was fixed by f1d07d242b4c ("phy: fix typos in comments")
> 
> Signed-off-by: Ruslan Vagner <rusya92266@gmail.com>
> ---
>  include/linux/phy/omap_control_phy.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/phy/omap_control_phy.h
> b/include/linux/phy/omap_control_phy.h
> index aec57dd784f7..5652aa2f4915 100644
> --- a/include/linux/phy/omap_control_phy.h
> +++ b/include/linux/phy/omap_control_phy.h
> @@ -12,7 +12,7 @@
>  enum omap_control_phy_type {
>  	OMAP_CTRL_TYPE_OTGHS = 1,	/* Mailbox OTGHS_CONTROL */
>  	OMAP_CTRL_TYPE_USB2,	/* USB2_PHY, power down in CONTROL_DEV_CONF */
> -	OMAP_CTRL_TYPE_PIPE3,	/* PIPE3 PHY, DPLL & seperate Rx/Tx power */
> +	OMAP_CTRL_TYPE_PIPE3,	/* PIPE3 PHY, DPLL & separate Rx/Tx power */
>  	OMAP_CTRL_TYPE_PCIE,	/* RX TX control of ACSPCIE */
>  	OMAP_CTRL_TYPE_DRA7USB2, /* USB2 PHY, power and power_aux e.g. DRA7 */
>  	OMAP_CTRL_TYPE_AM437USB2, /* USB2 PHY, power e.g. AM437x */
> -- 
> 2.54.0.windows.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
