Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC3A0C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 07:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ixlo15zBbqm7J9cu5CelxYBlNc8QGUnwJvjpi2c1GfY=; b=hfhKN8uWyRExuO
	/LUIpRSTndHz00BPQ9vQ+NH/p79/wEcDivntSuWpJ7Al5VarxqtRFCGHvyHVPfRHHtXWkqh7YC8Lo
	IyW7BtJydJ7iPYd9zaipWylRQ9Ion2wTqPD2y0PzwXFmxxFqaHPHeXzLL1v2xgiyF1un9ws36VPBE
	Ed2cBcnfVckuNCGFG98mdkmGXh021q5NWCHg5nOf/0Yr7eQEZwvIv8WUAHt1FlmYZUetQymfAgU2j
	qvA2ibE1u4tihda5tum9qoAgb1Mikno60DZPJhtMlJdQ8GhFZV5jg5NBCVYTISpgkdOcWmkejwdVc
	xgVdXmPTQQ/HK6kZKbJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cwm-00FaRS-0Q; Tue, 05 Jul 2022 07:26:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cwj-00FaQh-4z
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 07:26:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 80D1E616E2;
	Tue,  5 Jul 2022 07:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DA5AC341C7;
	Tue,  5 Jul 2022 07:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657005967;
	bh=2ke/GFcpKNlkf1abJKLSvHpq01nNyM6rM105EyusMAo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vD0UG/32u10tfpK5mUHaEpKbdaZsSMrAG0z8MyitWdYIoKNOhHDh6YZqHz5nbnELi
	 6bB0xZ57sqZJtTzEgLXxTQzJtzPi7rO5urI6IiVNe7wNjPETXJUGRqb8WL4H+HBcnu
	 5FRoskCWb2Qtr58GAwwpSQrewL7BMIec4zEh1RB0jbll1RAAF+BKcU7UeZ0b3IxejS
	 j3k/L622MeDjlD0CnjQPmYst5ZlCCK95RJQX4VoKuWbyV/rs+DoPDjXpU65MyFljfx
	 cwE3qB9L4UmImykpNnecYDQhRXiMFVoqpE/fAhkLQUkbA4eqD/XIH2KWiw3dnWjzPq
	 U0skef4+wZo6w==
Date: Tue, 5 Jul 2022 12:56:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Robert Marko <robimarko@gmail.com>
Cc: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v4 1/3] phy: qcom-qmp-pcie: make pipe clock rate
 configurable
Message-ID: <YsPnirGLLlBdOZsL@matsya>
References: <20220621195512.1760362-1-robimarko@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220621195512.1760362-1-robimarko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_002609_286987_12DAF506 
X-CRM114-Status: UNSURE (   6.98  )
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

On 21-06-22, 21:55, Robert Marko wrote:
> IPQ8074 Gen3 PCIe PHY uses 250MHz as the pipe clock rate instead of 125MHz
> like every other PCIe QMP PHY does, so make it configurable as part of the
> qmp_phy_cfg.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
