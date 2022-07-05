Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBEC0C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 07:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+I3oNkOAdoQzcHSdrbqAyOPUSN34Flz6Et2dxqLRDw=; b=HN/tCgBNKglfhv
	nSKyeJ4KsEfxf3kHtS2TIFvB9mazPIp9/HLkQ4kJSCqI3jSJPau9QuzQCAgVDfAv4Xuhwpx4pPCKS
	uNgGVjrT093Dummkh61b0oWKGAO3gLRO+D0QixbeGy2qsLFUgP23/zvWBU1Q56quvXNrjK4j7RqhR
	Nb66kEeUGw5sGKll3UJft7sOeFXXNgiREE2GDnl8bgLMriNZ/pI8wxXcHmzNBfy53/cw//CSR/N/E
	tL/pCPApK72euFRDzrKg/SW6ks7NIr0LJKKfQCVyZDpRdLNUwnOtntZa4Uky0T7f9IVhYTde/do/O
	Kbv5ymKe4Xcn1tV+kyCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cb4-00FKJJ-9h; Tue, 05 Jul 2022 07:03:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cb1-00FKIK-Ow
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 07:03:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EF2D9615FB;
	Tue,  5 Jul 2022 07:03:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB602C341C7;
	Tue,  5 Jul 2022 07:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657004622;
	bh=MZfYY2zprLDztN1wjBWuIWgVqQUQo1+aoghwhMGFGOY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SG4d3d7n4oyST5978bGWa9JR9MpbBX59JivkJoEYUUBM597zMVR9eihd3oTXDrtLO
	 Nq382uTMLOngjp33RZ71UpWmcxkDO4eP5thXMy4lWvSzfeGvlyCaye6EuG96lWTKSu
	 L8dqGc8CxH9HKrCydS+lZSpozWOpJIiv3+viZ7FoiheWDp5PYknYIC5IWT0fvZuhCl
	 6HTzmc9cRsfI26K60+U2c4zur4EZcO08U7VqGqdsFSClhyedinWQs76C2a2KVJJMNb
	 l6mFXQTKjRwpILuBfZm1V4HUjUNSPTI/xJ45KNL+NQ/gUHucwAiErWJn6TEwCY9MPK
	 FzPBr27BaypxQ==
Date: Tue, 5 Jul 2022 12:33:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] phy: qcom-qmp: pipe clock cleanups
Message-ID: <YsPiSoIGO+lXNnmV@matsya>
References: <20220623113314.29761-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220623113314.29761-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_000343_881088_4D2A1131 
X-CRM114-Status: UNSURE (   6.80  )
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

On 23-06-22, 13:33, Johan Hovold wrote:
> Here are some follow-up cleanups after the recent driver split.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
