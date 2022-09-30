Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E884C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 00:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9tvZHfALNKL1C+2mF72aS80rKz8xmTpIY5XrGJQMUaM=; b=udCVK0cDJzdGRq
	y9wndgw6rwk2hZNbE0SkosCsOrU0pqwEShy8Y5ZVk4ynhEvwRYyDnriewDlHpn3wLLB9OioI28cip
	1G+ot6k6gedb8cpCjKMxDJrV4V/MvK+jPq4nzzFvCK9uyVcwsRdFrMyrIRqtAP8eqE4BUdln7RlLI
	QUjpNlW3npFumvKn6FvtlLk0nAq5kzHHbTkk01wEEpaROn/EuCu7QYkPy7U/N2ribPsJ9w4LDKLbx
	K8V5MgyAnDk9HC5ACDNBeOgJ4Sq8hYTp+8M/NtKv2VZqPV2zE35XRxsoB+j23yBR9eGO+XZNVEo4c
	VI27u+EYtzdYU28VWpKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe4KC-006TnT-Up; Fri, 30 Sep 2022 00:56:20 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe4K4-006Tl0-0A
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 00:56:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 804DBB826CC;
	Fri, 30 Sep 2022 00:56:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D79FC433D6;
	Fri, 30 Sep 2022 00:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664499369;
	bh=g6rkz3RIaOilCZhlixcS0haE9FoSoSH5hsZdpPW9BtA=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=UwDUxTkV48fQXo1vQUjHDqLiAnJrhd6r9C/cSa8kjn5BmMru0mBnPqB6wXqPxY59/
	 ZbestpUFZnk1baSsb+44XHRyF6M4YMVT/Ob49rLhn9PK4VBh1i4UJX6f5Au2Q9hXRP
	 3idej2kyfyQuM2/60QhB3Im8GRQmHiY0w67Ay3aAOP6n29YoI/rTbRZRdDy9rh0WBH
	 1FYwi9dOSXxKyNpAGopCV4FlYeVZaRs4eK5iaMnzL0wb2o7O8fSCNhCZAPX5Qw76po
	 6+IMwg14TPFcwtnZyw5ppgyIF2jBloZr1Dtfai/1vGjvDt80L6wR1DrwRhNX2qp4fj
	 QnvAAS3um+4vg==
MIME-Version: 1.0
In-Reply-To: <20220916061740.87167-2-dmitry.baryshkov@linaro.org>
References: <20220916061740.87167-1-dmitry.baryshkov@linaro.org> <20220916061740.87167-2-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v4 1/3] clk: asm9260: use parent index to link the reference clock
From: Stephen Boyd <sboyd@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-phy@lists.infradead.org
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, Konrad Dybcio <konrad.dybcio@somainline.org>, Michael Turquette <mturquette@baylibre.com>, Taniya Das <quic_tdas@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Date: Thu, 29 Sep 2022 17:56:07 -0700
User-Agent: alot/0.10
Message-Id: <20220930005609.1D79FC433D6@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_175612_200756_EB2D55B6 
X-CRM114-Status: UNSURE (   9.85  )
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

Quoting Dmitry Baryshkov (2022-09-15 23:17:38)
> Rewrite clk-asm9260 to use parent index to use the reference clock.
> During this rework two helpers are added:
> 
> - clk_hw_register_mux_table_parent_data() to supplement
>   clk_hw_register_mux_table() but using parent_data instead of
>   parent_names
> 
> - clk_hw_register_fixed_rate_parent_accuracy() to be used instead of
>   directly calling __clk_hw_register_fixed_rate(). The later function is
>   an internal API, which is better not to be called directly.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Applied to clk-next

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
