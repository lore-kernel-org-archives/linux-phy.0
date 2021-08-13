Return-Path: <SRS0=FSiF=NE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5E49C4320E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 17:29:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A1C4D60FC3
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 17:29:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A1C4D60FC3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9LVPBmJf2D4Tpj9n1iRk4tDnIrAUVzMa1Q/2SgMoRw=; b=z6mUc5em8D3h2+
	DzrdTJF05Q2FTzOOBgN79eTJzUGpuZ3wTNBRFIN34u3W6l7WZ5jyjOZtxlnJoXaftOQRBj9Te/tVw
	crexk83phzINLVv25jdD9gN0z/lWhUe+/DrgKFWJNIUTOjU3+jTv40vinDZFX3ZpB4Z3yP9xLYUTH
	YbMdzV9qprzqCoNZG97YLz/cUA+Aa9exI1Rxh2FDRkGEgbIzP6vXT/3CRZoKWYQlcHcCNkTVNHY5V
	pyBsRbzvGK8Mcv8EW4eGpuV/dLtv+SeBafngyLEMD5Yt7cErlCq13mLp6fb4nC0rCEQA0iUgkkxwP
	8iF675pRGL0NwS9rAzqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEazP-00DG5b-5T; Fri, 13 Aug 2021 17:29:03 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEazL-00DG4q-ES; Fri, 13 Aug 2021 17:29:01 +0000
Received: by mail-oi1-f174.google.com with SMTP id o20so16913350oiw.12;
 Fri, 13 Aug 2021 10:28:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4RofNjGEe960PbaFNWYB7a4HQj4cS5KJsEJM/sPypSc=;
 b=sg948tx8wjpfFrJIIahAvveRlVlKepWylUFNMY2qHuhvFcOIW0Twg1GNV+zO0Sh4fM
 2IOKB/dmc9rpDrXYUgJfXgb/L0rp7ATOxl0s/FJ5KD7+YeTTGxWOUM4fcJ9sQ7sYjJKk
 qgDOEOjKFYGhQb+zpbFBGWGgY9gRCuR49xtm/ateTzGQE2DzFb8Yoq1QXWk2nDb88k+E
 5/rlM/3SBwtHsomiiiRZPe8k7vvZI70gDvEdvqkC3lXc7H/olnPGrChOVgAPNGVPN2ON
 3EsnU9GfAEN6YjoiMinsPOmNqmNt3b2AcrUfQj7Ga3rrPLGN6m5ThlPis5pYjJd0Pj7S
 qJiw==
X-Gm-Message-State: AOAM533Z5qm9jFiHsGkhv798Nhhy7S9G7EP3yeXEaiW2nnSe4ba7tA6X
 OM6zv3M927T2cVCI1b809w==
X-Google-Smtp-Source: ABdhPJyLy4Ez8nPnFSd97CTZG/oHHrEYX8RwINs6TSiyZlzIjEMgjjqiYVRys8ape+Woj9mvsQvBdg==
X-Received: by 2002:a05:6808:1803:: with SMTP id
 bh3mr2886419oib.104.1628875738880; 
 Fri, 13 Aug 2021 10:28:58 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s184sm461309oif.20.2021.08.13.10.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 10:28:58 -0700 (PDT)
Received: (nullmailer pid 3716573 invoked by uid 1000);
 Fri, 13 Aug 2021 17:28:56 -0000
Date: Fri, 13 Aug 2021 12:28:56 -0500
From: Rob Herring <robh@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Jack Pham <jackp@codeaurora.org>,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Felipe Balbi <balbi@kernel.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-usb@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Balaji Prakash J <bjagadee@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Kathiravan T <kathirav@codeaurora.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 5/6] dt-bindings: usb: qcom,dwc3: add binding for
 IPQ6018
Message-ID: <YRar2LbE52HGr8J3@robh.at.kernel.org>
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
 <24ce7c1258790b35a08e14a1e79a9447c3fed354.1628085910.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24ce7c1258790b35a08e14a1e79a9447c3fed354.1628085910.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_102859_523556_70E912B9 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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

On Wed, 04 Aug 2021 17:05:09 +0300, Baruch Siach wrote:
> Add compatible string for Qualcomm IPQ6018 SoC.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
