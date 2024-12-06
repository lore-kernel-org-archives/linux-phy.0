Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE421E77173
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 11:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41J+WbfUihaaqSfssEu+J7kqHtaTfXj0eAXh1yL3l0I=; b=uMMYzu9LnO7x78
	yNHrNCvb8baPs2+FPU6x02GtAlumZ8GHVY7hKaoQ3UiXevsFEpxrzbfHSU2XyfKMN9SxnuImemu+3
	lCMMZ3tmuWAKogvH3ilGT71i8AwvdyQdWrV/3iV/ZTb6W+1KQiFbcAjbQGaQC1TkcwpmI1RDy22iy
	C/BpcEu59qBNB8tYcMgBjGkRAfZtCYrrbfvQ2PUmcIbJeMr6lBSDiwyx22fyxEHQejAYQ2weRuzJm
	MzznUjx8GRjD5mI98uGrM8M3c3ic1vdWU+eSj5nLlS+303Pp0pk9eXZY32yyVlUx3jbWFWlAhGrgf
	Id1kDxoNZce53uBUG5AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJWNT-00000001QxM-0fkd;
	Fri, 06 Dec 2024 11:20:07 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJWMP-00000001Qfg-09z7;
	Fri, 06 Dec 2024 11:19:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733483937;
	bh=febNccnQ8RS5XqmrWaBISIo5m25NOTjYjc5TdIMoPfA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=L41VGT5FtAoj+V8dV/MdyYwwwGpY8uG+Xq+sc+GsYpYTor4ZXKf37LSBrLo0gHG55
	 luGesglz/Qw4rszdWkRLoMYtquLUV+r8tw3xBZCWXmm4uI/sP0WyBudHKgEbUTxPF5
	 oFxtvcsE9uFxxjgnhTbIwQAcqTnsnur1tyrRyAr7y+3FNC2K7ySKTMXztZIoEnGGIF
	 +yyNXronPYeFfRe1M2H60bNjm3JUuHDBz9Md91nVk2ni63DEu1fkL5GoBVvGeca0J+
	 VRBXE+7WsimNnV/uzggEutqBgI2Q446hp+cmkCk+1otGKv6e8NRXyxTJx80+EYWzoq
	 riOeZ2uWHj/nw==
Received: from [192.168.1.90] (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C13B717E362F;
	Fri,  6 Dec 2024 12:18:56 +0100 (CET)
Message-ID: <e6172204-2f3f-4a9c-892c-be85d19ad031@collabora.com>
Date: Fri, 6 Dec 2024 13:18:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: phy-rockchip-samsung-hdptx: annotate regmap
 register-callback
To: Heiko Stuebner <heiko@sntech.de>, vkoul@kernel.org, kishon@kernel.org
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 quentin.schulz@cherry.de, Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20241206103401.1780416-1-heiko@sntech.de>
 <20241206103401.1780416-2-heiko@sntech.de>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20241206103401.1780416-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_031901_257545_40EAE13A 
X-CRM114-Status: GOOD (  13.40  )
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

On 12/6/24 12:34 PM, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The variant of the driver in the vendor-tree contained those handy
> comments in the regmap register callback. Having the different ranges
> describe what they are looks helpful.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index 4ced1479e2dc..c5c64c209e96 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -766,13 +766,13 @@ static struct tx_drv_ctrl tx_drv_ctrl_hbr2[4][4] = {
>  static bool rk_hdptx_phy_is_rw_reg(struct device *dev, unsigned int reg)
>  {
>  	switch (reg) {
> -	case 0x0000 ... 0x029c:
> -	case 0x0400 ... 0x04a4:
> -	case 0x0800 ... 0x08a4:
> -	case 0x0c00 ... 0x0cb4:
> -	case 0x1000 ... 0x10b4:
> -	case 0x1400 ... 0x14b4:
> -	case 0x1800 ... 0x18b4:
> +	case 0x0000 ... 0x029c: /* CMN Register */
> +	case 0x0400 ... 0x04a4: /* Sideband Register */
> +	case 0x0800 ... 0x08a4: /* Lane Top Register */
> +	case 0x0c00 ... 0x0cb4: /* Lane 0 Register */
> +	case 0x1000 ... 0x10b4: /* Lane 1 Register */
> +	case 0x1400 ... 0x14b4: /* Lane 2 Register */
> +	case 0x1800 ... 0x18b4: /* Lane 3 Register */
>  		return true;
>  	}
>  

Nice finding!  The HDMI variant of the driver which I used as an
implementation reference (i.e. phy-rockchip-samsung-hdptx-hdmi.c)
doesn't provide these comments.

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
