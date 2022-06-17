Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76601C43334
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 00:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSC3TuG3fojVIx4ggC9Hq/pYjxGV52zZdcR6m7p1YQw=; b=oHk/llGqb+/ITS
	jRLX8npSmHrT4/ql0ndtHtSqyLLNHeHzVCMvERJuy1TWKbqNgCpD+mpR8qavgHn14VWB7DtjdvILd
	Z+cvKX6dl4gctEbYYa8WN3f20bFFnRSUM7UOx18XGnAYDrMQ1IAlvb8HXiAvqHbloT+qV4hG1U3od
	r3zysLeeelO4ZZa2j10T2MA9REyUGOEHkU0m65AfqEqTv49ojheiS6ORvqoLsivSsi3fxa6SGaY8x
	cKNb341irB24WrDaSPBsGLAwJgv5BSkJyphAseRtwtnPdIfiiWZAWcbLhIO/IsNABqQkWOMwlyX0D
	ZZfn338PKsVO99+hsngA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o200B-004tdH-OA; Fri, 17 Jun 2022 00:38:19 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2008-004tco-N8
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 00:38:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2D28BB82607;
	Fri, 17 Jun 2022 00:38:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9492C34114;
	Fri, 17 Jun 2022 00:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655426293;
	bh=4zSipTb8ys2Cxh8WgYAx7pfSzuRK55TeyzQ58OmVuSU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g2U6KnR3OYsG5SZVCg+0wvsuygu6ZTkrM/Hf8hon7dFgPACOYCHsmcjTRDljrn0L/
	 CvX3vvtU4gE0DcPsOyaXT30nWi0MmsvakqSOEvHXKvPBBpV/Mmz/BdUEoPWeVhgkHp
	 bhO6miAhuqMAZe65o1aYE8z41nLvawBjPnVzQeMG5GSsUNRnqO+pngcaWuO/5nQhs4
	 IdrBOXBOHMcAOuLFZ4UJzo4Hx7/knJvDJXfIIuMHEQA949nLscyL3kagXx5bMltESI
	 ruTrZTEtkT+yLg6ChAC16YjhUZbMZlAsTZgHT2dnwPdFp3X+s7HbbvSiWgYRrqId3g
	 fRaCJoRX8Mf9g==
Date: Thu, 16 Jun 2022 17:38:13 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 0/2] phy: qcom-qmp: fix QMP PCIe PHY init
Message-ID: <YqvM9e/CfJcrsC/E@matsya>
References: <20220610185542.3662484-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610185542.3662484-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_173816_939217_4B4DF2A5 
X-CRM114-Status: UNSURE (   7.06  )
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

On 10-06-22, 21:55, Dmitry Baryshkov wrote:
> These two patches fix PCIe PHY init after the previous QMP PHY rework
> ([1]). They were generated on top of phy/next, but I'm fine with them
> being squashed to the corresponding patches.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
