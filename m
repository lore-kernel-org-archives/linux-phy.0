Return-Path: <SRS0=/oO8=K4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B6C8C47092
	for <linux-phy@archiver.kernel.org>; Wed,  2 Jun 2021 13:27:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D815C61168
	for <linux-phy@archiver.kernel.org>; Wed,  2 Jun 2021 13:27:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D815C61168
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cerno.tech
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLowwr4YGFs/u4AxvkCKYWgagDRVILyYMYHFj5kAYOQ=; b=i0Ye9pLqVF5r1m
	s0Sg+JolkMaofFd8WfaAGfN4niYMvIZyfy9D4PqD/3uTgjarF5gH+GyPP0DJp9FOd0AWL4a9LAA3F
	X5yb5VLIY9g6d9y0xv7kwt4551y/+bYuSiw0a3u5u50vFB3OQUPw5D835XL+1IZSeML0gNAMxEV/5
	D7WaxiQRmg9OnmagKDrBn0VmdIBkT+iAph+LlyyUFWTUguIoNYv7k5MmBC5xbPQXG6q2tVJcusvTi
	d+DFinRBwyL57qB15IAwTm+S15ys2EzjhzLxVUBIThrmOjzHl9/h0/Th7KTBU83lHRZpHXUfN+mfG
	gEvejsqxZY3RYzoLdj0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loQuN-004M43-EW; Wed, 02 Jun 2021 13:27:43 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loQuH-004M1N-Tc
 for linux-phy@lists.infradead.org; Wed, 02 Jun 2021 13:27:42 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0A1DC58080F;
 Wed,  2 Jun 2021 09:27:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Wed, 02 Jun 2021 09:27:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=t
 EtNI5XfZ6vhm4RT4AXBLdGYkWoF8xb2B7jzYSkFXwQ=; b=XzA6utgrMy5gqmgND
 Pgl6Oapfn8N0hQa9AFoi/7TdiBaJAcJmRMCFVh6csYA8DVV6MP8Sws6XfW+FmmAy
 xzQzgrS1G0UUYGwPxzJqnq7WB7EpbsxJf9XJiGEm4CJYsx5zXo5bUlmxIjwYzAqI
 TIp8kQdIUuw/ZgwSJt0oRU2/vf67cGOt/zkPr9clb2iQAd27HnTlujVOob4JKIhH
 qgpcfT+Z1BxZ0MTBkWW7qWO1bcT/dEIARvoUs8HZBpY+6C5FZCK2T29ktPu2ga2M
 +owQE0g1M/x5yvH5tDhL6xl5JFIkCV8tJusRIzETL3MtcvieqrjRGB1ZdH9a3Uyr
 PYx9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=tEtNI5XfZ6vhm4RT4AXBLdGYkWoF8xb2B7jzYSkFX
 wQ=; b=ZuNBU3QOJi8+Un8XIIGXqEvx2f22ZUavZeJ3aWhLT3CGYbo4bEPNqJZ+Q
 9G10DoKGLJjFhDd2zjnwdN+PkqX+PvPd2Wk3aKrA9Qtefujl0a8YC4FbmA54C6OD
 VhFisBmd/OxxnDh8MNNNsWGQCMcyKpjZcimO9nUd7Sivw5F35D+EGPDWF5OCSx80
 RcMLWd8APZCpaa93x2xPqXxUyOiCY+G6foJEwEr/fQ66I0ybsufsJxcRRn9//jWI
 cZtySYkLJm8y7CBggyOrHO8n0M0EBHsC38BdFle36/+O5YK7WaoXY7HpucoRqCZa
 1RPWwulWEtFa4ZjYcKmuI8l1n0uSg==
X-ME-Sender: <xms:Q4e3YH6HxDHcMJLxVFk3ubMRTk6kmBVLHHdJuFLp8bEmk9gK3lhvRg>
 <xme:Q4e3YM4AhzYT3Dl793iNtcVbNThbFNjhxOcZulnsi-dF9SDUu9IoDoWolrvkCSixx
 f6g-eZsJoE7hkta7yY>
X-ME-Received: <xmr:Q4e3YOfDfNtMQQ2sGJ8X1uHGlOet52fQsfV9jgn9kG-eg5dtsH9lHj1vXkKebfywxSOxOE7k83hXyC8o4vnJsqEERMn0aNtirJLe>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdeljedgieehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpefgjeettdejgffgffdvteeutdehtdehgeehueetkeefgefhtdetjeekledu
 gedvudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Q4e3YIJf-LuxWGaE89vINCRk2sw3jBsbz9IlwawJCIA0c63jKkLCOg>
 <xmx:Q4e3YLI6qzJFFZm6NIU7dAh49s2rTOqVc4oy2wNy-meQSOczwZoCPw>
 <xmx:Q4e3YByGomI-AKkDrcqoelcxwDw1Qtua2_A7CPCNnjnvk5LZpBlzaA>
 <xmx:RYe3YM5tYXluYgIaDHX_8VitHSvFxXAOqHzGdWouLhCtpbe_MFIg3Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 2 Jun 2021 09:27:31 -0400 (EDT)
Date: Wed, 2 Jun 2021 15:27:28 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Benoit Parrot <bparrot@ti.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, dmaengine@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 17/18] phy: dt-bindings: cdns,dphy: make clocks optional
Message-ID: <20210602132728.5lv5n2mgap2o7eyx@gilmour>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-18-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526152308.16525-18-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_062738_034829_0F5D9969 
X-CRM114-Status: GOOD (  13.68  )
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

Hi,

On Wed, May 26, 2021 at 08:53:07PM +0530, Pratyush Yadav wrote:
> The clocks are not used by the DPHY when used in Rx mode so make them
> optional.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> 
> ---
> 
> Changes in v2:
> - Re-order subject prefixes.
> 
>  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> index b90a58773bf2..3bb5be05e825 100644
> --- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> @@ -33,8 +33,6 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - clocks
> -  - clock-names

As far as I can remember from the cadence documentation, those clocks
were required. I guess this is the integration that provides a few fixed
clocks?

Maxime

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
