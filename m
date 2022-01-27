Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A7A1C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jan 2022 05:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6oDgkAP+jW9LHDEDVD5TK3HCuY+jbYqser0XMwgks4=; b=DOfUgkrsg5RAlF
	qUSi+b2niS4k3DBs4/8kJvToTWWFdtppZIjvMbDQAqoBAdra0u8IC5AavXIMK1n0bHa63wJf8A6f1
	VSQMwqQX35PXfYNq2NZsyO4fUkVPqpCEVpTQ/CAiPEYJqrhXkRWhqddQDKIqpCPLJZwQbvo4A49wb
	JpvApbjlpNDfdy7r4+FpPyzBBICFUUKZDFEO80I7Zy+FksvhBaIf2f6aayO/6G+YnzRWBu+7HQ4A1
	H/u2nvf2KyesiBnJx26rR3bsVPXPaYjxXCl8kpI/JMft32RhpXmTa+Qrh8NIVTv74GQ//kc+z/dG2
	5Z3Zi6krhGFbRzHADGlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCxL2-00EOlL-MW; Thu, 27 Jan 2022 05:28:52 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCxKp-00EOi9-7s; Thu, 27 Jan 2022 05:28:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EAB3DB82157;
 Thu, 27 Jan 2022 05:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D65EC340E4;
 Thu, 27 Jan 2022 05:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643261316;
 bh=2NdSwzXs0/J0PSIuKmSGKLJE4Qf81V0hg2EpWJnok/4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ujHo/YpLgkZeQuyqHISrAmgajrE+2lJ3N+DAFYvdzpaEIfL742n81byiUFDUCgxKL
 bTOGu9hQqQgwwYSeE+32Md0E0ljTTmlZy3tuJ/1CYQ5CXXvW1kpkR8FC3rSnsvAllQ
 SnBl2U0N23bgGTDNdUNRlsiqACFegDkVEarr7kkzOy0joKEF5yqWFT9W59T+4WQY5n
 LQmqbONWmXS3vgRduXoBFFRSkIfPU97J2RNLOjnpy26pohrR4u2ZHvarpaiYw6ZumW
 oK4pHQirHaXBjT/ZxXI+OD6HIc08RhZdg9bri8QFnYIz1aOTuKr+s29punp+pnZp80
 9L6fimuhGDntA==
Date: Thu, 27 Jan 2022 10:58:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Cc: linux-phy@lists.infradead.org, linux-next@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Tim Harvey <tharvey@gateworks.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-pci@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Zhu <hongxing.zhu@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v2] phy: freescale: pcie: cosmetic clean-up
Message-ID: <YfItgKZ4eCeFB5ZX@matsya>
References: <20220113090321.119880-1-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220113090321.119880-1-marcel@ziswiler.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_212839_446889_B30F8B09 
X-CRM114-Status: UNSURE (   7.30  )
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

On 13-01-22, 10:03, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Sort includes alphabethically and add a new line before the dt-bindings
> one as usually done.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
