Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D2EBC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 21:05:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0EDC660F02
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 21:05:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0EDC660F02
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+G0rQC/cLFzW0+KS4Zw764j/kri/8vz55rOSLs/PEAo=; b=Jnsgi6PMCCOFR6
	oslqP43GYSvWEBluGRfZ+6he3B86x9WJKw5hMxOJ4gKMAjcXW7k+tfNSAkDuNnHPiyf+9YC2qGWSB
	PPFRe3icnS+haxCu6pWUYF5IXN+Bgbaoy+y+mjjHPlByo0m+W5HYYJVXELg1OkALCVvzlAFhpkH7O
	YQC2cbmO0LDtYEVf7FeZbL7JxR5UWluMq0/MmXzqqhr/8QVfTylWxVAD8JCi5ulc6/Tyyjq5KP7J9
	h1i8vQ3rZNGtstYp+l2kvFJBfNG3Cnt95+WZw5sjG2pVtG8SNHxSH61DLOj7K1+hfTJvgmiAwbjGW
	+9aT9nY62HM1pzK6PkLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgCb0-0095wy-IR; Thu, 28 Oct 2021 21:05:58 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgCay-0095wX-92; Thu, 28 Oct 2021 21:05:57 +0000
Received: by mail-oi1-f175.google.com with SMTP id n63so10186572oif.7;
 Thu, 28 Oct 2021 14:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KsAfghJdqjIsPHLQlzuUpGuE0n+L1OQuzADVtlfj3pk=;
 b=TWMJbxngwAT3yfrU/dSOUfKOo8E/ayVlRcVf+ghQXGFLdOektKjH6/UoJwWoQ/uevs
 mOnEDLKR8wE7hsGbyNrncpl3gxv7Wk05RIyBFRpaZSpaNtALnT5tmnP6HIJIsihn5hgQ
 YR7PcfsNfjEL0d2uGqkMB3YmykiysmJWxK0DITa1l9lPNcn1XiKAyGFBoPqI6x0ICurD
 gxgxfk1qw/Bgkteif5aAmP8pQbiDXWVwkM01dEhIz2RlMFezisv9J3spDjqdLrJ4SiMh
 hOVFnfnC9/O1pqIGi5gZsZrlx5myDLjNvNfhe4o8m7yRPn6dKuOFQzs3U9btJ8yEIs0J
 RuRA==
X-Gm-Message-State: AOAM531L7skJk6rXJ0Y61fUAAoX2+hsFrEcz+lBX2dJsmlnc8c5PlPv1
 XdQ1eojKWcSVrbLGvhg+sA==
X-Google-Smtp-Source: ABdhPJyXfSMCrvaZuAL3QVu4UZRxA2FWr9gEj9Sdd37w46MDzYEx/5qYwTMWrcMCMZyeNYcURj88cg==
X-Received: by 2002:a05:6808:2cc:: with SMTP id
 a12mr3449048oid.124.1635455154938; 
 Thu, 28 Oct 2021 14:05:54 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 64sm1230495otm.37.2021.10.28.14.05.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Oct 2021 14:05:54 -0700 (PDT)
Received: (nullmailer pid 585145 invoked by uid 1000);
 Thu, 28 Oct 2021 21:05:53 -0000
Date: Thu, 28 Oct 2021 16:05:53 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: Rob Herring <robh+dt@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v2 1/8] dt-bindings: phy: uniphier-usb3: Add bindings for
 NX1 SoC
Message-ID: <YXsQsZjDq/Jo7Jup@robh.at.kernel.org>
References: <1634687888-23900-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1634687888-23900-2-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1634687888-23900-2-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_140556_363637_84DA4A6F 
X-CRM114-Status: UNSURE (   9.42  )
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

On Wed, 20 Oct 2021 08:58:01 +0900, Kunihiko Hayashi wrote:
> Update USB3-PHY binding document for UniPhier NX1 SoC. Add SS-PHY and
> HS-PHY compatible strings for the SoC to the document.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml | 1 +
>  Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml | 1 +
>  2 files changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
