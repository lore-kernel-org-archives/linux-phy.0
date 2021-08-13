Return-Path: <SRS0=FSiF=NE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2ECCC4338F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 17:28:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6E31360F57
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 17:28:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6E31360F57
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THxH7rBm5PT7DLTSvoGypnt7Ot+bH3qOXNUXs9A3Ce8=; b=I4eqtbVxUOMJlE
	v5+GTUAtEZZ740Xzgwj54mTSgE3GtWftwtLh33CEHh46142zKPAeKmcanhLY8LSQKZJqRijLRh+NE
	0JxPc7H6iWtbpZJfmrvKti9/yOdJFra3TfnHeeeKzo7BDSZMFTRBzP7PK4Y02zIQAtq6rQO8vRz/0
	gLVEkzAUTvXR8wLFiRyI7/J7Zstu0r011pWCnN3SVJeAE7lJSFMD9V6Vra7Ow9DaM38eo+veYGlGs
	c5ZGnDemOi3RXmPXYqWCxkJztKr0p6W7kqQCPmifiO5EiXkuMNlhUvN3QuYlvZlM1TCZ5JFPDf02v
	bjjbBXMmBhQxdpkCCMYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEayY-00DFvl-Uy; Fri, 13 Aug 2021 17:28:10 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEayK-00DFt6-Li; Fri, 13 Aug 2021 17:27:58 +0000
Received: by mail-oi1-f174.google.com with SMTP id bd1so9474024oib.3;
 Fri, 13 Aug 2021 10:27:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=c76u1WXElgRxRcQhl6D43NoSzfQNaZCIjE+sTewowMM=;
 b=Q+zRLm512QsmCKkMHJu7lUaMoNmgNoZLJhmTtwMFwIo8+DfZXAqnjrEyg/ml4dUS0c
 Rl5sxWBSF8uII33k+i0D6UU0lUidLTCL92XX9SAqB6DXF9CJEPazkRcQP4GJ/fptOypC
 nMtbrf4/2w0HXMTSz/EIA7JpForJDl7tyjOvyjCudU68dnMH804FiPtCMcYAvvUxO24x
 HcNToqEM26AANN8fC2WAUuxsl15fqEyROx11KcLI6bEn+T25LRj8AZ4QV2O4Pap8kOQd
 uKT/y3vGS6TL4yBUKPju6xac90UlXHDmybp4lJTsY0gi8qJuMow3O2X/bSSReGLL3XS5
 1a+A==
X-Gm-Message-State: AOAM5338hcR6fGi6ZyRwUDi67RzukqoprhJajNnQtl03UFOa8N8/wKp7
 FScxVT2jkSJLufeWZ6Jr1Q==
X-Google-Smtp-Source: ABdhPJyJX8e0PqvBYgviZIQhJ5tFf72HUF/I6WzXXmCGSLWifq/a+D0Xu4XCts1pXdbno59mWS+N1g==
X-Received: by 2002:aca:1913:: with SMTP id l19mr1257653oii.92.1628875676085; 
 Fri, 13 Aug 2021 10:27:56 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f3sm439999otc.49.2021.08.13.10.27.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 10:27:55 -0700 (PDT)
Received: (nullmailer pid 3714764 invoked by uid 1000);
 Fri, 13 Aug 2021 17:27:54 -0000
Date: Fri, 13 Aug 2021 12:27:54 -0500
From: Rob Herring <robh@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Felipe Balbi <balbi@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Balaji Prakash J <bjagadee@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>, Jack Pham <jackp@codeaurora.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/6] usb: dwc3: reference clock period configuration
Message-ID: <YRarmizUtzIunV1P@robh.at.kernel.org>
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
 <0e99e3d453547ad2a8f4541090a03f3c80b80332.1628085910.git.baruch@tkos.co.il>
 <87lf5h5mc2.fsf@kernel.org> <87v94lxpb0.fsf@tarshish>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v94lxpb0.fsf@tarshish>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_102756_754825_EF2C9AF8 
X-CRM114-Status: GOOD (  16.68  )
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

On Wed, Aug 04, 2021 at 05:22:27PM +0300, Baruch Siach wrote:
> Hi Felipe,
> 
> On Wed, Aug 04 2021, Felipe Balbi wrote:
> > Baruch Siach <baruch@tkos.co.il> writes:
> >> @@ -1371,6 +1398,8 @@ static void dwc3_get_properties(struct dwc3 *dwc)
> >>  				    &dwc->hsphy_interface);
> >>  	device_property_read_u32(dev, "snps,quirk-frame-length-adjustment",
> >>  				 &dwc->fladj);
> >> +	device_property_read_u32(dev, "snps,ref-clock-period",
> >> +				 &dwc->ref_clk_per);
> >
> > I wonder if it would make more sense to pass an actual clock reference
> > here. If valid, then reconfigure the period to the value returned by
> > clk_get_rate(). It would avoid yet another DT binding. If we make the
> > clock optional, then we won't affect any other platforms. The clock
> > itself could be a regular fixed clock node.
> 
> Thinh Nguyen asked to add a dedicated DT property. He explained that
> clk_get_rate() does not work for PCI hosted dwc3. This is the most
> complete summary of the discussion:
> 
>   https://lore.kernel.org/r/c797e9cb-cae6-c0b6-5714-169c2ad79d32@synopsys.com

PCI devices can have DT nodes with clock properties too. Or use the 
VID/PID to infer the frequency. Or use 'clock-frequency' property.

It boils down to we have lots of standard properties for clocks and 
clock configuration, so custom properties are a NAK.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
