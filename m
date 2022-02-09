Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D3BAC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 23:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYwa3ElDAO/nl0NMiiD8j+2rFfYG0FkjesHnFL2NhY8=; b=1N7ZefA9o9RsI7
	Nu7G39hvGYAMOx4hZ7RaZzla50JkTtjSn9XFkSfta2BbZuH/L+JP2/TZceaORtvVrJ52kV3XtUONs
	3XzGEF618p+XQ8Q0Kk3idk8/W6ewq3T1d8PGYtbGyf1tiptDweC8dvA0IwkGFqUABT3sa4TC5k3KU
	NDDqT0dXx0t5qWMdM+s/ln0GuGQnzdPQu1BzmVJBTb+muClG+f4eVk4k40laVV1vzRM9OS0PZ/YM6
	C8juII6+/5jsG/3Q6EznmXfeFYvpuT26PakjDls1BFsFlsOwwwRX+ZjGfZ0qt1rdTRE1MTONsTm8S
	3wlLFe5tEJqHlCvbtgbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvwy-0020bo-TW; Wed, 09 Feb 2022 23:00:36 +0000
Received: from mail-oo1-f42.google.com ([209.85.161.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvwk-0020W2-O7; Wed, 09 Feb 2022 23:00:24 +0000
Received: by mail-oo1-f42.google.com with SMTP id
 u47-20020a4a9732000000b00316d0257de0so4262178ooi.7; 
 Wed, 09 Feb 2022 15:00:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fpdeZ4kmn6qEAES9MKaD0qo3YztLrmDh8hg9/+KfbMk=;
 b=ujbSBTtQn8Ko8LTKyUbtd8h2E1ZRZriiKd06PiRCdeFdlRiuQCM735QUqQ3p2v49+9
 bepx9WUkLRYo4jkgspVpjB1G1GdCmgVdbYqdWQnWrzgfarIONQ1ZJQLRAQiI9VzOQh1H
 306rMMIMB27R6X1BHDA3srOxKVubvcDpPmDDN4C0RS1MxRNOkQgFpLbBkDwhs6qSYiwF
 Iz4R6mzMtaEHmY/+fuQsEWc7Qibv1wptjwQdEzoLDSw/BSnWz6WdVIkosMyrWy6ahkAZ
 jSaORDT+MHCVg0EBDTpigmaegEOjPDkmL4pdSQsmJBi5IrVRDGPchmZwBQLQ3rWgbtIw
 Y0gA==
X-Gm-Message-State: AOAM533AlWEOz7hlHirnmqAknvi6uxa8jUo7MpqD359pzn5VRZ39F/CJ
 dnx+ewHAdA0y66mXVJd8lw==
X-Google-Smtp-Source: ABdhPJyg/5tdFrGfYkHvpfJSK0OiHLVN85JRmS8cSUjQqBh7r5T+P6F/NMofLOrJYz4+0vWdYal59Q==
X-Received: by 2002:a05:6870:d4c5:: with SMTP id
 l5mr1742617oai.168.1644447620747; 
 Wed, 09 Feb 2022 15:00:20 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id v26sm7168237ooq.20.2022.02.09.15.00.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 15:00:20 -0800 (PST)
Received: (nullmailer pid 1109186 invoked by uid 1000);
 Wed, 09 Feb 2022 23:00:18 -0000
Date: Wed, 9 Feb 2022 17:00:18 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: dri-devel@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Sylwester Nawrocki <snawrocki@kernel.org>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 10/10] dt-bindings: display: samsung, exynos-fimd: convert
 to dtschema
Message-ID: <YgRHgg6TNjBzMBY6@robh.at.kernel.org>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
 <20220208171823.226211-11-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208171823.226211-11-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_150022_808247_A1B7CB57 
X-CRM114-Status: GOOD (  10.40  )
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

On Tue, 08 Feb 2022 18:18:23 +0100, Krzysztof Kozlowski wrote:
> Convert the S3C/S5P/Exynos FIMD bindings to DT schema format.
> 
> The conversion includes also updates to the bindings, matching the
> current DTS and Linux driver: adding optional iommus and power-domains.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/display/exynos/samsung-fimd.txt  | 107 ----------
>  .../display/samsung/samsung,fimd.yaml         | 198 ++++++++++++++++++
>  2 files changed, 198 insertions(+), 107 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/exynos/samsung-fimd.txt
>  create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
