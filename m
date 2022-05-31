Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBC70C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 22:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXV4XIUncPlYvvOedcIfXtueBVxli+O7rtGc7Veyc+Q=; b=fj7Iqyg8Iqhqvu
	NOboyv0lLerB6bNF+vuUuxTrTa+axzU0jnw9+W2Oal4hE7l0adpb87U6Nm5ylxUhPtAKdxzMBJ2oO
	MHhqfJG9QhJQY/9i2h7wLEFYGedi/33Dtx7w3q48JdrlQx4751YSCZquOeAm0FqnDHrObgoIDYZ+I
	bjqX2SdlWcyE10hNUneN8eSyUXNVtom/A0X47kcSKUr7MFM/U6h6WPxTD+J5wykbB+o3GmVsSCH4R
	JjV+VwJXlmtHkXSIE2X7GfkwF8yKODYRIqBsKvHX3xFSFZXPNXW+Z6WiGxssjwfZRr8CWW5ZDDmhh
	LwpzHTir+lSLPC3+p+Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwAe1-00CtWH-3y; Tue, 31 May 2022 22:47:21 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwAdi-00CtLG-K5; Tue, 31 May 2022 22:47:04 +0000
Received: by mail-oi1-f174.google.com with SMTP id r65so336592oia.9;
        Tue, 31 May 2022 15:46:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=DZZtk3mmH2Uftva4nnZWRRASwAL7J0/4OgI8K1pv32U=;
        b=dMu22tuVqVoQaym5We4RlBcuJuXQ4QsDllfbtVfBpyO3HajX0ErfwxmJrbNavH3rLU
         cUlfohUmvtq4DIzFeOd5vwFf1KU3gb8G75RvhpSfW3Y2YJ/PR1KSEu3gE+TS/iuiwbJI
         O8krXRc4zCn32IScTINYda4QUkrc00e0+4T4fdfWjd41xjs7VFmWi+rzRDdgm5szZSeL
         +QJo6iPKjAKBHR718gEQrMpsbwupipqFKNCK8NGc9UzQfVBD8IJSnlFpTHrGKI0Pt/yk
         KzIX6oy791CT0BIHQHlpwTlcLS4bpnPA6IbQnBuFKx6y8HQqUuSl2uwle1/k8S1deHXd
         MYDA==
X-Gm-Message-State: AOAM530vGmpH4NZeNbqny5ZXQcok5muxHtAzn/AH5W6LY1mmmLb/5usH
	MyVdJR48PPUr9d4QLJDn9g==
X-Google-Smtp-Source: ABdhPJyahNtzfgfQNEpLagL+4xN0bn8ym/sU1ceRtzVz3hVUAqExMfrao8LUp3cIoB/yoY5Qot63nA==
X-Received: by 2002:aca:1e04:0:b0:325:473:4038 with SMTP id m4-20020aca1e04000000b0032504734038mr13707953oic.159.1654037218851;
        Tue, 31 May 2022 15:46:58 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b30-20020a9d60de000000b006060322125dsm7005222otk.45.2022.05.31.15.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 15:46:58 -0700 (PDT)
Received: (nullmailer pid 2476571 invoked by uid 1000);
	Tue, 31 May 2022 22:46:54 -0000
From: Rob Herring <robh@kernel.org>
To: Chanho Park <chanho61.park@samsung.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531121913.48722-2-chanho61.park@samsung.com>
References: <20220531121913.48722-1-chanho61.park@samsung.com>        <CGME20220531121922epcas2p15861df56f7253265c591a88244520446@epcas2p1.samsung.com> <20220531121913.48722-2-chanho61.park@samsung.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon as phandle-array
Date: Tue, 31 May 2022 17:46:54 -0500
Message-Id: <1654037214.485315.2476567.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_154702_703364_327F3F05 
X-CRM114-Status: GOOD (  10.51  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, 31 May 2022 21:19:10 +0900, Chanho Park wrote:
> To support secondary ufs phy devices, we need to get an offset value
> from pmu-syscon.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../devicetree/bindings/phy/samsung,ufs-phy.yaml    | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml:46:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
