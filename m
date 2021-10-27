Return-Path: <SRS0=D930=PP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AE83C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 20:37:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 05B0C610CF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 20:37:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 05B0C610CF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDnYnuHCsp0BcMbGCqtJv3BsiHCmUuFByICVZd2OQjA=; b=qF4qHyzrN7MM3N
	2x6+OZThpCX4U9qeMvxnTQV1Z5MNyO+3a7rzHuBh/lnlpv+0Ha9n3gLETqixT6/eewHFy7YecHL7g
	rAjyDO/zfhVlxO8BwV6cW6dBzmiVZ1tLzw5x5srNzkl2/BqHaFF3e+spb/U2kh7U5F+E18hvf3z69
	Q0TExLEmYo0adeCOaQ4tjM4e/HfMv3PpAEVE127wpRKT82D8XHjvXf6zCyZC2cD6f2vVvAm+QDCq/
	gd3Sf2HiDTCUYNpvIygIn4w01AOFDxZz9uo9+h933kA0J29vK3aB0MaGvpnnO6pWxuVutRBvYmp69
	Rf2g1iqZvD0Uy9TtUzPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfpfw-00658u-Hd; Wed, 27 Oct 2021 20:37:32 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfpfu-00658F-NJ
 for linux-phy@lists.infradead.org; Wed, 27 Oct 2021 20:37:31 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 l24-20020a9d1c98000000b00552a5c6b23cso5380211ota.9
 for <linux-phy@lists.infradead.org>; Wed, 27 Oct 2021 13:37:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=q0zXxFUMfRsheSwFSYSrrmgSHaEKLYEnkxd1RYCn5mw=;
 b=qyz9UjA6WuV1qphBKKoERLnn4qneQTAJzhYvtz/UWBnc/DtCs+b8hklthOXZu401y5
 UvIEWsLOxsMs3+S6Syxv7V6u3fnyG5Su0QWTjWYj8/c2K9aPqiYMX0ZMFrW31643a1rb
 JPcsz1HXIwFjWA6WoFXhNRt8mjR5xMm7LjIZdKPy7s150XicmEqoxAYv0mkgyrMoRc66
 KhHWPAq15JOPHE45f9gjOqQ6ress7X+wvGauS+3Bhf7dbZujww3ZPuj7vro04Ep813el
 VZqQdX9tl9qhrbZIH4S64BrsVo5EpfvpMHHTEWsSsLePEENZUP4RxPd7HG3oyttFgJA5
 nvpQ==
X-Gm-Message-State: AOAM533fdXcQLnrcMPd7Gf+xMiubHWsY6jEmKCfEsCNZBL3TR7dS1j1B
 8c0ALOuQU8oIblvFb9PJBA==
X-Google-Smtp-Source: ABdhPJzQKEVp4TsU7aIgvYDowq66KQMA/JA+sv/s/4xd1KiQE+X5YObrygEVxYRU1R/ZQtrhms0G8w==
X-Received: by 2002:a9d:6f15:: with SMTP id n21mr9700otq.278.1635367049370;
 Wed, 27 Oct 2021 13:37:29 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bd39sm466444oib.2.2021.10.27.13.37.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 13:37:28 -0700 (PDT)
Received: (nullmailer pid 2111038 invoked by uid 1000);
 Wed, 27 Oct 2021 20:37:28 -0000
Date: Wed, 27 Oct 2021 15:37:28 -0500
From: Rob Herring <robh@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: kishon@ti.com, andrew@lunn.ch, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 alexandre.belloni@bootlin.com, vkoul@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] dt-bindings: phy: Add constants for lan966x serdes
Message-ID: <YXm4iO4r5Ka2VtKF@robh.at.kernel.org>
References: <20211020094229.1760793-1-horatiu.vultur@microchip.com>
 <20211020094229.1760793-3-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020094229.1760793-3-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_133730_783761_00F494DD 
X-CRM114-Status: UNSURE (   9.57  )
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

On Wed, 20 Oct 2021 11:42:28 +0200, Horatiu Vultur wrote:
> Lan966x has: 2 integrated PHYs, 3 SerDes and 2 RGMII interfaces. Which
> requires to be muxed based on the HW representation.
> 
> So add constants for each interface to be able to distinguish them.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/dt-bindings/phy/phy-lan966x-serdes.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/dt-bindings/phy/phy-lan966x-serdes.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
