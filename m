Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AA04E77182
	for <linux-phy@archiver.kernel.org>; Thu, 12 Dec 2024 08:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCWCL+MYphNOxMyV3VT7V3/b/mNA/MPEKAY2ZZwfseU=; b=YLqlUd6I51XrFH
	XAHwFkqveJ3MS8bQy0yVlZ4XaqWCkkQ0Qr5fW+Qxm2tSQG2OMnXiyolWc9hxT9I980Qpi/KRqF2LS
	/eYLs60Dw2VX3mwxxXs2QyqGqLsaHHvjHNdxST9fXmG5TVe2wg7qcmwmajMPQ9glmWW9G6I/hKjvd
	61+bzf+zyHx+tVJZdCOht2o+mg0yUC7CWeryly3DnU4qYETVSFH1xlNzAerv2sE301fOhlaE/AkGP
	E33P04ro9T+k0+xq95z7LMZFHnBORqQt1XxUz2UYDrPB1t5JDfR5RDNlsuA41x5r1B6nLdekLiSUx
	91Y1N+n9MXkkTgOPRj2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeAl-0000000HEI1-0Zw1;
	Thu, 12 Dec 2024 08:03:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLe9g-0000000HE20-36uU;
	Thu, 12 Dec 2024 08:02:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3413C5C6782;
	Thu, 12 Dec 2024 08:01:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC461C4CECE;
	Thu, 12 Dec 2024 08:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733990559;
	bh=QjGG+uPw1phO2lbXkJHqiIAA/RKCYzFXaFQKMiuYHrg=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=rs3Yu//wQuOG540diDP7gIFMrT1Po6r7u7y4CvaDpyeT8XQ5DOf8/amogqp9klusN
	 xgF+158ew4eiPaPAZNXTjXj+5CA9cYR6NWDCZyi48wZNDSe79iZ5Rm0ipF3fgRiuSj
	 wk9JwG/toXsn6SWS5X0EsyL38XfbPBruEiKXPl1HBJpG1AKmpNZZBQ6dKyZ1enquWN
	 C4TU6QvyIEGYtZM/svHeXj2qpcyo9+BeEBElZUU4UWoYLguHGnmdGjXlpCRJlXqe6A
	 uK0f/jQ68Jl8OzNlPO4i/AOSrjF93ujZ19shfL5X01jFmP+JAPvgK6Hmux4sEkgDSH
	 AlSjMPUkOM07w==
Message-ID: <e3b1230308d20b4e7525952d01eb44fd@kernel.org>
Date: Thu, 12 Dec 2024 08:02:36 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Liu Ying" <victor.liu@nxp.com>
Subject: Re: [PATCH v6 09/19] drm/imx: Add i.MX8qxp Display Controller
 display engine
In-Reply-To: <20241209033923.3009629-10-victor.liu@nxp.com>
References: <20241209033923.3009629-10-victor.liu@nxp.com>
Cc: agx@sigxcpu.org, airlied@gmail.com, aisheng.dong@nxp.com, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, festevam@gmail.com, francesco@dolcini.it, frank.li@nxp.com, imx@lists.linux.dev, kernel@pengutronix.de, kishon@kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, p.zabel@pengutronix.de, robh@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org, simona@ffwll.ch, tglx@linutronix.de, tzimmermann@suse.de, u.kleine-koenig@baylibre.com, vkoul@kernel.org, "Maxime
 Ripard" <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_000240_827619_6F57B1DD 
X-CRM114-Status: UNSURE (   6.69  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, 9 Dec 2024 11:39:13 +0800, Liu Ying wrote:
> i.MX8qxp Display Controller display engine consists of all processing
> units that operate in a display clock domain.  Add minimal feature
> support with FrameGen and TCon so that the engine can output display
> timings.  The FrameGen driver, TCon driver and display engine driver
> are components to be aggregated by a master registered in the upcoming
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
