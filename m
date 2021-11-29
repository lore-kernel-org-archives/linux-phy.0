Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8457FC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 29 Nov 2021 23:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t4nBxeyPB1EM2viOR8PDfceS/MZ6cnKiDXgnSxWPRIo=; b=VYJY6/Jhsguyai
	kWcWKR2xkweXKxn19DJqBdxBpizpc7FEHoI/SBjyb73tlXxZCsfE1buQXVP2jL0uHVcha1fUi7faA
	AQ+Wh3AitMUd2XS1awW9mEJH3oNus/b7DnZ+1XJGfNWTqmTCFLdinKZ2drk8xhz4D+cNYYYgHsGt6
	/xCbYL0cfmdl18InjGVI74oihtrrRYAgBwpap93jWNsS33elZtXiP73k8cEikAv5OKIkbOxTSvAW1
	tsgnPT6WKK4NLtjHBqPl1IsDPPRNzh6DWtOlB9FHYi6rJ2qsoRtvgWgKAbAfePMNomMj4JL488i3y
	ZAaCb7TuS4kU0yq3d2TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrpnt-0033RA-VC; Mon, 29 Nov 2021 23:11:21 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrpnr-0033Qa-Fk
 for linux-phy@lists.infradead.org; Mon, 29 Nov 2021 23:11:20 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 w6-20020a9d77c6000000b0055e804fa524so27677683otl.3
 for <linux-phy@lists.infradead.org>; Mon, 29 Nov 2021 15:11:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1CI0eUCmLQSzhgrbo5fWAeYCuyAN+7MXOdPkvLupzvQ=;
 b=cS4KqNqK5hw51H/wEK0CELrPHHl2S5ew966TYk/6/U7iFnsIFdBj9wyrAa4lMxrmCI
 Gj8yupwRed+l9INiC0wFGeCi8atmzTouvQg9ucMMWx1tFLVRZU2eMpi1d4EiCJ7mizWk
 FlH+/Mydvo163Xs2c1b64+ATjLv/jRtEYsOEdWTgKPHcXC+zcuYc/8fd2aV3yrUvTVJw
 855vpA/SHFgV8d/RkwBGTG9z0ovW1muYO17SHoAvg4Bts1e1vZI27isVY59ggj8wvSyx
 lxzO/JPe+xgDXozX+lw0bqZknfz02pLrrktKm4rLAX2v3cCvB9rqIKzsm5R8N4R2b8gh
 fLIA==
X-Gm-Message-State: AOAM530WrFx7HpdtcIGlIImHwz8FH6Eghh40HzivsHrxM1D7VsqUNt/j
 WQDlWXH50KgdhDO5l4tPXA==
X-Google-Smtp-Source: ABdhPJyn5bH/NkhCl4fBrap5C9QP/YwnwzPvEx86qJHULHBAR1eU2SZOhwU/cmcgv3daAIYgboM+Rw==
X-Received: by 2002:a9d:6e06:: with SMTP id e6mr46384951otr.381.1638227478517; 
 Mon, 29 Nov 2021 15:11:18 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id o2sm3502336oik.11.2021.11.29.15.11.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 15:11:17 -0800 (PST)
Received: (nullmailer pid 786264 invoked by uid 1000);
 Mon, 29 Nov 2021 23:11:16 -0000
Date: Mon, 29 Nov 2021 17:11:16 -0600
From: Rob Herring <robh@kernel.org>
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 5/7] dt-bindings: phy: qcom,usb-hs-phy: add MSM8226
 compatible
Message-ID: <YaVeFFOyX8mbiNNZ@robh.at.kernel.org>
References: <20211118210210.160895-1-luca@z3ntu.xyz>
 <20211118210210.160895-5-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211118210210.160895-5-luca@z3ntu.xyz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_151119_545520_BFBCE027 
X-CRM114-Status: UNSURE (   9.36  )
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

On Thu, 18 Nov 2021 22:02:08 +0100, Luca Weiss wrote:
> Add a compatible for MSM8226 which also uses the USB HS PHY.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
