Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EE26C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 17 May 2022 01:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+ZNg7hjSaRGWPkAfsrxfHKeCDCIaNRz2mmyHC+dl3E=; b=TERCfKFSiVENVa
	1I2DJTB+mzHznwV9D/dcbfmgvpj0e744feVRpWtAZlr+VHdK9pC+P4f3sSZkxJmvcYXirnQJIzoCe
	WUp/ZWktmLNKh4aBzyvDrHS6Eai4OP8/Oe2Hm7HBs5pYa7dEyS9FakcvXGUAsx0UWQdIFejfxc0iT
	5wvLkEaZeSGItN0aeWsUf79NkWdu9ELt0bGPQKEMOptRIblYib2naLJDWzknNEPk4jgEpkj+NEmkb
	KZG49FwvJhe1WaBH1liJO8//lrFIvxgx9b8yJx1UQDpzNsvQpc01ZoFaP79CPQWSjS8OT+9AaUyl8
	ZJoQdr6C6vOxtdwHiFbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqle4-00B582-Fw; Tue, 17 May 2022 01:05:04 +0000
Received: from mail-oa1-f54.google.com ([209.85.160.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqldz-00B56x-Ok
 for linux-phy@lists.infradead.org; Tue, 17 May 2022 01:05:00 +0000
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-edf9ddb312so22437497fac.8
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 18:04:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NiPZUfB1jHchcWwZqAQi4Kb97b31UZXWOC6k+8lghdE=;
 b=ajTbgBySmatzkSPteaVHeLNhmuPnfjtKOxj5F3K6UasSgfYe92Hv26TZ3ArLqonZjm
 Ha4Lh0vjowjAiqQ9P7sUHgkSL2e258HRZotv4xWuxInrSmw4VSDtClx1yLQYSIuYm8qo
 t7AP1vJGY/uGgjPz+wWLeO5KMTLJ5S90HKTTgbbmcCWhw0cw6Oki7pwHt+xBm9K0HvA0
 XMt7XxROWDKZ03KZx+LuKIBBswqyBZx/qtytqtUOxWIuqsSLLblP8NSxf02HaNG2d52b
 kQAOx9BXKuDQroSGFHnupD6JoTGMIauu+w/rvpWTqMxIuS0mVwV0jzab6tWV6ZvBjYUr
 vV5g==
X-Gm-Message-State: AOAM5339/jJL220vC77ldIzWqtoZiIssn1irkJmxUC3cYQpOb+0HZzvp
 XAU8y1EnUbcnEY3znrOfgQ==
X-Google-Smtp-Source: ABdhPJyAH/KPe88TlRB4RWqnaKvQqp6zGn2tX8q+P0sNxKmlwkUzi0K6DH+sQdQ9ig9S0DYW5jkFyw==
X-Received: by 2002:a05:6871:79b:b0:d3:4039:7e7c with SMTP id
 o27-20020a056871079b00b000d340397e7cmr17307138oap.121.1652749496411; 
 Mon, 16 May 2022 18:04:56 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 h11-20020a4aa9cb000000b0035eb4e5a6c1sm4848173oon.23.2022.05.16.18.04.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 18:04:55 -0700 (PDT)
Received: (nullmailer pid 3713828 invoked by uid 1000);
 Tue, 17 May 2022 01:04:54 -0000
Date: Mon, 16 May 2022 20:04:54 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-renesas-soc@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: Re: [PATCH] dt-bindings: phy: renesas: usb3-phy: Spelling
 s/funcional/functional/
Message-ID: <20220517010454.GA3713765-robh@kernel.org>
References: <3da9bd360e1c83007af0e0e90fa4e6c2b50fdab3.1652100633.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3da9bd360e1c83007af0e0e90fa4e6c2b50fdab3.1652100633.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_180459_826128_0AD53ADC 
X-CRM114-Status: UNSURE (   9.89  )
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

On Mon, 09 May 2022 14:53:34 +0200, Geert Uytterhoeven wrote:
> Fix a misspelling of the word "functional".
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
