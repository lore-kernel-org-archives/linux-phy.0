Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FF25C64EC4
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 20:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJqSfm0S1tZ7iCfB5MInEjFR45EbEB9qrGNo3TFkK9Y=; b=0qYjy8KG2CMol4
	Yp+toOXwldNb4Ja+hMyYrseA0tEax2AfwZTFUQxzlCk1huqyXikJ7WCRow5NSUPUBH4RCinNUu4Zw
	fq/ITRCnk/65TIv6JWTvJvDH624iPYAJPfWBrJ7LNz1BHbYjor53b5NSHq3Ek+oIvTL3GS6yoC5GB
	+hky4wTaiioJdoDwjcdXYm4DdtNfAqMdaz/a69J+qlcuDjaWUjvVfMnvVerYNSKxGUPdf3E3o703D
	GpVZqJ3OGS+fRsKKzm3CXrujVXztcYTFs315uHStFWfaP/oYur7OYsLbvBYAAgbUUXCWsC609+6iG
	V4ioqwbbS32hqbKQ5xFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPUyv-00DNQ9-AL; Tue, 07 Feb 2023 20:54:25 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPUyk-00DNJZ-DQ
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 20:54:15 +0000
Received: by mail-oi1-f172.google.com with SMTP id cz14so4369110oib.12
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 12:54:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QG1dkQbvjDItv2L+Miw1rSt0efQ50QIrV6acj+RBGA0=;
        b=MDMFqKvOH2yeBrIXpYzhwtXWbmMofkN5kwYqVZXxeJf1AviVz0SAjRDXatiLArgQ0c
         x0Dwl9H706ZHiJfhpe+IQ1QaE37a4NKFyYKMshzvg6XZESXFXLPbQlS+lpKn8WyjURMG
         UEBFrnxUPusRo2Ty4/XJ2HMYtl93vihXWZNanGexr4ojwetnW1+/jaHGadFVi+gtK0Wl
         1cU3F2gWY7B8b9gNp+dHZj4PE+N6K9faLYSlzVqWOPMXl1U2AvD75UBSuNryFnNfIIlS
         OLkIf5z6XSF33gXRXyNHHZW33aQdhwePz2+BVjKkfajfV7ZluLR8a/uEpibvJUBRvcgc
         6tVg==
X-Gm-Message-State: AO0yUKW3xGPQcbDDZBAMFLGnmPfFzXZCzLxfEXQD1gJgnZjYlP62pAIm
	czuP99aziY3bp6DckYAWPg==
X-Google-Smtp-Source: AK7set/0vSNAvhopmd8vgvuz2HXxNJD6l+0qvCpVo6Pu4PixiCMDs8mv6MJYq8tIE8A1X5lt+F3XRg==
X-Received: by 2002:a05:6808:b3a:b0:378:974b:4fe6 with SMTP id t26-20020a0568080b3a00b00378974b4fe6mr2084995oij.8.1675803253067;
        Tue, 07 Feb 2023 12:54:13 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j24-20020a056808035800b003436fa2c23bsm6123653oie.7.2023.02.07.12.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 12:54:12 -0800 (PST)
Received: (nullmailer pid 4137996 invoked by uid 1000);
	Tue, 07 Feb 2023 20:54:12 -0000
Date: Tue, 7 Feb 2023 14:54:12 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp-usb3-dp: document sm8350
 & sm8450 compatible
Message-ID: <167580325163.4137958.14459903168469624324.robh@kernel.org>
References: <20230206-topic-sm8350-upstream-usb-dp-combo-phy-v1-0-ed849ae6b849@linaro.org>
 <20230206-topic-sm8350-upstream-usb-dp-combo-phy-v1-1-ed849ae6b849@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206-topic-sm8350-upstream-usb-dp-combo-phy-v1-1-ed849ae6b849@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_125414_480240_DF8FA637 
X-CRM114-Status: UNSURE (   8.78  )
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


On Mon, 06 Feb 2023 10:58:56 +0100, Neil Armstrong wrote:
> Document the USB3/DP Combo PHY compatible found on the SM8350 & SM8450 SoCs.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
