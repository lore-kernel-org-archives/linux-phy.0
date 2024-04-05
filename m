Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C080ACD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 07:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhmn9s/GeZzYajZgGUlZRnHtV/2W26R+D+u4naw1RTA=; b=zxHWvjkYerOLxU
	D++iW2f0swsUxX1mJUsTcz76NYIUXYncD3c+wIySxaC0XeLGjaD1dKgrMytA8zwr0iBEwy3RfouuM
	5lfj4lCmhvJk38QT/XgV8Ghy4ALLBvrT6fLJTkD2vlAO2wydkw4vZJkX0/6cMEbXLtgYyD4lomTbd
	w5r8jEmmnTheo/4WWVTBVNmEAVHOuknxe3pS4ivB9LX/zmBNCQdlfkkuFGj8DW00Z5JmJufV9Yz1+
	8zbE04uZWTRs+KOJb9eqjOT0ZvHbE1gHI4rbuV9qpGNZfCKxJZYp1CUq6tvcws7AyN+pRxMfGCi8x
	3pffinTxUdE4xdqwLBGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rse5m-00000005giw-1suy;
	Fri, 05 Apr 2024 07:34:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rse5j-00000005gi2-1hwV
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 07:34:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F1D2461448;
	Fri,  5 Apr 2024 07:34:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90EA8C433F1;
	Fri,  5 Apr 2024 07:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712302465;
	bh=oaq9Chvq0Xt0yDSaB529RRq1eKJleLzX7w7NqMqrl24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JxdH4r7gT+DnO3b8C6d9K6qOC8OKy698/iGb6CRqMtMtnyI4yH1atmnDXRWbgVy8C
	 dHELKn+OiiNNbpkAck78a62oRO+Z5dNhnHD/e4EtarFk4DRIz0Ovl65AcAwi8b48yQ
	 RYktGhaJWEeehCVL7D788Zx/rRiFvrf7+nSmP71t4MzrD7b9DMt0eWHGLlCEiqMERL
	 dPJMUjDboxCy5KNlW3JsnEHHnsATZ73IOdHeft6RdkvPIdtRi9AgPBBHhUGMDP22po
	 FlzrcRKnsRYvrRsrBva8j1TJENfLaXQzC9kfE3Ql9H1Akk8knq0BAqBgyRpyx0Zb9E
	 Bh9W4Kef6EUqQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1rse5j-00000000606-2pQx;
	Fri, 05 Apr 2024 09:34:27 +0200
Date: Fri, 5 Apr 2024 09:34:27 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Stephen Boyd <swboyd@chromium.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, patches@lists.linux.dev,
	linux-arm-msm@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-phy@lists.infradead.org, freedreno@lists.freedesktop.org,
	Douglas Anderson <dianders@chromium.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Steev Klimaszewski <steev@kali.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: qcom: qmp-combo: Fix register base for
 QSERDES_DP_PHY_MODE
Message-ID: <Zg-pg-QAAfC9Pybr@hovoldconsulting.com>
References: <20240405000111.1450598-1-swboyd@chromium.org>
 <Zg9MQOAZpsndSNtb@hu-bjorande-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zg9MQOAZpsndSNtb@hu-bjorande-lv.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_003427_554906_43D5B68A 
X-CRM114-Status: GOOD (  23.69  )
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

On Thu, Apr 04, 2024 at 05:56:32PM -0700, Bjorn Andersson wrote:
> On Thu, Apr 04, 2024 at 05:01:03PM -0700, Stephen Boyd wrote:
> > The register base that was used to write to the QSERDES_DP_PHY_MODE
> > register was 'dp_dp_phy' before commit 815891eee668 ("phy:
> > qcom-qmp-combo: Introduce orientation variable"). There isn't any
> > explanation in the commit why this is changed, so I suspect it was an
> > oversight or happened while being extracted from some other series.
> 
> Thanks for catching that, I wrote that patch long before Johan did the
> rename of "pcs" to "dp_dp_phy", and must have missed that while later
> rebasing the patch.
> 
> Reviewed-by: Bjorn Andersson <quic_bjorande@quicinc.com>
>
> > Oddly the value being 0x4c or 0x5c doesn't seem to matter for me, so I
> > suspect this is dead code, but that can be fixed in another patch. It's
> > not good to write to the wrong register space, and maybe some other
> > version of this phy relies on this.

This code is still reached on sc8280xp, but I guess only Qualcomm can
tell us what these bits are for (and they should).

The write to qmp->pcs + QSERDES_DP_PHY_MODE does not seem to have any
effect on sc8280xp and that register still reads back as 0x2020202 after
the incorrect write.

qmp->dp_dp_phy + QSERDES_DP_PHY_MODE reads back as 0x4c4c4c4c before the
fixed write and either 0x4c4c4c4c or 0x5c5c5c5c after depending on the
orientation.

Can someone please replace the magic constants in this driver, and at
least explain what the impact of bit 0x10 not reflecting the orientation
is?

> > Fixes: 815891eee668 ("phy: qcom-qmp-combo: Introduce orientation variable")
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Either way, good catch, this was clearly unintentional:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

I think this should go to stable as well even if the impact is currently
not fully understood:

Cc: stable@vger.kernel.org	# 6.5

> > @@ -2150,9 +2150,9 @@ static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
> >  	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> >  
> >  	if (reverse)
> > -		writel(0x4c, qmp->pcs + QSERDES_DP_PHY_MODE);
> > +		writel(0x4c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);
> >  	else
> > -		writel(0x5c, qmp->pcs + QSERDES_DP_PHY_MODE);
> > +		writel(0x5c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
