Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE04C48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 04:36:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30F2361164
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 04:36:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 30F2361164
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7Pl0Pg8AzLyrTj8lzBJDGQRUyB7hyTOhpwQmelBWvs=; b=EJ3BWHQzcavW3C
	QIC9YDfX3HkWEOz0hyPjQivkJmJ4ylWEcu1kszmvwpDDoNauDNrhAYnzuoVvll/eOT7kjfgimJVF4
	U8Hl2PqVRc1KWfOXYD9tu85Aacz3PtVcaZ9VzxYTNSOByYEIXy6LPweuHUS/hpGXXciNDfggSs3cu
	Y5oAAVme6vsqzwlZnbCtcBe45h4YaLAClJAir2Zb6Y1lPiVhfzu28zJczgbsmEjTvnfY3PHT7+jgM
	XF87STd8WQtlYbZkPoWzbzJ6yczvQJ3KVzbYIjCoPbIWfrJwbioqTimjbBz3d27eb3OY3m8SUqvpA
	DXGQKqeYZoztt9ansZjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvBg0-0023Kv-Nm; Mon, 21 Jun 2021 04:36:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvBfo-0023K9-56; Mon, 21 Jun 2021 04:36:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E32D76100B;
 Mon, 21 Jun 2021 04:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624250195;
 bh=GLB/Ss+fGkEW5XRiJrP+WIsTTmWHJUEvXYecRI+A+zU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E29iI/9595aKLEZxqKyB/JV3uYkLMZJCqyShqYyOzF7gGwUqhsSO6NGQwT7Pk8hvp
 +Qy2Sca5MIZhJgeb4p2Rr20sUoFo7/TgS/QbNat/DP4+QEyPCoyfgEsY+VWZtr7hYV
 ewBStgVxfKFWEpXuThTrMhd5w4dyXXpfzS/T32A6/Fu2yuKVdo05H2YqeCYFXyxYV1
 4htxOU6/7ieOvptwz2YowjsoLGeGI1kX/u0iwf9xe45amdgeZonKYbi82lAUvMGW6P
 p9533otvBBO/l6j+P6zWXwpFFH7chrEypjHDo081arHxnvG1dOEhaUzamfD1WGbytK
 +ddfwJtiObamA==
Date: Mon, 21 Jun 2021 10:06:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Samuel Holland <samuel@sholland.org>,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 Ondrej Jirman <megous@megous.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v7 14/19] phy: sun4i-usb: Introduce port2 SIDDQ quirk
Message-ID: <YNAXT5lYVcJ309zJ@vkoul-mobl>
References: <20210615110636.23403-1-andre.przywara@arm.com>
 <20210615110636.23403-15-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210615110636.23403-15-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_213636_299852_B168B534 
X-CRM114-Status: GOOD (  19.62  )
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

On 15-06-21, 12:06, Andre Przywara wrote:
> At least the Allwinner H616 SoC requires a weird quirk to make most
> USB PHYs work: Only port2 works out of the box, but all other ports
> need some help from this port2 to work correctly: The CLK_BUS_PHY2 and
> RST_USB_PHY2 clock and reset need to be enabled, and the SIDDQ bit in
> the PMU PHY control register needs to be cleared. For this register to
> be accessible, CLK_BUS_ECHI2 needs to be ungated. Don't ask ....
> 
> Instead of disguising this as some generic feature, do exactly that
> in our PHY init:
> If the quirk bit is set, and we initialise a PHY other than PHY2, ungate
> this one special clock, and clear the SIDDQ bit. We can pull in the
> other required clocks via the DT.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  drivers/phy/allwinner/phy-sun4i-usb.c | 59 +++++++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 
> diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
> index 126ef74d013c..316ef5fca831 100644
> --- a/drivers/phy/allwinner/phy-sun4i-usb.c
> +++ b/drivers/phy/allwinner/phy-sun4i-usb.c
> @@ -120,6 +120,7 @@ struct sun4i_usb_phy_cfg {
>  	u8 phyctl_offset;
>  	bool dedicated_clocks;
>  	bool phy0_dual_route;
> +	bool needs_phy2_siddq;
>  	int missing_phys;
>  };
>  
> @@ -289,6 +290,50 @@ static int sun4i_usb_phy_init(struct phy *_phy)
>  		return ret;
>  	}
>  
> +	/* Some PHYs on some SoCs need the help of PHY2 to work. */
> +	if (data->cfg->needs_phy2_siddq && phy->index != 2) {
> +		struct sun4i_usb_phy *phy2 = &data->phys[2];
> +
> +		ret = clk_prepare_enable(phy2->clk);
> +		if (ret) {
> +			reset_control_assert(phy->reset);
> +			clk_disable_unprepare(phy->clk2);
> +			clk_disable_unprepare(phy->clk);
> +			return ret;
> +		}
> +
> +		ret = reset_control_deassert(phy2->reset);
> +		if (ret) {
> +			clk_disable_unprepare(phy2->clk);
> +			reset_control_assert(phy->reset);
> +			clk_disable_unprepare(phy->clk2);
> +			clk_disable_unprepare(phy->clk);
> +			return ret;
> +		}

no delay between deassert and assert... ?


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
