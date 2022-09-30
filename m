Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08F19C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 00:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rF2NECTfdJrWJqukoNyKVqwt9qPXnjg21vMX5wJtbjY=; b=msN9FLk1zui3Ax
	1YlIM9miPcnqL6pbSbk57hzD0MtBttWYbkf3g8XpXExXPf2d9uQ0z/jwiUPofU62DtzRHWC2tbaJx
	oYUrXBmcP4Bzh2BylfTxjMSWftm3l1vvrnvUhQizTwTGskJ+0rDYmoy9OTFDuoVks+D1PQRGqTVgC
	u/GXZi+AN0wDA0M+LgkwuHguultN46lqLvV0frEOJEFl9SJzzoi/VgI2GJI8uKAs+63zrnsPbvOQ4
	oLx/VmlAFQhIdUBqXZzv/e5mRgNB+DGVKo4n2ZBSf9pMAm25bbGoFb+ZSgzx6RrE9oWVbpSa1TzKE
	6zaTWyJG/wrWf7SKcSzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe4KH-006Tpu-Fp; Fri, 30 Sep 2022 00:56:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe4KB-006Tml-Mm
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 00:56:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2DBB4621F3;
	Fri, 30 Sep 2022 00:56:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83DEEC433C1;
	Fri, 30 Sep 2022 00:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664499378;
	bh=PKK1u2FfRr8hR+W6BZ0qRf/GqoUQgzL98wLIHPDPtwE=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=KdfC2/hJPnZZYFs9tytypdEpir4KJ3aS1HUYnJL2o9fktatmUh2z/KX9mxt1SO1tn
	 +IbrCVG9RDd1k5qW94NQIbShT8AdCv/LFSR8waw7tejSZXzpwU5uM9AOGt6qUi+dui
	 SmfdjNQ3xKJxFscLwA6W9j7pJ5qu2yZbvHgudiRJ+fodeiQzPLcwUvq1NmWqDNVohN
	 1c22+mWOOu9ESVex2q3KG4Oq79qy9gxo7XxYj6mXp1q851uV4C7+CQ4R31BviTtRMb
	 YZcdbusru+7zltZD4q6jbpK+UMNJUjLfyxAxwLdS5/mflqxW9YgLkKOt/4wC3AIiNN
	 MUqZqIurgLNsw==
MIME-Version: 1.0
In-Reply-To: <20220916061740.87167-3-dmitry.baryshkov@linaro.org>
References: <20220916061740.87167-1-dmitry.baryshkov@linaro.org> <20220916061740.87167-3-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v4 2/3] clk: fixed-rate: add devm_clk_hw_register_fixed_rate
From: Stephen Boyd <sboyd@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-phy@lists.infradead.org
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, Konrad Dybcio <konrad.dybcio@somainline.org>, Michael Turquette <mturquette@baylibre.com>, Taniya Das <quic_tdas@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Date: Thu, 29 Sep 2022 17:56:16 -0700
User-Agent: alot/0.10
Message-Id: <20220930005618.83DEEC433C1@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_175619_847278_789DFA26 
X-CRM114-Status: UNSURE (   6.87  )
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

Quoting Dmitry Baryshkov (2022-09-15 23:17:39)
> Add devm_clk_hw_register_fixed_rate(), devres-managed helper to register
> fixed-rate clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Applied to clk-next

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
