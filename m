Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99BF3C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 19:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dby4Yf/IUvlTxaOBHcYryWuYRy7klOsMWGFujXed5mg=; b=YuHuOWqh2DbYhX
	Lp1LBC/UY2IQV6NaYK0pl5hx4JZgSWDpsYnz1wxg8bmp0FzePPIn8XZDf6qJXLwZaQ2stsyVhjV06
	HcK1Ib1yYZV7cb7kYSNXeahknvL3uCasyw3VDbTteZrzewd2bwCFJnyuK967/QLYb0cPbCIsGHkNC
	x1W+zbvZPm6zY4yRV6wYw72ikoUJzXq0X4BkAO1qdAFUlPLNGd7wAZCtleSZRaj1eRuV3bRWzeFUm
	wR6JR9urLFZyctiDhxTqVqB4lPfBcgB48crA/TS1IKPYvnVUkuwPG+3snYC/AVQVRtif2gOFj/EUZ
	XkwJ1Us2Q8gfPw3+SJSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv2hG-00E50W-3Y; Wed, 08 Dec 2021 19:33:46 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv2gx-00E4qZ-6j; Wed, 08 Dec 2021 19:33:28 +0000
Received: by mail-oi1-f181.google.com with SMTP id be32so5433311oib.11;
 Wed, 08 Dec 2021 11:33:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gEr7R7LXCR74CnNVPji4NeZtbokuYpc7aLJyE/t7JUE=;
 b=x63QOwWkJnT2o9RJaC9zcPUulPuTtf9kEpZRdc1q0ngjcScJMooGejf11VkIGI/AIx
 43OcT6mLhQqP6JfAgJRHqLKk0dSk3YOuJu1dUmNha9VdNWkN8ZJze6j345iz+fjrhAMM
 Tck14Zm3RJTUgW2g6o/hmWBc1Gkj2ly6bNAkL883vWPNDqDQ9cS+9aNPuV4nop6bt6C0
 8bfXQnpHpKPe0GXNemR7TkNIKEIOUYGyqUkyxOA05w401nvwMSRsFg1MkXgrfJM4ZcMk
 pP5p+9uDlRMXcUODoRzoOaSTWBqWLpH2giZPyNn/Cxv4aL0oMzheWMd1RKMbnkyITwYu
 LC7w==
X-Gm-Message-State: AOAM531ERGhxCiyCcKIPMgVp5t4zUx3WBSNTMRMXbCKqQIuM3RhutIYi
 pJeYegFd24VkbewfEVxgwA==
X-Google-Smtp-Source: ABdhPJyeAyWxo9NKTy8y/nPZqMar6/k2i8dk3QurnUQY2Bp7EVojfeoc1ke0WPcKclsD7zxFzVY7dw==
X-Received: by 2002:aca:2115:: with SMTP id 21mr1368511oiz.25.1638992004407;
 Wed, 08 Dec 2021 11:33:24 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id y12sm936202oiv.49.2021.12.08.11.33.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 11:33:23 -0800 (PST)
Received: (nullmailer pid 199354 invoked by uid 1000);
 Wed, 08 Dec 2021 19:33:22 -0000
Date: Wed, 8 Dec 2021 13:33:22 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-kernel@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, bcm-kernel-feedback-list@broadcom.com,
 Doug Berger <opendmb@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Scott Branden <sbranden@broadcom.com>, Jakub Kicinski <kuba@kernel.org>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/8] dt-bindings: net: Convert GENET binding to YAML
Message-ID: <YbEIgtfBXJoiWOdV@robh.at.kernel.org>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
 <20211206180049.2086907-5-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211206180049.2086907-5-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_113327_268836_6BE3376E 
X-CRM114-Status: UNSURE (   9.54  )
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

On Mon, 06 Dec 2021 10:00:45 -0800, Florian Fainelli wrote:
> Convert the GENET binding to YAML, leveraging brcm,unimac-mdio.yaml and
> the standard ethernet-controller.yaml files.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../devicetree/bindings/net/brcm,bcmgenet.txt | 125 ---------------
>  .../bindings/net/brcm,bcmgenet.yaml           | 145 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 146 insertions(+), 126 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
>  create mode 100644 Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
