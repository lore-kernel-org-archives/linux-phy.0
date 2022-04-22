Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48D87C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 10:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khJBJ1SIKhudQau8ILmgkiJTt5YBbO5JZ7g2EKwJeEA=; b=P5mcNWMNItflOJ
	M34iu8NiuJlZaRe6cU8IaHmBN/FIkMjjwZFf1Ycg+BrUodlS4vgwCKkcSdDBQ2r0WjOeHEtqjOjDQ
	3A8qzV3FomOwXrbJe/5uyZfZGjf4RTNZleJbnzjVqi+nrv1vO1vfpEyBVdfzcPFbDxYh5bOLNTUS2
	5wwCD6VmcIeNJ80VA9ibo6QjN4WD6xJgNIBp5mwPCdnijdEnJcbVWvqY3XKvsrShSJToItecem3Rg
	J77W+dukxNbUKpk8NCK8bchCUfpi65bD3cQCvhkiikKyGHfVJWVuhc1y1m4YrNHYZ13XrHVT1C/AC
	BgnNXvAuehldWb3px2IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhqjI-0003Xe-HP; Fri, 22 Apr 2022 10:41:36 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhqjF-0003Vg-Ps
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 10:41:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 9049CB82C10;
 Fri, 22 Apr 2022 10:41:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 535B0C385A0;
 Fri, 22 Apr 2022 10:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650624090;
 bh=XgeHDscq4XiMKn3nikqVv26WbVAc1uoCYL9IXMXzt9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U7rO0t94WUjIwU5upicuh6PLMNXEsvt+bhoOcdH63t/Tzz6noC7mBAFjt9F4SVCPC
 zhPYMjy8XQTXW3nUsCL5rB3dO0Fg6kXiv8NHCiVx0ypj1bfN+V8tQ2rtU1f/zIIjfD
 vMmhwAZFoLdjZ4Y/NzHy7a56lvCVySO8qfe1tEYlwUdHBK84jbKWYuBlFhyv0S/+Mw
 3nchJRG4qQh3OUWbPpyMB/EQf2PDXJqXgnz2QALSevvdK3MAySn+EDH665betUemdD
 8xQGZ2ykaOUOY3DPT/OQt2LmksyDnzOHePeNILOiIA4N/OEK+3UTj2DkmazxBDSmx4
 qCfJo4EmMsRBw==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan@kernel.org>)
 id 1nhqj6-0002YD-2f; Fri, 22 Apr 2022 12:41:24 +0200
Date: Fri, 22 Apr 2022 12:41:24 +0200
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
Message-ID: <YmKGVP5T/ijPvV+g@hovoldconsulting.com>
References: <20220421102041.17345-1-johan+linaro@kernel.org>
 <20220421102041.17345-2-johan+linaro@kernel.org>
 <f4cfc1b3-2a85-f948-ff2c-27588cbe2210@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f4cfc1b3-2a85-f948-ff2c-27588cbe2210@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_034134_144835_DED7DF9B 
X-CRM114-Status: GOOD (  25.55  )
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

On Thu, Apr 21, 2022 at 02:36:05PM +0300, Dmitry Baryshkov wrote:
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
 
> > +static int qcom_qmp_phy_pipe_clk_enable(struct qmp_phy *qphy)
> > +{
> > +	struct qcom_qmp *qmp = qphy->qmp;
> > +	int ret;
> > +
> > +	ret = clk_set_parent(qphy->pipemux_clk, qmp->pipe_clksrc);
> > +	if (ret)
> > +		dev_err(qmp->dev, "failed to reparent pipe clock: %d\n", ret);
> > +
> > +
> > +	ret = clk_prepare_enable(qphy->pipe_clk);
> > +	if (ret) {
> > +		dev_err(qmp->dev, "failed to enable pipe clock: %d\n", ret);
> > +		goto err_restore_parent;
> > +	}
> 
> So, what you do here is you manually set the parent of 
> GCC_PCIE_1_PIPE_CLK_SRC to PHY pipe clock right before enabling 
> GCC_PCIE_1_PIPE_CLK and set it back to XO after disabling 
> GCC_PCIE_1_PIPE_CLK.
> 
> My proposal is doing exactly the same, but doing that automatically 
> through the clock infrastructure. After removing pipe_clock handling 
> from pcie driver itself, we can be sure that nobody is playing dirty 
> tricks around the pipe_clock.

Yes, the end result is similar, but I believe handling it explicitly in
the driver is preferred for a number of reasons that I've already
mentioned. Not least because the mux needs to be updated when the PHY is
powered on, not when the GCC pipe clock is ungated.

In practise, powering on the PHY and ungating the clock happen to
coincide in time because only the PHY driver will use the GCC pipe
clock, but conceptually they are unrelated (and as the GDSC hang shows,
something in the system appears to be ungating the clock while the PHY
is powered off).

The QMP PHY driver implementation is much more straight forward and
easier to reason about than having the mux implementation spread out
over multiple clock drivers where it's not clear at all what is really
going on or why (and even debugfs will give you a false view of the
clock tree state).

> > +
> > +	return 0;
> > +
> > +err_restore_parent:
> > +	clk_set_parent(qphy->pipemux_clk, qphy->piperef_clk);
> > +
> > +	return ret;
> > +}
> > +
> > +static void qcom_qmp_phy_pipe_clk_disable(struct qmp_phy *qphy)
> > +{
> > +	struct qcom_qmp *qmp = qphy->qmp;
> > +	int ret;
> > +
> > +	clk_disable_unprepare(qphy->pipe_clk);
> > +
> > +	ret = clk_set_parent(qphy->pipemux_clk, qphy->piperef_clk);
> > +	if (ret)
> > +		dev_err(qmp->dev, "failed to reparent pipe clock: %d\n", ret);
> > +}
> > +

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
