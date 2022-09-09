Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FB86ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3NR3w9NxA3AKg8ez3POXx6ny/+sg4lWkgtD2Jut3FY=; b=PcLj6SfxHMnpAX
	VyWawMBI1ixj0egCj4lKjf58Ci+nuW9FiFAJCFLktfadEGAnCDVGtzQyfHws32hYCv/7Zoln5xzLd
	0hiC4qY9p8cYbnc80MM7YV2xHnFTPuGyhfX/ubS15pPZ7qneYaOfZEk3rDzHAR8My/BdTxN+xQ5Ex
	cvnC2jPLgap4SPJM5M09cjt8477g3qn1sttmWoNhStUvIvUJmRc7Sn87bBQw+Crty7tUX80nzwRDg
	XEl+Ws/OeIyPe9FocSdhS+a3Qno6vH+Fq4QsG8U1wesJ1BpXcWvor/kBi5vstqr2aknACU53B45Qr
	N1ygBCeKJPrFjVhsBqdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWekW-00GdPJ-SW; Fri, 09 Sep 2022 14:12:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWekU-00GdMa-NM; Fri, 09 Sep 2022 14:12:51 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWekR-0005nv-Fv; Fri, 09 Sep 2022 16:12:47 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, cl@rock-chips.com, s.hauer@pengutronix.de, pgwipeout@gmail.com, vkoul@kernel.org, kishon@ti.com, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie, hjc@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 4/5] phy/rockchip: inno-dsidphy: Add support for rk3568
Date: Fri, 09 Sep 2022 16:12:46 +0200
Message-ID: <42364235.doPnVEEUbh@diego>
In-Reply-To: <20220906174823.28561-5-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com> <20220906174823.28561-5-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_071250_787847_F68A0EF9 
X-CRM114-Status: GOOD (  16.07  )
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

Am Dienstag, 6. September 2022, 19:48:22 CEST schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Rockchip RK3568 DSI-DPHY. Registers were taken from
> the BSP kernel driver and wherever possible cross referenced with the
> TRM.

With the amount of refactoring done below, I'd expect a bit more
introductory text here ;-)

I.e. about older variants of the phy only supporting 1GHz rates and
newer ones supporting up to 2.5GHz and that you refactor some things
to make both variants work.

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
>  1 file changed, 158 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
> index 630e01b5c19b..2c5847faff63 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
> @@ -84,9 +84,25 @@
>  #define DATA_LANE_0_SKEW_PHASE_MASK		GENMASK(2, 0)
>  #define DATA_LANE_0_SKEW_PHASE(x)		UPDATE(x, 2, 0)
>  /* Analog Register Part: reg08 */
> +#define PLL_POST_DIV_ENABLE_MASK		BIT(5)
> +#define PLL_POST_DIV_ENABLE			BIT(5)
>  #define SAMPLE_CLOCK_DIRECTION_MASK		BIT(4)
>  #define SAMPLE_CLOCK_DIRECTION_REVERSE		BIT(4)
>  #define SAMPLE_CLOCK_DIRECTION_FORWARD		0
> +#define LOWFRE_EN_MASK				BIT(5)

PLL_POST_DIR_ENABLE above also is BIT(5) ... is this correct?


otherwise the changes look great.

Heiko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
