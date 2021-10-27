Return-Path: <SRS0=D930=PP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14FB5C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 22:04:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D92D46109E
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 22:04:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D92D46109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9D66pffDNE3uttRbmDidW95InaqTzneDTYUK/h3wH1o=; b=zuOWF6ay7K3Rhd
	MjRcxXhClMUFkVz8Z7CBlsCiMV1Q02d9f74y2v4OtO9IZoH/RKommaju0eeKQJi4FJYEaENwf8+Fk
	wFPb5hsWqsCCEJJB6xtMBcKA5K9jJDiJQ6upIF1PE1hCGdB8yncXMQLBd+dEj/QjzYRLNLRaUk2Od
	X9pW3WhpXD22NA+1shYIQWeiW4nkD1wyJKCYfh3QjdoT22E/SCsbmTi5qXENgzot8ZlHIveDwjy/U
	04cy5Su9jYAXOId2TVT8F5o4qut4c7aoH7Tie2zIjNygBLFefEGe8CCUCxnzA8Xbub8r0iJo2qw0Y
	gUVpBV6jKuEubF1EAHOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfr1k-006MiW-DE; Wed, 27 Oct 2021 22:04:08 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfr1X-006MeO-1z; Wed, 27 Oct 2021 22:03:56 +0000
Received: by mail-oi1-f173.google.com with SMTP id z126so5439470oiz.12;
 Wed, 27 Oct 2021 15:03:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HwCdZSodtvLkyfWWv4aoM6TtcXNL3x8BBvrixERndQI=;
 b=N1ovI4X+hG79dtK7/t908TnGR9NtAwwlMDquPKX9+Ef7JUgYjLX5cOAs1CdgYALSKL
 wCPeEODM8t9z/tZ8ivyd5jNDWfYyERxpw+n1uNpRPQkXYQWtnxtUFH90ctZPrnN5tiaD
 DoZ1FvUy4arPXrlyd/cEuXnxdU6c8EFoKmzLIStFqQ+MbyLz4JTF11ZQXj2jzcZZw1Am
 ZnGX5jaQTRWNv2yUChtyye1NNAjAbCsPiNBtWLjDT5yrsMj0RrepLdkT5feCvQhc1Nug
 adUkNXpUD6kzDwlp1CWMZrraydHeuhsU3OaPXqVQ4OmcBNacWoON5bD7cz2pfqTAQqA3
 1tVA==
X-Gm-Message-State: AOAM532IMrOGjsna031NpdnSAnyCUXD3LPpVN73cDr3IOOD7kcn1cYeS
 xaK2QzN9CUEb6/mITonFlg==
X-Google-Smtp-Source: ABdhPJwhAqhMiSOGICDeao9e3Uvovr/4CVgqZChnKufwCP091o04QifT1B/0u7uUX+ckIH+hwm1Nnw==
X-Received: by 2002:a05:6808:17a7:: with SMTP id
 bg39mr180967oib.70.1635372233675; 
 Wed, 27 Oct 2021 15:03:53 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id j15sm469441ots.58.2021.10.27.15.03.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 15:03:52 -0700 (PDT)
Received: (nullmailer pid 2256435 invoked by uid 1000);
 Wed, 27 Oct 2021 22:03:51 -0000
Date: Wed, 27 Oct 2021 17:03:51 -0500
From: Rob Herring <robh@kernel.org>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: devicetree@vger.kernel.org, kishon@ti.com, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, vkoul@kernel.org, cl@rock-chips.com,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
 michael.riesch@wolfvision.net
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
Message-ID: <YXnMxyuH/aGAvYAY@robh.at.kernel.org>
References: <20211025080632.32063-1-yifeng.zhao@rock-chips.com>
 <20211025080632.32063-2-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211025080632.32063-2-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_150355_118046_B1481A54 
X-CRM114-Status: GOOD (  10.10  )
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

On Mon, 25 Oct 2021 16:06:30 +0800, Yifeng Zhao wrote:
> Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v3: None
> Changes in v2:
> - Fix dtschema/dtc warnings/errors
> 
>  .../phy/phy-rockchip-naneng-combphy.yaml      | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
