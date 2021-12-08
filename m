Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D024BC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 19:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SqpJXUx28Wzj+Kg7pKO4sXK0qZbhq3GTehgj75X0n4=; b=vIqUCWHGDzQ6sm
	dHcFbKgPvDxS8L3QXqInWkkFckcIHZnloGmXShECfe6qSZbCzDPKkbk9HXVrIncUbUzdJmWt0bhRG
	EW9PeJLpTfXuhKuNxszegKoHz39smjJpgs6I0gWqOpgB1TaiNko9tkCH5wzk+OtHC8xlR0YdSZwtV
	1huBOFpFV5H7eVturLWhca5vkhlM9jJA1XM57wW2h1aRs0l4C0IDEP3XbeL7Rq0j81DG7KNkC/ycV
	QtQgdsdqK7xJbe5fYGRkOmpi9r5YsiznvP70u7nhVU73dXQyIAS3rGEYds0njQayrOFC72Q9J4ykB
	mUq2xhweDmXfpz1ArivQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv2cu-00E3kH-76; Wed, 08 Dec 2021 19:29:16 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv2cr-00E3i7-GU; Wed, 08 Dec 2021 19:29:14 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 x19-20020a9d7053000000b0055c8b39420bso3820417otj.1; 
 Wed, 08 Dec 2021 11:29:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ckCjpw9Wt0QzAlHPhX31N143mOL1S19Il2QDIOPqOCA=;
 b=MrIDmvR8fbb0LuxtWWKZ/rQdwckb8j05vFLF0GAIeCj6RK8w37/I/Auiupn6oHVKMI
 1WkU39JKge4QSq7kG75dbfio1nby03vqOPgSLlnS/kMGSlZGhWo9U6Ez3yX2BC5WFeIg
 uBLFYMNkdFkWpQHEqf2CTbUPffm85peZDotDzwLmc5lQdVF+C1dB9nI0ZDeYbROvF/YZ
 y6pl9z/DhH08ObvShD58Q8mGlwCx9zcsHfpxNxKBB0SC1J2QMECHfbju+Cqfh2PgX3dn
 NwVGhIdRY8iZLHRoaL5zCJLBr8HXLR3MYDSuAcewbxysQxEs3Nczt4+Qbx4t524nlO+M
 QKSA==
X-Gm-Message-State: AOAM533TteImRakXhQr5pKf/tPFuEi5XPs0Hb6v6jRCq7clrS2+v/LwO
 myDKPeNl+KkBeeHU6Q0d4g==
X-Google-Smtp-Source: ABdhPJx9k/ncHmytLAq0AS/b0iHXxpdv44SwlV2qYC2c7mdCzTDY2wF9gxBcriS93JNqHo6bhF/OkA==
X-Received: by 2002:a05:6830:453:: with SMTP id
 d19mr1365276otc.72.1638991752078; 
 Wed, 08 Dec 2021 11:29:12 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id l9sm589939oom.4.2021.12.08.11.29.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 11:29:11 -0800 (PST)
Received: (nullmailer pid 193603 invoked by uid 1000);
 Wed, 08 Dec 2021 19:29:10 -0000
Date: Wed, 8 Dec 2021 13:29:10 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: linux-kernel@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Vinod Koul <vkoul@kernel.org>, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Doug Berger <opendmb@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 devicetree@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 2/8] dt-bindings: net: brcm,unimac-mdio: Update
 maintainers for binding
Message-ID: <YbEHhk66WwiK3rbC@robh.at.kernel.org>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
 <20211206180049.2086907-3-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211206180049.2086907-3-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_112913_591206_ACAE9B64 
X-CRM114-Status: UNSURE (   9.94  )
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

On Mon, 06 Dec 2021 10:00:43 -0800, Florian Fainelli wrote:
> Add Doug and myself as maintainers since this binding is used by the
> GENET Ethernet controller for its internal MDIO controller.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
