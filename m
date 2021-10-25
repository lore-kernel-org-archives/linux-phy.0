Return-Path: <SRS0=BRk1=PN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2109C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:18:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A1AE560724
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:18:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A1AE560724
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5avUO4bx2n34y0pYeOTv7p7frp8S7sOlfyKnBIImB0=; b=ydAZAerAW9qBys
	bZ1nMjBKJ69jXmDSzM8M+U2mWUmKR8ujx66Q+0QykpFYTn7LEtDzQPncBFiW9IWE0OXHWK3sL7zAG
	NNmFCTVWKZtX66F44/YrpF/IxO08Fksb0ZShaqDyxWG2tlkxgR+rypw/cG86FjNaps4bw1mlEISKO
	kd8+kxLBg0b8VIHuSNn8/QBQNHNpPNGtcwsTQArlxHgLxyqbPmT8wCFcvBt1TX2f17Nz73diCt2e/
	RI5y6XWNB3u2qNRgagSygQR7x/uVKpJFQ2ZWrZTU7dChXhe3pNPDOPmMyKMNkfSEBsyOBI6ZGY4b/
	wMrrHezKd56ic4uXHxxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1meuFw-00FZUi-8R; Mon, 25 Oct 2021 07:18:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1meu8J-00FWhT-9c
 for linux-phy@lists.infradead.org; Mon, 25 Oct 2021 07:11:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 12B6860F9C;
 Mon, 25 Oct 2021 07:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635145858;
 bh=wHlKRt1QrjCcx+YMoChVXSYiCfVO9OSjhXh60NOXWK8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ETX5aTw5UkAaQv5un4FxUBu/HcCp/zrkxsNdvOPFNy0lueoBk1foSCXRqsW5+ny64
 3UfHmFBZCPVqX99RHxQzRZ0gvweVig7NnkR9pSh5uZaFOykb9S5Nm+1nUN5mSEU4SO
 9ZqqEqhcWYEz29jeUqQUwkcXTUE97h0Kv7l/yU7DAgXjBo7FMqJ1HrT5nW0pGV9W4J
 QrvT1M3rNlgSXlDBeRNJ7XrsaWh8bQzTLgGyDBc3y1xXmGjtkSvdRjZQjAsE0xQQe8
 ESOTCsQbChee3GQtzlGFzKE0Z2zIZDdMboPld6SZ8Q8M7ULBfm4SQGmNpjE+FeSatm
 aFJjnvBIdD5lw==
Date: Mon, 25 Oct 2021 12:40:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 abhinavk@codeaurora.org, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 2/2] phy: qcom: Introduce new eDP PHY driver
Message-ID: <YXZYfh+yfNFkqY0a@matsya>
References: <20211016232128.2341395-1-bjorn.andersson@linaro.org>
 <20211016232128.2341395-2-bjorn.andersson@linaro.org>
 <YXGmJFoeXwtTvl7p@matsya> <YXLx7EV7ZiMIxauO@ripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXLx7EV7ZiMIxauO@ripper>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_001059_435716_386220E8 
X-CRM114-Status: GOOD (  24.94  )
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

On 22-10-21, 10:16, Bjorn Andersson wrote:
> On Thu 21 Oct 10:40 PDT 2021, Vinod Koul wrote:
> 
> > On 16-10-21, 16:21, Bjorn Andersson wrote:
> > > Many recent Qualcomm platforms comes with native DP and eDP support.
> > > This consists of a controller in the MDSS and a QMP-like PHY.
> > > 
> > > While similar to the well known QMP block, the eDP PHY only has TX lanes
> > > and the programming sequences are slightly different. Rather than
> > > continuing the trend of parameterize the QMP driver to pieces, this
> > > introduces the support as a new driver.
> > > 
> > > The registration of link and pixel clocks are borrowed from the QMP
> > > driver. The non-DP link frequencies are omitted for now.
> > > 
> > > The eDP PHY is very similar to the dedicated (non-USB) DP PHY, but only
> > > the prior is supported for now.
> > 
> > since this is QMP phy, pls add an explanation why common QMP driver
> > is not used here?
> 
> Looked at this again, doesn't the second paragraph answer that?

Hmmm, somehow this got missed by me! Yes sounds okay

> > > +static int qcom_edp_phy_init(struct phy *phy)
> > > +{
> [..]
> > > +	writel(0x00, edp->edp + DP_PHY_AUX_CFG0);
> > > +	writel(0x13, edp->edp + DP_PHY_AUX_CFG1);
> > > +	writel(0x24, edp->edp + DP_PHY_AUX_CFG2);
> > > +	writel(0x00, edp->edp + DP_PHY_AUX_CFG3);
> > > +	writel(0x0a, edp->edp + DP_PHY_AUX_CFG4);
> > > +	writel(0x26, edp->edp + DP_PHY_AUX_CFG5);
> > > +	writel(0x0a, edp->edp + DP_PHY_AUX_CFG6);
> > > +	writel(0x03, edp->edp + DP_PHY_AUX_CFG7);
> > > +	writel(0x37, edp->edp + DP_PHY_AUX_CFG8);
> > > +	writel(0x03, edp->edp + DP_PHY_AUX_CFG9);
> > 
> > In qmp phy we use a table for this, that looks very elegant and I am
> > sure next rev will have different magic numbers, so should we go the
> > table approach here on as well..?
> > 
> 
> Comparing the v3 and v4 USB/DP combo phy and this, the only number that
> differs is CFG_AUX2 and CFG_AUX8.
> 
> CFG_AUX8 is 0x37 for eDP and 0xb7 for DP and AUX_CFG2 seems better to
> mask together, but I don't fully understand the content yet.
> 
> I did check two other platforms and they have the same sequence, except
> one additional bit in AUX_CFG2. There also seem to be a few additional
> permutations of this value, so I don't think tables are the solution.
> 
> 
> So I think it's better if we leave this as proposed and then
> parameterize the two individual entries as needed when we go forward -
> or determine that I missed something.

okay sounds good to me

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
