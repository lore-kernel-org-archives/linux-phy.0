Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57288C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 13:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GliYbInpprqSDQ7ZXdIcg45tD3WowuRRaEjcDvrlxJo=; b=4picjfIVbOyGSx
	aTQzEXxyBqfNltI/ZjsSqGWJADk4BxV6OOa+1SCEjgQIbZKPrSLdXaNXJwVTJIeiPgpE8mFZiC2Nd
	DJuNR4FCcyktwGv5jCKsmt1eb5msMM88rYZP3VZECvUKAn/H9nPRcSdbduL+VGzWf6YjpscBtNYk/
	4CwdR4KfvPrndarBVUah2fkWNjSXfiCzN6IWaMfjG6qzf8nTI6yhTIh+A/4I464XAZj/RLwK2W7uR
	WN2DLyfrWRVGF0imU2m0VcNGYSNoyMXqUdest39BONvbX9fofQV2HOa3GnipaZwxx/hGy9sSpN41Y
	QsJcsFrA/4Qsz2gRVe+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIWDw-007SIB-OT; Fri, 11 Feb 2022 13:44:32 +0000
Received: from mail-qv1-f43.google.com ([209.85.219.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIWDr-007SHB-3Y; Fri, 11 Feb 2022 13:44:32 +0000
Received: by mail-qv1-f43.google.com with SMTP id n6so8493891qvk.13;
 Fri, 11 Feb 2022 05:44:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6lhbJS0GQ8mSlFcNag0PBxP0WGnDTDUPZws9Tz2PKEI=;
 b=n6mTX/phZkHPjaob8G/7vcpgrV299xYHT9+y3baN6YYpQXsdRhP6BsSKqRkBbHFXIh
 yuSSuai/1yMyVY1Q7H+FGxxL/LC+ZXG4JvQcBgghLiBFcr50qZvb2cyrqnijVFUhIbn8
 /8tMzmm3Z9JrfSx39SdDHaOjYwbtMPwk+pIXOXdr4UNGtQpHvwsKpgtXwZCa3bR8CSFF
 KRKdJAcCeHcRIbmptY9dkuj+hK2e6y58Zf6mjka7QhkbGNOoqew5rKkQj4j+t+gJxD9i
 xboccQGesnBqvEYfPT/abfmX+gKzXzy5dd9VTh9TVSx8A2GOWMwSgOM04jNfWABC+Zxy
 ZIWA==
X-Gm-Message-State: AOAM532Q3waY6UpTNm5gKit0Q/H/L2SGo5uGyo7JiEgLkmFKG6LDgfqF
 gL+YhT7JkS2zRv8hhFRfJA==
X-Google-Smtp-Source: ABdhPJz/GQx4DrcuRyumqsUxwIwOhB2hk1F87XYv+KH6T6GL86RJ8Ae/elMqLbPnS9bSFeuk3m9bXg==
X-Received: by 2002:ad4:5be8:: with SMTP id k8mr1052760qvc.118.1644587066095; 
 Fri, 11 Feb 2022 05:44:26 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:20dc:156b:8f01:9329:d9ca:df6f])
 by smtp.gmail.com with ESMTPSA id
 e1sm3913830qtw.71.2022.02.11.05.44.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 05:44:25 -0800 (PST)
Received: (nullmailer pid 266317 invoked by uid 1000);
 Fri, 11 Feb 2022 13:44:21 -0000
Date: Fri, 11 Feb 2022 07:44:21 -0600
From: Rob Herring <robh@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Cc: linux-phy@lists.infradead.org, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 1/4] dt-bindings: phy: Add compatible for D1 USB PHY
Message-ID: <YgZoNXpdzTz4mh5F@robh.at.kernel.org>
References: <20220203013558.11490-1-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220203013558.11490-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_054427_163751_CB2663EC 
X-CRM114-Status: GOOD (  11.96  )
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

On Wed, 02 Feb 2022 19:35:54 -0600, Samuel Holland wrote:
> D1 features one OTG port and one host port, like the A64 SoC, so its
> USB PHY supports the same set of properties. Add the new compatible to
> the existing binding.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
>  .../devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
