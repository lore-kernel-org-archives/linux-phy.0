Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4689BC4829A
	for <linux-phy@archiver.kernel.org>; Sun, 11 Feb 2024 18:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzX8alh37uZTGQHgglH8X7925/bctjnviNm3evnCK2g=; b=emOmGTGtTDaCmC
	49lh2R/cZyLn9IDzGdUogN2Eq6tdNIhEbQvLNGGHHjFmUMjsJcLmJZI6vMhtI8L2ysOkVcxe8g0eu
	fFvJ0yuHMPiiEP7h2oFQ0LLVkIFV13uryu7nnHpG2mI7VcPdfvzTHhDTn2iimoWqSGlO/NFP+lfGn
	aeoZEGWDFrR5x/W0XFhz5xuhvtDhbryftkVXtZm3scUZiR77HN1BhotKKf8DSOlN6wuKdPE0tBZy4
	MxoaQdUS3MP3py4UH0vxBoXp73LijT9ZvspjplPgTUHKtuFq9j0CevXwN/df8xwlS421IPOuEJIw0
	Cny1+A8LYH9/91XaG4XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZEzC-00000003Aq8-3cGp;
	Sun, 11 Feb 2024 18:55:30 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZEz8-00000003Alj-20Qs;
	Sun, 11 Feb 2024 18:55:28 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 91D4D87B71;
	Sun, 11 Feb 2024 19:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1707677723;
	bh=T3BcS+Oe2i97YKSCZYhRXLq4o/rrJHTgklytQd/lwi8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fiziFszNEAhnu2Zt2C1n9acnOewnvx1+Yrz+Q+8c2DIGNJNazY0I6U2aio6MrYFEq
	 hVdjLmzJYjOa2acEfd/VHZhWc1MH886tdGwGrri3wKMjvLh3HD9Ku01xP393iXw9vl
	 tlOgOZaIV1Gkv3rz6cEuSUgaEDEezoIOYG7QCIL3ZS8DaBYTKrklIwFX5t+CdPszjv
	 5z499XYAHiu7n4dyoeKbrVq5LWGKPWEYObsJNegB8hKjGL4BSIysPgGT3BWEd95CxJ
	 9EOOceyiIhb3pdkPcDK7v9siWfDzuplB7bICsJdDZJ39SmExRw0k1uImur+cL7/97N
	 L0kyhhG3j/qUg==
Message-ID: <dda8ca75-1792-4933-9240-39259ae721b7@denx.de>
Date: Sun, 11 Feb 2024 19:51:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 2/6] phy: freescale: add Samsung HDMI PHY
Content-Language: en-US
To: Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Cc: aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Richard Leitner <richard.leitner@skidata.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240210204606.11944-1-aford173@gmail.com>
 <20240210204606.11944-3-aford173@gmail.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20240210204606.11944-3-aford173@gmail.com>
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240211_105526_731114_66D0A7A0 
X-CRM114-Status: UNSURE (   8.70  )
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

On 2/10/24 21:45, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.  According to the TRM, the PHY
> receives parallel data from the link and serializes it.  It
> also sets the PLL clock needed for the TX serializer.
> 
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
> Tested-by: Richard Leitner <richard.leitner@skidata.com> (v2)
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de> # Kontron BL
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> Signed-off-by: Adam Ford <aford173@gmail.com>

Tested-by: Marek Vasut <marex@denx.de>

Thanks !

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
