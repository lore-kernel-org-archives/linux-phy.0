Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22981E6F090
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 14:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfDVoJdrJXiV91nkZdemEXDubYkVdZh6PkDxSzu0u5A=; b=k2cNRNJERCN8j9
	9Fk1k6tIC65JcSju70yRnxmmgyJQ32IkszvRgL8I6WfchHLlv3m7hHp7KdThh9vfeYGuhde3/yxEt
	TSe1bxFQ7hNXi0aIaE3Q3cQR6UEhh7x/RM40PVInD2hgkZ/syAWXMPTrgMtdvVzMdAf+8wDJEWcQf
	QNL4TGZz9yKUKQi/HxGNOzlqFs7dELA2RFqUiARDwtaTLINsNpLsgtgYibgeXXVnRXXZh3gsbb4tp
	3vjN3kfmEBdRBw5XVlo01tyMGCK+DegY4L4p0k8LeoUagWIPgIYnwCuECWDLMjOhuuT9uabWv+Vq+
	q270yUg3Vy74psvJ/6/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY34M-0000000FaA1-1LGA;
	Tue, 23 Dec 2025 14:08:58 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY34K-0000000Fa9T-1kMc
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 14:08:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 51DDB6013B;
	Tue, 23 Dec 2025 14:08:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A539C116D0;
	Tue, 23 Dec 2025 14:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766498935;
	bh=5qmy0n6c+VcfOh3+PZggyom8IE8rgbXoja6CYarjlfU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QiAvrOSXialvakW8plMcuE0l/1cFOMyvnBebndbziROuJmBlXlXTJhclBPDiWvQ6T
	 UzEVGnRxJPeD0+cW2i3/0bPJFVgabcVeuMvePN8KnWxQXLiazG40a8obuPUs+Ci3dK
	 O2PX4oQWDjog7IjcWRtVOC7vkwB5MUzSNZuWkaXyQmLA3971XmtvFf0I8UBCpHrSrn
	 U9giHSKsJQz3I/t5dDYiNbbIgzYkQV3kghU8BK018tYkhj5W8a2eDs3vNlKVNKoxPB
	 jCrKFtDLYCG0wlC3q4iDt6iMn8wmB3g3neNy9KibEbQhZOyllAieKjm28URTKKyINr
	 61PkaiBy1pIEA==
Date: Tue, 23 Dec 2025 19:38:51 +0530
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
Subject: Re: [PATCH v3 3/6] phy: can-transceiver: drop temporary helper
 getting optional mux-state
Message-ID: <aUqic6tjQVPiY1yO@vaman>
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com>
 <20251210-rz-sdio-mux-v3-3-ca628db56d60@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251210-rz-sdio-mux-v3-3-ca628db56d60@solid-run.com>
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
> Multiplexer subsystem has now added helpers for getting managed optional
> mux-state.

Acked-by: Vinod Koul <vkoul@kernel.org>


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
