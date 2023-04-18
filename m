Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C479C77B7C
	for <linux-phy@archiver.kernel.org>; Tue, 18 Apr 2023 22:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fOWOk703IFSDzUC9zu6dukuVqHx8VLM7npzY68px6M=; b=wwKz1x1OrTjGRv
	0IGYZ1ZGt1KYmAJFVJYMmdU9MKN5QEImSbtI8gY+lBoofcgEovVc7jqbYMpPDORwehl0Q+4kC1/Iz
	rI3ZWVferp14G7gYUjqEBa4eLqeCKGjjBcGNiADHzhxsKQLIHmDcACEkMNPGd4lttqOBxLBbqm13x
	b5Fx1jTiTJk/BH//UusHjpFSKEMI2eqRdk+N1H6B448foGDd5UCrKlFwOqlYT+MesMB5sOeypA5EL
	zoq6c5fVRP8J9oadAg5FAI3k4mzYTzoiJKL1CFxfpBCM+G0dNULB3TuVxaYAT21NZ16w3IzuPllVX
	mUGlygOMkrNh8DgXz43w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1potPc-003SfP-0E;
	Tue, 18 Apr 2023 22:02:56 +0000
Received: from mail-oa1-f50.google.com ([209.85.160.50])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1potPZ-003Ser-1J
	for linux-phy@lists.infradead.org;
	Tue, 18 Apr 2023 22:02:54 +0000
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-18785c2f39fso603169fac.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Apr 2023 15:02:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681855371; x=1684447371;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QI7D87InjhbBs5EZ8THYXnMAUWuofN84rJTqz1HIfe0=;
        b=Fx/2rt4jEIo1ayuj2SZxA1P0bjxffofJEeq2AQe2+5nc1JYrsc5lBUOd95hyVyM73o
         FTQDNH4p3c6bN9V0sGTZWY36Gg1npy7UYCVzaU7e5lKpmukYQVnPq1ibF2Wurp4KSuwl
         S1to6hhtzoTS+Byk6ia2ZOdMBb1INtiu4wY9H+qn79wqo6tgNSlyDyjLDfKXjZ6r16QJ
         PVgzjOhGTm5gFRCPY2vG0DpfBXU17TYGxkojJmD34x5x9zdOBQY0p1hxLqx1lP5PIbjb
         H9J9qXklOe09Q7ywqxvG8wfRVs6cfjU7QYlzATskChlO2xXan7BcEPHM9Xy58Teovxm6
         H8aQ==
X-Gm-Message-State: AAQBX9ePC8/gmz5kSnlBKus/00xPqaTTCEqIyAfx/RJfWXCeP/X8Tkiu
	eLzZhoQC/xOmjP3HNu/8zQ==
X-Google-Smtp-Source: AKy350adrkwoDBM/BxR6mRY2zD33IZaIewcPncoeCx+VQU/atsuFvdm7h8sMt7+MTUZiPvNZONir+g==
X-Received: by 2002:a05:6870:8928:b0:177:a4d0:e389 with SMTP id i40-20020a056870892800b00177a4d0e389mr2034044oao.28.1681855371247;
        Tue, 18 Apr 2023 15:02:51 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u5-20020a056870b0c500b00172ac40356csm6011756oag.50.2023.04.18.15.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 15:02:50 -0700 (PDT)
Received: (nullmailer pid 2408753 invoked by uid 1000);
	Tue, 18 Apr 2023 22:02:49 -0000
Date: Tue, 18 Apr 2023 17:02:49 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org, Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,edp-phy: allow power-domains
Message-ID: <168185536811.2408674.3978903723829554887.robh@kernel.org>
References: <20230416151233.346336-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230416151233.346336-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_150253_462212_F5362781 
X-CRM114-Status: UNSURE (   8.96  )
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


On Sun, 16 Apr 2023 17:12:33 +0200, Krzysztof Kozlowski wrote:
> At least on SC8280XP the eDP PHY is part of power domain:
> 
>   sc8280xp-crd.dtb: phy@220c2a00: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
