Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA734C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 27 Apr 2022 06:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mc9rBeYH2+Z8WWsHiQ3qTPxQkF2IhFXJTY+3ou4y+CE=; b=TZaaGqjgBzVhpA
	2vhAS3EhTvYKwjkZf1zUJJAO1r6ZySIHWPD+hsGVcmw/aTeoC/e8TCt8JmrTYqPj1lujPH2ApCBdF
	HkHvPraZU4At484aXFs5Hsqa/NVetg8z0zPs4f6BAJAyYiITUJnajojXMvZWzwauF6ODtwDC0ECGL
	bLcKOTMxwx6C3CR1uQEkEai5AsgQn/I1kBwrAHb9b1RgW3xV974dMO7PlMKnwtIGxldEjZRWdI54M
	0kMZ6rWuiUS9BmuId0gbbqba+OHUlS2Jp8xfCjSNAZ21HmAQdZkfvvd7t3VdV0UstMcA1zVJhfWu4
	rA/6K1RxWsePLWDR1WcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njakE-00HX4a-89; Wed, 27 Apr 2022 06:01:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njakB-00HX3D-ER
 for linux-phy@lists.infradead.org; Wed, 27 Apr 2022 06:01:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5642161135;
 Wed, 27 Apr 2022 06:01:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4BA5C385A7;
 Wed, 27 Apr 2022 06:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651039301;
 bh=vrSKVfzDuthRYBdUjrjFxhx98WWa/Du4tj2i28+8jhE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OEfFw5R30Zg7fXlsRxQJh/mLBRyQVwhu8NnsvUmUl7RvZ8MLkQdTxC+SynmyQGRAX
 SX8ommb4WBMGfD4UkluVFED3wsgNdbiL3E/Nyf1oSEjMrFcWxAykXoTGLCq2ahtLbg
 SKd7fLyCEi9dp0zkMuF+QUOu4m40sKBNHrYDL0a4vdYFLjvbgzZ+uzm4flH1rK/I1J
 OUNADI/y9fGtuHVkaDvo2uDEmGXeLqNgoDyyXYCclqF/ajSoxcP8Oe0ND3wMp9as5i
 Lw3aoun+ORwsIkLLXeZKWSG2tpCxcWD82ySLMxdH9M1XLYqStNUu1n6DeD8AzHkAdB
 OULQUiACm4BaQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan@kernel.org>)
 id 1njakA-0000EW-Sx; Wed, 27 Apr 2022 08:01:42 +0200
Date: Wed, 27 Apr 2022 08:01:42 +0200
From: Johan Hovold <johan@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Johan Hovold <johan+linaro@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Vivek Gautam <vivek.gautam@codeaurora.org>
Subject: Re: [PATCH 2/2] phy: qcom-qmp: fix reset-controller leak on probe
 errors
Message-ID: <YmjcRleHMaWKUcni@hovoldconsulting.com>
References: <20220422130941.2044-1-johan+linaro@kernel.org>
 <20220422130941.2044-3-johan+linaro@kernel.org>
 <59b135206b456fd8f8df30a4e474e385a922bf77.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59b135206b456fd8f8df30a4e474e385a922bf77.camel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_230143_578591_CB3B92F9 
X-CRM114-Status: GOOD (  17.75  )
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

On Mon, Apr 25, 2022 at 11:45:29AM +0200, Philipp Zabel wrote:
> Hi Johan,
> 
> On Fr, 2022-04-22 at 15:09 +0200, Johan Hovold wrote:
> > Make sure to release the lane reset controller in case of a late probe
> > error (e.g. probe deferral).
> 
> Right. grepping for "of_reset_control_get", there seem to be are a few
> other drivers that might share the same issue...

Yeah, I'm sure there are more of these.
 
> > Note that due to the reset controller being defined in devicetree in
> > (questionable) "lane" child nodes, devm_reset_control_get_exclusive()
> > cannot be used (and we shouldn't add devres helpers for the legacy reset
> > controller API).
> 
> Do you mean of_reset_control_get()? Maybe you could switch to
> of_reset_control_get_exclusive() while at it?

Right, I was referring to of_reset_control_get() but obviously
of_reset_control_get_exclusive() could still get a devres version so
that sentence in parenthesis doesn't make much sense.

I must have mistakingly imagined that the latter also retrieved the
struct device_node from a struct device like the current devres helpers
do.

> That one might warrant a devres helper if other drivers were to adopt
> the same pattern.

Right.

> The patch itself looks fine to me,
> 
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

Thanks for reviewing. I'll send a v2 with an updated commit message and
switch to the new API in a new follow-on patch.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
