Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2E36CD4F3D
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 15:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:To:From:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgGRYvzZSV+M/yNLAz1qdckwG7o7s8tHYRVPaFl5KjI=; b=QEodV3a6/sJs+f
	YK9TTz98AJjkcUpEbYo7++sv2TiPcrg6oJdtmDk9fmSF75J5pEv/tnoRTx15fBti7j0XZV/OeMftH
	pvTnUAoebwSGSo/GmtWngP8bPDcH+J6i9VdNbFkxADnrUB5wQO/3WiLV8gg8mkoP3v9Njzc89qKyE
	yst/XHJQpnkUPJdJ5wuovnAtT1YwexCAK44mSsWXrYjq7vU+A0OkfIaHMPBjXl5rwdxD/WRzbgKOJ
	jggVPfObdJwP2ErH1H38RdQ135cLBPMMR4iQC8+si+NSvBY4YKyS72kbRusnbSv+Q0OHZZhcGKaud
	B2giURAz/8DKTjmy3bgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPidR-00000004wqR-2VaV;
	Wed, 20 May 2026 15:15:01 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPidN-00000004wp5-428p
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 15:14:59 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4891c0620bcso32683855e9.1
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 08:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779290096; x=1779894896; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ccZEEEBlnDZ7RGFHJwE5hSCMMi66BiukOOfPa72Eyrc=;
        b=kXUgqBIf6jQ+LE2eNU2SxsEsAr8qs8OrcrIJD1t0lb0RwvpHcD+io5e6UlBAh9v3Ka
         qs67wVFPu4ph1w87ffx5rZzz3XHzY8Nyuw+E0OzYZ7FHALu5Grwycuzy4Nu6PB7LS/s4
         yMOFGeDM1d8DKVhYR0Bwfzs+pASzPKbuu+QkHUcpYG6pq9xesbaIrUe34Tx4OpADEeVc
         wNBMzxm1P/1vxvSRzi04EVuPTY4pDr9Ejidr9quHvbTw5ueYznFp3N0tJfkSrKc8pksI
         IMWOMWTQCYivB9WhbsmRTzDkbLtRIFqc8mkITbA2Xq/7HBgHVBeANrSGy7VWYKKNDG3z
         vE0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779290096; x=1779894896;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ccZEEEBlnDZ7RGFHJwE5hSCMMi66BiukOOfPa72Eyrc=;
        b=tJbdeZ3OKBmVf7wM4N/jhh0OXgSxEQ1xisFzcEYQlXwjZkrZ3G55BzCxdCq2XZhWjw
         M6MoVt1naOZe07LaBGO8COTfIQuRdir04cmY4LLdaAgSG6yHBHHV4tagqgGfHNRl/++a
         QmthdabQ/IONg9nOuK9i4VWMbFyIJ5bRftslGXK1381ws1iZJF3my8lVeeR26Aah+S7Y
         f/zu1dd7G8oRQ3ohZC0RLKGIHwCkZR5Xf1YCR5i7WnRVex79hGDcrxwrgWL/DETSP8Np
         HajuPQS2d1aZ1qi0zbZoJbTpnND54k8QRpqy/vFNKETCjnb7tcC6v2Bs7YwTHAcYnIbC
         jlIw==
X-Forwarded-Encrypted: i=1; AFNElJ/6pTYIjTMu68wQ+J8PgS8aGaXh/ZFsnp4zdp4cDIjA4TSbHU4HqKTCbtVPnLfIMbGTGhPIWLOQifQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+oRIyuVNiaJQLGHA6DH0SkVXdN26YXcSbdvv28ucLnPIjDXOP
	UdihkCGokWoX5feJ6B6BCYrw/TYfeCEOBGH8uvtxeXoZrL7Lwn3PRFJd
X-Gm-Gg: Acq92OENfK4fKm6ciLu1lI6pYG36MjXXEqKPmJKtPUtiiaQ96W5kFnlpTpd7SEL16dx
	aB0emd8sjgvMTyNwRbOUaHA72GsRBzVvBK8/1YMd9qjiEXg9AdjSkqpVWeK7WXUBQGpjd1YmCIq
	+fQGZrmavflgB1EKcfWJvUv9RHWLYJH2JaRQdsXmMnwZ66e7PNv+K0GJs0mGb0x+FnQIzqYYasu
	UAuqv5X67d7V0n2SsaiOQGRipKVl95RwqmYwDIgqLTEpVivH4t7rDeXIojs7D+1jJEifYmao+yl
	453NHfOm3UpGzLCY+D1yqCzhPK7q1/k/kqbTe8XBSvzdiwKHNuQRFzo7q0xDduFoj0YNuTABgXJ
	m+4IvJMFX6aEcj2jE//2YQfvTrMfgcQTdknT+bBt0VB8XN/MfdjJorH1xpBSkiogdf6pSm+EjhQ
	DvK5aqQZWETq84sZWMA2CAEpn68V2ZkUYI3MyHh6I5f/wyOfqrI0Pq9Z4BLngL5A==
X-Received: by 2002:a05:600c:a405:b0:48a:52ce:a4b1 with SMTP id 5b1f17b1804b1-48fe60dd5e8mr371333235e9.15.1779290095645;
        Wed, 20 May 2026 08:14:55 -0700 (PDT)
Received: from Ansuel-XPS. (host-79-22-5-99.retail.telecomitalia.it. [79.22.5.99])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48febe585absm136106415e9.19.2026.05.20.08.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 08:14:55 -0700 (PDT)
Message-ID: <6a0dcfef.b6ded719.106719.1acd@mx.google.com>
X-Google-Original-Message-ID: <ag3P62h_xNArpB2V@Ansuel-XPS.>
Date: Wed, 20 May 2026 17:14:51 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v8 0/5] airoha: an7581: USB support
References: <20260520150912.11614-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260520150912.11614-1-ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_081458_036925_A591806F 
X-CRM114-Status: GOOD (  27.87  )
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

On Wed, May 20, 2026 at 05:09:05PM +0200, Christian Marangi wrote:
> This is a major rework of the old v2 series.
> 
> The SoC always support USB 2.0 but for USB 3.0 it needs additional
> configuration for the Serdes port. Such port can be either configured
> for USB usage or for PCIe lines or HSGMII and these are configured
> in the SCU space.
> 
> The previous implementation of a dedicated SSR driver was too
> complex and fragile for the simple task of configuring a register
> hence it was dropped and the handling is entirely in the PHY driver.
> 
> Everything was reducted to the dt-bindings to describe the Serdes line.
> 
> Also the property for the PHY are renamed to a more suitable name and
> everything is now mandatory to simplify the implementation.
> (the PHY are always present and active on the SoC)
> 
> Also other unrelated patch are dropped from this series.
> 
> Changes v8:
> - Squash header to clk Documentation patch
> - Address comments from AI Bot
> 
> Changes v7:
> - Rework to double PHY implementation
>   (suggested by Rob)
>   Now the clk driver expose a PHY for Serdes port
>   USB PHY driver selects it
> - Rebase on top of linux-next
>   Link: https://lore.kernel.org/all/20260306190156.22297-1-ansuelsmth@gmail.com/

Typo for the link. It's:

  Link: https://lore.kernel.org/all/20260519220813.28468-1-ansuelsmth@gmail.com/

> 
> Changes v6:
> - Fix kernel test robot (sparse warning)
>   Link: https://lore.kernel.org/all/20260306190156.22297-1-ansuelsmth@gmail.com/
> 
> Changes v5:
> - Add Ack and Review tag from Connor
> - Implement Ethernet support in the USB driver
>   (testing support for this Serdes on a special reference board)
> - Use an7581 prefix for USB PHY driver
>   Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/
> 
> Changes v4:
> - Rename PCIe and USB PHY to AN7581
> - Drop airoha,scu (handled directly in driver)
> - Drop dt-bindings for monitor clock in favor of raw values
> - Better describe the usage of airoha,usb3-serdes
> - Simplify values of dt-bindings SSR SERDES
>   Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/
> 
> Changes v3:
> - Drop clk changes
> - Drop SSR driver
> - Rename property in Documentation
> - Simplify PHY handling
> - Move SSR handling inside the PHY driver
>   Link: https://lore.kernel.org/all/20251029173713.7670-1-ansuelsmth@gmail.com/
> 
> Changes v2:
> - Drop changes for simple-mfd
> - Rework PHY node structure to single node
> - Drop port-id property in favor of serdes-port and
>   usb2-monitor-clock-sel
> - Make the SSR driver probe from the clock driver
> 
> Christian Marangi (5):
>   dt-bindings: clock: airoha: Add PHY binding for Serdes port
>   dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
>   clk: en7523: Add support for selecting the Serdes port in SCU
>   phy: move and rename Airoha PCIe PHY driver to dedicated directory
>   phy: airoha: Add support for Airoha AN7581 USB PHY
> 
>  .../bindings/clock/airoha,en7523-scu.yaml     |   9 +
>  .../bindings/phy/airoha,an7581-usb-phy.yaml   |  62 ++
>  MAINTAINERS                                   |  11 +-
>  drivers/clk/Kconfig                           |   1 +
>  drivers/clk/clk-en7523.c                      | 216 ++++++-
>  drivers/phy/Kconfig                           |  11 +-
>  drivers/phy/Makefile                          |   4 +-
>  drivers/phy/airoha/Kconfig                    |  24 +
>  drivers/phy/airoha/Makefile                   |   4 +
>  .../phy-an7581-pcie-regs.h}                   |   2 +-
>  .../phy-an7581-pcie.c}                        |   6 +-
>  drivers/phy/airoha/phy-an7581-usb.c           | 554 ++++++++++++++++++
>  include/dt-bindings/soc/airoha,scu-ssr.h      |  11 +
>  13 files changed, 894 insertions(+), 21 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
>  create mode 100644 drivers/phy/airoha/Kconfig
>  create mode 100644 drivers/phy/airoha/Makefile
>  rename drivers/phy/{phy-airoha-pcie-regs.h => airoha/phy-an7581-pcie-regs.h} (99%)
>  rename drivers/phy/{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} (99%)
>  create mode 100644 drivers/phy/airoha/phy-an7581-usb.c
>  create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h
> 
> -- 
> 2.53.0
> 

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
