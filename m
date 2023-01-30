Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6550EC54EAA
	for <linux-phy@archiver.kernel.org>; Mon, 30 Jan 2023 21:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxR4Y/faz2uzPkBlTyJsb2BNZ157Il2bUFrguX+4JUE=; b=O4VK6Fbl6XjEwY
	tLPTYorXTEV1Jv5W3NRzItLKRzqTxUzZB/HPofQuhAYbmt5lm6hXsuK2Np+sTXNXGuZ+b7ZeQe/ih
	elP0tE+tGeJbcXZMqO/gJXIlCIzZw4j/4H4gPI6pHP0ii95X4/nkvQtvmKsGk7XEj6MBSY98/28Ch
	AHnM1YPz6dRCT87AYIOAZ2DqFZUl58PnwPvdQHm9KBKsoZ9/aVaCCECc1U4zIWEaKnaw22Intosgm
	gFkg/FHx2y2/CQ6zZhVfkbn6akwIrfXzYqvn9cvGLnDi92hm91Mr3uoJorGKJZ5SvlyI6SU84cKUu
	sLBjt/TuZVkVdSpXayGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMbVX-005SXt-P1; Mon, 30 Jan 2023 21:16:07 +0000
Received: from mail-oa1-f42.google.com ([209.85.160.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMbVR-005SWq-TF; Mon, 30 Jan 2023 21:16:06 +0000
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-15eec491b40so16828973fac.12;
        Mon, 30 Jan 2023 13:15:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sWEGTFkEGCDwt0FDdOMuv/dycXI91d7WGTYMVLBwuV4=;
        b=ngyYCWhGl6bMJxb4sbjR9RZsLmbBcxG9HnmxLchmEJpI9JEPQFfKa8+4qtBxFisy5B
         /T/uMglGAOJHdDzenxk7Jgjl7C+LYSEOmGvJOCG1nQ7JR0aR/RMDFi39dRHYLO11rCig
         5rLPBdJu130YvRwQvu4aVjsFZ9nB+3ppQt2OhIoxJ+npmwNm4pUwh5t/cMhtTO8kIhNG
         Uaob2Xc1BQqc9EsX6gszpNibpQjsvOtM+13s+9WhsL0PWfRX1V1J5agUEKnGbIxKhrtQ
         HnP3c08MyFtj7te7aPXhcrGxmrIUS965Lvrm0DV+V6j0CvwEgu0BhoXuyUXyEzlgsKgG
         qiNw==
X-Gm-Message-State: AFqh2ko6jrNSP9ZygI0ArCqGTsi0W7ryj5okRNc9+PmiJtY1DHek6wjv
	D47abmbCe4MZX4bVrj7h2Q==
X-Google-Smtp-Source: AMrXdXsTk6bSgzcgfo/aY72f07w1LwS4ubdDx+nCb3KYjoCCBxMPlbe/5r67QDTxRQUn6JtsKvp4iA==
X-Received: by 2002:a05:6870:b50a:b0:15f:b59a:55f1 with SMTP id v10-20020a056870b50a00b0015fb59a55f1mr22963203oap.16.1675113358561;
        Mon, 30 Jan 2023 13:15:58 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x8-20020a056870e38800b00144e18d8525sm5702732oad.25.2023.01.30.13.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 13:15:58 -0800 (PST)
Received: (nullmailer pid 3443932 invoked by uid 1000);
	Mon, 30 Jan 2023 21:15:57 -0000
Date: Mon, 30 Jan 2023 15:15:57 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-kernel@vger.kernel.org, Sylwester Nawrocki <s.nawrocki@samsung.com>, Martin =?iso-8859-1?Q?J=FCcker?= <martin.juecker@gmail.com>, Marek Szyprowski <m.szyprowski@samsung.com>, Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, linux-samsung-soc@vger.kernel.org, phone-devel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Henrik Grimler <henrik@grimler.se>, Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, replicant@osuosl.org, Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 2/8] dt-bindings: phy: samsung,dp-video-phy: deprecate
 syscon phandle
Message-ID: <167511335663.3443736.11676143782553912242.robh@kernel.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
 <20230127194057.186458-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230127194057.186458-3-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_131601_963771_E83D714C 
X-CRM114-Status: GOOD (  10.59  )
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


On Fri, 27 Jan 2023 20:40:51 +0100, Krzysztof Kozlowski wrote:
> The DisplayPort phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/phy/samsung,dp-video-phy.yaml        | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
