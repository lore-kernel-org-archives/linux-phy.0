Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E582C48BDF
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 08:31:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C99C3613FA
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 08:31:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C99C3613FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F9zMe3/C7iYiJCJcpdQnUBGUqCPlKs440l0YQBonuw8=; b=VG30eQLYdEFHnGUPQsCrSQ9jzl
	z9ipep0UQJ1iLOQ9IBIcFDjCKGLVIjNGyvpWjAk+XBc554EWmGF/0RlWkStzdFc+mMdDVjvCfGIui
	sAFVZFHUn39Zdjq+xpXNyoiFqX734/AQ38WvbxwowxXwMmBdSRjev/kb+NrbWZTsyuvfGNR7U55Iv
	sDkBaQ3s0xnVfPqntZkqZ7GHM+x3t3M17R435rwDlz3xQzQJwueYZ0EMW/1HuSrg/ecqGPNhqjkK6
	2pG5YFtpNE9p/HupGtVESGVLYwwWQPYNxo1Nso8ROWGjof0EaHzhbVYdgy+yGI9amUkNT0fRIo9p6
	jNAQX5/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwKlK-00DQjO-73; Thu, 24 Jun 2021 08:31:02 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwKlH-00DQhL-BG
 for linux-phy@lists.infradead.org; Thu, 24 Jun 2021 08:31:01 +0000
Received: from mail-ej1-f71.google.com ([209.85.218.71])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1lwKlD-0005Ie-Dc
 for linux-phy@lists.infradead.org; Thu, 24 Jun 2021 08:30:55 +0000
Received: by mail-ej1-f71.google.com with SMTP id
 p5-20020a17090653c5b02903db1cfa514dso1717514ejo.13
 for <linux-phy@lists.infradead.org>; Thu, 24 Jun 2021 01:30:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FWf1/8cps0f2orI5AbiDd3FTEBu65FvivubU0HnKemc=;
 b=jhRSZC3Rm4tVkfXqO/dElAVtSpfC+qy+x48fCNzGgvWV76zgUhxLqunac5TEYaPWql
 jzd9gOHIaVsw6aWIOXUD6dmk1x5kFOG12IuvuBa5zG/Ou2jgUU1xmJUeHwePNhNDRox7
 y3RCEjeQ8EfDqJ8WIfJE9TnpCZDUSMh/1z8b4rFaS58srfU+mDEtoG0/KwxdcWvkNb63
 qslw9rzFtrvEmtK/x751jvZdjCHcQkOep/Xxu2XgACfFY+6eoh+UexyamMq49u/ryzsm
 rbySpFEbk/4Y6RPu+CR6OmD4Mrf5uvgUX+Ex0lBEo118e8GkbWgN2Yn/fDXx66bnz83a
 je2Q==
X-Gm-Message-State: AOAM531JvxnwLNAG9A+mjhNLn5SHAzkZhUfTFdcnaMg1dD6WDWy2iOOl
 QnUncRKRya1eW/uJHKNG/6DO2jPwvF+nJCtS/tPtnCny1RZ5YK4HfE95MamXbSq0DVoM1kFaVlt
 rsnfmzVuiQdWwgSwOtS9JPTpOIw0WeACbP1Ys+8VY2ds=
X-Received: by 2002:a17:906:dbd5:: with SMTP id
 yc21mr4064957ejb.233.1624523455177; 
 Thu, 24 Jun 2021 01:30:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyE9NG70Q0R7WlldJgiju8y4R6tNhr+XdnWHXcuF262S4ipiZ1rkQiFP2aNPfY2SEkDu6zFjg==
X-Received: by 2002:a17:906:dbd5:: with SMTP id
 yc21mr4064931ejb.233.1624523455018; 
 Thu, 24 Jun 2021 01:30:55 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id a3sm1417424edu.61.2021.06.24.01.30.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Jun 2021 01:30:54 -0700 (PDT)
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To: Fabio Estevam <festevam@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Jagan Teki <jagan@amarulasolutions.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Tomasz Figa <t.figa@samsung.com>, linux-kernel
 <linux-kernel@vger.kernel.org>, Robert Foss <robert.foss@linaro.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Milco Pratesi <milco.pratesi@engicam.com>,
 Anthony Brandon <anthony@amarulasolutions.com>,
 linux-phy@lists.infradead.org, Fancy Fang <chen.fang@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <2decfea3-3659-2a3b-7706-326c97f57f8e@canonical.com>
Date: Thu, 24 Jun 2021 10:30:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_013059_444390_AE888F8D 
X-CRM114-Status: GOOD (  12.25  )
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

On 24/06/2021 04:48, Fabio Estevam wrote:
> Hi Jagan/Laurent,
> 
> On Wed, Jun 23, 2021 at 7:23 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> 
>> Looking at the register set, it seems to match the Exynos 5433,
>> supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
>> that driver instead of adding a new one for the same IP core ?
> 
> Yes. there was an attempt from Michael in this direction:
> https://patchwork.kernel.org/project/dri-devel/cover/20200911135413.3654800-1-m.tretter@pengutronix.de/

That's the proper direction (maybe as Marek suggested - sharing common
code like for Analogix DP), not duplicating a driver.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
