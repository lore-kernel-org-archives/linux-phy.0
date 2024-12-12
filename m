Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C140E7717F
	for <linux-phy@archiver.kernel.org>; Thu, 12 Dec 2024 08:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FE8my05XPKUlmLrD5kWgVxZpuOaWUuKLAvJ/5tT1FQ=; b=pFjM7AlG9kfA1/
	mM3y4KwgvJcHPERiL/hOkwHfwF+3412Vpq7IxwHoJy30GY7b0kZneSYO3vt88evfCYAQYvoQeb47J
	E+de36dEPFU4PJwr4SqljIhLLATp+Xfk2WCgq8LUn9xOntc5T79JpBzcubgghXbOb3kjXbA3MejEI
	LXW0Nqc7QmljJF1PSt+FDV3KdpPbV+qqCYsMkpR8b39lFIj0uDZP3hTxDq2MrG0skCsNv5MDF3VlB
	pkmlNIDAOTep7WGcQdQVfZesO4MCFKx1CqrwCALFTvFguBbg6WCJSt9RJLOxKPi3HgFIarsJBdqmf
	q1uaIAN1+CPwG3GXVslQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeDq-0000000HF5Y-00SE;
	Thu, 12 Dec 2024 08:06:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeA1-0000000HE9L-3DYO;
	Thu, 12 Dec 2024 08:03:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A24435C6842;
	Thu, 12 Dec 2024 08:02:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 449E5C4CEDE;
	Thu, 12 Dec 2024 08:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733990580;
	bh=gEtg6k4+jAA27/mwhy/FA8PtloL7/FESqCtmrmaO7BQ=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=BR/0VgMLmeBvtGLMhmxicV1p3cT0rJrL7HMfyUDwbFDKrTsWMxIezNqF03ItvwzQm
	 BWCxKncYJ4DuvDj28nHX8gF66YLkzRa1jyLtovsPam05NUHK+UaTOTdCWvH1UnPCLG
	 djylASve6pz+jBANGjaOinZxwQ6zFmwWRO2nUDx1j5qbxXnA5iEvrpy5SjzDdvtap4
	 fEn8ZD5mI0ACd9DQdVfsJOFoRAfNI9lQqedW+hUGKJjSSLxXcIrRTYVKzgVYJtlFwN
	 Me41vB3x9e2uoQCbKy12dIp8ygwLzGaLeSQqsqN9vm5h/T9NXLrah9H/7TeMRI4qMT
	 xDUi3JlSL+CLg==
Message-ID: <f3051a8c08d8af623d686cea162c945e@kernel.org>
Date: Thu, 12 Dec 2024 08:02:58 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Liu Ying" <victor.liu@nxp.com>
Subject: Re: [PATCH v6 12/19] drm/imx: Add i.MX8qxp Display Controller KMS
In-Reply-To: <20241209033923.3009629-13-victor.liu@nxp.com>
References: <20241209033923.3009629-13-victor.liu@nxp.com>
Cc: agx@sigxcpu.org, airlied@gmail.com, aisheng.dong@nxp.com, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, festevam@gmail.com, francesco@dolcini.it, frank.li@nxp.com, imx@lists.linux.dev, kernel@pengutronix.de, kishon@kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, p.zabel@pengutronix.de, robh@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org, simona@ffwll.ch, tglx@linutronix.de, tzimmermann@suse.de, u.kleine-koenig@baylibre.com, vkoul@kernel.org, "Maxime
 Ripard" <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_000301_843229_6E9814DC 
X-CRM114-Status: UNSURE (   5.99  )
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

On Mon, 9 Dec 2024 11:39:16 +0800, Liu Ying wrote:
> i.MX8qxp Display Controller(DC) is comprised of three main components that
> include a blit engine for 2D graphics accelerations, display controller for
> display output processing, as well as a command sequencer.  Add kernel
> mode setting support for the display controller part with two CRTCs and
> two primary planes(backed by FetchLayer and FetchWarp respectively).  The
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
