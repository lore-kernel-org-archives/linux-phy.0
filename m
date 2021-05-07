Return-Path: <SRS0=/0rM=KC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A23AC433B4
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 22:13:02 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3063D61377
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 22:13:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3063D61377
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9I3jQ+9BCGAAJ5q7Ua/KqB5qjvJK0UBxHH4AHdoI5bg=; b=EacZTSZ2OC08xLQNA/zFMwfNz
	voHe6Fq3DvFZQcSx+nV6BiF9kCO0DaAvS0Ga9w7M9mDEPllz0pVr4qbdK+0ssjZh4djw8hunOcBgr
	IvntT7XJyv4yPPPaK7s6PFeNV6/jIDd74f7WWe43UmDzQ7ytsUvReIB9lckuLGHjdb9JtPeQBPL5J
	kkpj7FSNGY6FxEUqc/TeVDO+1f3f9tQDuA+3bJlNko1+485C0j4HOSl3zYUZdG4XOlAWqJT+aAAyh
	E/BPg6kVTyjENmVvFUe4aW/UxvBDqPC8yopVNtHw8/f7obVqLjceiSfHnuNSsW+5KONphZosRvjXA
	Ptr8Y37Kw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf8iS-0089F3-Mt; Fri, 07 May 2021 22:13:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf8iQ-0089EJ-B3
 for linux-phy@desiato.infradead.org; Fri, 07 May 2021 22:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/8r+Lbr0DfTNwnY+IjwEBCPWL05D0ozGUpSsW0fUkTA=; b=Di5t2SJZtUlDc3ocDuk2ejUq14
 yet+tchhliBd0uqqNiQ5L3SjdMG10SoWASNOZb8toDIEkNx6XlZyL4RzTa7+BD6zlqXdLCjdi3ay5
 987ye5KCbeyIQJZTrCkSovxM8KltrW9SW/T6bHUbmFiEHfPOZNXSpkyFGkJxiW6S1M1RvHVU5AKQq
 zLcaVlREOasN2t+fxxeloNScruP5ZWVLFmPgyZot+AVjarMF3wx8vBPjAZj3rtEd8Surag5MJlWPj
 1xFyMKzGnWdp7FUpNYKXzxRJiVz4izmbtAc3dFVSGlGFDZrLROR/kxuSHduuPBYNhcZLKMK5F2VBB
 +lHSR4HA==;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf8iO-007DZv-04
 for linux-phy@lists.infradead.org; Fri, 07 May 2021 22:12:57 +0000
Received: by mail-oi1-f172.google.com with SMTP id k25so10073657oic.4
 for <linux-phy@lists.infradead.org>; Fri, 07 May 2021 15:12:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/8r+Lbr0DfTNwnY+IjwEBCPWL05D0ozGUpSsW0fUkTA=;
 b=ANJtn5H7gfp7YoXaut4celjJhtak1xo+MyIQ+x1SUsSbY8UF0grpBV1qyv12VTYgL2
 9e6azfrTeJ5Bp/7bd7RvNTRtwrwjDHdJraYuPyRE7hho7v3dy1npwr77BYkOVTaEFpYj
 kUX9/OEc4ymEJXExfXx5W323xLnoSe3lsf4dHD6meuDW6YQpnx7honKTdwF+6Umn60di
 6AhyOhNCiQ6aue2bD7PVTBZRb2Q7e3lNrjNNPB8UiCW7QST2Smx0qLhMudv4FCn+t6k7
 tnR8AD/Y4Pk9YIbiG94vY93RHr27UZ5D2EuTM8svxCS+h5k9/rqLrRgvL8RWtjgrUewE
 051w==
X-Gm-Message-State: AOAM533ydFcgsZI1IrykwE7DjDHzjpnRDwIkobw9oF4NfB7lgh3yN6PS
 njor4DQtVLkK9Shdfv6O/w==
X-Google-Smtp-Source: ABdhPJxzRsysvH1mVPYlJJZQwPKP4H/r7r7SGEWfJPxQDIkZwWiZcYqZIO62Qahjy+LCSFmPQbFMZg==
X-Received: by 2002:aca:4dc3:: with SMTP id a186mr10715266oib.22.1620425575033; 
 Fri, 07 May 2021 15:12:55 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 88sm1445861otx.2.2021.05.07.15.12.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 15:12:53 -0700 (PDT)
Received: (nullmailer pid 2989456 invoked by uid 1000);
 Fri, 07 May 2021 22:12:52 -0000
Date: Fri, 7 May 2021 17:12:52 -0500
From: Rob Herring <robh@kernel.org>
To: Wan Jiabing <wanjiabing@vivo.com>
Cc: Yuti Amonkar <yamonkar@cadence.com>, Swapnil Jakhade <sjakhade@cadence.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, kael_w@yeah.net,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: cadence-torrent: update reference file
 of docs
Message-ID: <20210507221252.GA2989400@robh.at.kernel.org>
References: <20210506114940.22215-1-wanjiabing@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506114940.22215-1-wanjiabing@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_151256_057482_9437D384 
X-CRM114-Status: GOOD (  10.13  )
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

On Thu, 06 May 2021 19:49:39 +0800, Wan Jiabing wrote:
> In commit fd7abc3c5b87 ("phy: cadence-torrent: Use a common header
> file for Cadence SERDES"), phy-cadence-torrent.h was renamed to
> phy-cadence.h. Fix it of the Documentation.
> 
> Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
