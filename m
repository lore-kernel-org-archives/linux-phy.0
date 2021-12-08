Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59F0BC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 19:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iENgO5U1PtBQVKN9UllJ9hZBFfWlgLub+tO5hqAQ34Q=; b=d72oORS+V916zL
	atujeFgIvRG9R5lg8VFGMh45vcqLymTrbvOrHEve/LfdlVkzuOI1VEtQTz15TzA4+J31AaNca0wgp
	nOh3pzemjXxuohQiwOzy67PDmE41x7J2Frzl8LzWeci6uIEY10Hlo2R+BeOKFNA2wQJ1s2EOxN1L+
	5pRg6z/9yLTstov6D4obZz1ATpSvU3eNzQ8ebvLqUzFqvNL4IgPG2gOoetncPKTm5A9haiTBiM+Zi
	bzv/hzUVxRlwUcuQ5Lln8GkQQmOGXyCh9wHVUVzcPxMj8C7PYLfJNKuYHCsa9HAL+Ikh2z/WDDaYC
	S5F50tvCm/QdULXlwUoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv2w6-00E6MD-Pj; Wed, 08 Dec 2021 19:49:06 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv2vs-00E6Hy-IB; Wed, 08 Dec 2021 19:48:53 +0000
Received: by mail-oi1-f172.google.com with SMTP id be32so5486496oib.11;
 Wed, 08 Dec 2021 11:48:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DNKlr97kRI/6nhVOG+e5Z+GHjIHEGKClnCRcCNNbhUE=;
 b=rndwmHvrhfZ7Zvzo7bb2YYF2FTYpE34jhHk6DBbMkTxK0iEa8xYLrpiKppLsKBvowh
 oKHCWYyCCbQccLMqAPtSkdVr2fKYh0Yf/BuOiCbNcnFDaX3Kdyke8Ir7HbiRuIaRBcoi
 DMlnOGvlTnD2MD5HjvZBglSOKx7GDpQufxcMmodqPUplH9E9UlZcR0vkoP/XZBz2CHmV
 +ivPkshEzI5CsrMUbvtMnJolahelUguAGcpcrKKkcS+QIWXThy0NxPlwML44xNuN6nEl
 471g89EVN5FW8fyNXtX/4/86N0Bec1DnV037X6A2vf682tE62qEDOlKm0VKk/3DKIPjQ
 378g==
X-Gm-Message-State: AOAM532Scw3Fz34F46b4mJS2sCuwnulL5snH68gi+uS8dvrzJ6aKVEm3
 PtDZz94i5bPkzeHpjESGmw==
X-Google-Smtp-Source: ABdhPJzeZNFK0Xcs0RsDaTj/9muqeY/qMWnlugx62E78/SPVgs6XDFlLG9YMlKxL4JWye14Zc2q3eQ==
X-Received: by 2002:a05:6808:13d5:: with SMTP id
 d21mr1446267oiw.175.1638992931717; 
 Wed, 08 Dec 2021 11:48:51 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id g24sm642533oti.19.2021.12.08.11.48.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 11:48:51 -0800 (PST)
Received: (nullmailer pid 256083 invoked by uid 1000);
 Wed, 08 Dec 2021 19:48:49 -0000
Date: Wed, 8 Dec 2021 13:48:49 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, netdev@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Scott Branden <sbranden@broadcom.com>,
 linux-arm-kernel@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Doug Berger <opendmb@gmail.com>,
 linux-kernel@vger.kernel.org,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>
Subject: Re: [PATCH v3 7/8] dt-bindings: phy: Convert Northstar 2 PCIe PHY to
 YAML
Message-ID: <YbEMIQVVr0rod4c+@robh.at.kernel.org>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
 <20211206180049.2086907-8-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211206180049.2086907-8-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_114852_628489_E276A564 
X-CRM114-Status: GOOD (  11.91  )
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

On Mon, 06 Dec 2021 10:00:48 -0800, Florian Fainelli wrote:
> Convert the Broadcom Northstar 2 PCIe PHY Device Tree binding to YAML
> and rename it accordingly in the process since it had nothing to do with
> a MDIO mux on the PCI(e) bus. This is a pre-requisite to updating
> another binding file to YAML.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../bindings/phy/brcm,mdio-mux-bus-pci.txt    | 27 ------------
>  .../bindings/phy/brcm,ns2-pcie-phy.yaml       | 41 +++++++++++++++++++
>  2 files changed, 41 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/brcm,mdio-mux-bus-pci.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/brcm,ns2-pcie-phy.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
