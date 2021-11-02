Return-Path: <SRS0=Fgqk=PV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6547C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 17:43:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7BAA061051
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 17:43:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7BAA061051
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3kJe1cHC/wQop4woNN9pOx5V1NpH4zz9w3mMlluS/ao=; b=uTPvL0mk/JqRFZ
	izzGvkfXuQucpKcWlg6nAxyxxjj6FhRdvMr5vp9/4K2nSrw4edd4alhufcfdpHQoInMv54O5aEnaH
	HAkUCz8OmnvrcFH1UrRFDEiNP8Ksdt0MHFZj0N2XnW+qFMa8mQYiIRqyDhx6TQJOJ9p0upr9Y2VlY
	gO4MFlJBfYYVeSEHl1gpRWJXLil9wCk4PP9YthZlXVsgKX4wv6mNNZMykPgMzpHftcedzDCEsiFnl
	OMOfmvtxMFeCH8hLq8M2sdiLvqL0cHy4jnpLeGwnGsBtQbce8DPpLm0o/p96zt7jqHOUrJmducK6M
	oiUC7YRBwLdtsuiBMVsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhxp2-002Wip-0V; Tue, 02 Nov 2021 17:43:44 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhxoz-002Wi4-I0; Tue, 02 Nov 2021 17:43:42 +0000
Received: by mail-oi1-f180.google.com with SMTP id o83so31099420oif.4;
 Tue, 02 Nov 2021 10:43:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1T3840NthAg+NzqSwmuw7M3cighqIVRGGdTsN20/Ies=;
 b=CiulwPL1qhEyuvUdsQKCx6Q86xCHQ8zJAulHbLCtv4F4t6h9wyjnFBzrArHOX7jgP1
 N4/J9qV2k/QcnpCGRBTZToAPTMgyctuKj7klwFbWHXjDo13ZCSBT3DhkvTbit79JqamQ
 sfhmtpvBRtAQhTGFTNTiIawy9zsY53EFll5FTHrEcXblxi88Kaarhq3S6CesmBw5BbCQ
 ILfeopZABlfFYC0pGOqVXbcANGG8Bw24DojdEwxRx+IR/VcxiYvT2MfF+i3h2xCVys6i
 MyQxW1Szzuu7ZhhH8OhiYExr2Dxt4BCL4w5JOxjLA9YFjZ5BN5dW2LMT0outHrc6xZso
 2bGQ==
X-Gm-Message-State: AOAM530qLPkTZWnd+rfsrO171ZjtSoTaeoNtzVU9qFqVz4kjVz/1/com
 OzN5ZVuptUDtNl+OMQQ0IQ==
X-Google-Smtp-Source: ABdhPJzrO50Y4/4GkGyHbeY+MZvvQN8+acMvreHLSq8/gloe/iF6NOGhwlsm3d6o+ATIPcwWFX6DZg==
X-Received: by 2002:a54:4f94:: with SMTP id g20mr6492412oiy.10.1635875019833; 
 Tue, 02 Nov 2021 10:43:39 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id k24sm539690oou.18.2021.11.02.10.43.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 10:43:38 -0700 (PDT)
Received: (nullmailer pid 3141437 invoked by uid 1000);
 Tue, 02 Nov 2021 17:43:38 -0000
Date: Tue, 2 Nov 2021 12:43:38 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 7/8] dt-bindings: phy: uniphier-ahci: Add bindings for
 Pro4 SoC
Message-ID: <YYF4ygcYuLLILnji@robh.at.kernel.org>
References: <1635503947-18250-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1635503947-18250-8-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1635503947-18250-8-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_104341_643607_175E9CF0 
X-CRM114-Status: UNSURE (   9.83  )
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

On Fri, 29 Oct 2021 19:39:06 +0900, Kunihiko Hayashi wrote:
> Update AHCI-PHY binding document for UniPhier Pro4 SoC. Add a compatible
> string, clock and reset lines for the SoC to the document.
> 
> Pro4 AHCI-PHY needs to control additional GIO clock line and reset lines
> ("pm", "tx", and "rx").
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/phy/socionext,uniphier-ahci-phy.yaml   | 21 +++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
