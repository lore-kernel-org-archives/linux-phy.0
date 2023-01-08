Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E82AC54EBC
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 20:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHn0+lST+9AVXSPdn7pxl28fgh7N4T4UQT3YNw2uAak=; b=SFkSsd25bETJLC
	Y9mUoONZkOedTs+oeQBRW3rURQri7zqlmXKenRzb3u33zuuKo48utw3mvAuh61xoGhBFr981CKryF
	RhzpOJ0IRtQu2KofF5aHBnt5vjtsfUEZibNJwQ0BgndhLPPs66MyOdk63Sj6o3fx7FUaxzEOZmmuy
	US8fQKBjtAZ6tdBDhBHFoC8AWWox4vclpK9oZ36taBUA0ecfLGdf7vLk/8kvXFIMic0HEsNqKuxdd
	I32OaoFrGJE47juVpBwJ4gty4MMCGcB7GuWzKMZk/iDfqeUT+VFYcdO22TcxPk1xOe4CbmZEtu9vX
	Exdb1CBGeygLyrRET03g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEc4U-00FasB-RP; Sun, 08 Jan 2023 20:15:10 +0000
Received: from mail-il1-f177.google.com ([209.85.166.177])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEc4S-00FarI-6w
	for linux-phy@lists.infradead.org; Sun, 08 Jan 2023 20:15:09 +0000
Received: by mail-il1-f177.google.com with SMTP id bp26so3959233ilb.3
        for <linux-phy@lists.infradead.org>; Sun, 08 Jan 2023 12:15:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JLlUIpZ0yRF5inoLVaECHxmgQGy5BGFowv/igmFsU9s=;
        b=csD/eeNCLGYgX5DxH+UJ6Mm+2CW0nNA5A4k17ckSaPpkrl7h0Wt4aMGi0XFbk4sb1c
         kcBEViXp0wc3vRO4Z/NJqIdLKqYR/sLvTMYBim/QDhJdTvlVcLgUuot83yX582BoIFSm
         8VhS+Pfoihs6EGgtIXwwGkpiVFSQfvPOOGpTJEUibil7ik/MXIaVCHkiGDfnxci5JsPR
         GYyCn2QZXpTbscjMtPMotbrscZrlW4ooGD0uXmx41eZ9ifZnvh11So7zNdQ68IDJPZCi
         E/kQBhCNbCVQB7koDTpGJHA/zbKVL+XpFBCHyFRa1kkQoN/GL0hptT2NE7oToKQ4lofG
         1Rhw==
X-Gm-Message-State: AFqh2krm3GgRt4QsGoat6o4EJfQgmgx6knRdqcvV7B0YJZNnyOOo12/b
	YDqKG4CswDA4oWsidaAL3g==
X-Google-Smtp-Source: AMrXdXt+l2Cwca4cuUyaO+DlZLxTsM4wlJRK+RtREIPn2jPU65LC3w7wpndBn5rpd0775jRjQGjhYA==
X-Received: by 2002:a92:d94a:0:b0:30b:f4af:b32f with SMTP id l10-20020a92d94a000000b0030bf4afb32fmr38771210ilq.23.1673208906726;
        Sun, 08 Jan 2023 12:15:06 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:8069:516a:f2b0:691e:4315:7c0f])
        by smtp.gmail.com with ESMTPSA id z17-20020a027a51000000b0039e296bf18esm2202153jad.167.2023.01.08.12.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 12:15:06 -0800 (PST)
Received: (nullmailer pid 220563 invoked by uid 1000);
	Sun, 08 Jan 2023 20:15:03 -0000
Date: Sun, 8 Jan 2023 14:15:03 -0600
From: Rob Herring <robh@kernel.org>
To: Lux Aliaga <they@mint.lgbt>
Cc: linux-phy@lists.infradead.org, marijn.suijten@somainline.org, Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org, martin.botka@somainline.org, Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v5 2/6] dt-bindings: phy: Add QMP UFS PHY compatible for
 SM6125
Message-ID: <167320890262.220493.12109738826337104873.robh@kernel.org>
References: <20221231222420.75233-1-they@mint.lgbt>
 <20221231222420.75233-3-they@mint.lgbt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221231222420.75233-3-they@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_121508_270908_3234C141 
X-CRM114-Status: UNSURE (   8.15  )
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


On Sat, 31 Dec 2022 19:24:16 -0300, Lux Aliaga wrote:
> Document the QMP UFS PHY compatible for SM6125.
> 
> Signed-off-by: Lux Aliaga <they@mint.lgbt>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
