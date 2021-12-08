Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46DD1C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 19:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiWkiHuwCohIfErw0+3LhcYDLaGIkNT4MVtKhwEUqt8=; b=hEEheM59QYQU+f
	//TWMONpknAa+GzWPiLZTOvQuxN04A+DpiRu5dqUrxsTSk5D7Pvduhhs2uImUK7NvEUDSPk1jEwdI
	lTxYp0P0s27a+7QlTDeyIMoR1+VClf3s/DRdIMdDtm0zqqizVizM9zOyZyVxapUvzEqglTIw1iKi8
	PHcI4svXhxDKLvEfQ8ZqtdsCzl1QZDXpSkQuLx0CKSWxPjATkdGP+QoPTAsEgzeIsh4ldabstBb/6
	jqaT8XHL/HdWNxDW+IAf9iqTtiEnmvyYnNMkVvVtDvc+fZfR0vXxZSxfepPUxJDlqEmNHARtd1lOC
	RWi0axZnopGkxx3Ufpyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv2cL-00E3XN-NV; Wed, 08 Dec 2021 19:28:41 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv2cJ-00E3TL-J2; Wed, 08 Dec 2021 19:28:40 +0000
Received: by mail-oi1-f169.google.com with SMTP id r26so5480049oiw.5;
 Wed, 08 Dec 2021 11:28:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ei1/bJy2vB9qPW5/d6507cGAxG5aCdrek2IZnuOeREY=;
 b=Zi+6BaLNL3uKc8eB4fXoEF237nkobCP5yb9EbiHR0star0N/NpliR0tam1qFRl+UHK
 YPKiTIVC85JV1PjRo+JcAh3dmPpT50IHKR9EIdNEsdckvxAM67aJe36V9hpOwmfNepUf
 WEnYGLtnqH6hwcc5AVtqC662zQAGL/kV4MmCxxezZIYXNg1hOeTyZLO1C0fiAUFHr8Pa
 KeHPBWZXECzti59y1AwLViKOsOsr8uf+DeEkkOspxeHo1/REoBiZF7naQrvp1HO9zSJk
 47WJACc2mn0BNHqjfAxt4PAJmFRhL2v5jrMoHFI/KvCd36V1OGvfUzFYZh/ycY3i9kLK
 WrgQ==
X-Gm-Message-State: AOAM5316sX5JbHEigE1tLz4OKuBWFdMrgNnFUT6rzMTE+p714oEkz2tY
 mUgaOmiqwXcYQimqlP+b2g==
X-Google-Smtp-Source: ABdhPJwF+jq77ny2CvN0M9DJhRVaukgUgnt5T4DciezsLcCNsXh6daUT1e0/rDKNjYuM9PQSC80Bww==
X-Received: by 2002:a05:6808:14c4:: with SMTP id
 f4mr1435157oiw.76.1638991713363; 
 Wed, 08 Dec 2021 11:28:33 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 109sm603156otv.30.2021.12.08.11.28.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 11:28:32 -0800 (PST)
Received: (nullmailer pid 192567 invoked by uid 1000);
 Wed, 08 Dec 2021 19:28:31 -0000
Date: Wed, 8 Dec 2021 13:28:31 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Scott Branden <sbranden@broadcom.com>, netdev@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com, linux-phy@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Doug Berger <opendmb@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/8] dt-bindings: net: brcm,unimac-mdio: reg-names is
 optional
Message-ID: <YbEHX3OyNLD/LuPZ@robh.at.kernel.org>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
 <20211206180049.2086907-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211206180049.2086907-2-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_112839_649590_75545C56 
X-CRM114-Status: GOOD (  10.82  )
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

On Mon, 06 Dec 2021 10:00:42 -0800, Florian Fainelli wrote:
> The UniMAC MDIO controller integrated into GENET does not provide a
> reg-names property since it is optional, reflect that in the binding.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
