Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08A1BEB64D7
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jun 2023 01:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEzy8Cclpst9GD1d2pZF2aJrQ1pShKmUlVuOrFEOFhc=; b=CQZKKN1Ho9a5xW
	XCJgQbpfnD94pcxfwnYI+tTwOtcEowyhQxmIQW6JxM2+AnXDKpJ2uOSEhZvhHUKwjilkhNjZ7nE6N
	rpBtCu/Z5xtSk1MrBky9Dq+pv6O+9rvRIWoPsNXP1Xy4hapsO5CA0hw86USmYAahZLzQgB8f0LYAx
	wEvYQhfXb4XOHUsH5lh8j4J1PRzVcr/Jl1xnrajoG5xM1heFS5TDe3FU0k5sVIGNHjJw7rxuldCrb
	nylqduEPQSzC7SziCvfD38JOa6O2wobMn/BjLCAh+Nnc8x+3VfA9h5r0BY1C0O3xNh6qpSRRCtn5l
	gbuesrfjusCAOukgt4gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC9VP-00GS9G-2O;
	Thu, 22 Jun 2023 01:53:03 +0000
Received: from mail-il1-f174.google.com ([209.85.166.174])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC9VM-00GS77-23;
	Thu, 22 Jun 2023 01:53:01 +0000
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3421e3b7dfcso26550475ab.2;
        Wed, 21 Jun 2023 18:53:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687398779; x=1689990779;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EPyXNWV+5Rq0jnNZMv1kqGws0ng4nexiCuZNtuQKCfc=;
        b=ZVqJ6X2BgAX8hnyguZGftUhwIsCZuZ5v7EMFNxmvek9Jl8aKAwPhTQOPmAr/d4HXut
         GhlYJFfV+/VWyosPle8hoRW9m82eJTv312yRxisnCuXgxthxreut8HdTk3fUg2ib0S/7
         iH2FoxomEDOPFbMf2ti5dVy9AM1vcmzZsst1OlfL2GYrHHus7qwL6DnQVjAtnzl/BFHD
         OSg0JcXLrMs8HhZP1lDOIOBql6MP5VZW2iwxS5fdVU4zTGkMbWkCxUrNtlV/eBk1mieE
         mJzDJ+XJ21O1QEAVWT7Iin51XY/PFHKWp5NNi/bH9XFWLU2GVqh53sg9qhAmaqRKWhks
         iAxw==
X-Gm-Message-State: AC+VfDzGOWQlQ3Y81sTtt0thzbB9xP8a6KH7YsojqqmhIkofMKu6B9eW
	44zxAWrMKgtFvB6IfOnw6g==
X-Google-Smtp-Source: ACHHUZ5bXaNVYRvyVfg2gIqLORoZrPaNazGxcaU4nmHT1DBtkRs7fLnJxGeZccaoiFIquwjsd5yHWQ==
X-Received: by 2002:a92:d486:0:b0:340:d836:1f64 with SMTP id p6-20020a92d486000000b00340d8361f64mr16631899ilg.29.1687398779402;
        Wed, 21 Jun 2023 18:52:59 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id d18-20020a92d5d2000000b0033e23a5c730sm1672193ilq.88.2023.06.21.18.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 18:52:58 -0700 (PDT)
Received: (nullmailer pid 43975 invoked by uid 1000);
	Thu, 22 Jun 2023 01:52:56 -0000
Date: Wed, 21 Jun 2023 19:52:56 -0600
From: Rob Herring <robh@kernel.org>
To: Julien Stephan <jstephan@baylibre.com>
Cc: Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, Chun-Kuang Hu <chunkuang.hu@kernel.org>, linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org, pnguyen@baylibre.com, linux-arm-kernel@lists.infradead.org, fsylvestre@baylibre.com, Philipp Zabel <p.zabel@pengutronix.de>, louis.kuo@mediatek.com, Andy Hsieh <andy.hsieh@mediatek.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: add mediatek MIPI CD-PHY module
 v0.5
Message-ID: <168739877539.43891.4753109019939618528.robh@kernel.org>
References: <20230620121928.1231745-1-jstephan@baylibre.com>
 <20230620121928.1231745-2-jstephan@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230620121928.1231745-2-jstephan@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_185300_673700_B2327DB2 
X-CRM114-Status: GOOD (  10.80  )
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


On Tue, 20 Jun 2023 14:18:46 +0200, Julien Stephan wrote:
> From: Florian Sylvestre <fsylvestre@baylibre.com>
> 
> This adds the bindings, for the MIPI CD-PHY module v0.5 embedded in
> some Mediatek soc, such as the mt8365
> 
> Signed-off-by: Florian Sylvestre <fsylvestre@baylibre.com>
> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> ---
>  .../bindings/phy/mediatek,mt8365-csi-rx.yaml  | 79 +++++++++++++++++++
>  MAINTAINERS                                   |  6 ++
>  2 files changed, 85 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
