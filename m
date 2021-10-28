Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D547AC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 21:12:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7E70D610E5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 21:12:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7E70D610E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5YcntTvIprSRIJkd+7q4KFiz0Yv6ErKFDG50mXZoyY=; b=0Rd5YNrpBErBgW
	007/zV6DBBKztadAw67JRYwxyM/Nk605I3fBZ9AY40k3F/9nIu/kkrfodHFEGvvNwRN4c4wVQ44Dl
	3JlbhsEBGAf+uP+wfosdmxYjWzLSjYcpNzmkJ9yqFPBW+8J759D6wo7Gtdv6pjspjiY2K4gDCC+JY
	ni3BPTUT+Yp67FZXZ6zeH0LzM5J28GGP4RUbdUgsnTt/PbpKfAV7MpOXWvgXs7F2QN9s5UfddMhOr
	jtF4AkCJGEB1Uj9WTGaP0JASvsDK0H0OKgRT9oB6HGuKDpV3HL012QFI8yMXyR/oqgDX3BBT3VOqM
	25ujycETPgV3IykhBnpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgCgt-0096OE-0i; Thu, 28 Oct 2021 21:12:03 +0000
Received: from mail-yb1-f171.google.com ([209.85.219.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgCgq-0096Np-By; Thu, 28 Oct 2021 21:12:01 +0000
Received: by mail-yb1-f171.google.com with SMTP id v138so13169709ybb.8;
 Thu, 28 Oct 2021 14:12:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XVJUVap2P2gJYg9l9WG2NRtaweuMCWN0cL5et2AKLdc=;
 b=2ISXUCs39iPnYaHUBkuE9/T6s9ikDqBFiBswOuGWb3Hko7YkzzZ5WyMHAtkGrWaikS
 8DQj+b7qLMUlclfEXn3F/ET56fT43Lkz1gjK7Zr2/WBh+WtDuQZyPeZr/huGNEJtWXcw
 zjYdC6X1zva8OFVBpt2SLHxddM87tDN3J/KoCkfJ0S/HaZ1uXisCbuz0S9maBA0eAqTU
 JMIRqfmaSsAIE1vdmAyjbjlbzvB5EE5/JkWRmpu08XLq3ijBb2Vs1B78iHMXwoTScJYg
 5YHTT9qqNeVlCWWZfuEH5U6aoyZ5AkwH7KBbh8yJvQJXs8Yp6GCb+gZuai6ABJ6bI7Tr
 7irw==
X-Gm-Message-State: AOAM532fXyA8Dh0n9rzu7xC4OnNHdy+VNrF5plzhggtlXKnkajvm/Dt6
 wDK9veLlsZlPH2gYADgfDNdRpqHpSQ==
X-Google-Smtp-Source: ABdhPJyBV3+cZWbdNnRHQFL+cNC1z1UxQlGAIb7M72PaNSUVhnWK7bXddQkGanWJR+yAYheXgKckgA==
X-Received: by 2002:a05:6830:2a8c:: with SMTP id
 s12mr5588441otu.322.1635455171291; 
 Thu, 28 Oct 2021 14:06:11 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id m7sm1286502oiw.49.2021.10.28.14.06.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Oct 2021 14:06:10 -0700 (PDT)
Received: (nullmailer pid 585631 invoked by uid 1000);
 Thu, 28 Oct 2021 21:06:09 -0000
Date: Thu, 28 Oct 2021 16:06:09 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: devicetree@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/8] dt-bindings: phy: uniphier-pcie: Add bindings for
 NX1 SoC
Message-ID: <YXsQwXj/ySV78+d6@robh.at.kernel.org>
References: <1634687888-23900-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1634687888-23900-4-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1634687888-23900-4-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_141200_420188_91A2CB36 
X-CRM114-Status: UNSURE (   9.45  )
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

On Wed, 20 Oct 2021 08:58:03 +0900, Kunihiko Hayashi wrote:
> Update PCIe-PHY binding document for UniPhier NX1 SoC. Add a compatible
> string for the SoC to the document.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
