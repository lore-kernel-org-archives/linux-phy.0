Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 656ACC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wCKII6Nayhn8sw26VzYN4QUCiROlI34cclgB1JQTDE=; b=P1UCLKLxlc6L1k
	d9P50PPTBtNpnyGqKx2XFmampha9CnTyU8vj3XP8XomfWTFu8wfju+PV80IFMYU+JUKcAf3HRlXYt
	+Lvtbas1inZoqbVg2oQtxmf3f3JHKxO5xVnsG/Tx3Af2XN1pgPWx3lGBiWDMyByC3zBvOtHV1fV4y
	wXplyAIlAdqHr/hgvwG/YXUvjPNNaNIYLfBN6SsAr9THQerNzFnSjfWWHKRqrRoFXKSA6UbIT1kml
	w68Z+rqx4bp1I9NeeZIWnV47mP2q72HjSQ/3Z5mYiMDJUIeGe9u+v5Ez+X5SZpOShTHon5eOuPvJm
	rVwdv/iJTXwQm3eY8kpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv2dU-00E3wb-PU; Wed, 08 Dec 2021 19:29:52 +0000
Received: from mail-oo1-f44.google.com ([209.85.161.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv2dD-00E3qE-Q7; Wed, 08 Dec 2021 19:29:36 +0000
Received: by mail-oo1-f44.google.com with SMTP id
 d1-20020a4a3c01000000b002c2612c8e1eso1144067ooa.6; 
 Wed, 08 Dec 2021 11:29:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AQsCNGRp1t3DJgJLxOhyX2OmCbSptGHddbgapeoW8vc=;
 b=eq5GSlvp7zAb8zb0TeBP1rfnwx0tQR5KUtYKb516+b/U5Uvb8qDdbb8sARfzkvgwzS
 pZW1bZwUVzL6RsAzgVC6K5yYaKmkETzQKayZDBkxlxO2hXQf0OPpUy8K8wD4HuKtyEp8
 IATsE58OmsAbNLQAgis24iSjB5GMxFnOVREsaWazr5nG9Ft1W8N+JoZM2PXAcSTuET9x
 LzHBdB9Pjw1G3AYMd2RcFsQrnzsgC/aq8mNWqNkoNJ+abqjlVk+qhwVLdLEmiCq7ogZ9
 RbQjYZPWepJnu9xcHYR2a2oQPtTjox4lFtzSjgVHFAqax+Oz6D3lIYZFrnVdKXIZusJF
 hG/w==
X-Gm-Message-State: AOAM5339FrxK9ZWvNvyoHnJrNAbKdaoEYt2/zVP01WRaXJ+hoCZWSu0r
 EFUJQe4EUdO47iKNSfs91w==
X-Google-Smtp-Source: ABdhPJwcUQTGojrCz3TdV3bF5zi8CK6zzrD2t+T2AWQGnASxlzesKCmpf8JZueF25dzONmo5122rnw==
X-Received: by 2002:a05:6870:2191:b0:a8:8536:cbfe with SMTP id
 586e51a60fabf-a88536da98mr207331fac.75.1638991774464; 
 Wed, 08 Dec 2021 11:29:34 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id x12sm648500oom.44.2021.12.08.11.29.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 11:29:33 -0800 (PST)
Received: (nullmailer pid 194267 invoked by uid 1000);
 Wed, 08 Dec 2021 19:29:32 -0000
Date: Wed, 8 Dec 2021 13:29:32 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Doug Berger <opendmb@gmail.com>, linux-kernel@vger.kernel.org,
 Scott Branden <sbranden@broadcom.com>, "David S. Miller" <davem@davemloft.net>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH v3 3/8] dt-bindings: net: Document moca PHY interface
Message-ID: <YbEHnD7dSy15ajHm@robh.at.kernel.org>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
 <20211206180049.2086907-4-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211206180049.2086907-4-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_112935_878414_FED13F9E 
X-CRM114-Status: UNSURE (   9.63  )
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

On Mon, 06 Dec 2021 10:00:44 -0800, Florian Fainelli wrote:
> MoCA (Multimedia over Coaxial) is used by the internal GENET/MOCA cores
> and will be needed in order to convert GENET to YAML in subsequent
> changes.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  Documentation/devicetree/bindings/net/ethernet-controller.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
