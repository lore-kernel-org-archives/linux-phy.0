Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3DC3C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 20 Oct 2022 11:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwD3Hl6GQUe5gEOU+p4J3d9/FE12B0VDBX1mwj+7AII=; b=VEW3tNDhyHbQYs
	AysYc9tBv0S8PrbpYiqzpTTUJaPx55WRbNfrCi6A9feWCPGKZyA0TuytpFg8RtAqSjgI8MQDYMuhY
	hdgTvTyKE5zHf7zM+S+7IW8pVFXyOw2K49M/sP1YNKNoX4mqIsPcltPqGUW1czQJR3R3IJAt+d+Iy
	yyB4br+h7qJEiYqSC2+da0qL7PTHYizG+tdo4c2UUuIqJOY4TD73vcStTUtO22hTyNlqXBEtGW5H0
	U4UtjhTJbnxTmZ9UY2BTWKRorojEV9qjkEpheqdx8fcP3knZJ4pjNNbKaFDe+w+J0jIjB3dg2f0hX
	kohTatyjFSzB42z9AxWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olUAb-00ENBX-Jk; Thu, 20 Oct 2022 11:57:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olT7L-00DmCj-K2
	for linux-phy@lists.infradead.org; Thu, 20 Oct 2022 10:49:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9BFDF61A0C;
	Thu, 20 Oct 2022 10:49:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F26F6C433C1;
	Thu, 20 Oct 2022 10:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666262975;
	bh=6KPTvy+J6w0Z1UUTzZ1Zf+/lhxrtVWfefrzE1t3fxmE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sRIF6UndSpcjnUsWH+RdWi4ByH8QiLokAyMTzGWQ731ypPJSzf2QGpQ8l0B+aM49g
	 mZO/C3niqAq/RjrwYn8k4JLP0x4n+2fS1/rcmzDdN9Sma1KcKFDdmcU3lLHCZsk0vs
	 9ZjHAW9s5sWuMxSS4QpYfiFGPCzK5PLty3HaWrgqJJiq9IfKQzj7Y5jTNaGMtQO2Vx
	 UgcD/qz3R+2wxYP+bPAmdLhFL5VxXFlhg0Qb+B2K34zQvRM0xVLGW2vqS37Oa1ZAuv
	 woWIAx6BUcTffBOzaGdBD7rERR/KSRV9A6S/ETvcFDBzSTqjxsqo6f5sSsnAoscYTK
	 9/CO681LB5pcA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1olT72-0002C5-Oj; Thu, 20 Oct 2022 12:49:21 +0200
Date: Thu, 20 Oct 2022 12:49:20 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 13/15] phy: qcom-qmp-pcie: add support for pipediv2
 clock
Message-ID: <Y1EnsKMhoWo+cIWo@hovoldconsulting.com>
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-14-johan+linaro@kernel.org>
 <325d6c7b-ca96-df73-a792-4d156a710267@linaro.org>
 <Y1EPZBinv0tyZVqW@hovoldconsulting.com>
 <7eb3fb9a-ce4a-eee0-b6bc-cee6aa6bf37b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7eb3fb9a-ce4a-eee0-b6bc-cee6aa6bf37b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_034939_808899_B81B9A7D 
X-CRM114-Status: GOOD (  21.41  )
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

On Thu, Oct 20, 2022 at 12:28:14PM +0300, Dmitry Baryshkov wrote:
> On 20/10/2022 12:05, Johan Hovold wrote:

> > Here's your example diff inline:

> > @@ -2206,12 +2207,17 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
> >   		}
> >   	}
> >   
> > -	qmp->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
> > -	if (IS_ERR(qmp->pipe_clk)) {
> > -		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
> > +	clk = devm_get_clk_from_child(dev, np, NULL);
> > +	if (IS_ERR(clk)) {
> > +		return dev_err_probe(dev, PTR_ERR(clk),
> >   				     "failed to get pipe clock\n");
> >   	}
> >   
> > +	qmp->num_pipe_clks = 1;
> > +	qmp->pipe_clks = devm_kcalloc(dev, qmp->num_pipe_clks,
> > +				      sizeof(*qmp->pipe_clks), GFP_KERNEL);
> > +	qmp->pipe_clks[0].clk = clk;
> > 
> > So here you're poking at bulk API internals and forgot to set the id
> > string, which the implementation uses.
> 
> I didn't forget, I just skipped setting it. Hmm. I thought that it is 
> used only for clk_bulk_get. But after checking, it seems it's also used 
> for error messages. Mea culpa.
> 
> But it's not that I was poking into the internals. These items are in 
> the public header.

My point is that you're not using the bulk API as it was intended (e.g.
with clk_bulk_get()) and you risk running into issues like the above.

And looking up the actual clock name for this is overkill, even in the
case were it is provided, so we'd need to set it unconditionally to
"pipe" (which is fine).

> > For reasons like this, and the fact that will likely never have a third
> > pipe clock, I'm reluctant to using the bulk API.
> 
> Let's resort to the maintainer opinion then.

I'll take another look at it too.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
