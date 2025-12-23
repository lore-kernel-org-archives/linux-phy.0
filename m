Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B0F0E6F090
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 14:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44cv+eMkgQD+PyrwqWYBSR3TE/iG8GmzHD8xFJG/XuE=; b=ASkz+un60yzcVN
	mhtkfhKENvQ7FvUcSwyAn0HGOLE8fUzmX4lDTqOMciDlHCGdyfV1a5ZZbj2U5wJ5+2jaIQpPaL2Hr
	N/IYk06OjDQEABh0uKeKZiv/QTvl5sIkfV65+ULaXv/ClIH8qQ0aY769NF/t3kLneb7HRbkquCjVw
	ynTTtSIzD3CFI7PEtdAUExKDHvGLS9aHjsVGPxuZooqzdNEbtegx0ZXJ318DxxuRLkbx8sgIPhZ/9
	ZxqA2Wm7lx1JP2btqYEVa53OjyAIuksKZFCodi1FjQZ0RJa+ML/mZ/lS8QeSj59t5ROdE5Mu+0q3d
	L9Mwbk1b9ltkkQOLvvOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY347-0000000Fa4l-0hzC;
	Tue, 23 Dec 2025 14:08:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY344-0000000Fa47-1eF0
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 14:08:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0B99C4417B;
	Tue, 23 Dec 2025 14:08:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35536C116C6;
	Tue, 23 Dec 2025 14:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766498919;
	bh=MdmWcNW1Zb6GLJFXqBycbEfFaJZYZafZJCbHnv8TMLk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZZ3qXTKfL5NsvljqiD4YQMx11IsCJ/azyd94EbwtPLo5gJ4ebMwxEKETsqhz1RQoX
	 BgIE7C4jJecy0JFFch5tJlp2gUBVhLUcdO7gytSPcEIJrvSm0XkA/m4u5DwRBrownB
	 +k6UEgOxbFAZCQ2Wd4HrQZfsJjn7ZBsgFhDnz5JE+pqh4yA/m+rsxtfFN6xdB8ZbMA
	 0ixRaQ1WFk+UYeTaa+Mxws4V1ZkdcyR+ZKZ+cP2XAUnn1M+Q6VS8zFEZAdwxfVsE3F
	 qSTAzTDnjOVt8nay9XTMyLWudpNgYCmh6fdmdp5mmWESY2UIk5Rn4+gQj7LearY1Lw
	 Jn7LiA79jIWWg==
Date: Tue, 23 Dec 2025 19:38:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Josua Mayer <josua@solid-run.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Vignesh R <vigneshr@ti.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 1/6] phy: can-transceiver: rename temporary helper
 function to avoid conflict
Message-ID: <aUqiZOco5brL71bx@vaman>
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com>
 <20251210-rz-sdio-mux-v3-1-ca628db56d60@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251210-rz-sdio-mux-v3-1-ca628db56d60@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_060840_451690_7C56C741 
X-CRM114-Status: UNSURE (   5.27  )
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

On 10-12-25, 18:38, Josua Mayer wrote:
> Rename the temporary devm_mux_state_get_optional function to avoid
> conflict with upcoming implementation in multiplexer subsystem.

Acked-by: Vinod Koul <vkoul@kernel.org>


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
