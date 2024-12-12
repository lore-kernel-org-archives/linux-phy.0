Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 254C5E7717F
	for <linux-phy@archiver.kernel.org>; Thu, 12 Dec 2024 08:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2pfPcSocuXImE7gGQPsswdSEF7orXBJG8mE1/4znTM=; b=S7GR13CJqsgEgs
	s8clc/tR9BowehGbJBO2LjUn9bYi3Xp4Nm3ZITRHPMVWzIqbC71e6HYDsOdZuvUlgaD6tshzfqjVG
	f6NrO4I5kcuoWw95ojlbrMUH0G8rb1ZElhja7pof8adHanEKJw8OL0CyjuAmq/Tg7RbH9wyhSffLb
	AN1Q+TGrcZtq0isvT3eCvarlk8DYxe4r2E9lb/TEVrCBJIuGEm+rWizqgygWXlSB0VGkH3lhfHstw
	wcp4wOmDVhYcuPacKrYLO8F+RxIZN/jG10C78BrP4Y2HAk78idVYPHnDfiJj6tvvNp6sM0bHAt9e5
	Zub3GobANjO5/Pmazdng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeCo-0000000HEje-3nBG;
	Thu, 12 Dec 2024 08:05:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLe9v-0000000HE6l-1QEf;
	Thu, 12 Dec 2024 08:02:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5953A5C67D3;
	Thu, 12 Dec 2024 08:02:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F11CEC4CED1;
	Thu, 12 Dec 2024 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733990574;
	bh=hZXuWLeRcpitaebs/MTxUMPLPFc8ankf78kpdgoJb/Y=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=SSDWwKZiCYHX9NGGzfbwxjU8OV1dPQ9m32YcoauTAmtyGvHMJvu2+k4V7v+TOfB35
	 FVtHtVu9gU7WwCdal7MIdfdBSWDp1ABEKiEk2MUle4vYUC32EvrPZxWbyYZNWzVnvI
	 PWPMxpTQvvhqFq/q+n884tUKE0UXg7FuRX/Cm27Ef94jTFVwBRdrFeYJSys1N/Mowl
	 2ejeJZRhHmxd3XETDBxexMWAlvSFeGnBNG3gWKeh4hObVhB9UelaO41fr1w2DYWtXp
	 FCS0DRAvorLWVTVW9fBJDkOJZLVuySQioLjVNcP3NnhKD6stoOsnM030AjE5/y/wNW
	 GcqvOcUVPFppQ==
Message-ID: <d89975ed06ae64a4871a8807f53d1e18@kernel.org>
Date: Thu, 12 Dec 2024 08:02:52 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Liu Ying" <victor.liu@nxp.com>
Subject: Re: [PATCH v6 11/19] drm/imx: Add i.MX8qxp Display Controller
 interrupt controller
In-Reply-To: <20241209033923.3009629-12-victor.liu@nxp.com>
References: <20241209033923.3009629-12-victor.liu@nxp.com>
Cc: agx@sigxcpu.org, airlied@gmail.com, aisheng.dong@nxp.com, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, festevam@gmail.com, francesco@dolcini.it, frank.li@nxp.com, imx@lists.linux.dev, kernel@pengutronix.de, kishon@kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, p.zabel@pengutronix.de, robh@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org, simona@ffwll.ch, tglx@linutronix.de, tzimmermann@suse.de, u.kleine-koenig@baylibre.com, vkoul@kernel.org, "Maxime
 Ripard" <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_000255_416503_A98CF8A4 
X-CRM114-Status: UNSURE (   4.67  )
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

On Mon, 9 Dec 2024 11:39:15 +0800, Liu Ying wrote:
> i.MX8qxp Display Controller has a built-in interrupt controller to support
> Enable/Status/Preset/Clear interrupt bit.  Add driver for it.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
