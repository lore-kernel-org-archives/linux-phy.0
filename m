Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66D39C678D4
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 13:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVzOtBQpGvq2/JrK+AkcIilYL6Upfp4/40V02/323v8=; b=3Q3PRSY8IPP3/J
	u0xUMVNqtph+yBwkuuiTzrs7GiLalBYLjZGK88Oewqfwj85M1MmIhK+lDBeNxivihYVK6rYfWI++r
	6Ccof3ttHVKEYaB16RPAh6r520fF1XRPHg56Q51WoK0RisLrL1qqxud3pVAyr821hFKkZnanwyiOZ
	AUZonOk9vZE/y7grhdjFHgh8I0x1KoJyMBVesKRF2U75syRCnweQd++ORg7JSbWzbTeOeLVCpdp47
	K5NiXG2Pg7FWCD9c7geHtR38wao+SG3o6YiZVUEHRzuaVwpK8UOhvjauJx+rmKX+kCi8GlLij2d+P
	icRm4P3ZzYUbwEsUP/nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZWwJ-000D7T-Qz; Tue, 07 Mar 2023 13:01:11 +0000
Received: from out-48.mta0.migadu.com ([91.218.175.48])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZWwG-000D6X-D8
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 13:01:09 +0000
Date: Tue, 7 Mar 2023 14:00:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1678194059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=EP/T6xo9IyCh8niTEXo+aKkGY4Bcvv1OlF9vvjntq7k=;
	b=CAn8VZLeMTBYZXtw3sqmMU/kb8S8bIm/RIAJgYjXLUZqANu68+jIb1GL9jn5lPii8cCdoO
	dEdzmld/YOs2Pe17c6qnzMOw+bmKaME+TENtkui4wKlm6GJCgEE1GeMShhriWbJM148L5e
	/7cb+J+eRbZ2lELpsPvR1JIc4Yqt8co=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Richard Leitner <richard.leitner@linux.dev>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v2 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <20230307130057.GC722857@g0hl1n.net>
References: <20221215201100.2897501-1-l.stach@pengutronix.de>
 <20221215201100.2897501-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221215201100.2897501-2-l.stach@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_050108_622081_394E712A 
X-CRM114-Status: GOOD (  11.35  )
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

Hi Lucas,

On Thu, Dec 15, 2022 at 09:11:00PM +0100, Lucas Stach wrote:
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

I've successfully tested this patch on our custom i.MX8MP board. The
test case was basically "cat /dev/urandom > /dev/fb1" with a 800x480
HDMI display.

Therefore please feel free to add:

Tested-by: Richard Leitner <richard.leitner@skidata.com>

> ---
> v2: use DEFINE_RUNTIME_DEV_PM_OPS
> ---
>  drivers/phy/freescale/Kconfig                |   6 +
>  drivers/phy/freescale/Makefile               |   1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 694 +++++++++++++++++++
>  3 files changed, 701 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
