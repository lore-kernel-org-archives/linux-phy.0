Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 175EDEFCE47
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 21:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=meiUqs2ey2GyHMSJmn1Z1RUU1zIeBUTeULZJdKzA4/c=; b=h+6AhxOAaX3Ev/
	r6KwDqVL2P+MFYq1uNzM1jFAbnAnKXpMuLs2P+W17gvdwg6jegWG1CwW6WBlbjYFhBk5mmlHteo8B
	YG8ohq9fvpnUef9NK4cCrqogfzmkaYutltXDloALyb8O4mDhshX78DnvAG7srtpknhimBIk25dvgq
	1JnW5wC33d4bqTAt+/RaqyWs8Jr2G0N1Te1SCIMtpsVvZYlOj7x1s+x9iHMW92TQ//fv5GCF79INE
	FUQZWJrvCA42yjc1rBp7SIKKNpTnTY2apYO4d2mkrO6XiQcqviqriZ6pi/WXDwQPC26jTRtS0DYMH
	0YFC2qL6SxcqpU+iOiXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxtkS-00000000WCO-3PfI;
	Wed, 04 Mar 2026 21:27:16 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxtkQ-00000000WBH-01xu
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 21:27:15 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4806fd9033bso12280225e9.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 13:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772659632; x=1773264432; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QqrYXjS07WWLu9a4fdG6oSfjRISyxlXE1cioRIfnuGw=;
        b=Lbqm4Q2K5jCRMAL25KARQHgOBxunliM69yYXyoUI/UgYl22A5ez7Jje0myXzx1e49m
         KZ7Q8NLGU1NV7MrqlPiVKgTOoDXN6uh3pGDqoYqcSfd/2G5tX1OtYLeHHv+axI8q1a3Y
         CHHH/1aY2VpT6aG3O85tbU7KgUQjtIQ90TmbJPXSkQFaVWD7MwGqHmRBRMwsBkK/8nGW
         Zc5nvcR7/RODiPTgljo3vrhYOd4P0xgHYKQqpPYmLz/NaVqzza1eYCos45ffa+f02DKu
         NiI2+OCd0QEz4pWPu21rs3ov4+EQ1r094YA2TRr0eIFPAN7LrALxnUuUQ0/bjpZ0fwfx
         kKCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772659632; x=1773264432;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QqrYXjS07WWLu9a4fdG6oSfjRISyxlXE1cioRIfnuGw=;
        b=L1NQLeodK9lZkPbU5MfGGlSzLQ1wIUDd7je/7tk5SdqxUlbTw55nvNMV/eUSRkfyrz
         +FqPf/+stm5R/X5L4sZXAzYPjOsBxLRWAw+v/PZ1w38VPVj9LwnpJCWxpAq4Wm0MEs27
         fncpiwKgiVQvtpU/yCKnSdiw0f/xucGot+GGXCS2mZ3+4k1/EX2vwIIx17Ja+PjpHq0N
         zl8NEJ+AQoJT1URxmy8f+2K6cSMOG/QJmUNg80cJsDmLZQRG+7qTn27uBbN1H87HktS0
         V+em/hvTgwOB73p0ECIDZcF5yBjXom2TJE3EBPJ69GuW6Og2VJl7m2x0HGT4CUoqQpXM
         1LUA==
X-Forwarded-Encrypted: i=1; AJvYcCU/jfPPGz4On9EvVfInzbf9afO1dQiiKwWaoeZ8ptJU7PrkZ2yhqSuT63JdOcL2sUbic29FzLJZeZM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+LI7OfIngc2BVO2/tpa0kaoPEbnZo3EuWtOC42BU3E8eojyso
	qWxZUt+QArHc6Wj+jYXUAHmaubMugZHKH9X3EPFs02E94q+2iKjOgkDb
X-Gm-Gg: ATEYQzwmxD85RelOROZYElwl7GPlrDlHjEfkRM9kvCiR0cNGPDErEsw9FKHnpCR5hya
	Cnoy6Ay0OinQ2P6uFU4UZXZFQ0e2RQ+aDqscQUfr0zxms0Nh2Tp2TQykmqyolEId1cMrN51dCoe
	N7tYx61lLc8tljuwF6WXrAUA0G6iY3fafq/VcCKQBuO1xrhs5ZKqbs1I7whm3v+I13m1N9sKYIS
	elWSuyz5TF1H8IQqvkIK2zsgfb9yJv8/SBT/pk3kCgtMhpQVZeXUDbJF5YHXsGdFwNkS2Y053ys
	o45Pl0i/qwW0CUOAhLHaNc9VJ94qOrpswjxIX+CGHfsrolceOuvC/+Y04r1xMjVXDPa0AJzWkbA
	219Eyf9ApipdC174b4VwrfgLHNgQ5Ip09X+faUF07zgAn1MXmXEzx3Kxg5JODCSsQorH0SDgEkU
	DqRtlkxqfEWNws6CvXMc99q6Ulmw==
X-Received: by 2002:a05:600c:8b32:b0:483:7d93:9f8a with SMTP id 5b1f17b1804b1-4851982c755mr35027765e9.1.1772659631369;
        Wed, 04 Mar 2026 13:27:11 -0800 (PST)
Received: from skbuf ([2a02:2f04:d00e:3600:16aa:c9ad:4288:9dcc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851a82dac3sm46980315e9.0.2026.03.04.13.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 13:27:10 -0800 (PST)
Date: Wed, 4 Mar 2026 23:27:08 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux-phy@lists.infradead.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RESEND 1/1] phy: freescale: imx8qm-hsio: provide regmap names
Message-ID: <20260304212437.z34yjprrovewmlm5@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260211144949.1128122-1-alexander.stein@ew.tq-group.com>
 <20260211144949.1128122-1-alexander.stein@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_132714_058452_BD9973BF 
X-CRM114-Status: GOOD (  17.35  )
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

On Wed, Feb 11, 2026 at 03:49:48PM +0100, Alexander Stein wrote:
> This driver uses multiple regmaps, which will causes name conflicts
> in debugfs like:
>   debugfs: '5f1a0000.phy' already exists in 'regmap'
> Fix this by using a dedicated regmap config for each resource, each
> having a dedicated regmap name.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Same as the one sent in December but with an updated CC list.
> 
>  drivers/phy/freescale/phy-fsl-imx8qm-hsio.c | 23 +++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c b/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
> index 279b8ac7822df..4ab45c9f53dff 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
> @@ -107,7 +107,22 @@ static const char * const lan2_pcieb_clks[] = {"apb_pclk2", "pclk2", "ctl1_crr",
>  static const char * const lan2_sata_clks[] = {"pclk2", "epcs_tx", "epcs_rx",
>  					      "phy1_crr", "misc_crr"};
>  
> -static const struct regmap_config regmap_config = {
> +static const struct regmap_config regmap_phy_config = {
> +	.name = "phy",
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +};
> +
> +static const struct regmap_config regmap_ctrl_config = {
> +	.name = "ctrl",
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +};
> +
> +static const struct regmap_config regmap_misc_config = {
> +	.name = "misc",

Since __regmap_init() doesn't keep a persistent reference to the config,
just performs a deep copy of it (including regmap_set_name() ->
kstrdup_const()), technically you could have gotten away with just a
single on-stack regmap_config whose .name you kept changing for all 3
calls.

But this is perfectly valid as well.

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

I don't think you need to do anything further, just wait for Vinod to
start going through the backlog.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
