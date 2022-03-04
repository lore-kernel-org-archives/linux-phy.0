Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FD37C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  4 Mar 2022 23:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0je5a6yVwGGj1W+C4hIB69SYG01Otz6FMrNph09JWI=; b=nTgzZWQqTOxZEl
	VBF+hvrUV8Z1Aq6EG8h/5sHewhs5BJmw0wXbFOVCTEwlFKNLJrVdQgeAohgk9D/Tp1VVM9l0aF3fw
	hlD6AnV3v0pIB3VifVzm411vReh+gUHjSBhyjDGsVfysxTAG2mtNMhIMXPuJA8JMV5VN+AR7gbQ5H
	PpDYJ5UrpKPZag3dNDMBgpC6wDQKTGYdzVaRreYnDWCD1yoZldiwaeLLh32DAG/O9O8/5TfD06Gcy
	epdbi0lFC1aUMjZZIkCiQc8LkT+GVDF+FGdl4xuuRDHoPCUqILAon70ahUgzXhvmDIw12G/NO8Zjx
	Lgn3b6NfopYoGLKkX59Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQHp7-00CPyT-W2; Fri, 04 Mar 2022 23:59:01 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQHp5-00CPxs-Fj
 for linux-phy@lists.infradead.org; Fri, 04 Mar 2022 23:59:00 +0000
Received: by mail-oi1-f180.google.com with SMTP id s5so9459378oic.10
 for <linux-phy@lists.infradead.org>; Fri, 04 Mar 2022 15:58:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3vaokBMj/J8kbDel9BxGln/8gBsCxja7J1uSkU+kzXA=;
 b=J3PmFLRKCeuwtg5Sw6gD/5gxeCRWX6B/G8XjCHzpH8DUzPWhSTBx+UkskK+giXN5OX
 t4M3RPVsXg64Zu2KrgFklrAalKkNKR/j8gKAfhIbNNl3cvxz1wyKUo0XdfVNZVMPgyEY
 8VL8APlx84sP0KN2OiZyDLSghlY+uSQTd7ErZK20JMRw3d8Veo8bBxVJhxJVCK0b5d2G
 FyEG7itpyFxUXZhqGSmCi0GZgFusZ7fNJNDQnDX0ZinoBOFxikMpjwPCVpwIAMnoiJ4p
 7Sibq6tyYP00Y9Hir1CwE0G/u5LYjyIzKKeeZZKwoRKsFOLuY/Irg1kmXfu/UveJ81Je
 In0w==
X-Gm-Message-State: AOAM531JavChIVh8OUji7FxqdFM10pKGdhSUzoF03kePky+Xs3x/w4xL
 yh3h0PQ9zr0kB9cL4g6OBQ==
X-Google-Smtp-Source: ABdhPJwgFu6dD1NTwa+Ou26TV2rAcT5cOmUnEJv+rdOqUmRd59DkF1MPbe8UFQT7YLwYY/JvNusJDQ==
X-Received: by 2002:a05:6808:3008:b0:2d9:a0c7:dd3c with SMTP id
 ay8-20020a056808300800b002d9a0c7dd3cmr534141oib.181.1646438338651; 
 Fri, 04 Mar 2022 15:58:58 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213]) by smtp.gmail.com with ESMTPSA id
 ex5-20020a056870ed4500b000a8853e8651sm2922799oab.23.2022.03.04.15.58.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Mar 2022 15:58:58 -0800 (PST)
Received: (nullmailer pid 721760 invoked by uid 1000);
 Fri, 04 Mar 2022 23:58:57 -0000
Date: Fri, 4 Mar 2022 17:58:57 -0600
From: Rob Herring <robh@kernel.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, shawn.guo@linaro.org,
 vkoul@kernel.org, linux-phy@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v2 7/8] dt-bindings: phy: qcom, qmp: Describe phy@ subnode
 properly
Message-ID: <YiKnwTZXev/ciErl@robh.at.kernel.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-8-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-8-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_155859_552628_C09BEE16 
X-CRM114-Status: GOOD (  14.55  )
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

On Mon, Feb 28, 2022 at 06:00:18PM +0530, Bhupesh Sharma wrote:
> Currently the qcom,qmp-phy dt-binding doesn't describe
> the 'reg' and '#phy-cells' properties for the phy@ subnode.
> 
> Fix the same.
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index 70e7cd75e173..f8a43acd229a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -115,6 +115,13 @@ patternProperties:
>        Each device node of QMP phy is required to have as many child nodes as
>        the number of lanes the PHY has.
>      properties:
> +      reg:
> +        minItems: 1
> +        maxItems: 6

You need to define what each entry is.

> +
> +      "#phy-cells":
> +        const: 0
> +
>        "#clock-cells":
>          enum: [ 0, 1, 2 ]
>  
> -- 
> 2.35.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
