Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15350C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 07:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v78iFyPE+7OIake3CrcfXwPxKrXWHgL5shkTsTwvOc0=; b=Hs8JHmuxx3B93U
	dARnERS9n623b007zUHuSgSmfO8N+Dc7Vv87GMn0HThk5FdrJz5fxtWDWSiqvUvVW4yevOf11MmRr
	N0c56GhGDiNooEZitJuoI6O1iuoVmKUPBChmmlDdmBuB3HUCbx/6p23AoabJMG02JkOFcwcLqHZuZ
	tSapSyJ8BFmQSrJ4vQi7JSVRyHGMM8YYs5GcyqKf1cB5hEXyPlJPAGyD8NAIOQdjPIuNW+VTwCob8
	mjO7XgcdvO/2sfhxODlXOnTPI8h28xl/r3TVint8jgt2uyc34jYoqlY5TESR2w4DLfnrfuIwANUcw
	nIqG4u/5suzV+aRAP9pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cdR-00FKwA-DR; Tue, 05 Jul 2022 07:06:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cdH-00FKtw-Ir
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 07:06:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D6B3661631;
	Tue,  5 Jul 2022 07:06:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79BD5C341C7;
	Tue,  5 Jul 2022 07:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657004762;
	bh=JuxPHcscnCdhBmCyzUqLY6LtYcRD7zdj6liGaoCfEeA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mYCrqfiYj6j9LTbVm48v9QaE7rXnoIzm/SuvR17kK/uUVeuTFW1s+XXnZ6EcJe/jq
	 oNPDP/n9r2FBNQuOpKbiRzzF+GyUCBBxM92RBiBTwrWiDPck2H+9eQ/A1epagOBfnU
	 1hbMdOd8VayqWJmpa1dzC7CR1HVByljcMvKWSSQGCJ++0EY2D2+NWRciV7j4GoHC4u
	 vsgW6KJ1P+6xjmGky1B0lpLpgXEnpfUno6NJFrIKqdLAi6qSP+9XZ9hYiX7UA/JIw5
	 sr/oG1f2jZyC2ySj3uS5WE4LB5eAghG+0gu32HvZkZ9d3pCCZ2Nu6Sabl8Xj57lsXA
	 cClfmPVi3w5VQ==
Date: Tue, 5 Jul 2022 12:35:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: Re: [RFC PATCH 00/28] phy: qcom-qmp: split register tables
Message-ID: <YsPi1jI2nWfxGOyH@matsya>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_000603_747207_D97E04AD 
X-CRM114-Status: UNSURE (   8.55  )
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

On 10-06-22, 22:08, Dmitry Baryshkov wrote:
> As discussed during sc8280xp PHY review, rework and split QMP register
> tables. Create separate files for most of QMP register kinds. The only
> things left are various DP registers, which will be handled separately.

This fails for me on patch 2, can you please rebase on my next later
today and resend. I would like to merge this for current cycle..

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
