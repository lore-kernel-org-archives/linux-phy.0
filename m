Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92F65ECAAD5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Aug 2022 09:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEJgd2KApMbhU/4v9riCfCkvizFC2Vbltct3t0scli4=; b=pNGuKaDpREF5fg
	KxRKL8tbDIFH/30vYrMyw44EpCAbq8gl9eyWpP82/EAFgVYNEqrv424000p6gKXG8tJ3u39QEzaJ5
	WXskBjkK8c1+mh7ZwN2+0bRCTqbI7Lm/Rlwss2/z0KWTSSJIzVD1zXB5A54m1Xd0bzAeChdE8NDtk
	2qXdS4dSxVZGERcSQKhlIzh/NCdLnajHjK1JZ1XytTGjSmanOVMupWKaQg/KD01UnmMvJmQCnIUkW
	/v26cXEBGBHhURwiM9PBhsjx7sKB+BMyE2zUoGiN/J+eeUcKJMg6W0Apt+ji1V5MWfLFnLpfg6h0e
	y4sMyRmXegkNwEdEIs8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSaq7-006bCC-TQ; Mon, 29 Aug 2022 09:13:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSaq4-006b9j-ND
	for linux-phy@lists.infradead.org; Mon, 29 Aug 2022 09:13:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 544A560F5B;
	Mon, 29 Aug 2022 09:13:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3DEDC433C1;
	Mon, 29 Aug 2022 09:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661764426;
	bh=Eqbqp+MrH60JQwN+zE589Hnlma9libigltFy4on3El8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZsemnGJ9vgJqoT2bXEnn7gKqm+G/qNS27JVcXueQYJSEPv7fUFidjcC2FRhN5h7TJ
	 RSSpxmcAG7/5JoNkxiXSiuxf1494QiAnkhmUmW9KsQnHe15OoHksZa+xgyMGOMpuam
	 p9F2HBGfpB/snsgBD9t3O8oUcCmWDRiJD0fxIeQbXeDBz1ESPSL+5I16F2GMgDpKOd
	 pwilZRp13Nda41H6m+Pk2PUaDPrrci3oMr+yuyvMCE9FhnlxRc7l4P6SCCZzYbhpBV
	 FSrxPA5IE9nyhckMB36QjrFh2pEOfIgSzEgHGUUuPF5qJVC/9FW48yEickqIYx0CAN
	 9UH4OD3EB1S2Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oSaqA-0002TH-3N; Mon, 29 Aug 2022 11:13:54 +0200
Date: Mon, 29 Aug 2022 11:13:54 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/30] phy: qcom,qmp: fix dt-bindings and deprecate
 lane suffix
Message-ID: <YwyDUm+dS7OLTo2h@hovoldconsulting.com>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <YtVPX2WHKU61MTo5@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YtVPX2WHKU61MTo5@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_021348_864259_D1F91387 
X-CRM114-Status: GOOD (  22.35  )
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

Hi Vinod, 

On Mon, Jul 18, 2022 at 02:17:36PM +0200, Johan Hovold wrote:
> On Thu, Jul 14, 2022 at 02:43:03PM +0200, Johan Hovold wrote:
> > When adding support for SC8280XP to the QMP PHY driver I noticed that
> > the PHY provider child node was not described by the current DT schema.
> > 
> > The SC8280XP PHYs also need a second fixed-divider PIPE clock
> > ("pipediv2") and I didn't want to have to add a bogus "lane" suffix to
> > the clock name just to match the current "pipe0" name so I decided to
> > deprecate the unnecessary suffix in the current binding instead.
> > 
> > To be able to add the missing child-node schema and handle device
> > specifics like additional PIPE clocks, it quickly became obvious that
> > the binding needs to be split up.
> > 
> > This series clean up and fixes some issue with the current schema before
> > splitting it up in separate schemas for PCIe, UFS and USB and adding
> > missing parts like the child PHY provider nodes.
> > 
> > The MSM8996 PCIe PHY gets its own schema as this is the only non-combo
> > PHY that actually provides more than one PHY per IP block. Note that the
> > "lane" suffix is still unnecessary and misleading.
> > 
> > The final patches add support for the updated binding to the (recently
> > split up) PHY drivers. Included is also a related combo PHY cleanup.
> 
> Hi Vinod,
> 
> any chance of getting these into 5.20?
> 
> Note that there'll be an -rc8 on Sunday.

Have you had a chance to look at this series yet?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
