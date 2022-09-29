Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15BD6C07E9D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 09:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UmfnPJxk8ovasCn5hMjurAf/JyMHR7q13UZp1NL1K9I=; b=grLE00vWOS9avR
	LYKGfYnpWhNAPAS1U4PGNGupNc/eE1zGkSMyhoXc7OgXv0uS4EV+qq/nx+kRViXOogFRdMkz817HW
	8PcZ35/oU+Dt7dIBU2aDNd6fMcOiNZAWgJA2I+98WbWK6AUchlOGepfrMAf8mdtTQrkvCoI9dD0Xt
	ldmmfLPvx5Bs26pqIQS9Inbr2Vh+ZLrP5ENi8TA3klVZsQbh7JbUUF7wUrZnXESOE+L9w1zQGYqGc
	9o7SfUOJFl620uHnYd7OVpxK0plQQQFXoXSP157hbtQuxOiFrD9DsQ3gfuYHeiFaffdvco3u0k3J1
	2AZ8bsvlPAKpgFhciiAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odpSu-001yX3-HU; Thu, 29 Sep 2022 09:04:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odpSr-001yV3-OJ
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 09:04:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DC16260A1E;
	Thu, 29 Sep 2022 09:04:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 458C3C433D6;
	Thu, 29 Sep 2022 09:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664442256;
	bh=/q+TNJym/lHWven3ai74Aj5zszRyvr0r5MVggf20tnk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nSkkvdE/RIh9/+SqQ9cCu4o8nygoNw+BMKGy+OP4WGbTT6bmbDgYVmUaQvFO90gim
	 ypOXkWuYzktjz176sw0FEhZf55g91wyzqPdwSNF5ObqAUuW3wfabcWgSRpU5731u+i
	 P6Z3ESQBltFRkXfyLtKBkq8HUz3tMr9gvLmONoS8rmTBBVLRYdBA6xwMjsgwaHlLV8
	 DH2ajwTImJricpoeSiCYDiELJArg6r6qzmuACj1xs1huBxjqhM+7GlTcd0cUz9YC0L
	 zDcOBuL3S8HYE2T5R9RAGNf84Uw8Gt5823tPP/XW8IDxkB0oImE0qjGM3HhVFIXXHB
	 RHLNKEZ6GW1mQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1odpSw-0001O8-NV; Thu, 29 Sep 2022 11:04:22 +0200
Date: Thu, 29 Sep 2022 11:04:22 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/13] phy: qcom-qmp-pcie: clean up power-down handling
Message-ID: <YzVflom04uK0gojn@hovoldconsulting.com>
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-8-johan+linaro@kernel.org>
 <c3d39c4e-2099-b09a-8486-8abae7336611@linaro.org>
 <YzVIhK5z3I6hjzLU@hovoldconsulting.com>
 <7f577974-7433-107a-a43a-4a3a5f999018@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f577974-7433-107a-a43a-4a3a5f999018@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_020417_888600_6D04EFD2 
X-CRM114-Status: GOOD (  24.10  )
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

On Thu, Sep 29, 2022 at 10:30:20AM +0300, Dmitry Baryshkov wrote:
> On 29/09/2022 10:25, Johan Hovold wrote:
> > On Wed, Sep 28, 2022 at 10:15:46PM +0300, Dmitry Baryshkov wrote:
> >> On 28/09/2022 18:28, Johan Hovold wrote:
> >>> Always define the POWER_DOWN_CONTROL register instead of falling back to
> >>> the v2 offset during power on and power off.
> >>>
> >>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> >>> ---
> >>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 20 ++++++--------------
> >>>    1 file changed, 6 insertions(+), 14 deletions(-)
> >>>
> >>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >>> index eea66c24cf7e..47cdb9ed80cd 100644
> >>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >>> @@ -90,12 +90,14 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
> >>>    	[QPHY_SW_RESET]			= 0x00,
> >>>    	[QPHY_START_CTRL]		= 0x08,
> >>>    	[QPHY_PCS_STATUS]		= 0x174,
> >>> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
> >>>    };
> >>
> >> Without symbolic names it's not obvious that 0x04 (and thus this
> >> regs_layout) can be used for v2 and v3, but not for v4.
> > 
> > It's no less obvious than it was when we were falling back to the v2
> > define when it wasn't in the table.
> 
> Yes, that's without doubts. Anyway, I've sent my view on the regs 
> layouts standing on top of your six patches from this series. Could you 
> please take a glance?

Sure, but I don't think doing that separate change should be a blocker
for this series. Especially since you run into issues like it not
always being clear which version of the IP is being used (IPQ).

I'd rather respin this series and drop the two patches that merged the
two redundant layout structs.

Then you can work on further clean ups on top for 6.2 since that's going
to require some more careful review and thought.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
