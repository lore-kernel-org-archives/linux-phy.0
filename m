Return-Path: <SRS0=QV4a=KH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.4 required=3.0 tests=BAYES_00,DATE_IN_PAST_24_48,
	DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EBF2C433ED
	for <linux-phy@archiver.kernel.org>; Wed, 12 May 2021 20:10:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3EB2361421
	for <linux-phy@archiver.kernel.org>; Wed, 12 May 2021 20:10:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3EB2361421
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q2GmgPU+xLydUTf65/xIkD4axNbMh9qaOx3gDzuE94w=; b=IhH7zl9zn7c9XBehEXKrx4g8f
	aB9gbNPMzU0xlZIWiAaISWi27assy4nqEJb7QROJX2TQkS6jPBTrqiH87fyxX3sOGR4OIJhVIy5wx
	gzryK7iB9lCaFZJLFiDp74FsRVoOSAGvhj4P3Qf5N20CV6GgoxsJNrSM4PhAxzEheZPiKHgTTwkaL
	foklLWV1rsiwKNVe4kP37ZlxgS6cMnMY6C1Qo3xrOlPbNAIA3stUaoz5fmc4YnYuknGgvA0DCf+K2
	mCeP4+5pBLBw++FKZjeQxVRgcQ+bGOHx+m1rXY3I1fPWXnb5kRjJScB/5Nf9de8NhYX9rmS4PBiuA
	QeVw4FRDQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgvC2-003sBu-5T; Wed, 12 May 2021 20:10:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgv8D-003qvI-5o
 for linux-phy@desiato.infradead.org; Wed, 12 May 2021 20:06:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=V79K7EYHwh4vwW2Epus8hykY/hGr5rIoY6s4Gv58GmQ=; b=22C99Zql3OW6uy8D2Mc4hinpK/
 F3Bj6W78MKnoDCg6q4e96vv9bLOOj5uXx2qMht9Olel8loVuyjOE5a2m5KDfxRpUzFccNjOxWWm1J
 0Kbyv4KwL3tUacXtweORuMeRe3wbeus71FHK/bUyqSNh5fqwxW+F31NkzNI9jijuINjiYDQSIJ5Ck
 0bbJ39pVMBd0Ia3TvU0995dr/KRlRtE5ns4LUDnzfRR1qs3UTZJ4mJsZd5oU1UwiSsdOoA1bOGC+q
 EDlph0XKMrebrJz4O0fS3iC2BhANNn/YbxOBTgihBslaKMP3NYnHC6I2RdyV1hnqOCDzoqlLUS3BR
 MW2x11hA==;
Received: from mail-oo1-f42.google.com ([209.85.161.42])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgv8A-00Amo3-Ml
 for linux-phy@lists.infradead.org; Wed, 12 May 2021 20:06:55 +0000
Received: by mail-oo1-f42.google.com with SMTP id
 s24-20020a4aead80000b02901fec6deb28aso5206969ooh.11
 for <linux-phy@lists.infradead.org>; Wed, 12 May 2021 13:06:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=V79K7EYHwh4vwW2Epus8hykY/hGr5rIoY6s4Gv58GmQ=;
 b=uDvBs8pYOPzS/GOpD1I4OHoI+UOwgMAnxYVboZgv60y3eGc37c5DqVG7IXWKFRzmyl
 sABbKUz0MuVP4Nu2Op/8dyg9Fc7Hd0f0D7ROIbQtF5wJtDUt9nLtlzZo6jSkywvN+Px7
 N2sgGjpVV65PaFGoVE4rg4WRZdH1VorThKze2gdgM2p1+96MUU/ZXu6NUaJwCQwkGLOQ
 6lXi0+rtiFBy6n7N8nx0J56hs4ynMudPnRFt31l7dFxG9rTgBR08JOgy16XaBZdXTenZ
 +/U8sY12fo6jEyuVJvRdkNd4AIqVt0gFMh+cdcIHW9Kh6KZbdfB7HSfCt7e4MZbbJXJW
 krVw==
X-Gm-Message-State: AOAM532PhviO1PpSgxAJQ9fEOdpbUCMvTO6M95C7QIFRGRAOxZZ0LNOr
 7xwbuN4zeJCeWiJTE1vuZg==
X-Google-Smtp-Source: ABdhPJw5X/WSyRAOB6/qwI3+01jKj0Twy0yV884K/cAxmrCSwH4FZSWYdBAzA3pf+oB93iF8MVLi0g==
X-Received: by 2002:a4a:9b0b:: with SMTP id a11mr5570041ook.73.1620850013581; 
 Wed, 12 May 2021 13:06:53 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o80sm215040ooo.41.2021.05.12.13.06.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 May 2021 13:06:52 -0700 (PDT)
Received: (nullmailer pid 2496314 invoked by uid 1000);
 Tue, 11 May 2021 19:50:32 -0000
Date: Tue, 11 May 2021 14:50:32 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-renesas-soc@vger.kernel.org, Sergei Shtylyov <sergei.shtylyov@gmail.com>,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: phy: renesas, rcar-gen3-pcie-phy: Convert to
 json-schema
Message-ID: <20210511195032.GA2496284@robh.at.kernel.org>
References: <0301c3a7dae9afde115b6437a11c23ab85cb8b75.1620648490.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0301c3a7dae9afde115b6437a11c23ab85cb8b75.1620648490.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_130654_761440_1E9BC127 
X-CRM114-Status: GOOD (  11.42  )
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

On Mon, 10 May 2021 14:10:40 +0200, Geert Uytterhoeven wrote:
> Convert the Renesas R-Car Gen3 PCIe PHY Device Tree binding
> documentation to json-schema.
> 
> Update the example to match reality.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> I have listed Sergei as the maintainer, as he wrote the original driver
> and bindings.  Sergei: Please scream if this is inappropriate ;-)
> ---
>  .../bindings/phy/rcar-gen3-phy-pcie.txt       | 24 ---------
>  .../phy/renesas,rcar-gen3-pcie-phy.yaml       | 53 +++++++++++++++++++
>  2 files changed, 53 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/rcar-gen3-phy-pcie.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,rcar-gen3-pcie-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
