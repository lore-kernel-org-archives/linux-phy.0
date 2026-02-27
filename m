Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09C90FEFB4F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 13:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGijGthmVyAjMP6L9M8YeB0EWbgrSgafWk3ZEaQSoQ0=; b=zLIWDJUtJxtiF9
	Jby7dDKfZmzsu/JuQDhOXoTas8fw+X0JwVeE9Zgd41R54vbHSJxYBdclUfcH+0cywa0h8DsPwdV47
	OUZFVCesltp544ev1nkKaA8sF9PvFDy4Ec30FPGUS5SvhUJOwPePJuDk/CUQF5gkNY4Ol+E46l+1g
	sVJW6//lGXhEoaP4MbFb8Wqfe7DPgF2TRIyV/SKSH/+fDSpn8q8eWqGoV2SGNjC0c9riPe6fpjPP1
	AiJ4JrVmq+2Zk9kc3gTOIVwFPj0vIctFJdsZm4yRA9KZJhh6RlKcPBBIsLwheObP4Y8AHtuSCAMh9
	koNVl7eo7zO1ljxhw6nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvyGw-00000008PT3-2vYd;
	Fri, 27 Feb 2026 13:52:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvyGv-00000008PSu-23JP
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 13:52:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E649060054;
	Fri, 27 Feb 2026 13:52:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD974C19423;
	Fri, 27 Feb 2026 13:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772200368;
	bh=1aioRZsT/x015BhRflc0NizKTzba3nmZZdRjXLysTLY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M9u+RE+GZYJcdLan0zaWClwn6F42IEr07BRaJgqY5Mj3B9QCIoyhEfxIP8lhKvSFx
	 /P8blzbMtsST4PKq2w0d8KQ3RUV9OE6bMDSfEEsAAxhQgA6+EQ1HTrmsEocJsrB13T
	 UtBgDxK1E+HQEIICMcVUyv/afIdZmsLPAonvignBo87bmlB48jIFwqzjviRQN7ag/4
	 ePJNQ1XlKerWQKRxVWBEoH6F9hLmStbNidKD+AcQ8rm9n5YUEoWIJvQlB4bUBqYbCJ
	 dJbaB77eJXyRhcGGAkR44ykLnhqgCblK+YnLA3wcQzFn+EK+6AK+iVOwbXFUhoaTd/
	 U8SEKxgUOfeMw==
Date: Fri, 27 Feb 2026 19:22:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v11 2/9] phy: renesas: rcar-gen3-usb2: rename local mux
 helper to avoid conflict
Message-ID: <aaGhrecAflaK8jcY@vaman>
References: <20260226-rz-sdio-mux-v11-0-c2a350f9bbd3@solid-run.com>
 <20260226-rz-sdio-mux-v11-2-c2a350f9bbd3@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260226-rz-sdio-mux-v11-2-c2a350f9bbd3@solid-run.com>
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

On 26-02-26, 15:21, Josua Mayer wrote:
> Rename the temporary devm_mux_state_get_optional function to avoid
> conflict with upcoming implementation in multiplexer subsystem.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
