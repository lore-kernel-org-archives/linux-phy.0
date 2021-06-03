Return-Path: <SRS0=cVk+=K5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50A6C47082
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 05:54:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A4F76613F0
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 05:54:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A4F76613F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQ8tFHzJoWcDX3aZyAYNquZxHUbmDyEeP15iK4QEPvA=; b=Canhx3EtX6PWcX
	vC15HkmKxehoPyejPL82+Gbsw60ykhHd1avA14o7V3/pXtH0EE7pimKaGQP/Hls9KMwANZB/5tlkf
	6iwOWaO/wCflMHCir3Cwh/rCvZ5cjWFPsW5ejW/4KFiSlmzxLPaVzowGciTcl4MHXD1XOl+Qtwo7O
	v+3dIbn2JB5kDqZnZyAXKKiouiH/L2z+nwuW0w4uprlmHUcp+KNfAHCx1NquvfXO3WMhmARIGNeU6
	zDOE8rYrUt87N1FmzbPuaFSxCWx9PSJGGe8m0KHwxXOXo0l65+LzDnnWKe9LNb/MecRfv80W9CheN
	F4GzgejulGHY2wku8ERg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1logJV-007EX9-54; Thu, 03 Jun 2021 05:54:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1logJI-007EWB-F5; Thu, 03 Jun 2021 05:54:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4D589613C9;
 Thu,  3 Jun 2021 05:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622699668;
 bh=f4JogtJ88o/uB5SRGOdZF272124+VChsiDtFMUcw3Bo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o5NQXog8REkzRTEGREi1W9j0yrulGy5kmDTU3cyF+Kn16NRNjWfBAJEUlC44ybo/N
 rPFpTWmR2rJ5djKwh61YJ95gpwkHPAEuYHBI4C8En/OgxAaRdLarhcIwGmaAsPwAPq
 A52GJUvZSyaQLKIk8Rs5qKMLl/FhDRh+UcCH0rjEgCunid6IEeGHuIPIeZ2m0LRFIW
 hVyolXn/BW+ybZYjiwSZnOfaKNOBTv5wjAMXZPLyWLpWZ1hV7kb9jpDbC2PMHHa8mY
 d6aZA0kz8vh1okyNrT3PITpdIwa80tEuQi09hxuryFFujuYHJce+gj0YPvRRCPpswf
 /u7+poleUyUlw==
Date: Thu, 3 Jun 2021 11:24:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, kishon@ti.com,
 t.schramm@manjaro.org, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 1/5] dt-bindings: phy: rename phy nodename in
 phy-rockchip-inno-usb2.yaml
Message-ID: <YLhukPL7jSx3+dBj@vkoul-mobl>
References: <20210601164800.7670-1-jbx6244@gmail.com>
 <20210601164800.7670-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601164800.7670-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_225428_546421_6B7B05AB 
X-CRM114-Status: UNSURE (   8.90  )
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

On 01-06-21, 18:47, Johan Jonker wrote:
> The pattern: "^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"
> in phy-provider.yaml has required "#phy-cells" for phy nodes.
> The "phy-cells" in rockchip-inno-usb2 nodes are located in subnodes.
> Rename the nodename to pattern "usb2phy@[0-9a-f]+$" to prevent
> notifications. Remove unneeded "#phy-cells" from parent node.
> Also sort example.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
> phy/phy-provider.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml       | 11 +++--------
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml       |  4 ++--

I dont have grf.yaml, I guess it would be easier to split this into two
or apply this thru rockchip tree. If you prefer latter:

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
