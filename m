Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0C36C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Nov 2022 10:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFGKJjV+CckvZnFOGeFqsK0lzJE+Qf1ik68pPrVrRaA=; b=LmHdNEm7+IN6wi
	9vDxK1XLYyu/mJ9VYuPAXDEF0XlxTSpKnBQMRixH6MyXiMJIcTHHxgH1bqKcsoFl0kseGkyUu4sr6
	X4wVVYSzloRdKi/uZjrDAynUP07Ganp2e4ZoPQPBnVQXuBHvTTv+tGqkeB4UphuFlul+KwTfr46Vq
	eXVmRLHV0ICR+zz3xCdo9UNcgi7wPRQm9zvu5PdEwOOEpkO9mWrRzu9+zR0noL/iUs+5p2xyY84v1
	mvni1UrFMwb0pr5zBEJ9xsPZaa48kG4bPIeC6BLpZQiV6Ix6PSVfsdAJLwvimk8rHtThvaGuRd6ve
	NC/rNt63XBPH3hbE6ZzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyW8e-00FZzX-QO; Fri, 25 Nov 2022 10:40:56 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyVsX-00FO3v-JF
	for linux-phy@lists.infradead.org; Fri, 25 Nov 2022 10:24:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 28511B82981;
	Fri, 25 Nov 2022 10:24:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D75A7C433D6;
	Fri, 25 Nov 2022 10:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669371854;
	bh=UZVGoBnwbqgX7QHkA+XxraCebfb9ih7yV/82oceIMgI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kAbBEKzxQW3BJZfTG3aYOohUWiAEpSVowGD+CqfEjT8iYkTbMJEAsEKTliV/+bqc1
	 xxb9OJelnz/cJhh3L0D5Uz8EKycRJhlfH6T1vn2tOHn+YRcBMhlWIvc4ADNjpPpFW/
	 gGCnr/UkoQ6/V7bjzt17DnpvC1acTDhrsqhX4sftEnHDIe19vcxaQQ1KRnQZz/FvWl
	 4M/h/My7xpHg3YWA6UKLx+ISzvzs5uWGi0/O7FpL/Te4XIMIy0S/Zb0Q7KWzmTm0Kv
	 /Uo9y+M9o27zetPCwtL1sNeJrwIQXRvzrEzrBx+FFAcSfyB4Cmz5vG7GZUgps4CTAF
	 mnC9lixd0c2uA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oyVs6-0002aK-Av; Fri, 25 Nov 2022 11:23:50 +0100
Date: Fri, 25 Nov 2022 11:23:50 +0100
From: Johan Hovold <johan@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2 2/3] phy: qcom-qmp-combo: Add config for SM6350
Message-ID: <Y4CXtn/o3aNvBNh5@hovoldconsulting.com>
References: <20221125092749.46073-1-luca.weiss@fairphone.com>
 <20221125092749.46073-2-luca.weiss@fairphone.com>
 <Y4CSYZE+3fZCV4Z3@hovoldconsulting.com>
 <COLAQH772WXW.P442ICY46TDR@otso>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <COLAQH772WXW.P442ICY46TDR@otso>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_022417_884828_0A6229BD 
X-CRM114-Status: GOOD (  25.45  )
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

On Fri, Nov 25, 2022 at 11:14:53AM +0100, Luca Weiss wrote:
> Hi Johan,
> 
> On Fri Nov 25, 2022 at 11:01 AM CET, Johan Hovold wrote:
> > On Fri, Nov 25, 2022 at 10:27:48AM +0100, Luca Weiss wrote:
> > > Add the tables and config for the combo phy found on SM6350.
> > > 
> > > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > > ---
> > > @Johan Hovold, here I've added dp_txa & dp_txb, I believe otherwise
> > > qmp->dp_tx would be wrong. Is this different on sc8280xp or was this a
> > > mistake on your side? I think this should probably be split out to
> > > another patch to not mix things up too much.
> >
> > Yeah, that's a difference in sc8280xp which does not have dedicated TX
> > registers for DP.
> 
> Good to know.
> 
> >
> > This is probably best handled explicitly when parsing the DT by using
> > dp_txa/b if they are set and otherwise fallback to txa/txb (e.g.
> > instead of hiding it in the v5 table by using the same offset in two
> > places).
> 
> Are you thinking about something like this?
> 
> if (offs->dp_txa)
>     qmp->dp_tx = base + offs->dp_txa
> else
>     qmp->dp_tx = base + offs->txa;
> 
> if (offs->dp_txb)
>     qmp->dp_tx2 = base + offs->dp_txb;
> else
>     qmp->dp_tx2 = base + offs->txb;
> 
> This wouldn't handle ".dp_txa = 0x0000" but I don't think this should be
> a problem, right?

Yeah, that should be fine. I'd even merge the branches:

	if (offs->dp_txa) {
		qmp->dp_tx = base + offs->dp_txa;
		qmp->dp_tx2 = base + offs->dp_txb;
	} else {
		qmp->dp_tx = base + offs->txa;
		qmp->dp_tx2 = base + offs->txb;
	}

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
