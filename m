Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B26C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 13:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRZHVIX0/m9GgUo7bM/HXirKuX4QKq46fGqJ1xqtsoY=; b=iVJcLsWFoufxN5
	wXSBTrWd/GgKk9nBoVwQA8Rjq68tNlzShGZW+eubnjccAEJntx2n/gzxfDNNGJDKbioCGXXmaiMg8
	yIiXZGur5dmyWNPA2IpUm+fuUH4TCA2XcEDunsdtJ2bB1pwSxvjmf9SHfqOGDKAE4iC/zzmb9emwl
	uqUKmJYL91QvfnVDD3oj7ct8s3rxQwBmj/h0DbebjT6/y5r2tCPCZd6JLegI0wrrVkHRk0W9J/ojR
	cNaC/RWWYV2rRFDXDG7wbLxGCZkg/jXGbZKReFNTwTt2NR74cF52M12Q3U6plio7KJ19RXNG5goHb
	XOBkyPeFTzUCrpPbg3Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNEeX-0013F6-SW; Thu, 24 Feb 2022 13:59:29 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNEeQ-0013C8-7o
 for linux-phy@lists.infradead.org; Thu, 24 Feb 2022 13:59:28 +0000
Received: by mail-oi1-f176.google.com with SMTP id a6so2544909oid.9
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 05:59:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=IRGawcaWb3HAdRKUCLswxk7TuJAtTeTMggo9Sf2B36g=;
 b=m4ZXuLwvJUwi2mZa2/jrgor6KLhYhthapMl9QIJTurzolWnEEAU96s147lyucY9rfg
 eO8PlVfLfz+yifGMWmcjDqjSVT8s7Orr3/ew6uBo1Lc5fEcEflChZIycl2BxC1OD524k
 Rn5MZzqEEURiZgUuZMT62xBWy9Iqdhd3aNCJIRW7M014frOIX542TruIIz4VF6RT5CTF
 4AbczgSxgHabVys63PK2OckC51Evf2FWArk9m/CS+FVYyQMXNJSfCWPcwwGcA0O6tWot
 h+mnjLyDHA6DS7/2qLjekYgwGFqOWbkNt9fjTZ27r/wasOtXyTN871IcBdd3vAK994Cu
 Wauw==
X-Gm-Message-State: AOAM530OPFb4Eiaz/7PFVLfRWJgaZhMM2QCZHhwueYXUh8NVTMEdN1z7
 oIpqf0WJB0F8LvoDSkfAhOqn7t+cqg==
X-Google-Smtp-Source: ABdhPJxwUBdfub1XrfEXqlhfEm0hBC0rX1ftJRWiQjrbMw8v19MhBVkkdZwf6W/zs7MeVz6KdORuOQ==
X-Received: by 2002:a05:6808:238a:b0:2d7:1878:9623 with SMTP id
 bp10-20020a056808238a00b002d718789623mr1267173oib.1.1645711160906; 
 Thu, 24 Feb 2022 05:59:20 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id d7sm1206734otl.44.2022.02.24.05.59.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 05:59:20 -0800 (PST)
Received: (nullmailer pid 2923125 invoked by uid 1000);
 Thu, 24 Feb 2022 13:59:19 -0000
From: Rob Herring <robh@kernel.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: agross@kernel.org, bhupesh.linux@gmail.com,
 Bjorn Andersson <bjorn.andersson@linaro.org>, robh+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
In-Reply-To: <20220224123248.67073-2-bhupesh.sharma@linaro.org>
References: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
 <20220224123248.67073-2-bhupesh.sharma@linaro.org>
Subject: Re: [PATCH 2/2] dt-bindings: phy: qcom,
 qmp: Describe 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
Date: Thu, 24 Feb 2022 07:59:19 -0600
Message-Id: <1645711159.080022.2923124.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_055922_310667_57DA7115 
X-CRM114-Status: GOOD (  12.42  )
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

On Thu, 24 Feb 2022 18:02:48 +0530, Bhupesh Sharma wrote:
> Since a few boards based on QCoM qmp phy use the
> 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
> describe the ufs phy nodes, add them to the dt-bindings doc as well.
> 
> This fixes the following '$ make dtbs_check' warning(s):
> 
> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>   'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
>    the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1597137


phy@1c07000: 'lanes@1c06000' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm/boot/dts/qcom-sdx55-mtp.dt.yaml
	arch/arm/boot/dts/qcom-sdx55-t55.dt.yaml
	arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dt.yaml

phy@1c0e000: 'lanes@1c0e200' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/qcom/sc7280-crd.dt.yaml
	arch/arm64/boot/dts/qcom/sc7280-herobrine.dt.yaml
	arch/arm64/boot/dts/qcom/sc7280-idp2.dt.yaml
	arch/arm64/boot/dts/qcom/sc7280-idp.dt.yaml

phy@1d87000: 'lanes@1d87400' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/qcom/sm8450-qrd.dt.yaml

phy@627000: 'vdda-phy-max-microamp', 'vddp-ref-clk-always-on', 'vddp-ref-clk-max-microamp' do not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dt.yaml
	arch/arm64/boot/dts/qcom/msm8996-xiaomi-scorpio.dt.yaml

phy-wrapper@88e9000: 'vdda-phy-supply' is a required property
	arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx214.dt.yaml
	arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml

phy-wrapper@88e9000: 'vdda-pll-supply' is a required property
	arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx214.dt.yaml
	arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml

ssphy@78000: 'lane@78200' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
