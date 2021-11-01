Return-Path: <SRS0=aeVy=PU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEF5C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  1 Nov 2021 21:05:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E07E61175
	for <linux-phy@archiver.kernel.org>; Mon,  1 Nov 2021 21:05:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4E07E61175
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3frCFpbkJY/T2z0pqxr32u0zyg5OCQJScRfn2+0LX8=; b=huJugJ3sCxMEXi
	MiczsRLEnNC9BwT8IqZnBwy+PyNdNfuUp8buLY2UELisbKJ9x5s89WHrBTySE8Ri10eaT+Q5u8XBX
	Txacu8kHv4p/v7CupGu/5VT7e3wrwmiXVvz2C+wk+mHebaUf1oUcLvI0RnWuikqy1PlYyNKHVDIC4
	cYJj7f1OlUr3HtoJU9k0KQggHaFwbnf/9qeUdG0F6G35QxxnFy1/9kUHRQW9Jv8Js0dhPMK/g4n+W
	wPntKx2OgUY50eY5B4f4JPYcrPvvtl2OiBZLjYJd2L1RvNcb2pQzDPzZu9eVskLCwbnsKhZbPKcgM
	FmqTjas49leu2QW0uoFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mheUl-00HJvU-RK; Mon, 01 Nov 2021 21:05:31 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mheUj-00HJuu-N6; Mon, 01 Nov 2021 21:05:30 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 v19-20020a9d69d3000000b00555a7318f31so14988069oto.9; 
 Mon, 01 Nov 2021 14:05:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hF0gq7OZT/2n7lqQ8ZeIkQEJq8W0bUDrLpwtT9xTHAs=;
 b=KR2pC0mTeqUxCH5oOYHS7AtPHNK/cRwKuU1v8g2I103K3iCWpck3lKaJ+F22zBZXtD
 LS9jYOsRblWRfKdyZWHQNWIJrCp8I5YDDmUwNEWhBo4NEn7q4R8Xq4J5FJB7fx3OCIj2
 qlhPIVuCmaQ+u3ulRqBdl/PyAx72g1Je2kIm7HZ6xbA8nSzn//VnD6aQ9chFi5YRY0xH
 bO2rXY9r3hszNGQPJdKA2bjUIeyco9OORUUWcLTH4K6VISyED6HJjLioM6sV987RIORr
 sj8L4iJSuBW5k7X/E7HKp018IVgidYpvEvCDuNliSxH8wJMc0nsdkZPtCRxGTNIFQ8m0
 hc/w==
X-Gm-Message-State: AOAM53306vK/yKo63G4TqihiD9upBz8HuDLck23FFz9gWFd9NMiQd8UM
 ExJlHGqivsxtoDwawCjKTQ==
X-Google-Smtp-Source: ABdhPJzebc4mSKfiSbZ+OzwIzY6vJhGjC2sRd3/DsCnEvgX4/XYs7katMtMQ4C/Jr3FLOWKe45zeTg==
X-Received: by 2002:a05:6830:448e:: with SMTP id
 r14mr11514551otv.171.1635800728728; 
 Mon, 01 Nov 2021 14:05:28 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id q5sm4375431otc.79.2021.11.01.14.05.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Nov 2021 14:05:27 -0700 (PDT)
Received: (nullmailer pid 1056273 invoked by uid 1000);
 Mon, 01 Nov 2021 21:05:26 -0000
Date: Mon, 1 Nov 2021 16:05:26 -0500
From: Rob Herring <robh@kernel.org>
To: rashmi.a@intel.com
Cc: mallikarjunappa.sangannavar@intel.com, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, kris.pan@linux.intel.com,
 furong.zhou@intel.com, linux-kernel@vger.kernel.org, mahesh.r.vaidya@intel.com,
 michal.simek@xilinx.com, adrian.hunter@intel.com,
 andriy.shevchenko@linux.intel.com, kishon@ti.com,
 linux-phy@lists.infradead.org, mgross@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, nandhini.srikandan@intel.com,
 ulf.hansson@linaro.org, vkoul@kernel.org
Subject: Re: [RESEND PATCH v2 3/4] dt-bindings: phy: intel: Add Thunder Bay
 eMMC PHY bindings
Message-ID: <YYBWllS8/J9P24uI@robh.at.kernel.org>
References: <20211027115516.4475-1-rashmi.a@intel.com>
 <20211027115516.4475-4-rashmi.a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211027115516.4475-4-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_140529_780172_5DA39147 
X-CRM114-Status: UNSURE (   9.78  )
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

On Wed, 27 Oct 2021 17:25:15 +0530, rashmi.a@intel.com wrote:
> From: Rashmi A <rashmi.a@intel.com>
> 
> Binding description for Intel Thunder Bay eMMC PHY.
> Added the newly introduced files into MAINTAINERS file-list
> 
> Signed-off-by: Rashmi A <rashmi.a@intel.com>
> ---
>  .../phy/intel,phy-thunderbay-emmc.yaml        | 46 +++++++++++++++++++
>  MAINTAINERS                                   |  7 +++
>  2 files changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
