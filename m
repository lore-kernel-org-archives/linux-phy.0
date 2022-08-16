Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86DB6C25B0E
	for <linux-phy@archiver.kernel.org>; Tue, 16 Aug 2022 13:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTc3Mmh9n2hV+eyV1DrdG7KDr1/v0eHorEBv5a1wiR0=; b=yqVYh3gpgQacGm
	SmSDrp2URBSHSRridc3d0OamYG8LIGFtlTI5lo4A4lXk7PLhTVdC/XlfEjfIysirLZCYB799YdH5p
	RkApn0ry83AWtuWvA+Hrb7Hv8cAEbD3K14E2xP9N9tjjhHYorxVTOOezIHFR9a1B8iu2kTfMHCk4S
	YpQws6zLRwJ+p24RlMgg1uxGUJYpe16s65rlnq94Jo/G8t0FwEGD2aIzoKKUgCAgrjcVdzPR63Jdl
	/U4aJWeiLdm3uiXLmAtXH0kc0TLJW473HB6xsu6R1xIQ4yzpmFxUswoguUwBu6DrmZWSIiH2PjSzM
	Y2OJMGFta6AKXoYLrtbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNwLW-002gh6-LL; Tue, 16 Aug 2022 13:11:02 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNwLO-002gYS-KC
	for linux-phy@lists.infradead.org; Tue, 16 Aug 2022 13:10:58 +0000
Received: from mwalle01.kontron.local. (unknown [213.135.10.150])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ssl.serverraum.org (Postfix) with ESMTPSA id 18B5322238;
	Tue, 16 Aug 2022 15:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2016061301;
	t=1660655447;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9LhVacs9F80sepfJM8+uixyHpf2jqhk2p1Fl5zzM5IU=;
	b=cvMxnukhiBlbyuW2swNqXWTgkRqTSISeYg+BkXMlB0pALo5lFoYpupZLBy8vBopaun8QN4
	1FCdDHTmtHVl34NAgBO3vC+lhYKNoFd91P0Qtxc84SOQLBS3dr+poZujjErRteWvo6IsrT
	rUGDHwUdcvRVO0L67yF4RQymFVPgK1g=
From: Michael Walle <michael@walle.cc>
To: krzysztof.kozlowski@linaro.org,
	pratyush@kernel.org
Cc: devicetree@vger.kernel.org,
	kishon@ti.com,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	robh+dt@kernel.org,
	vkoul@kernel.org,
	Michael Walle <michael@walle.cc>
Subject: Re: [PATCH] dt-bindings: phy: Drop Pratyush Yadav
Date: Tue, 16 Aug 2022 15:10:41 +0200
Message-Id: <20220816131041.1771872-1-michael@walle.cc>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220811063840.7670-1-krzysztof.kozlowski@linaro.org>
References: <20220811063840.7670-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_061054_894393_BC0000B8 
X-CRM114-Status: GOOD (  10.62  )
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

[+ Pratyush ]

> Emails to Pratyush Yadav bounce ("550 Invalid recipient").

FWIW, he updated his entry in MAINTAINERS in commit 92714596cdbe
("MAINTAINERS: Use my kernel.org email"). So I'm not sure if this was
just an oversight.

-michael

>> 
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml | 2 +-
>  Documentation/devicetree/bindings/phy/cdns,dphy.yaml    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
> index 07be031d82e6..834f65636819 100644
> --- a/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
> +++ b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: Cadence DPHY Rx Device Tree Bindings
>  
>  maintainers:
> -  - Pratyush Yadav <p.yadav@ti.com>
> +  - Kishon Vijay Abraham I <kishon@ti.com>
>  
>  properties:
>    compatible:
> diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> index f0e9ca8427bb..37bc20493fd0 100644
> --- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: Cadence DPHY Device Tree Bindings
>  
>  maintainers:
> -  - Pratyush Yadav <p.yadav@ti.com>
> +  - Kishon Vijay Abraham I <kishon@ti.com>
>  
>  properties:
>    compatible:
> -- 
> 2.34.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
