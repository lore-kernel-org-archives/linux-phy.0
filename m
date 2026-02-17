Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80AD3E909CF
	for <linux-phy@archiver.kernel.org>; Tue, 17 Feb 2026 15:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9cm/5c/ifezl+dDRCsZEgDp5f3FZW5alKLEnQ0eRlQ=; b=YGyVkJdJIlGINs
	2zy5fUfDttwTogS424DFx2wp93AwDJ9NeInkHxF0JKtQYkWoA9NxQN0H4nwf5Aam7AYqdkKm4HTSU
	noC5gsoIVYDZlbuITzAAKwrfKgHp85X6WXGT/w+fmua4Mc7WqayOkAeAlQv9JdmQY7Lh6u8Yvqts8
	uZSxb4sX9mCNQwvsXhWBXbjCGNlOESguJJ6OCkxelHo6d5YLXkBh4hzak+TUkPdfyZeF5Ku3eEdvN
	IUGqfdwXiNbJ2NzIlln75jH76ipN0gzzJYQREG+FFTcMPy75fK3g8TmdcTYSYCu2pN+DQjLQ5qHFR
	pWn5VZlQVev0W+rFqO6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsNPU-00000008Wok-06EO;
	Tue, 17 Feb 2026 15:54:48 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsNPP-00000008WoK-3VU3
	for linux-phy@lists.infradead.org;
	Tue, 17 Feb 2026 15:54:46 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b8fb8f14538so84728266b.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 07:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771343682; x=1771948482; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/Nsb9d4cdh3TIN7gk7P/dLzs//wsu5O2NugIegk+Dvg=;
        b=g5S550qpsyNimhuw+8LmUb8U3SKSbSsOHkuwDLBt3OfY1IwtqsJOZH0HYGeykVqNLV
         EAHfFErq6B1t6LMcYO1GNAJTGqvDmndr6DbURPgo7vVw4yX1z6dGbl0zWW06L2GhsvND
         xDu+GxhszwilHA0A9YyvpftyUXAV+HsPjNg9d4Rn6RYjyHwHryWpSWc18Ko97aGjn5jR
         5IdWz6Rkzi/ONw5BNn/PypKO/4icgEw1Osxdglo+wHXOGH45ztuLK0r/UFSCn7PBBID1
         uEzdDb5UQJ+ctIkDO1hS+d7OnZkxibCFYxnU3TYqkPuJxVWIZZipPOr9T+JxKP9vsZFO
         O3cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771343682; x=1771948482;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Nsb9d4cdh3TIN7gk7P/dLzs//wsu5O2NugIegk+Dvg=;
        b=WjeRTVxPxYmsBWDlIAuKE99hfv2wFw80I2g5kSNU6v2bvNsw7tttmc8LZ/cLh8Sm/5
         NhJo/+ldMDAWshbnEPrJLRsmaIbmbPsEWS9Eer9hnDUO7x9B8/UnWZwqh6KOxNMT4w2J
         065W/nl2AOBMfVJyK6K9xyIc6D2x7rXU9Pt74GvI5N3pPJdPakl6TwNuAzOs+tA0U+/h
         wGeTGDefyAjDR2yYIRuIsyuJN/m84oOntODCcz14BQtvIz06ODygHQj9GFNLL9/VNNc5
         0oGLIkQ+vUNMjDsWqnh1InyCvUX0liNo8n53hbG6aMw98dmuImvvzELhWnkik5/Vtqc+
         NlMA==
X-Forwarded-Encrypted: i=1; AJvYcCWWmx8vgdsuruSdCkn+NskocWlMb3aOYAF6BJ+TbuoKwksVqbxqfpKC3sLOkjdn0UaEzpM6nJosgW0=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywu0qcrn/oq3Emcq74kGQ7ONq5ndm1kWl9CQV7hcuT8ooLFLp4o
	GvDEdgbdkHQmRMEW5jrgf1D0dpwQ0vZUpF8WkqqA94Lqczxd+qu1SxAza4EOhnQb
X-Gm-Gg: AZuq6aLGYQpXJN0VZLrn4cl/Yj6YHKn5DbaFhBtZODusbloNLFqAiEjfV/7QTrSPxOH
	m7NvVyhHKJwK0XLDjONdzzERTkCWBH6DiX7tFkUzuQ66M0403IRvzg9RHB8juSxy5PNMiT43MEM
	YkILI8L/4OrCzVZ24pnu99/EeMMECFTHX1BNvKS6z4G2vzSH2QrNGn1zQ6/DCGcSdnQZ/YIRKsP
	aZ3l4LNP5CFF0+DyHYxBLI9VTvlu2GAVolxg8soAkgQrAD0kN0oPXp7d8cEEpFGW9vwMCW3t3cb
	jMUlqmLMmvNfBx3iGOBVZg7PvsazbO9XDNwGmTEwrfBq9RGYBt594tq53log6tcgHhY46FVvJ6k
	C4O49KnBsNyTgNVoyyrWQkAP+VSJmxAnrkMlDuT0JvmWtc6O6Py4AylGDRO0wH1+vnbnRcTVpaZ
	2Zb7A7ksAo/jE5mHE=
X-Received: by 2002:a05:600c:b93:b0:47a:94fc:d063 with SMTP id 5b1f17b1804b1-48370e38ba0mr147624125e9.1.1771336712310;
        Tue, 17 Feb 2026 05:58:32 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:ac3e:d4d0:5059:7047])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48378b5196esm129721775e9.8.2026.02.17.05.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 05:58:31 -0800 (PST)
Date: Tue, 17 Feb 2026 15:58:28 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct
 compatibility for mt8167-dsi
Message-ID: <20260217135828.4hgbyhnz5nuzm6p7@skbuf>
References: <cover.1771258407.git.l.scorcia@gmail.com>
 <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_075445_726138_3D8DD279 
X-CRM114-Status: GOOD (  18.29  )
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

Hi Luca,

On Mon, Feb 16, 2026 at 04:22:14PM +0000, Luca Leonardo Scorcia wrote:
> Remove the dedicated "mediatek,mt8167-dsi" compatible from the device list and
> describe it as compatible with mt2701 instead. It is safe to do so because:
> 
> - Bootloader doesn't rely on this single compatible; and
> - There was never any upstreamed devicetree using this single compatible; and
> - The MT8167 DSI Controller is fully compatible with the one found in MT2701.
> 
> Fixes: 8867c4b39361 ("dt-bindings: display: mediatek: dsi: add documentation for MT8167 SoC")

Not sure which direction this patch will go in the next revision, but
(if this patch remains in this form, and intended as a bug fix) please
do not mix fixes for the current (and stable) kernel with new development
for the next kernel in the same series. They are supposed to be applied
to
https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/log/?h=next
and
https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/log/?h=fixes
respectively.

(also see Documentation/process/stable-kernel-rules.rst for what is
generally considered to be a bug fix. We don't use the word "fix" very
lightly, there needs to be a user-visible impact.)

To help the build test automation select the proper base branch, you can
use the "phy-next" or "phy-fixes" git subject prefixes when generating
your patches.

You can send fixes at any time, but please send new development for the
next kernel only when the merge window isn't open (unless it is marked
as RFC, then it can also be sent any time).

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
