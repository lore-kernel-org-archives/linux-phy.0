Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73BCDC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  9 May 2022 00:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=go3C2sA1iUzOcUX4bkhqyMdiet17f/IqjGPfDG+nmgk=; b=SzBUV9QTxCjMbs
	Ja+muModPmldoR4s5MZfGOkMdv6DuJt56jUrgTTOkisb7QHpuMQ1+DStgB0jFMQRyhwUwmdVd0KFc
	eLc2J32E3aj1zS/VktAI85fUSAC5ZZgsn2/0O2oxcz2QQxusaRuBBuxezWoiA0wWEA93aNs7wkurj
	OJdsrRdbtp7NpjW25endYU3vcyVw+8bL/az8329gFjaDXCRaujinUwBqIQDRfJSoQ+076p5JvqRJB
	0XYbFcTHMB3M4eSj8xUhG62aiBadonu3mxQxIFRdJ+qUOr28rhtgb/nfIdfia9vEBx6yMVzouTEh6
	FCvHzFWzTwGRKOPl27mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnrgC-00BtK5-P9; Mon, 09 May 2022 00:55:16 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnrg2-00BtHh-51; Mon, 09 May 2022 00:55:07 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: marex@denx.de)
 by phobos.denx.de (Postfix) with ESMTPSA id 4047D83E97;
 Mon,  9 May 2022 02:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
 s=phobos-20191101; t=1652057703;
 bh=6VbSF+hKaVGBfe+6zzKjUIGGJbomWB66Y/CvZtJaWTM=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=qC8JUB/PuORuk0E3CeclZYfPz/8SR3SskEbBBCknLD7SnxdVSfE1sBarVgWIA0GaA
 EVpNvdWHgLyk14TayIEQ3FVKYXlG7gyYMxeigYNcwGMXGZtBOd4E9WDKRmNsAmVwQU
 p1ruxlDh50YpUyGvM9MtdXilXibyqk7WM1kyCCphDZaZVnBSedgb+EwwSIDi07YpPe
 NzhbGmDS5H5Ip85ikOmzAjzi3yZxWO/Pj9HlsLZDIGDdgXIno72EBdpec45zmlDYic
 MzA4dtaExEcSyE2+8/WU6V9o14oLyAzSaNeU5cCFwf3C4dgI+j7+brwbmIsfEKUZ98
 z5CJxqe7YStsw==
Message-ID: <df6572a4-82ed-5f55-2297-2c7fe69941fd@denx.de>
Date: Mon, 9 May 2022 02:55:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v0.5 1/9] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Content-Language: en-US
To: Lucas Stach <l.stach@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Cc: Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 patchwork-lst@pengutronix.de, Sandor Yu <Sandor.yu@nxp.com>,
 linux-phy@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Robert Foss <robert.foss@linaro.org>, Andrzej Hajda
 <andrzej.hajda@intel.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
 <20220506181034.2001548-2-l.stach@pengutronix.de>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20220506181034.2001548-2-l.stach@pengutronix.de>
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_175506_394203_19475E14 
X-CRM114-Status: UNSURE (   5.90  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 5/6/22 20:10, Lucas Stach wrote:
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.

You can add

Tested-by: Marek Vasut <marex@denx.de>

to the entire series.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
