Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29F4DC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 10 Mar 2022 19:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gt1VO+fvth9OBspIe3rt4VpGr1LUc73ZCbYNZuC+MfU=; b=vlXrzQUxRIbUMU
	Mz7NUN1nRTaFK73t4OKAhQY7xZumvSP+uSCs7s1RQj+hF20xsYqArnHgGe4hsR3UCchnhMXiP4Sqo
	MzJvCyXVKE8BQTbsFICj0h62wVInAutbCGB2zqFi8pFBDr7wHzAQwKEA0qJqfp3iYqKoygxS1xEvW
	FQAgxs4/HwyMiFPT1DtFb5O9c5jats61wfVhWbw1Kx5dHv0ZrD5q87TrynvI06lGXvLU6SCf8GKUz
	9G1jc4QVIGRc1BgY36bHSLLdokleA5NH/2iXT3uczalYN5FiHEnXVs77ek+8WxcmV+PPV/oOaOuKS
	K6p7a/0ThQO717CMdFdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSOuw-00DtG3-If; Thu, 10 Mar 2022 19:57:46 +0000
Received: from mail-oo1-f41.google.com ([209.85.161.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSOuu-00DtEl-2d
 for linux-phy@lists.infradead.org; Thu, 10 Mar 2022 19:57:45 +0000
Received: by mail-oo1-f41.google.com with SMTP id
 r41-20020a4a966c000000b0031bf85a4124so8172767ooi.0
 for <linux-phy@lists.infradead.org>; Thu, 10 Mar 2022 11:57:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=587tAXIBt5gJJ3K1jLql4ANpqCMpV8KK/y6s0w17IXk=;
 b=EWTwEPwIHr7uaW7e6bOApSvci1HS93HrR86TaSoyopXRloysvugUYxPX0iVOjEcRAp
 ALDFg+6L6xGoLdVTmGvRyU5x30b8XRRpzhVXPRy8vkaVazsjXYcC0WDOMFvkl2mUxIx5
 WPQh/3yiucAhj/a6MElUcoXZpXvQp4FP2SCXMj2Rnfs+2Mw54l8qMMSGlCaEJF37/IVK
 HOUf8UTQ41E/LJXUHqj+BXZh2smut53GYX/urYxMRi/CfriV4g4MXGvZFdsJmBCwMUy4
 WWQa4DUirv3R50PPJ4kYXhzaBqTD1bCKGwV2E3f62Ol5++iXIbcZUYzJztIJWwvd77TZ
 jk0Q==
X-Gm-Message-State: AOAM530/d/y4NcUcro6AvcdRv73WD0mVI5Ck4bBJLA/qIr+tXNlHnjpq
 sB2sPzo2zsadGxhCPxr4mQ==
X-Google-Smtp-Source: ABdhPJy0/xxQ0Sd2U0RGSOepEneFwG4AkAJYPmmeu723uJ6K6quTywusFm1ZrUeCPMvbFjwFZnUV9A==
X-Received: by 2002:a4a:8c61:0:b0:321:435a:a779 with SMTP id
 v30-20020a4a8c61000000b00321435aa779mr3175656ooj.40.1646942262757; 
 Thu, 10 Mar 2022 11:57:42 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 y15-20020a056870b00f00b000d75f1d9b81sm2680733oae.46.2022.03.10.11.57.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 11:57:42 -0800 (PST)
Received: (nullmailer pid 1960637 invoked by uid 1000);
 Thu, 10 Mar 2022 19:57:41 -0000
Date: Thu, 10 Mar 2022 13:57:41 -0600
From: Rob Herring <robh@kernel.org>
To: Vincent Shih <vincent.sunplus@gmail.com>
Cc: linux-kernel@vger.kernel.org, kishon@ti.com, p.zabel@pengutronix.de,
 linux-phy@lists.infradead.org, vkoul@kernel.org, wells.lu@sunplus.com,
 linux-usb@vger.kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 2/2] dt-bindings: phy: Add bindings doc for Sunplus
 USB2 PHY driver
Message-ID: <YipYNWqQwYZUCGTN@robh.at.kernel.org>
References: <1646393418-26421-1-git-send-email-vincent.sunplus@gmail.com>
 <1646393418-26421-3-git-send-email-vincent.sunplus@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1646393418-26421-3-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_115744_144654_2749168E 
X-CRM114-Status: UNSURE (   8.85  )
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

On Fri, 04 Mar 2022 19:30:18 +0800, Vincent Shih wrote:
> Add bindings doc for Sunplus USB2 PHY driver
> 
> Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
> ---
>  .../bindings/phy/sunplus,sp7021-usb2-phy.yaml      | 73 ++++++++++++++++++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
