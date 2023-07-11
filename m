Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C4FCC0015E
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 05:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UezpXq2nUI+l4VusZw66xkHt+k9BswKs3WDI+li9JA=; b=GculTyjG81M6/2
	ooSltz0+gpFBleYaQNRrER1+KUASP1uFea2880FedeRiHceVSrdMsirJA4u8LzeZrgNYMEjW2y3/1
	5xF8PA1t26sVBotsjT2BcCIbgGCCP3MjKysjWNT54yXSUPqGTmaJ3AJSi10pIMajOrKBpGfs8l/W7
	mv8IsCVWTl9Bx13UQnnEAs+nxtupPHjVZVCTHhStNXI1yyPBeDZcYXaVriYRMEEXefad1thb9tSJ8
	GDnVIxTOzleQREiP3zDEKKHrBKnKB7mLrdweGSF+DGvXneSjbaTZjLdBsz8qdyf2xeb5ubqRqn/z7
	hb7AZNb+6v/omfD9GCEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ5ei-00Dipw-0W;
	Tue, 11 Jul 2023 05:11:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ5eg-00DipL-1c
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 05:11:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F1EFE61140;
	Tue, 11 Jul 2023 05:11:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A00CC433C8;
	Tue, 11 Jul 2023 05:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689052277;
	bh=zr5NqgpeFTGxMQvbPnoLre6zUBBryXW5GFgxi1iNHLs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tALJ9cd8qjcaZdvzzzW96TJuYoF5zjetIUf62yfbPjQhLaynR+1OQsai1B4bKsThj
	 rYwpUJY1sm3qG7JcZwXk3QOrHJCbfRyc4MFB+K+HF/lBmQDcKx3WsCkZE5c6goyW6z
	 KEIaFbnnWSmsFAgDxg+EnwjJcPE70rqWVPmA7FKdDm3eamNQOwrnNK7H/Kg1GkQEwe
	 3KLo/ZwNBH9dj3ntHxl/hEycpsoLkrUkv4rEKaGv9Vggc7Es/L0CBGlw3EfDLdD8NQ
	 3ItP/sA/Wbz8dfLhRnBpzSU2d6afd41ay8xqdHuN2OlxI3R0/Fc1AyTdyFGKuCfUJZ
	 5qcw3jWVa27zQ==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Swapnil Jakhade <sjakhade@cadence.com>
Cc: mparab@cadence.com, rogerq@kernel.org, s-vadapalli@ti.com
In-Reply-To: <20230530143853.26571-1-sjakhade@cadence.com>
References: <20230530143853.26571-1-sjakhade@cadence.com>
Subject: Re: [PATCH 0/2] PHY: Add support for single link USXGMII in
 Cadence Torrent PHY driver
Message-Id: <168905227488.183385.1679105538313094810.b4-ty@kernel.org>
Date: Tue, 11 Jul 2023 10:41:14 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_221118_580875_7ADB9086 
X-CRM114-Status: UNSURE (   9.02  )
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


On Tue, 30 May 2023 16:38:51 +0200, Swapnil Jakhade wrote:
> This patch series extends Torrent PHY driver functionality to support
> single link USXGMII for 156.25MHz refclk.
> It also implements key:value pair table for all settings instead
> of a 3D matrix.
> 
> The changes have been validated on TI J721E and J7200 platforms.
> 
> [...]

Applied, thanks!

[1/2] phy: cadence-torrent: Add single link USXGMII configuration for 156.25MHz refclk
      commit: 81e4c826b35672838e2cb9ef693855998913fde4
[2/2] phy: cadence-torrent: Use key:value pair table for all settings
      commit: 01c69d7d76db623ed7bcaf60a652af64bfbe4a15

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
