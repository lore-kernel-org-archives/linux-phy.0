Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC430D31A29
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwVF7NUGxMafHJQgSEyiKMbPe3kq4i/HiDJlqkNzzSA=; b=c9wIZISXDE1IgW
	ad9DUiD6FsiYdQrlEWVz7KOb0kRwpgHD1iOMrJtLxauDUCT0Rg++Pjxwn4k/UPSIF3E4vA/jE0IIZ
	NdoffwjcHSA2ANlLY+Pg+SXfB4s7261MEyRvDpKTgr63EdMiPWi0Xw/ZYJxNctD07b4En2rmHZQOk
	Grf2PKxwIqKz2k1RwRlGS+InH/ec5fOGUMJyu96WuQ/s6im0W+Ij1EHXLHiBKvukHPgV1TOimTOzA
	RcCY+Z+1vU92krtE5nbirveBH3w2+V17shEZyQ/oocw5JDyM/YcMc1693UqS7eJ9wiS2aaa1JpEuF
	1/+oGd9RAOwmmiCehAww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxJA-00000008awL-1xxr;
	Wed, 14 Jan 2026 09:36:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxJ8-00000008aw0-3q46
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:36:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5B6CF6001D;
	Wed, 14 Jan 2026 09:36:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58DFBC4CEF7;
	Wed, 14 Jan 2026 09:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768383414;
	bh=Vd4jldM+sSvbw3Qs+faOiMfuX6C/rjZRaR+/l4tHfHU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HqVOfbC46Uz/3VEhEysg9Z6Qh0ocLgMei+0QndPuf8J/aQ9JqBmm9xT/ObY/0gZ+J
	 rpF7MptLiTMCDmZPQFbSr5OKMStMdawjfhkvvmNRiAVu6JDC91t8ZdmzF6oyj1xZu8
	 ePty8JFMbbXjazbIT07+odyE589qUa6oUyebKw6pM+hayhXEpOLMyR6OCrLm6tjTGz
	 i39lkXMN0HW1hfWh8a12fbgf8/uKF9xv6FaT9PJJywNk3fTaQiTAUJkXd/6WDEc5Gq
	 7Wm5XwOjqcZjalGUZbWO/oLf527NMvtypUQ9sc05+fBwUie3VJ2Q1j7Ll9n3pIccLh
	 eHBr6YS47PnbQ==
Date: Wed, 14 Jan 2026 15:06:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/5] phy: qcom: qmp-pcie: Skip PHY reset if already up
Message-ID: <aWdjsvAPjyJkplMD@vaman>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-1-7e6782230f4b@oss.qualcomm.com>
 <nmle3y6nb4kjcwstzqxkqzaokeyjoegg6lxtmji57kxwh5snxa@p76v6dr7rgsg>
 <53f0c45f-7f5c-4abd-af84-cbb82d509872@linaro.org>
 <cvxvq7f2ku6aq5gbbqav42ckqk2raesbxq2bx46mxvapcza5v4@5zuyjdtn5us2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cvxvq7f2ku6aq5gbbqav42ckqk2raesbxq2bx46mxvapcza5v4@5zuyjdtn5us2>
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

On 09-01-26, 16:03, Dmitry Baryshkov wrote:
> On Fri, Jan 09, 2026 at 02:10:49PM +0100, Neil Armstrong wrote:
> > On 1/9/26 14:08, Dmitry Baryshkov wrote:
> > > On Fri, Jan 09, 2026 at 12:51:06PM +0530, Krishna Chaitanya Chundru wrote:
> > > > If the bootloader has already powered up the PCIe PHY, doing a full
> > > > reset and waiting for it to come up again slows down boot time.
> > > 
> > > How big is the delay caused by it?
> > > 
> > > > 
> > > > Add a check for PHY status and skip the reset steps when the PHY is
> > > > already active. In this case, only enable the required resources during
> > > > power-on. This works alongside the existing logic that skips the init
> > > > sequence.
> > > 
> > > Can we end up in a state where the bootloader has mis-setup the link? Or
> > > the link going bad because of any glitch during the bootup?
> > 
> > Good question, can we add a module parameter to force a full reset of the PHY in case
> > the bootloader is buggy ?
> 
> I'd suggest a simpler thing: if the reset was skipped, reset the PHY in
> case of an error and retry. That's also one of the reasons why I asked
> for skip_reset not to be the persistent value.

That is a better suggestion. Helps skips if it is configured and way to
recover if buggy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
