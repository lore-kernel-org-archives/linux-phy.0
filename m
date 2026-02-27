Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C44DFEFB50
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 13:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Ys3duOwnBvY8R5XCyLvwEjfHTm+W6QlEX4keSCvD1M=; b=Ir0zlk+MFYawAf
	MoxP+K+f7X+rmC3RQo3SV/GK5dxjDblKmS3fgXRZTwxHFFr014eIqcjbcOQgkMjSQ40EJPkhnc1kb
	P8xSKu1NN8p5SlqvznuotA4iImaMrYkjzBmh7uCq6tYhJ5o+pQFamx2FW65XdHAXPN5+GMNOU/Hk4
	y94x/ZPPcsPLl9b/B/+Ldf8lH4gy0uLpOD8FruVzEKSgwjwsPfZkc3gJkbXkY8KbyfWRjfCletUcq
	bKaP+E6ThXhblMQ6IFQQWkMDxEJ7GlqqUmfugHhFtiwN87XrWjjPC/IwqEMBTKyzdoVaaa+XoAFW6
	UGtp3bZp0s1D9kpHVKcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvyHe-00000008PW9-0QzL;
	Fri, 27 Feb 2026 13:53:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvyHb-00000008PVn-267O
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 13:53:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E7F8F40AE3;
	Fri, 27 Feb 2026 13:53:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13B09C19423;
	Fri, 27 Feb 2026 13:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772200410;
	bh=OEiG8PtsAcNj3iSgUeQH9gudbFsg7HvzC504Tgpxe1Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bxyj8CgRrbgTz0fh0fwxVTc+jbab8F7/YJO3eG6YqxZ92Q7lOe112jE5HDG4wgnep
	 qeFM+ooNc1D1BLxVQLhvhY38HQHYjAoq8EpPQelfZo4qi+ivf1kGzyk618d92z+qxE
	 6SJSvOV8H7Osy4FD1E5kM0Lkraggd+BhrwWyW1krHQN64Eyz6TOHZEGodWpGksA6vR
	 riIQIaSctAjoipxAVQKd3t/VF/gbdMOX08D9/+6LuY3dvhkxkcwVQL1sWjpyAlhRgU
	 lVygDsaXjb4aJ1I7XNdh5tu1UtOzU/HbwKIoCvJBsRPB+TB9mgjXQsJhWtPc8txOg5
	 C/JcZ/NcwDkiQ==
Date: Fri, 27 Feb 2026 19:23:27 +0530
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
Subject: Re: [PATCH v11 5/9] phy: renesas: rcar-gen3-usb2: drop helper
 getting optional mux-state
Message-ID: <aaGh1y_j_oQcUKtB@vaman>
References: <20260226-rz-sdio-mux-v11-0-c2a350f9bbd3@solid-run.com>
 <20260226-rz-sdio-mux-v11-5-c2a350f9bbd3@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260226-rz-sdio-mux-v11-5-c2a350f9bbd3@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_055331_579985_7C9A715A 
X-CRM114-Status: UNSURE (   6.29  )
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

On 26-02-26, 15:21, Josua Mayer wrote:
> Multiplexer subsystem has now added helpers for getting managed optional
> mux-state.
> 
> Switch to the new devm_mux_state_get_optional_selected helper.

Acked-by: Vinod Koul <vkoul@kernel.org>


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
