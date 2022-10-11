Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AABCC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmLJ+0/MwkCW+wQWz6KAneLkj3PFaCMG0R5Oij5gTI8=; b=dv8xMk/RQglyNc
	j81JvbtrkpQT94Ri7+5S/gS73Stw3eShR/K83h9ThnTQtCBt8pNAZEqlezbKyFNLO/u4t9qdcA1fS
	FWYJ59RuD2nXhQBPS4VBuGDYJCbUbvzh9whjTwuyONoQFo/dZfTbR4eSxnCAxBpdaB/GBfB9Kxgji
	HcV2Y/VomPNER5tSud05tnkTdh//1qeBQuMTHLvWoqQTY67f5qwhbv3Bgti1jLAqvdOFisT2j4dqH
	vogoCjnI86Q0Q4zUUiW+Gk9MuO9cxuXZRXZH33GXpnEoTs84cYNGP0R7GVGWF5no/wdFupgOLEpbt
	0I896cskTVAFq8P0ULsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFhJ-004Og8-Uv; Tue, 11 Oct 2022 13:53:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFhH-004OfE-L8
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:53:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B226A6010E;
	Tue, 11 Oct 2022 13:53:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BBBDC433D6;
	Tue, 11 Oct 2022 13:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665496406;
	bh=EINtKE+ZFkOpiRcj5jShXlOH+liwnEAnMQj9W0oJVX4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nZedtaGSuVaOlqhcBPxFIN27eEettJmZ6fU1Z3yI5pN4IXW6UFYev7+ypWycCeg/+
	 F+0EDMO+rg9HKfHuSo4l/hxHCDDi8OKkvpKJOzNT0GX5kTOVsVX06ajSXrFL65kBKm
	 yLjLHFXaPK/QYJEF3bOw5wxJyzc/1E7oMwGnpZrIlBObt+zdglbYGu4DTbo13u1Cfb
	 XmM+wYHxMCJpbzkyox55Fnmqg6kOqMMv3VbTM1NYlVvby2jXuMnvTB+BNFPEQsqo3m
	 IeAixo9n4t5SRUy5vt7DSxkgxK8VHFxgxUYi9iut+uQVKWG47oVnbwdegyauqkDSnP
	 DUc8wKuCq889A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oiFh6-0002h8-RF; Tue, 11 Oct 2022 15:53:17 +0200
Date: Tue, 11 Oct 2022 15:53:16 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 08/13] phy: qcom-qmp-pcie: drop power-down delay config
Message-ID: <Y0V1TIBySTPhYqX/@hovoldconsulting.com>
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-9-johan+linaro@kernel.org>
 <66261491-530d-c368-6cc8-daeef74fcbda@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <66261491-530d-c368-6cc8-daeef74fcbda@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_065327_768348_80EA1A6E 
X-CRM114-Status: GOOD (  20.72  )
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

On Tue, Oct 11, 2022 at 04:46:53PM +0300, Dmitry Baryshkov wrote:
> On 11/10/2022 16:14, Johan Hovold wrote:
> > The power-down delay was included in the first version of the QMP driver
> > as an optional delay after powering on the PHY (using
> > POWER_DOWN_CONTROL) and just before starting it. Later changes modified
> > this sequence by powering on before initialising the PHY, but the
> > optional delay stayed where it was (i.e. before starting the PHY).
> > 
> > The vendor driver does not use a delay before starting the PHY and this
> > is likely not needed on any platform unless there is a corresponding
> > delay in the vendor kernel init sequence tables (i.e. in devicetree).
> > 
> > Let's keep the delay for now, but drop the redundant delay period
> > configuration while increasing the unnecessarily low timer slack
> > somewhat.
> 
> Actually, the vendor driver does this 995..1005 sleep. But contrary to 
> our driver it does that after programming whole PHY init sequence, which 
> includes SW_RESET / START_CTL, but before programming the pipe clocks.

Right, it does it after starting the PHY which means that you don't have
to poll for as long for the PHY status.

It's a different delay entirely.

> I think we can either drop this delay completely, or move it before 
> read_poll_timeout().

It definitely shouldn't be used for any new platforms, but I opted for
the conservative route of keeping it in case some of the older platforms
actually do need it.

My bet is that this is all copy-paste cruft that could be removed, but
I'd rather do that as a separate follow-on change. Perhaps after testing
some more SoC after removing the delay.

SC8280XP certainly doesn't need it.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
