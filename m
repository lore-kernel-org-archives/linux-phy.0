Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E7B7C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbQGRllCnX8h8vHAoM8wgXjTKbYZAWxlo06ONCC0LQ0=; b=Pt0mMsxoHj5ZMS
	rjGBAG/UGRPagaDIWJn3WtxtKq5L3xbXQKfpn8ZMuKUdgLImwhHjso0D11BSYFL+roT6yo7tGDzjf
	+dtp0EkEQ595+W3gV6/DGPShcO8zMo1ejGIuel7kJGUNVNywgSTcpoX/dxhnM4fvKkurQ3/kvTMo6
	ll9nvlllyfFDulZiRejiyQo+IIrkICvqmGwtOLrDZrXHHto6XDmSxuVkV4qG8c76OSAQY0kMSetiN
	/QqaC7ppUFNqwKM0eHUYAr3OIUYqYFxd3TSADyaQ61o8IsYBglgroUOWoEetfWwcN9ynHXp87oedw
	DX+LfncMd6ym1zDLn+eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvb3-001tWb-H2; Wed, 09 Feb 2022 22:37:57 +0000
Received: from mail-oo1-f41.google.com ([209.85.161.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvb0-001tVt-WB; Wed, 09 Feb 2022 22:37:56 +0000
Received: by mail-oo1-f41.google.com with SMTP id
 189-20020a4a03c6000000b003179d7b30d8so4227948ooi.2; 
 Wed, 09 Feb 2022 14:37:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GQ1EzJlmJd0ZHanWZ4n0qIae0fuVJzefydO25vR7qkU=;
 b=qWczF60l/UoHsxbyKLpUKlxZgzKc3ABhrU3rYnle7bSc7BGLnoZmnnb45VfORD0Bmz
 X+h6yDXGsJoXpff7UFt4SK4SO/IKZx6HaqnyhnDW6E/MI05caINUlqmdmmYsXQLqrpxx
 63kOSpED6NqKqzdx2nGvATvBzP525qPzdw2n1MADKmzkQoPopIKFwUJEx4xIj+c+9W2j
 PHfY3/e/TNaKXvS2QWboPsjGBmoE6YtZMWghGKHJZ6uHyopq48c0ze1ss9/8kBta48jM
 IpEVU2I/ws6j/1I0IJu9tczgTpSDNZ/YISExdh/7gUpo4BeGReYIOVr5WETNA0hPSiRd
 vShQ==
X-Gm-Message-State: AOAM531WZLW+ZBKorMT3ZFnyvE4Se6DFSfLcPbCWCXC+z3SagBef7CK+
 MTX0iWZKchOEX4BGsRqpZH+0bRAgTi6h
X-Google-Smtp-Source: ABdhPJxT+1Zv0qJNE+ACROtN1X/wUItX4PE/QGNxPvgeCA2Yr/Tcep23vnamSkV/AfSRHRw1HzGSgg==
X-Received: by 2002:a05:6870:b146:: with SMTP id
 a6mr1663767oal.149.1644446274132; 
 Wed, 09 Feb 2022 14:37:54 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id ep17sm7669756oab.21.2022.02.09.14.37.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:37:53 -0800 (PST)
Received: (nullmailer pid 1070995 invoked by uid 1000);
 Wed, 09 Feb 2022 22:37:52 -0000
Date: Wed, 9 Feb 2022 16:37:52 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Joonyoung Shim <jy0922.shim@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 David Airlie <airlied@linux.ie>, Kyungmin Park <kyungmin.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-kernel@vger.kernel.org, Inki Dae <inki.dae@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Sylwester Nawrocki <snawrocki@kernel.org>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 03/10] dt-bindings: phy: samsung, exynos-hdmi-phy: convert
 to dtschema
Message-ID: <YgRCQKqYEEzGc4+N@robh.at.kernel.org>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
 <20220208171823.226211-4-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208171823.226211-4-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_143755_055769_043EE3E0 
X-CRM114-Status: GOOD (  10.14  )
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

On Tue, 08 Feb 2022 18:18:16 +0100, Krzysztof Kozlowski wrote:
> Convert the Exynos HDMI PHY bindings to DT schema format and put them
> next to other PHYs.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../display/exynos/exynos_hdmiphy.txt         | 15 -------
>  .../bindings/phy/samsung,exynos-hdmi-phy.yaml | 44 +++++++++++++++++++
>  2 files changed, 44 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmiphy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
