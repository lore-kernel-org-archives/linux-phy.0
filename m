Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41CFCC54791
	for <linux-phy@archiver.kernel.org>; Sun, 10 Mar 2024 16:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvGsMiAWuqpZ0mItMhTovoGftICLEMP94z74le8vWuc=; b=dFNKhAa5vLcSPL
	o1PGU82LYzKXkwLZ4wZh6BfCeLbldBpX541cY2v0xN/nDMAwle8l5ByhkiIRbz4GjoreGWjR+3G5h
	3p2oegppjJSWMsi9EC+VoAgybJLOxcheFOHlRBSW+tezAn0PiMfaX3fyxhC/iuqMf0QXC0OXnz9ch
	+46DEvvS6IU9RAkalekxAK16s2Zdzq1PQwCRdWPV3S1rut7XIXCF8WjoWsBBNoAQxrEuG01wP3WMg
	/7eH0ZIcVQQxLfKOtCn2vV2XWncd57oCC/72LHGG4qnUQ2shYpHfzMB8uk64+g+JpmCFykRXZV0we
	1RZ1Z36fSUnoRQCaPcVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjMKD-0000000GBl8-3HJK;
	Sun, 10 Mar 2024 16:47:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjMK9-0000000GBk3-3bfy;
	Sun, 10 Mar 2024 16:46:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B841F60ABD;
	Sun, 10 Mar 2024 16:46:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E73EC433F1;
	Sun, 10 Mar 2024 16:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710089215;
	bh=YgFDGTSx8szIGlu041E7mSyIbrWzlKkD9Qxq+wJrHsw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tynvjpkkXKbP+NabRGe/Qm/Fy0xX1j8cRv8jvMBTWWOZrQBm6baax/G14ONlRIHyA
	 gG+ZHJpOXFNMLs+zYzOaqXKRH3T9GOBwDsNl1okjfYicgARxFg9xhBwlsTW3ui2+Ok
	 ZaKtB0A426aHie0Vka49lmlYiXxaZYZsn/9kd8UMUUGuWo7RC7T8gmkL6rUqdZmYaR
	 bYk7cvgzA0fLQI5Cwc/ZAaHCKqGu1np7HrzLG+wis5vJA0W1U2dwYm1eXHY3TIu12z
	 jnluNgec2SEVDrxZM1IS/5sqd7ZnDKOFznwi8pXvSy00UoZykCXm4zRQE+UCHWjptu
	 rAtmsEb14vyBg==
Date: Sun, 10 Mar 2024 22:16:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Daniel Golle <daniel@makrotopia.org>,
	Bc-bocun Chen <bc-bocun.chen@mediatek.com>,
	Steven Liu <steven.liu@mediatek.com>,
	John Crispin <john@phrozen.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: add driver for MediaTek XFI T-PHY
Message-ID: <Ze3j-7WzbTM52kAs@matsya>
References: <745f8b46f676e94c1a396df8c46aefe0e8b4771c.1707530671.git.daniel@makrotopia.org>
 <3bb95f1d795eede63284dbcb224e06ea6886b421.1707530671.git.daniel@makrotopia.org>
 <ZevJwSq-A43vqO6k@makrotopia.org>
 <20240308193632.158b3c42@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240308193632.158b3c42@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240310_094658_038116_DA0B1BCA 
X-CRM114-Status: GOOD (  10.96  )
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

On 08-03-24, 19:36, Jakub Kicinski wrote:
> On Sat, 9 Mar 2024 02:30:25 +0000 Daniel Golle wrote:
> > > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> > > Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>  
> > 
> > It's been a month since this patch was posted. Maybe it has somehow
> > slipped under the table (or even under the carpet)?

Nope, somehow I dont have this in inbox, i think i have some issues with
gmail and list server,

> Lots of people in To:, lets direct the question to Vinod? 
> Most active generic PHY maintainer according to git, Vinod?

thanks for letting me know...
I will review it in next few days (pulled it from lore using b4)

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
