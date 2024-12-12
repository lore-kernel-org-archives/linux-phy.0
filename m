Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F1E6E77180
	for <linux-phy@archiver.kernel.org>; Thu, 12 Dec 2024 08:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFEk06XU8mecu/xDcXOQcl7/0uhovnCXb4FZw376R3s=; b=wTel1/USkq7CtT
	DdHg8grr+8Q0xo5M1WhZtmpw1s21mHnAUWU5m0RUa5RmoNsVX80/+PEGU/bZuX9sJHsmljXAD7pKJ
	O51+aCyz6p9LETqkvBtqc3PwrZFmLtKd3imvw5z15Fx/4xmmV/dZXvhTAt3MqWJafVHhkPsUqOfP8
	KZGHy3TdKIsAu5WErN0cS38o2WP4UOl27ywObAJJs0/iBuvtwr5vpQjDRg2K459nGfpQrjz9ZIw7C
	Ix70A2/mM2Xu6Y99WlPqxYWigKViKz1Ry/aj2VQGT6lGLj/EccLCEWmBpg5FY/FiT3W3eEuZP/tpH
	dkDXZIIAKLMS1roly9dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeBn-0000000HEQQ-05QN;
	Thu, 12 Dec 2024 08:04:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLe9o-0000000HE4c-1wzW;
	Thu, 12 Dec 2024 08:02:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7B95A5C6782;
	Thu, 12 Dec 2024 08:02:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F65CC4CECE;
	Thu, 12 Dec 2024 08:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733990567;
	bh=buq2YfDCNnqDDY4VdlNh9UeBIdPGX2vT8DdJKHmmo+4=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=FHI+2dRVceqzA7+ClviUj8W8iC6LRGzm8ssbFU1dyWdSKl3ECY/lmoWMpGCkzZntz
	 2aS0F4PPDM9B9uyF/0mXHCTsoiayweGFTMPMoCmCfIaAaexhHuylEXX8h1EdQgLugI
	 BQqX43R9L1NGfRPylatrJBKhQhyVJssJvI31PSSQyTL3wFysVHgJJjRA2iIIHyndjy
	 BmCBowcbMq7h0sT8UYGTcb6/EKwlaLfML0ax0ydV4ra1BNyKxQIFiU3lMcV9ximzAF
	 /OYrk0lmuZnPNNrHYjMFRt+aFLY1Tw+GI8RGH7KImIMKagHXuk+0LwJNOgaT0FLUW5
	 mvbcE166qJrUw==
Message-ID: <f5e1154a6a3a60856553716cdb8f6fd2@kernel.org>
Date: Thu, 12 Dec 2024 08:02:44 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Liu Ying" <victor.liu@nxp.com>
Subject: Re: [PATCH v6 10/19] drm/imx: Add i.MX8qxp Display Controller pixel
 engine
In-Reply-To: <20241209033923.3009629-11-victor.liu@nxp.com>
References: <20241209033923.3009629-11-victor.liu@nxp.com>
Cc: agx@sigxcpu.org, airlied@gmail.com, aisheng.dong@nxp.com, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, festevam@gmail.com, francesco@dolcini.it, frank.li@nxp.com, imx@lists.linux.dev, kernel@pengutronix.de, kishon@kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, p.zabel@pengutronix.de, robh@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org, simona@ffwll.ch, tglx@linutronix.de, tzimmermann@suse.de, u.kleine-koenig@baylibre.com, vkoul@kernel.org, "Maxime
 Ripard" <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_000248_550695_D7D8BDC5 
X-CRM114-Status: UNSURE (   5.13  )
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

On Mon, 9 Dec 2024 11:39:14 +0800, Liu Ying wrote:
> i.MX8qxp Display Controller pixel engine consists of all processing
> units that operate in the AXI bus clock domain.  Add drivers for
> ConstFrame, ExtDst, FetchLayer, FetchWarp and LayerBlend units, as
> well as a pixel engine driver, so that two displays with primary
> planes can be supported.  The pixel engine driver and those unit
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
