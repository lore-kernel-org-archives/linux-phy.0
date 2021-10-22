Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9E0C43217
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 04:32:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7C8EB61163
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 04:32:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7C8EB61163
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9LmrqkliMJ2Tzi9GJH59jIydawHQZY6VDoKbV4UYhM=; b=cwru08hhuNNSIm
	yj+3jANZRoYaEQdZDWLs/5LjpC5yApx4MbyMgWzizfivdR/jCt17vhB71nPZO3kUWq0/mrXWShYv2
	bc7oQCpam//HdZH3GQzQ4Bts3/tyuywttRBVMmDoCrRTq97cEG0LteUZbuOzcIRA4umPfeLBIZh/v
	dhP+tC8uea3d4ltTbFNyv64F+CdaQvL26szic8jlXCbBmLB/asadJPHjKo/1RBEScrmpqxEAh5wFJ
	ZtcIFrUKmYGV/7mSpqtf0BhHxfyGACgmKAELJ1fzl2mQ6JqjxDYzxl//JvQDTYey+cjgawHXs5Tuw
	+jbl8CyACIEwxM31211Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdmDq-009iPa-VA; Fri, 22 Oct 2021 04:32:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdmDo-009iOu-D5
 for linux-phy@lists.infradead.org; Fri, 22 Oct 2021 04:32:01 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 21BD16115B;
 Fri, 22 Oct 2021 04:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634877120;
 bh=6l47urclOiVAx/xaVfG+MkEH/1Q5Hsj0OokPHAX8+ug=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TbrgMiW7V+jQ/AZRQ4sMb5Ge3T8n9zKz8NWc7KuS5x0bRC5YW10qR/QFDk2+vLxiB
 fBTv2GAhdyCrjqh3GUGNp4SVy8cis2W/47xr5sKk/R8YpjLnjwJ0UeqWkPPq96Q4zZ
 bY+SJCoWWrhu762FYyzEiytiH5fDGIirfRU+juCw6fswhCGd0Zqo/FFeZG0OTSh1pR
 gz8FH5jCjOoF6i8B2CKwDEnn8NmGtrv2jDy+cWJwhHdwx9nhKZt4AC2vrdd3r1ET5+
 mlcSoGCvw9zNp9PMahL6+IA/y4PNw5HIPxYknELrU/wFi6VbDEhsT579XLP2TYlzmX
 vJNbN23jdGuMw==
Date: Fri, 22 Oct 2021 10:01:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 abhinavk@codeaurora.org, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 2/2] phy: qcom: Introduce new eDP PHY driver
Message-ID: <YXI+uwnMEJAnDllf@matsya>
References: <20211016232128.2341395-1-bjorn.andersson@linaro.org>
 <20211016232128.2341395-2-bjorn.andersson@linaro.org>
 <YXGmJFoeXwtTvl7p@matsya> <YXGvOHsJ33kJVvMk@ripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXGvOHsJ33kJVvMk@ripper>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_213200_489986_BDB959AD 
X-CRM114-Status: GOOD (  13.05  )
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

On 21-10-21, 11:19, Bjorn Andersson wrote:
> On Thu 21 Oct 10:40 PDT 2021, Vinod Koul wrote:
> > On 16-10-21, 16:21, Bjorn Andersson wrote:

> > > +static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
> > > +{
> > > +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> > > +	u32 step1;
> > > +	u32 step2;
> > > +
> > > +	switch (dp_opts->link_rate) {
> > > +	case 1620:
> > > +	case 2700:
> > > +	case 8100:
> > > +		step1 = 0x45;
> > > +		step2 = 0x06;
> > > +		break;
> > 
> > line after each break please (here & few other places)
> 
> You mean an empty line between the break and the next case? That doesn't
> seem standard?

Yes that is not really a standard, but does improve readability a lot esp
when blocks are large

> > > +static int qcom_edp_dp_pixel_clk_determine_rate(struct clk_hw *hw,
> > > +						struct clk_rate_request *req)
> > > +{
> > > +	switch (req->rate) {
> > > +	case 1620000000UL / 2:
> > > +	case 2700000000UL / 2:
> > > +	/* 5.4 and 8.1 GHz are same link rate as 2.7GHz, i.e. div 4 and div 6 */
> > 
> > above rates are 1.62 and 2.7, where is 5.4 and 8.1... what am i missing?
> > 
> 
> As the comments says 2.7, 5.4 and 8.1 all has req->rate of 1350000000,
> with different dividers. But we're not allowed to "document" that by
> listing 2.7/2, 5.4/4 and 8.1/6 in the switch statement.

ok
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
