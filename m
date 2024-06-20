Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3614EC27C79
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jun 2024 16:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eTs9gAz0CjxLf+DAjA7FcB9OrXE+3oLw5Y/2AUF5Mo=; b=zQxtmxHY5p8FBJ
	5lJps/bWns46aiM4RF2yy2WReqfRP8DDMz567TuLVBXiV4DRVlR4ULWPqwdU2E5XIRoPcDVTc/YZo
	hJvIpv4c6G34C7jSs0NKZg7mHQ01YWh77tDdLY5BlJvuQwcHUNIk+CWu8+KWZK5fZzRkh7LEwZEyJ
	hE7VAHvPtwvRN1zP8gshE6vqsXWU9X8VHyptTlypyD5xyZmB2e4AppjXfMc/D5e0oaWOYqNz/o3f3
	K4hfHQ2XaVxRUXiSL2f7rSvwlidjvibC1LlS6tycFfW9kPrioB15r698nOjqktO8CgTKnA1jRP7lg
	BAToxe9yA+za0Bj+Pa+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKoQ-00000005uDT-3V2p;
	Thu, 20 Jun 2024 16:39:02 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKoN-00000005uBp-1LmP
	for linux-phy@lists.infradead.org;
	Thu, 20 Jun 2024 16:39:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 361BECE274F;
	Thu, 20 Jun 2024 16:38:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 008E3C4AF0D;
	Thu, 20 Jun 2024 16:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718901535;
	bh=vhy5M7zlHVNgDl+MuSd5eVL0wMhSo8/DXGAueZ30huc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FLV1xGECaLMGc0QBdBtHod/nyM41QR4hWvPhKzXHZLX57aqJ/BbYrzeY0JIa1rX0v
	 PebxGHjVepPx6uWlu2lqqjz5cxa/5G1sLPV+nLM4IOuOpxOZjBEZ9GJ1UN23dkZD5E
	 CbhlMvubFwj2X6+P6I7RATiFbhJesvFOb3K/XVIL5XX3siKObhTk6Kx6eH9RwUH2nt
	 rLgwImMSAPUVhWMVM+ikRBf0ZvqBkA89ETAfyyE4w1oTlKV8tsBzIna5OUv9GY5sA5
	 9+9WeZAiCgrgJs1uVg1ss40ZL5K8K6Su9gg/TGmQETyrIYtuoX+lMhhnXudfIYnIZF
	 tYaPlMXnb8Wzw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nathan Chancellor <nathan@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>, 
 Richard Zhu <hongxing.zhu@nxp.com>, linux-phy@lists.infradead.org, 
 imx@lists.linux.dev, patches@lists.linux.dev
In-Reply-To: <20240620-phy-fsl-imx8qm-hsio-add-bitfield-include-v1-1-5c7c09ed87e6@kernel.org>
References: <20240620-phy-fsl-imx8qm-hsio-add-bitfield-include-v1-1-5c7c09ed87e6@kernel.org>
Subject: Re: [PATCH] phy: freescale: imx8qm-hsio: Include bitfield.h for
 FIELD_PREP
Message-Id: <171890153156.219744.4144352903595964774.b4-ty@kernel.org>
Date: Thu, 20 Jun 2024 22:08:51 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_093859_662671_BDF98FA5 
X-CRM114-Status: UNSURE (   5.17  )
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


On Thu, 20 Jun 2024 08:21:15 -0700, Nathan Chancellor wrote:
> In various configurations/architectures, bitfield.h may not be
> transitively included, which results in a compiler error because
> FIELD_PREP is an unexpanded macro:
> 
>   drivers/phy/freescale/phy-fsl-imx8qm-hsio.c:459:8: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
>     459 |         val = FIELD_PREP(HSIO_MODE_MASK, val);
>         |               ^
>   1 error generated.
> 
> [...]

Applied, thanks!

[1/1] phy: freescale: imx8qm-hsio: Include bitfield.h for FIELD_PREP
      commit: aefa036be8c216c8b344d34c9f35ff907b9c315a

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
