Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD945FA3740
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 12:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R930xSJzzaMalJutBm3Av/NF/sGEx91mFeQBn3X6iHE=; b=bTdCXX40LN4wx0
	cnOph2nKPfxtrg0mLXyrTdc45zfNySF15ghEokolB3zFI3Sx2XIWEFCi1UQKEgJV4XPH/ludxjeXL
	9AR+XuLMhewRX/xJSIq3/Ui8VRaJC7uzAA03Ss3bAwvvVWcPmKZknla7GQEno5AwZHvlJq7H50dSn
	suinnA7c8TPyg3w8tDxN+XE6RNyS4z35Ud2RPm0rUUGQp+5JnuuxEk4jOtCLzj9mOxMEjfJomP749
	B2L6F/UXgzMFU0pDloFXA3cBsyv0A9vvk/Iodrl9lAJ5PrHRrKJaEWEmLG6BT9N7PO6GEaIPGxb2V
	xnuKNdywXBnxuYfIBvdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOn5-00H9Qj-0b; Fri, 28 Oct 2022 12:48:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOn2-00H9Pz-GI
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 12:48:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0B0B16281D;
	Fri, 28 Oct 2022 12:48:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA151C433D6;
	Fri, 28 Oct 2022 12:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666961327;
	bh=LSwr3Q1J/pGFCWnuuN96Iwb8nLI745MpukwHAe01huk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BZZf13BfwEldKVyJNfqKMIqkWhYZjELSwbhUUScyaOYn/SHMZqRrvRo0aothu4efI
	 qU9xkJCYBo7rbd/cxm8aNqbmtMZX/HeGp8lrCToIQQzS9+A8vyo6jaKg8nxWSEV9hh
	 yEav3BQS7wb1NB5ceqhOenjClEwrBmQBDpou2VEseGkoOQSlizACxY1ds6a3zDzX7x
	 IzamiEZMmRDqmFw0HSGBBN9YqHYDl+WzfAAThCdE+P9axR1yEsq7WHSFXvPoit8n2R
	 yX36iYG3wbdQzNxXifRvo/x2J3C9lh/FivJYdi1/vlLGBHa92iUOy/ckjcmFLTuF+1
	 XRlG7/rWivHXw==
Date: Fri, 28 Oct 2022 18:18:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Taniya Das <quic_tdas@quicinc.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 3/3] phy: qcom-qmp-ufs: provide symbol clocks
Message-ID: <Y1vPq/2Qjzh/fsWV@matsya>
References: <20220916061740.87167-1-dmitry.baryshkov@linaro.org>
 <20220916061740.87167-4-dmitry.baryshkov@linaro.org>
 <20220930005647.99FE7C433D6@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220930005647.99FE7C433D6@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_054848_600526_B7C5AC5F 
X-CRM114-Status: UNSURE (   9.53  )
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

On 29-09-22, 17:56, Stephen Boyd wrote:
> Quoting Dmitry Baryshkov (2022-09-15 23:17:40)
> > Register three UFS symbol clocks (ufs_rx_symbol_0_clk_src,
> > ufs_rx_symbol_1_clk_src ufs_tx_symbol_0_clk_src). Register OF clock
> > provider to let other devices link these clocks through the DT.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> 
> The previous two are on clk-fixed-rate branch if you want to pull it.

Okay, i dont think there is a compile time dependency, so these can go
independently..

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
