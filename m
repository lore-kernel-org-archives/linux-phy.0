Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DE25C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 00:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMEVXXRUDfeRXi32AllQox2urJ6aHk0HqprKmqyutiA=; b=bg8G4YkBrXIlq8
	tWKXsKxtoKIur4Nl7YLd4fvG1z1kCyGE1FRx04FQ5MnhhLrUMRAbYM4lZSoppQGDG980TAKOFeKja
	wv81scHYy9C96vGcJLaUfqbk3Z3mkLV2IK+lsb0jmTslpnZ59OrMRlQ3gqppanL4dHthJA/vMtCkv
	QWIen9AElDjp5lNGjusVYu7lVip1yUHXFFOfDSPVcQBtguLhUIGAZM1bumC5K84yAnHbU/rqv7SWf
	Ps7h40CIeo8JTkey361ATW2h7R3fAA+53X8KOmg6NMK5TgUwbQK1mmgN2YR/8VGkO5vW+1sHr5cSg
	UBHQD1GWMrk6Hb1VHt8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe4Ki-006U09-P6; Fri, 30 Sep 2022 00:56:52 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe4Kg-006TyU-6p
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 00:56:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E2A40B826CF;
	Fri, 30 Sep 2022 00:56:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99FE7C433D6;
	Fri, 30 Sep 2022 00:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664499407;
	bh=BDMwS0TcIm/D15ce+TeY20NYbZU2HWwOfIec0BvE7xM=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=tA0i547FrphRZG7zKKkdVrMKMhoSos9jCeN9bjgIVJA+i2Wg2W5dDYfNiPr4UvJ+/
	 VVt4kclwDP+vxWM1xSGd13cfDIQQHBIKlaNGi6IjZuag5pBX4wyTV7cCDOA0QwJxMR
	 HObUv1lU4BuGwIQs3KAJu0uAOyPtHd0kDotpPJ50u2S+HUuP06fC8gNbRdAgTZPPS8
	 QuGnp9BqneXOM0EljZbbaGPHi/EGTLGBUseQESGAaNM9OXV7bgNGzeEWP7exKJdfP6
	 7Z+s/BtOcfDxgy1znk2mnfhrKFyKXAt42aBlfwnz0FHPg5WY135fiUBsOeoiCHvtfN
	 jUiLNZ2Q1gg1g==
MIME-Version: 1.0
In-Reply-To: <20220916061740.87167-4-dmitry.baryshkov@linaro.org>
References: <20220916061740.87167-1-dmitry.baryshkov@linaro.org> <20220916061740.87167-4-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v4 3/3] phy: qcom-qmp-ufs: provide symbol clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-phy@lists.infradead.org
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, Konrad Dybcio <konrad.dybcio@somainline.org>, Michael Turquette <mturquette@baylibre.com>, Taniya Das <quic_tdas@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Date: Thu, 29 Sep 2022 17:56:45 -0700
User-Agent: alot/0.10
Message-Id: <20220930005647.99FE7C433D6@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_175650_401599_23A9A791 
X-CRM114-Status: UNSURE (   7.73  )
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

Quoting Dmitry Baryshkov (2022-09-15 23:17:40)
> Register three UFS symbol clocks (ufs_rx_symbol_0_clk_src,
> ufs_rx_symbol_1_clk_src ufs_tx_symbol_0_clk_src). Register OF clock
> provider to let other devices link these clocks through the DT.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

The previous two are on clk-fixed-rate branch if you want to pull it.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
