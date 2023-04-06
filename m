Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD58EC76196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 16:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EYuhSxodhW0wrOhycHkc4iXkBZj74Oyop5Uz3EG1JQ=; b=NeaqJ8UjHg/b56
	W+yk0kj7ebWTY/9spzmxyR12rbfDB6Jn2igaEMRjSxRrn8SyDiUmz5GR3IF54T4srG1ryJ7yU+/JW
	zIzqb8L0JEvbuWVSxI0GV+F3XPW/UcdKYxOyTN1qHec7Tf/we4/3TPBuzz3n1L0d2fMDTnZ/2+hZN
	PaOMKSSh89IwPFpK/C8vDixGd/tRC886f7Nhnv3CMJlgmYebMuosrwSuS8i2vLP5RpG0ogzdowewr
	pwlxJ6RbjM/wIWxeQxveU6V7PVyUMI0sSWXi0KrX5d8cKw1FJGxYRe5G3U0a0CCdsA4jHyekUt3nT
	wunEZ5IbYWJvBJGxFMBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkSmR-0083Du-1Y;
	Thu, 06 Apr 2023 16:48:11 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkSmO-0083DL-1k
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 16:48:09 +0000
Received: by mail-oi1-f171.google.com with SMTP id r16so29426340oij.5
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 09:48:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680799688; x=1683391688;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lr+NBLFTleCn7oiTmn9jRVr9291SRIsnMI4MXV5mmfE=;
        b=PGn1TKY2qE6T7+zABm1Cy8oun0G2Gnu/wQZJtE2jOzvyJdaU7D69vixBeJLpohtwf9
         ty3zfZy+OeHJl2ae7R16vhj92jWQVUfBC+BNyUOxRU6PWcC8+dA9K5BHAiRDWpJ5IxKs
         1m3TixmWzG6buOVnUMKEWcvkN5KUbrStZdXE9bxDRwziqp7VsgVrHNw+uV4yUZZVwEWW
         GaKaj1GfKmNuGHOo/VCpi3vltW1qrfGGcyTjRudr0KI8s3K3gYtaLPYzitk43+AdHiN4
         +ni6Cp/oXTpWPO8ofFbfWxnP1CzuNl26JdEmskMJqkgIDM5Ad0pw6vm+86cMw/Pj7pKi
         bkcg==
X-Gm-Message-State: AAQBX9cwVq2CWW7vTu5weCvW0FIyPVVFooF9SHPH+HnmMLW7Tv45+/az
	8uynSgz52bibMlCIkntFmg==
X-Google-Smtp-Source: AKy350YuXAJQFQWkBQ2z3cq6W/FU5uHXPURwTy5ZCMy0TrwFlFHLi1z2KiCu8FQPVApTJUuY0oQqfg==
X-Received: by 2002:a05:6808:1a1b:b0:38b:5d3:f79a with SMTP id bk27-20020a0568081a1b00b0038b05d3f79amr6533620oib.19.1680799687898;
        Thu, 06 Apr 2023 09:48:07 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a43-20020a4a98ae000000b00541269a2fcesm751807ooj.25.2023.04.06.09.48.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 09:48:07 -0700 (PDT)
Received: (nullmailer pid 3283436 invoked by uid 1000);
	Thu, 06 Apr 2023 16:48:06 -0000
Date: Thu, 6 Apr 2023 11:48:06 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Swapnil Jakhade <sjakhade@cadence.com>, Yuti Amonkar <yamonkar@cadence.com>, Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: phy: ti,phy-am654-serdes: drop
 assigned-clocks type
Message-ID: <20230406164806.GA3282995-robh@kernel.org>
References: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
 <20230404190115.546973-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230404190115.546973-3-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_094808_577970_5449BCC5 
X-CRM114-Status: UNSURE (   9.18  )
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

On Tue, Apr 04, 2023 at 09:01:13PM +0200, Krzysztof Kozlowski wrote:
> The meta schema from DT schema already defines assigned-clocks, so there
> is no need for device schema to mention it at all.  The specific
> parenting of the first input and output clock is apparently important,
> thus keep them as required, but without defining type.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/phy/ti,phy-am654-serdes.yaml         | 5 -----
>  1 file changed, 5 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
