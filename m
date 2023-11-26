Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00901C4167B
	for <linux-phy@archiver.kernel.org>; Sun, 26 Nov 2023 19:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WF66nxGfYBaT927Torv3noKIAh3KrUCjICiDF5c6ixM=; b=Z85CKJuS1CW21W
	mlOmDeDkAcp4ZtAaMUw9Ju4kAz8a1WqetcblfCKkjz4zqsgzq+wcn6j41jaJ9w6re61ZWgUgNefUk
	x6DO2s79Ag5wC/nYWl7aUo9uDYcBki1cuAruE5afMPKcWa0B8XcUwjtubzf74G4o51pOGAjjeE2bx
	sjYxf7Zq8w5s1vAgzqWKhniBD2AkVnTa8SnutK+ILKzmjkhWO1gBhVBZBXnRlsM3AEIV8d6F4PCP1
	qf2LBhSXNQV9qAo7FbO/NmTNoNpqnLqC8lSE52u83ApdhIszmNOWJB081VMIQEgZC/p5jTwsW2Mw7
	GbbzJaeJYyrTmssZ4xog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Kph-00EU79-1b;
	Sun, 26 Nov 2023 19:30:21 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Kpd-00EU2V-1g;
	Sun, 26 Nov 2023 19:30:19 +0000
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3b844e3e817so2283785b6e.0;
        Sun, 26 Nov 2023 11:30:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701027013; x=1701631813;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cF5iPL+UoN0pmz/Mf8oI3xqxZwEF9KwzO7lwyRU7zig=;
        b=P7Tj063fX6pWhYa+yLxt9ybfDMvRpxYpQ4o4uBC0ZXewd56GquvUfWARxcm9DH68mC
         vhnRlTZK9KQzPnXbszwlk+0vs33VpOqIWl5zeZ7w/NuNB99cNwIgOtMutXuaxEhLCqfJ
         ybZo/R7ff0A80NeSRJC9s16lJrcrZtUES50tjJiJMtpRHGaIhaigqX9qcUv5LB5tkR4d
         b2M67g6oJ3IvsRL2VZhjcwYCNZYwclKS/DQWv41+5hCOJzeoSFiWx4neL8U1dkzmI/2E
         KbCAaiAmDXlMXvO0fbHM/sdJxOSdf6qGVI4PNyDBOKcLTDYzzKyn6qvfELrbO9VrWHcC
         Ferg==
X-Gm-Message-State: AOJu0YyT+Rmqo9fIDZFv0NvlICL6YqYuFt+F6iScwmfWn4Czp3dIwQb7
	/NmLVpuBXU9k9855O8cQxA==
X-Google-Smtp-Source: AGHT+IFN9FkllIs8NwE5M+5eMxZJDjxYTM7WvxpxuS0JRkvWMdLvzypLXD2zs6vmagC6jGp16eXjRQ==
X-Received: by 2002:a05:6808:1250:b0:3b5:6533:d2cb with SMTP id o16-20020a056808125000b003b56533d2cbmr9895625oiv.46.1701027013354;
        Sun, 26 Nov 2023 11:30:13 -0800 (PST)
Received: from herring.priv ([2607:fb91:9e5:15e5:aee2:7746:1955:d879])
        by smtp.gmail.com with ESMTPSA id w13-20020a0568080d4d00b003b85bd22147sm642373oik.49.2023.11.26.11.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 11:30:12 -0800 (PST)
Received: (nullmailer pid 76358 invoked by uid 1000);
	Sun, 26 Nov 2023 19:30:05 -0000
Date: Sun, 26 Nov 2023 12:30:05 -0700
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, dri-devel@lists.freedesktop.org, Vinod Koul <vkoul@kernel.org>, David Airlie <airlied@gmail.com>, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Nicolas Belin <nbelin@baylibre.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Maxime Ripard <mripard@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-amlogic@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>, Remi Pommarel <repk@triplefau.lt>, linux-clk@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>, Michael Turquette <mturquette@baylibre.com>, Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v9 04/12] dt-bindings: phy:
 amlogic,g12a-mipi-dphy-analog: drop unneeded reg property and example
Message-ID: <170102700475.76284.1528867317482713371.robh@kernel.org>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
 <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-4-95256ed139e6@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-4-95256ed139e6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_113017_969169_24270AA0 
X-CRM114-Status: GOOD (  12.72  )
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


On Fri, 24 Nov 2023 09:41:15 +0100, Neil Armstrong wrote:
> The amlogic,g12a-mipi-dphy-analog is a feature of the simple-mfd
> amlogic,meson-axg-hhi-sysctrl system control register zone which is an
> intermixed registers zone, thus it's very hard to define clear ranges for
> each SoC controlled features even if possible.
> 
> The amlogic,g12a-mipi-dphy-analog was wrongly documented as an independent
> register range, which is not the reality, thus fix the bindings by dropping
> the reg property now it's referred from amlogic,meson-gx-hhi-sysctrl.yaml
> and documented as a subnode of amlogic,meson-axg-hhi-sysctrl.
> 
> Also drop the unnecessary example, the top level bindings example should
> be enough.
> 
> Fixes: 76ab79f9726c ("dt-bindings: phy: add Amlogic G12A Analog MIPI D-PHY bindings")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml          | 12 ------------
>  1 file changed, 12 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
