Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2962CD37B2
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHm1GX1Xa9tkbbtzXJt7ksFYoDcJfyfEd0hvpHFQrl8=; b=cvu+EvIZ09VmIg
	2fmFD3f1vihE12LYw9u2WDZr95+JHF+6swQbvyNY9ZlSbfnkc0omf98WxakSI/2EgFFFeb15j26pC
	tpqt/o4ZN2gmRqc+7UNPZ6taxS3xOk465WzAeKqsBnJAquVMUGP/182ZNgCl/6jIA6Zo7XwehHebN
	WK2AQ1GA8nGoe19+7YI6TntqLT3MfWEhG7zWLAwfi58oHYVUqug1dBR32DFKGk2ETggsnkx/V55sJ
	dcNa4y3TQF0TEOrD3D6alJLVyaLa6rQcRZaZIz5799abJD3p/RjHVEdwsC3HE7S1JstG8kIOH0E87
	oKvWa3mLmGwvKcFCpQvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3KM-0000000Aia9-2q4x;
	Sun, 10 May 2026 12:32:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3KL-0000000AiZF-0EdP
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:32:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B1FFF4069D;
	Sun, 10 May 2026 12:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AC66C2BCB8;
	Sun, 10 May 2026 12:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416328;
	bh=izt8it5D4y3pXmKUYmwcPMlqBztENkqUPjfkjXTGWMc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JtVCMTfX7EF0bGNTdKQGkGYORLGXktpIWKOqgfyWxsdEd0G9sNqG0ciMAdFAIPVe7
	 SF6YaMx7x5goYq39YXNWWT7wTZu9ezUZ1htQJfE0Mrwao93K8EK64arFPj+HoZyi8f
	 KTUICXCKiQLU+WW6Ho8k3VJEOf7TLzy/ooDXRCENz838sSDzznyvkKR3JMFW3Gj/o3
	 AK742Pu0CeYhnVimBbNudn1qNDAdzMkb2Nfsp1i0R3BbUr5G8SFHAeiNrPM8knzsY3
	 2izUv3o2Lw41BizCgxDYQIv3VIFbCFPqDRyNgHJJlHcP9k1E+ib2/XmWVuiMaXTJpy
	 bHEZLD6bHPp2A==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org
In-Reply-To: <20260321011451.1557091-1-vladimir.oltean@nxp.com>
References: <20260321011451.1557091-1-vladimir.oltean@nxp.com>
Subject: Re: [PATCH phy-next 0/3] Lynx 28G: better init(), exit(),
 power_on(), power_off()
Message-Id: <177841632580.434434.2698335011092735066.b4-ty@kernel.org>
Date: Sun, 10 May 2026 18:02:05 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_053209_120668_2D8A2F83 
X-CRM114-Status: UNSURE (   8.98  )
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


On Sat, 21 Mar 2026 03:14:48 +0200, Vladimir Oltean wrote:
> This is a set of 3 improvements to the 28G Lynx SerDes driver as found
> on NXP Layerscape:
> - avoid kernel hangs if lane resets/halts fail due to other bugs
> - actually have phy_power_down() cut power from lanes, not just halt them
> - allow consumers to call phy_exit(), to balance the phy->init_count
> 
> Especially change 3 will allow further development of the dpaa2-eth
> consumer. To permit phy_exit() and other patches in net-next to be
> submitted in this development cycle without functionally breaking
> networking, please apply this change on top of v7.0-rc1 and provide
> it as a stable tag to be pulled in netdev.
> 
> [...]

Applied, thanks!

[1/3] phy: lynx-28g: use timeouts when waiting for lane halt and reset
      commit: 905780855a320ab3dcf0e4eaebf544cb3e7b55f8
[2/3] phy: lynx-28g: truly power the lanes up or down
      commit: 5d38f693f16a0e9470fda530e01994f35fed8644
[3/3] phy: lynx-28g: implement phy_exit() operation
      commit: 0ee5cc59c0ee679e1a3a749cfc47834041763494

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
