Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F1F0CCF9E2
	for <linux-phy@archiver.kernel.org>; Thu, 23 Oct 2025 15:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSrJvhI8Lf+nN0g/QPrbrgo0dRF1ddHZBPI/0eEJb08=; b=ZV7PO1bB/BTX+z
	tpemPybIbvhXuMUbRdjoxg9uDLPC+bMzE6ODui5cy1RvfmvtJQfIhtlYMBGp41Kl+iTry1F/sRV3T
	QUaaGlui2UuAbegMkyrsQwwe3XEeb3kHAJDREt1ijm9ONOshX7vsyEsid0DZg78ceHsrtQrifplKP
	uXL/riqLVrKv+08cwlsXhgkPLkzDYC12tEjyFaa2DfwgIW5+Mqe+WkkgBPH4yyx9j4irg9DRiia/H
	nCEPmb9MDJmn7iSCZY6cNQNtdv8LqIJkxxmnEX+iYamWm9YzNV1p7VXmCjfRiboZDOlIqBMtGoNLp
	lJMMOARqchtjxI2Y1yUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBxSP-00000006nB8-15Sq;
	Thu, 23 Oct 2025 15:42:29 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBxSM-00000006n9f-3yil
	for linux-phy@lists.infradead.org;
	Thu, 23 Oct 2025 15:42:28 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-b553412a19bso620374a12.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Oct 2025 08:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761234146; x=1761838946; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FiXLImZ7fPO15Ek72Gzubnx0U1bgG0nde4mxLe+ZreM=;
        b=HgkyiMvsHvzIs2rXuf9mCmaOFRmV9lYUPVeUhHZHUKXJWa071UjyB+DeOs8EtCo7Kx
         AiNV0ffTcuI3kE+IC9VHpIE1tqgN1K+2VIGT9XwdHSXcyzQiJVFtLYblOY5qOqGQBaWh
         Qhd2nfyZjc1nBu6aTPEJm9uLe3sQ4JJkn8EgxXA4RAWualDR4wxDaCjOnin7V2MWJ6Hw
         MgH0N6BI/TTZznFcnfWrM69XrOG/QzP4BVEpbkJZP/5d1qJgljQIp4Cch8/oOTL9LS0T
         zT0SdGczYN04RLLZCrdlayEG+JPEEKl985dGbBjfQTTeELzrEf2nCIgVDZuTyWB9F45O
         DC/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761234146; x=1761838946;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FiXLImZ7fPO15Ek72Gzubnx0U1bgG0nde4mxLe+ZreM=;
        b=I5Gdz26o73GjUF0rhApPd0eB1AnvlboRsdILEqMg7VgqNDudICs4Fv/K8lhWDr+Zjs
         dYzjA9dhwdZNT+2T5v8geha9+R9xOkoRWUhPUy2Z2rA6aqWmb5HbLOEVb2XzCJJgn1C7
         t/8kkfgQ/OJlXZtCIJ6MzUTrQTbRppjtm0asPPgcjqLPij2IYW52qqmGe8uxiI4WGvj0
         qvfAse2EST6Jvs3fKY6daN9cpXUhnEcZREqqFOb04nvioB5fT+f0MsW4T2OjUPDUuw8U
         ShdciQnhSIzVmnQX+0dxiVcjcMx9KIpPE9mfDw97RFyW75idDHyglnurH5vgILEGVI8l
         0Cng==
X-Forwarded-Encrypted: i=1; AJvYcCUhvxajwoiG+Eq7PV0vjI1Ew+ZpMHN1gQlVdRlX67iR02OanjR9t2DED3BNKyHXCrcvTOldrdpbhFw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZT7huAcfXwAJ79TJwREu8SyUYScXjrFQ+uHOKAJaOejNnzh8Q
	ObrX3lK5EW45j42VdcFmMTPt4X/bzIRbG0xrBtHxEsjP7OFAEgSvvl2X
X-Gm-Gg: ASbGncsVP3tZNvkk6/FzOziNCOazP3XzfA/wR+1ZSrB9dzKz2ZxGlfFJ8jpFw7/K+Nx
	GKFYR5/rDE7JFnzrOx5L3mkE4vC7fYoM8u1722WyfZ6chn2mtkani13VlPg0GK0R8WZFrT5nNKL
	NTRzVpzpKvab4UbfcajkLsMtcWNVsHH/n41IAC0k4sHxf0yvB7aMpFnLUgBcI0stzeipzPUHeJg
	CkK5qiwjxM0pQZm7+a2YQoXoKSojJzgSR4TToKACQ3pqd4NWwBiv3Fy0YD8oPSPSIyRn0ctQNHA
	u1LquO6D1GjM6hJjA4LvUOSIpBc704ZRDPj/eRuqSJG58kNVfRYan5hrBNcwdRqAjN1HdTYiZgm
	gKZ5GCNTDUHtSZBsnLCpQ1RVvKFEQteZS3cQn/E5XPINnNWnI+CUScIJz3WIIT/y6xsSp8yyIh/
	oKjfr51NZEjuAo
X-Google-Smtp-Source: AGHT+IFivLiKbkP0y2KMH2ZNEJ7GlEhOb9t2a5oI0W2mRRwwxItjHXvAd1GZTuvYOgULd0RdTXOLyw==
X-Received: by 2002:a17:903:1746:b0:290:9ebf:211b with SMTP id d9443c01a7336-290cb07d223mr295078455ad.40.1761234145718;
        Thu, 23 Oct 2025 08:42:25 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946dda72ddsm27825615ad.6.2025.10.23.08.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 08:42:24 -0700 (PDT)
Date: Thu, 23 Oct 2025 08:42:23 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Robert Foss <rfoss@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Georgi Djakov <djakov@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Joerg Roedel <joro@8bytes.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Johannes Berg <johannes@sipsolutions.net>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org, dmaengine@vger.kernel.org,
	linux-fpga@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-input@vger.kernel.org,
	linux-pm@vger.kernel.org, iommu@lists.linux.dev,
	linux-media@vger.kernel.org, linux-mtd@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pwm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-sound@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Remove extra blank lines
Message-ID: <0d01d218-15df-4553-8e84-fef84fde211e@roeck-us.net>
References: <20251023143957.2899600-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251023143957.2899600-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_084226_990006_2F3A5C7B 
X-CRM114-Status: GOOD (  10.11  )
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

On Thu, Oct 23, 2025 at 09:37:56AM -0500, Rob Herring (Arm) wrote:
> Generally at most 1 blank line is the standard style for DT schema
> files. Remove the few cases with more than 1 so that the yamllint check
> for this can be enabled.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Acked-by: Guenter Roeck <linux@roeck-us.net>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
