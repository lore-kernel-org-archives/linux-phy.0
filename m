Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B081FC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 10:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/AyxnIyvMrdZDNnz8Yones8k/jYdScmCR1MBoxKUS0=; b=wC7eT86Ens3XI+
	2hi0htDck1JwbSBdCh1CSa/P8u1NBozvN+i5eFlkdln00+dd2lyUKqTRJz+xWT/f3QzgXTvXcR4p9
	+aw/YerrytE3rGWmhmGiYTTo6HRCoOhc/ToCPleLbUitXRqnnY8kfzI7CbXkOswuAhF4rmVWlbHne
	ntwYpvg+NiXTm9AAyYLkaDKqxZkSCnq75aC8PgePutcKth1tYbZN9G6+wCBWFz23faY7mE2tEXjjg
	CUSXdqZnfr3F4welc3qDGz+QHagHlrN0YhfTNK0KE9nMPofaqGarFcAu2vIzQBAL7UsTzY07IANeS
	1gDJGW/vGcqd5r+rpTlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhqPN-00HaBr-VM; Fri, 22 Apr 2022 10:21:02 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhqPK-00Ha9J-96
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 10:21:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D4D2DB82BA6;
 Fri, 22 Apr 2022 10:20:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78215C385A4;
 Fri, 22 Apr 2022 10:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650622855;
 bh=l8DMuJMxhFg3oWj3P06LfAZsH8ZofBIGfJ+Zsxq3M3c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tXz8dnNMqZa1305TV+OZTAXZYU1mQErY7qQwDOrLEGInkAMbEIzqrG3b+N/MezYx+
 nltOcc4WCszV0jlGsgS1jSmOpfo+zKsVzo3QSZyQ+n4wkjVgoZgzp6Ak5D7/TmmJ2X
 OqlL4P+FUNqoeKRzqD69pPyT0SP9R1wxn9ZML6uohJbjy12uHgUFabDfUL5BAu+U+I
 3zZf2YNJh6naLmWslpXXKwp13wozl37QHGEhPsNnvVmppbSUoKH9TTGIzMJMBK5JKR
 ToquwwGVQQmCB9ufrgASyzefmiULPiVKvutwkGXcCs2etHqxKwQ7ihzemQ8w0C2IDF
 FgVInoYZe6cag==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan@kernel.org>)
 id 1nhqPA-0002Om-Fm; Fri, 22 Apr 2022 12:20:49 +0200
Date: Fri, 22 Apr 2022 12:20:48 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Prasad Malisetty <quic_pmaliset@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC 1/5] phy: qcom-qmp: add support for pipe clock muxing
Message-ID: <YmKBgGHtfDcO1Mkg@hovoldconsulting.com>
References: <20220421102041.17345-1-johan+linaro@kernel.org>
 <20220421102041.17345-2-johan+linaro@kernel.org>
 <de4f9514-5132-f208-d43f-4c50afcda203@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <de4f9514-5132-f208-d43f-4c50afcda203@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_032058_644296_F7FAD62D 
X-CRM114-Status: GOOD (  33.00  )
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

On Thu, Apr 21, 2022 at 02:08:27PM +0300, Dmitry Baryshkov wrote:
> On 21/04/2022 13:20, Johan Hovold wrote:
> > Some QMP PHYs need to remux to their pipe clock input to the pipe clock
> > output generated by the PHY before powering on the PHY and restore the
> > default source during power down.
> > 
> > Add support for an optional pipe clock mux which will be reparented to
> > the generated pipe clock before powering on the PHY and restored to the
> > default reference source on power off.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp.c | 71 ++++++++++++++++++++++++++---
> >   1 file changed, 65 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> > index 7d2d1ab061f7..bc6db9670291 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> > @@ -3292,6 +3292,8 @@ struct qmp_phy_combo_cfg {
> >    * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
> >    * @pcs_misc: iomapped memory space for lane's pcs_misc
> >    * @pipe_clk: pipe clock
> > + * @pipemux_clk: pipe clock source mux
> > + * @piperef_clk: pipe clock default reference source
> >    * @index: lane index
> >    * @qmp: QMP phy to which this lane belongs
> >    * @lane_rst: lane's reset controller
> > @@ -3311,6 +3313,8 @@ struct qmp_phy {
> >   	void __iomem *rx2;
> >   	void __iomem *pcs_misc;
> >   	struct clk *pipe_clk;
> > +	struct clk *pipemux_clk;
> > +	struct clk *piperef_clk;
> >   	unsigned int index;
> >   	struct qcom_qmp *qmp;
> >   	struct reset_control *lane_rst;
> > @@ -3346,6 +3350,7 @@ struct qcom_qmp {
> >   	void __iomem *dp_com;
> >   
> >   	struct clk_bulk_data *clks;
> > +	struct clk *pipe_clksrc;
> 
> Please move this to qmp_phy too.

Ok.
 
> > +	/* Get optional pipe clock mux and default reference source clock. */
> > +	qphy->pipemux_clk = of_clk_get_by_name(np, "mux");
> > +	if (IS_ERR(qphy->pipemux_clk)) {
> > +		ret = PTR_ERR(qphy->pipemux_clk);
> > +		if (ret == -EPROBE_DEFER)
> > +			return ret;
> > +
> > +		qphy->pipemux_clk = NULL;
> 
> This makes the driver ignore every possible erorr except -EPROBE_DEFER. 
> However the driver should behave in quite the oppposite way. Please use 
> devm_clk_get_optional() instead. It would do that in better way.

We'd need to add an optional version of devm_get_clk_from_child() for
that due to the questionable "lane" child nodes this driver uses.

The above works for an RFC, but testing for -EINVAL and -ENOENT handles
a few more theoretical errnos until an optional helper is in place.

> Not to mention that this code leaks a refcount on the clock.

True, just like the driver has been doing with the pipe clock and lane
reset since it was merged. I'll fix that up.

> > +	} else {
> > +		qphy->piperef_clk = of_clk_get_by_name(np, "ref");
> > +		if (IS_ERR(qphy->piperef_clk)) {
> > +			ret = PTR_ERR(qphy->piperef_clk);
> > +			return dev_err_probe(dev, ret,
> > +					     "failed to get lane%d piperef_clk\n",
> > +					     id);
> > +		}
> > +	}
> > +
> 
> As a second thought.
> This needs to be more explicit. If the chipset requires the pipe clock 
> remuxing, we must fail if the clocks were not provided. So depending on 
> the qmp instance/property the driver should either use devm_clk_get() 
> (instead of _optional) or skip this block completely.

No, the kernel is not a DT validator (and we have the YAML bindings for
that now).

> But this will not work with earlier DTS files.

So this is not a problem (but if we really wanted to have the driver
validate the DT it can be done by updating the compatible strings).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
