Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F412C77B75
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 09:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFc0zNcu5qQ/lIlxZhQ2YYQ3nn0eNNsIMyjKku7r2ZI=; b=bMLVqzItYVwVwf
	wFW8zkMPc0LBUzOs64fABPDdrxn1R31cH/JjlHfKsFZ90+e+h6SLb4zB0RZVcnHO/LilGc4x2hY/5
	LZ/pRIRuuP9BlOCcWn6ZcBG5NTBYBnMEHBhcO66lFWiaC0F7c/xj0Te+wSOwrlwQJDbt4XReOPA2P
	NQnO47+mycEefu7ipQavI10GBOG7bV0zOOPFSPC84khDcngiELWYECnRxeGSPhZqmUlQwAY/ZUfMF
	47zIjV+GDcoWVX/7oNdTvkpn15GYUhU4ZUVg++J3v7IcHDBviS8+BlDWzyKsm1/dIJR9LwtJVbmLg
	QXrBPRNTtjEqu126shSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puriJ-00A8Uo-0M;
	Fri, 05 May 2023 09:26:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puriE-00A8S2-0y;
	Fri, 05 May 2023 09:26:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C921B63CB3;
	Fri,  5 May 2023 09:26:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DD03C433EF;
	Fri,  5 May 2023 09:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683278809;
	bh=cbv7KqFW3EZCwbXiqh1UsSQZA6Dm577W9BTUAcRYjjs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YR3ygV1n/WztmQPmypSDHPmCE21+CNyWvFvgd7VAxyi6F+rg2w9GATY0uAdZgQVtQ
	 4DPVLjOoqN7CfvpJbD/WKRzabu5rhGp9Ppyle//dCD6ZUck8fN4WD5pnVHIojEd4M1
	 RPonfvoC1x1T+xazjxm6SoE1dCKqLnakzXLmrRFOmOf26GwBTBQpPVLaElgsJL/ZSi
	 pHIMDgKZTCqpYQVw4qNT9bd4UUuXeZTlP0WCglUiZa8inC1NcroG6UffZRwk2ttqP8
	 WkF1rPZuz9M7bs8RcKyQ0YcSif40FX9PoP9WEPwGNBcIIt57hNTMxlug7WQ/Jiriuo
	 E7sWXyesn59lA==
Date: Fri, 5 May 2023 14:56:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Guillaume Ranquet <granquet@baylibre.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 0/2] Fix mtk-hdmi-mt8195 unitialized variable usage and
 clock rate calculation
Message-ID: <ZFTL1BRE+qke209f@matsya>
References: <20230413-fixes-for-mt8195-hdmi-phy-v1-0-b8482458df0d@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230413-fixes-for-mt8195-hdmi-phy-v1-0-b8482458df0d@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_022650_374003_12DD9EAA 
X-CRM114-Status: UNSURE (   8.73  )
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

On 13-04-23, 14:46, Guillaume Ranquet wrote:
> I've received a report from kernel test report [1] that a variable was used
> unitialized in the mtk8195 hdmi phy code.
> 
> I've upon fixing that issue found out that the clock rate calculation
> was erroneous since the calculus was moved to div_u64.

Applied both, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
