Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74499C54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 21:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFu5Iwxcek98V8yzCyrT+LQax4fVLileTSWU6Uaj1uQ=; b=hXSfxR/NlmNC/a
	9uNz7K4AeuXjUU9CV2LxsjnOFA+nnME7/KLh9Yd0MMgcB6WdnQFG5ghZFPpiEZHTR/VuZDIpZbaSK
	catKfZnNuqN3Q/Gndo7lcXlEr6md+nmtSOWMCyJpKYQZ61ZOJdKR9+LG/6D8msm5hoKJFjgub7tvr
	WDL8REKxgJbyvUE2AdbEhgbvJ/v1KjRqrz5UOt/k6KRN9l9ezOwT/Q3RcPATWPe14xngVfJo2Hwrc
	7VZp722HNLVBZtNZFyPSL+pjv0RNNpn63/HCeapHtGhAbRkRZ7DzZe7pxvDZCESXl83lrLUJitzjX
	0eanrPenTjcsephja48g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLWCR-00GXSU-P9; Fri, 27 Jan 2023 21:23:55 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLWCF-00GXP1-30; Fri, 27 Jan 2023 21:23:44 +0000
Received: by mail-ot1-f49.google.com with SMTP id e21-20020a9d5615000000b006884e5dce99so2608762oti.5;
        Fri, 27 Jan 2023 13:23:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cyNyx9MRAGwe4fu5uXWV7BSlMqMk0+yLaGW1dutDc6o=;
        b=jIbTDyeNJfwJsofeSwNXOcx73fw1oHeXeUENYQ/iGbB/AAwEPyqYZs+wflRanQDACd
         gnBZ99MaMLA2xElYokohF25Ewc+5AlRt51GVRgTybfNczjZNrR4gBlICnqws5p0oGuR/
         8pJEvWe40G//E1p5sKNwGY6rrQVX0mMakMNCFMTL6uGjvQmrXpQKkr7HWNfGX0il4vuy
         zJjdTPhE9lTpfbhAdlgMpJ5sDSqe6OYWQSKIRW5xHQCHNs7q/BOs7QMsYPsJqLLyPc0r
         EvqTQVO60QVo2rm3XxADIU3JZoEbeQEblXyKoHcNfUydfbT0l/QwsdJCwpMNm+SnbMr1
         Dccw==
X-Gm-Message-State: AO0yUKV/3upYkmjILjrQwMbwlaqx2DHNqWV15/ij0mH1obSXZvrkguc+
	g3x0weEpztnt/b95qisgkhhh/3/BeQ==
X-Google-Smtp-Source: AK7set9hoFnAHHCAH5ojVpwXzh1BY1WWbz9NHe8AkgB3/OjD6iE1GIHKEd1c+U+9Fx68eEdgROItRg==
X-Received: by 2002:a9d:5c84:0:b0:686:4860:fa2f with SMTP id a4-20020a9d5c84000000b006864860fa2fmr3572939oti.29.1674854616198;
        Fri, 27 Jan 2023 13:23:36 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k4-20020a9d7dc4000000b00684d5bd56dbsm2246654otn.66.2023.01.27.13.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 13:23:35 -0800 (PST)
Received: (nullmailer pid 705463 invoked by uid 1000);
	Fri, 27 Jan 2023 21:23:34 -0000
Date: Fri, 27 Jan 2023 15:23:34 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: phone-devel@vger.kernel.org, replicant@osuosl.org, Sylwester Nawrocki <s.nawrocki@samsung.com>, Marek Szyprowski <m.szyprowski@samsung.com>, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-samsung-soc@vger.kernel.org, Martin =?iso-8859-1?Q?J=FCcker?= <martin.juecker@gmail.com>, Henrik Grimler <henrik@grimler.se>, Chanwoo Choi <cw00.choi@samsung.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>, ~postmarketos/upstreaming@lists.sr.ht, devicetree@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH 1/8] dt-bindings: soc: samsung: exynos-pmu: allow phys as
 child
Message-ID: <167485461395.705377.3305250197466853388.robh@kernel.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
 <20230127194057.186458-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230127194057.186458-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_132343_152321_03044727 
X-CRM114-Status: UNSURE (   9.22  )
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


On Fri, 27 Jan 2023 20:40:50 +0100, Krzysztof Kozlowski wrote:
> The MIPI and DisplayPort phys are actually part of the Power Management
> Unit system controller, thus allow them as its children, instead of
> specifying as separate device nodes with syscon phandle.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/soc/samsung/exynos-pmu.yaml      | 71 +++++++++++++++----
>  1 file changed, 57 insertions(+), 14 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
