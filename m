Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41EBDC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 15:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcVN51UKwoDf+Gdsv4amcIfgELEQ1y+9Krp//dk5pCE=; b=fO/pWGqSp6KFbT
	KKq65i2BfJgwybP1jRThU3+2ug5NEhZDmv03GvHBvaza6f25EyugAIvdgnH80ptXIXN3J5LCJumTr
	ZWgVkSA2VQYdm0w/D1xhqcVBX2vfgngTCEjSKVizjHdVZ9i25aPsXE1IR7s76P1769Zulsz3peWHx
	2a0hkaDmjG1jQqSpU2snPlSB7pKAzcd4IZmfF9WXjtxSEz77NXJetVmh5hVzb7FcUGECK4ZJ+RLiL
	HNs/TJdUn9AiV18qdonLuS8Iz0sq7rBDnxgtJpuxpRO5PdD3m4agWK6dcsASaxglgzEqqzy+/uVTp
	rIoolNlB52IaIboEiqBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXSG-007hqg-KZ; Fri, 11 Feb 2022 15:03:24 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXS4-007hoM-Fm; Fri, 11 Feb 2022 15:03:14 +0000
Received: by mail-qt1-f178.google.com with SMTP id k25so9261848qtp.4;
 Fri, 11 Feb 2022 07:03:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/ku3rnuhABpjmC2Eeug92tBeXyU5N8pEMH3pcJ24UQk=;
 b=DfwaOox6VJSMFS5cNIxcYJ43N5T1zwrrjPgn3fcJ9UvsrCqYMUuUr+3NcBwNBYCzDn
 e2dabWIUaTxy3+FN2YvwCicjwokKPpt5HUJ07y8eHzOldPw/re+pXyMNCSAHlIijetRm
 YJZcU82uLLyg+4ak8YWpkkhwvYDmv97b7wItfbL46XlDISt933XQ5rXR8ixoHcyokNor
 /vf/MCKjuDO0AHxOllZMit/f5IKAROGhbAs1yLSF1ayUuqlkq0q+0bX1LnGtEjF8jVzS
 X1O3hA3+7KPagOxMBnYtQpvEibAnx9Nau5f+dvXeXzT6qEYmri0nw51/JZYGmckWALKH
 Nlvw==
X-Gm-Message-State: AOAM533JEQncC0jIhxZ6MIbLnuBZokBo+volWViadOGfhKFVf5+dcsJj
 +W3a3n8yHMCAbDSMGWgaYA==
X-Google-Smtp-Source: ABdhPJxaSWsNdORxuo8Y8BQZfEAbE5cAgspJtSvjyPmVmHhgld8W3y5Q7hYinuqmx2N65aqAF01blQ==
X-Received: by 2002:a05:622a:1006:: with SMTP id
 d6mr1373542qte.575.1644591790918; 
 Fri, 11 Feb 2022 07:03:10 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:20d7:a802:e6b0:6d9c:32f7:4bd9])
 by smtp.gmail.com with ESMTPSA id
 u17sm11056272qkj.44.2022.02.11.07.03.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 07:03:09 -0800 (PST)
Received: (nullmailer pid 363394 invoked by uid 1000);
 Fri, 11 Feb 2022 15:03:06 -0000
Date: Fri, 11 Feb 2022 09:03:06 -0600
From: Rob Herring <robh@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 05/66] dt-bindings: sun6i-a31-mipi-dphy: Add optional
 direction property
Message-ID: <YgZ6qsdO+SfTemPZ@robh.at.kernel.org>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-6-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205185429.2278860-6-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_070312_555222_49F2BF65 
X-CRM114-Status: GOOD (  20.71  )
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

On Sat, Feb 05, 2022 at 07:53:28PM +0100, Paul Kocialkowski wrote:
> The Allwinner A31 MIPI D-PHY block supports both tx and rx directions,
> although each instance of the block is meant to be used in one
> direction only. There will typically be one instance for MIPI DSI and
> one for MIPI CSI-2 (it seems unlikely to ever see a shared instance).
> 
> Describe the direction with a new allwinner,direction property.
> For backwards compatibility, the property is optional and tx mode
> should be assumed by default.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml  | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
> index d0b541a461f3..22636c9fdab8 100644
> --- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
> @@ -37,6 +37,18 @@ properties:
>    resets:
>      maxItems: 1
>  
> +  allwinner,direction:
> +    $ref: '/schemas/types.yaml#/definitions/string'
> +    description: |
> +      Direction of the D-PHY:
> +      - "rx" for receiving (e.g. when used with MIPI CSI-2);
> +      - "tx" for transmitting (e.g. when used with MIPI DSI).
> +
> +    enum:
> +      - tx
> +      - rx
> +    default: tx

Can you the phy mode to imply the direction?

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
