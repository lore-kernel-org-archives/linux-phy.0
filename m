Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD3E1CCA47C
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 11:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwn8xTpzv6Hnm+ENPmz8YhC6kwVllFG/jK8QXzt2DHo=; b=l+Uju6Csnzajav
	WbbWQDQrLiCqlASSjx+56jwsNU7b5A22WZ3iUhbZixvNWLe1yyAM//38fUNBdrjTo00NyncssdwJ+
	NByFodcIaXgNl7y4JPQi7Fto6MzU8cD9knU5sxvVW8TemfV5iL+Tkz8naUmMtkqiwEdSW367+LbIY
	TK/lozWxTtTcCjYCETP3KDIGKhzIMSaFEErknq6Z2uw0Pu0e9U+N9myZy11w9aG29KwGeq7KOL7yi
	wjqQG4bxm/c23w8h+g7hUeUPlwp0VwOwYe8kneNGPZ2ldjng5wJgVsiqBOKsKvLrO1kk4etN1pQQF
	9z9KbHwUxpFKK9388Kfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LNN-00Ems3-7u; Thu, 23 Jun 2022 11:51:57 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LNK-00EmrM-Rq
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 11:51:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 82D76B8225F;
	Thu, 23 Jun 2022 11:51:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49D3CC341C7;
	Thu, 23 Jun 2022 11:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655985112;
	bh=YxjkbmtWiwKyXSfh9J1LCaGUej6BwFLLjiSLAdMtBEo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gpQy8Lwa6qn8PfIky19HgsNqZNmbA/uJArEGXy+A+f7hTIGSrW8MLkNPzgQUnc/Qd
	 KuksUcv/lV3mrSYfXiPcpoouH+EXWFHqGG3j2XdKmT4bJyGcNbGf9z4FRdga8mD6yu
	 n1T4ZbxaYKJ1SAPINP/e4o40VhII+9LptveuB7SZFQ5JXT/nFG7kgU+astQ3K4cpAQ
	 cpLLoBeKI3rECMZDHTqXFpYzPGOCexhamO9J3QHhDlFf06h9diPNAxf71zD2usQ4PK
	 TgCRjRPSCCBWIsh+CFftan8wWiz3dDLsDHowrL6BUGmFXRqeZOgsO70Mj9/cvtxMkA
	 91QG7KxUS6Usg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o4LNA-0007s6-5m; Thu, 23 Jun 2022 13:51:44 +0200
Date: Thu, 23 Jun 2022 13:51:44 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: qcom-qmp-pcie: drop obsolete pipe clock type
 check
Message-ID: <YrRT0O8xSq30U8mh@hovoldconsulting.com>
References: <20220623113314.29761-1-johan+linaro@kernel.org>
 <20220623113314.29761-2-johan+linaro@kernel.org>
 <CAA8EJpp0XAZ3V9XQ2QnbrVoiKrdD_mxoTpKuzC34hKVPQ7wT0g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpp0XAZ3V9XQ2QnbrVoiKrdD_mxoTpKuzC34hKVPQ7wT0g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_045155_081523_9238BE80 
X-CRM114-Status: GOOD (  15.04  )
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

On Thu, Jun 23, 2022 at 02:44:28PM +0300, Dmitry Baryshkov wrote:
> On Thu, 23 Jun 2022 at 14:33, Johan Hovold <johan+linaro@kernel.org> wrote:
> >
> > Drop the obsolete pipe clock handling which was used to treat the pipe
> > clock as optional for types other than PCIe and USB and which is no
> > longer needed since splitting the PHY driver.
> >
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---

> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >         if (IS_ERR(qphy->pipe_clk)) {
> > -               if (cfg->type == PHY_TYPE_PCIE ||
> > -                   cfg->type == PHY_TYPE_USB3) {
> > -                       ret = PTR_ERR(qphy->pipe_clk);
> > -                       if (ret != -EPROBE_DEFER)
> > -                               dev_err(dev,
> > -                                       "failed to get lane%d pipe_clk, %d\n",
> > -                                       id, ret);
> > -                       return ret;
> > -               }
> > -               qphy->pipe_clk = NULL;
> > +               return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
> > +                                    "failed to get lane%d pipe clock\n", id);
> >         }
> 
> Please remove the brackets around a single statement.

For readability reasons I prefer keeping brackets around statements
spanning multiple lines instead of relying on indentation. 

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
