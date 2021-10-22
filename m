Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E3EBC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 17:14:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4604060F6E
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 17:14:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4604060F6E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9c87ujUEWQHqpyDUIAU4i/NEMznURQncX1pG8T87y4=; b=J7P6qTnqs+4LqL
	4gvI6reC47aI0bVgz9FTtghsOImEHqId0vwRG3l8S7ecDg9CxAveK+TfLEHqMBnGzK9wHWL7+UrZU
	0jbIeJdZUw4BwqvkzBPEmlDSI9f0IvGzY0RRBSehGdMtYvRdMHAr3utZQe07tn8FWj3Umoh/Pxnz+
	YNFD+xYE7bbCzHJoHt41lcYb0ZHoWoTljczCPx3mTpTRNBjjjYSCAYtYAkEMRGR4RKT3lADWZ8q+N
	x0ZukrLwUVd3xPMWfKzFc2eyVDJJbvPgnQopJCpeM9zRVVHgWsAVGvjwZ8X202sQOrTIoBcaDxMlZ
	+LpX1xvELIf4N+M4cgow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdy84-00BbQ3-QG; Fri, 22 Oct 2021 17:14:52 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdy82-00BbNq-93
 for linux-phy@lists.infradead.org; Fri, 22 Oct 2021 17:14:51 +0000
Received: by mail-ot1-x32c.google.com with SMTP id
 p6-20020a9d7446000000b0054e6bb223f3so5228423otk.3
 for <linux-phy@lists.infradead.org>; Fri, 22 Oct 2021 10:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=khihIRBEDwfkgoT9XzW4kObgxI4RYFVX0d5V9aipBkI=;
 b=JDzt2sgU2asdNcC2nctv1gQBaMXlCEYffS5ssU/Bhl7jtz1udhOlWYAbaY9MgQPnmC
 9WPcfPdlElKtgv/Ds+SNc1X3RLhGQxd1X9uHVsrAePxPYezIJntxfN3D7kzuR/oTH6gy
 hLwjKqsFCm6KKCjFhh16ZrDXiCzMgCoQosMHBukz5O4Xm3faQpoA3PsgIi0CpA3Vr+Ow
 aF+lgfRPShuK2+mE4DZTRnud06RvFCZHTW1tzxq25MO2a3RH7vFnQmj/YhlpTQMjddbQ
 3GE6JpDn1YfmndPhoglUiXkoFx57eGjkL9RfUl8Jw6tuh/CUCGiOahFYvpMrJ6tQUZ45
 qcVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=khihIRBEDwfkgoT9XzW4kObgxI4RYFVX0d5V9aipBkI=;
 b=HBWGHNYLzYQs0m8envOzYKnSHQNkDZK2RoZ4wHfXoqNiOX7hcLldqr0ePAlBwN7Af1
 tGPVhrvVkA+F6MkO3toC+f2dG7nheTcwTU0enI8A+tbQQlnvh20MCcdnAs+cUvYBG50k
 G6EkL/x4bBMFQbhrruqqiFUrbLUeaYW/kSuIQprsOscE3OgAukMzVgIwFDLz/GCiwnmU
 yO6GwpXUwzVdss1aVBIx+IWFBr474FPFPUPPOht3SBPlyqvKleJ++9W+LrBK3xZKHnHf
 J3jTcu+LDnyUizcHxF2OCEmVlSB8CCDO/UIu6Dda8FLOucOOnGK13xsQzhp99Q8fzS8r
 j1UA==
X-Gm-Message-State: AOAM5329XbKgT/ZHaVI7oLkC52818IyxKc1BRMsRvWuuOe94WkS1+ZLv
 W2Doy6WgvAcPuUAXeHRDH5b8vg==
X-Google-Smtp-Source: ABdhPJyUurLqXmz/k4ajla41wyPVwPizzTYqnndr7ozwJjgTBnhA4qlZm4eBgUKwrA4WcgYLFUDcdQ==
X-Received: by 2002:a05:6830:2b11:: with SMTP id
 l17mr946819otv.298.1634922887137; 
 Fri, 22 Oct 2021 10:14:47 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id p14sm1522495oov.0.2021.10.22.10.14.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Oct 2021 10:14:46 -0700 (PDT)
Date: Fri, 22 Oct 2021 10:16:28 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 abhinavk@codeaurora.org, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 2/2] phy: qcom: Introduce new eDP PHY driver
Message-ID: <YXLx7EV7ZiMIxauO@ripper>
References: <20211016232128.2341395-1-bjorn.andersson@linaro.org>
 <20211016232128.2341395-2-bjorn.andersson@linaro.org>
 <YXGmJFoeXwtTvl7p@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXGmJFoeXwtTvl7p@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211022_101450_350457_751C662C 
X-CRM114-Status: GOOD (  22.30  )
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

On Thu 21 Oct 10:40 PDT 2021, Vinod Koul wrote:

> On 16-10-21, 16:21, Bjorn Andersson wrote:
> > Many recent Qualcomm platforms comes with native DP and eDP support.
> > This consists of a controller in the MDSS and a QMP-like PHY.
> > 
> > While similar to the well known QMP block, the eDP PHY only has TX lanes
> > and the programming sequences are slightly different. Rather than
> > continuing the trend of parameterize the QMP driver to pieces, this
> > introduces the support as a new driver.
> > 
> > The registration of link and pixel clocks are borrowed from the QMP
> > driver. The non-DP link frequencies are omitted for now.
> > 
> > The eDP PHY is very similar to the dedicated (non-USB) DP PHY, but only
> > the prior is supported for now.
> 
> since this is QMP phy, pls add an explanation why common QMP driver
> is not used here?
> 

Looked at this again, doesn't the second paragraph answer that?

> > +static int qcom_edp_phy_init(struct phy *phy)
> > +{
[..]
> > +	writel(0x00, edp->edp + DP_PHY_AUX_CFG0);
> > +	writel(0x13, edp->edp + DP_PHY_AUX_CFG1);
> > +	writel(0x24, edp->edp + DP_PHY_AUX_CFG2);
> > +	writel(0x00, edp->edp + DP_PHY_AUX_CFG3);
> > +	writel(0x0a, edp->edp + DP_PHY_AUX_CFG4);
> > +	writel(0x26, edp->edp + DP_PHY_AUX_CFG5);
> > +	writel(0x0a, edp->edp + DP_PHY_AUX_CFG6);
> > +	writel(0x03, edp->edp + DP_PHY_AUX_CFG7);
> > +	writel(0x37, edp->edp + DP_PHY_AUX_CFG8);
> > +	writel(0x03, edp->edp + DP_PHY_AUX_CFG9);
> 
> In qmp phy we use a table for this, that looks very elegant and I am
> sure next rev will have different magic numbers, so should we go the
> table approach here on as well..?
> 

Comparing the v3 and v4 USB/DP combo phy and this, the only number that
differs is CFG_AUX2 and CFG_AUX8.

CFG_AUX8 is 0x37 for eDP and 0xb7 for DP and AUX_CFG2 seems better to
mask together, but I don't fully understand the content yet.

I did check two other platforms and they have the same sequence, except
one additional bit in AUX_CFG2. There also seem to be a few additional
permutations of this value, so I don't think tables are the solution.


So I think it's better if we leave this as proposed and then
parameterize the two individual entries as needed when we go forward -
or determine that I missed something.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
