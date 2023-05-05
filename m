Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9FB9C77B7C
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRU03of0Ue++C76wbC0i3mY2wNFlfbf9KaWjxO23dE4=; b=LGDQphPYcuZdkR
	pZYZNkkfyBLMHGKK+lPn+YsQwfkRUhKUJ/4RRS75vM2Xu6yY4meGOInO/UnzucGG/J5dmBNLv0NSF
	rxN5iMAaGQkPNMU/q7SZrWRmcqBk0EXck594sVaHteJZkfAgZk+levV3/hSBpjrq6QSVwkB0KW1qU
	YwFFFzTcZjwDBCOrIEnq5PvzCpRzAH5AyhlJaZhEVY4HBfsQqj8DSdtXK5Iv0tgFXmmFUzKVanB8d
	c3vSFD1WNtcS96kuGwaKsHv2B2PhQe+hvRrL/kKEX7bG6t87apdPfvVzTTrZFk8uBIWkHlgXbWygr
	YZA1NRtpnK9Y3qhscINA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1purhp-00A8Hu-1K;
	Fri, 05 May 2023 09:26:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1purhl-00A8Fg-0P;
	Fri, 05 May 2023 09:26:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6032163CB9;
	Fri,  5 May 2023 09:26:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 114A4C433EF;
	Fri,  5 May 2023 09:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683278779;
	bh=lSshFfSGlyCi4G0qcKJd031Akuz+SfzSDmjiM7FKFpw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IOg+47p2FzSo6WXiYzWJqEGAZiRc5D6cLwe4n8/RYwwLqArfccLCr3x+fGPrUACbM
	 3hpfrSknlmvxQ8TbCWGivTgknyEGVepFt3BoUTOMunwrf4qKgnDMf70V+QrS1sQ+H2
	 SMu+YNYRppB5GdY27xveXRbuBlZ8qMJ5VMRWsZ5gTzptXjnNZtxvP1hJemO9HaitoD
	 X1PMNzX5Aa/VHFFZ/lfZ4zSZSPRIkMf6jnR2TEPiknUoBimmHGg4gwTQVGQC2E3+49
	 PbAtnCSUAr/eCbG3nyj12sLa/GqsolUKgeOtcBNkt4TrJGUkKFUsnoJOPTqSdYpoym
	 zch1EdXtNONUg==
Date: Fri, 5 May 2023 14:56:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Palmer Dabbelt <palmer@rivosinc.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
	chunfeng.yun@mediatek.com, kishon@kernel.org,
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux@rivosinc.com
Subject: Re: [PATCH] phy: mediatek: Remove unusued ret and check
Message-ID: <ZFTLt5JJVtbX8HQh@matsya>
References: <20230505001945.10179-1-palmer@rivosinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230505001945.10179-1-palmer@rivosinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_022621_229990_2D5EA5E9 
X-CRM114-Status: UNSURE (   9.47  )
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

On 04-05-23, 17:19, Palmer Dabbelt wrote:
> From: Palmer Dabbelt <palmer@rivosinc.com>
> 
> This trips up a maybe-uninitialized warning, but it's actually just not
> used.

Thanks but this is already fixed by 714dd3c29a22 ("phy: mediatek: hdmi:
mt8195: fix uninitialized variable usage in pll_calc") in phy/next and
should be in Linus's tree shortly

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
