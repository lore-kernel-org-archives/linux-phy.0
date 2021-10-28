Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80A6AC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 21:12:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40C56610E7
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 21:12:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 40C56610E7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlOW93I3ZlfljSA+ZeP6LfvXk00ypfP5YF2ZZtktypI=; b=lQ078YBCI7eNy5
	/JvQJOa5Rj48B8Huo8dhQ3AWdzN+nGQ7mV9n9d2sskarDWILh6DaYSmFJy2i14Ha5xkV4ICqUdopv
	tBOM1goIE6ZF0zw6QEhcbY/wRj/CARhIym1PKmAHQ4ZRj0wbvYT56pPlnuYubdmAPGFU2YI+Uj/Ak
	cGcU0/tAbs0KNsyxmPaFh6mZy3W2f71fCI5qRlcmdq/JpRuTX6pfJksCzSI1rgqY/A2/pj0i41/Tn
	187ljXLESJKuTmcTS5ws8IR/R1mlq0AaV631ZFjojmBDm9e6YjeIcS9ZNiTNvTqWqkriYB3vXce4k
	1g9x696R/H8QHDMgQzaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgChP-0096Rc-MD; Thu, 28 Oct 2021 21:12:35 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgChM-0096QZ-Fp; Thu, 28 Oct 2021 21:12:33 +0000
Received: by mail-oi1-f174.google.com with SMTP id q129so10282787oib.0;
 Thu, 28 Oct 2021 14:12:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GF/QKgWHePUF0ztiRXZtM8u7QRJ7KFD1ma0iq8wQWWU=;
 b=0kmSBpAYQDojMuz5Wx5RXNu+SJ2CjSdmr+Caa288CfTUfYKaVCJZHgXYbr6i8yd/cP
 /ojxqD/bZ1221c2Cj6pmIICiXw9ELFk+5fpuPB3equfGO61K09rOBJ+y6tbKVnKddLir
 4MHCVVlyBITnzt4ndSNKhU8gJCNR8/Fjgcm+yH8qEUTt+/Mbc9/dNE5g0QEAtMqa7QhG
 D8l4nYts8u3uJimgbmTa0FpO+L6fgKaxTn7et7Fep+fw/pGiDD09BwtZGDhCLdT/qIEJ
 z0Ns8baYmkwy00J4mJNEsvBdNm2LaJnw831XdSEqC8c+6ffUa9E5FDJ+joppaTi9lX5N
 BPbg==
X-Gm-Message-State: AOAM533yZGNAKJOpTYlQ/DkauXfHJ/fX6Bf+E/PYol4KuiyVCZNYNQu/
 igZ5VCoPokzHrYVjrfztGw==
X-Google-Smtp-Source: ABdhPJxH9evASEn/c1tJsj0UAND2Xw+iRVZEN7IqIc5V72yz/Fv7Y4DcBiL1q7UGs9KDS/bTcCePJw==
X-Received: by 2002:a54:4d89:: with SMTP id y9mr4939486oix.22.1635455551788;
 Thu, 28 Oct 2021 14:12:31 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id k22sm1397540otn.44.2021.10.28.14.12.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Oct 2021 14:12:31 -0700 (PDT)
Received: (nullmailer pid 595084 invoked by uid 1000);
 Thu, 28 Oct 2021 21:12:30 -0000
Date: Thu, 28 Oct 2021 16:12:30 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/8] dt-bindings: phy: uniphier-ahci: Add bindings for
 Pro4 SoC
Message-ID: <YXsSPm1SdvaeDwbq@robh.at.kernel.org>
References: <1634687888-23900-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1634687888-23900-8-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1634687888-23900-8-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_141232_555786_5F377214 
X-CRM114-Status: GOOD (  15.68  )
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

On Wed, Oct 20, 2021 at 08:58:07AM +0900, Kunihiko Hayashi wrote:
> Update AHCI-PHY binding document for UniPhier Pro4 SoC. Add a compatible
> string, clock and reset lines for the SoC to the document.
> 
> Pro4 AHCI-PHY needs to control additional GIO clock line and reset lines
> ("pm", "tx", and "rx").
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/phy/socionext,uniphier-ahci-phy.yaml    | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> index 745c525ce6b9..67415f7ebe8c 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> @@ -16,6 +16,7 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> +      - socionext,uniphier-pro4-ahci-phy
>        - socionext,uniphier-pxs2-ahci-phy
>        - socionext,uniphier-pxs3-ahci-phy
>  
> @@ -30,6 +31,9 @@ properties:
>  
>    clock-names:
>      oneOf:
> +      - items:          # for Pro4
> +          - const: gio
> +          - const: link

Add new entries on the end...

>        - items:          # for PXs2
>            - const: link

So add 'gio' here.

And add 'minItems: 1' in this entry.

There's also an error in 'clocks' as it needs 'minItems: 1'


>        - items:          # for others
> @@ -37,12 +41,20 @@ properties:
>            - const: phy
>  
>    resets:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 5
>  
>    reset-names:
> -    items:
> -      - const: link
> -      - const: phy
> +    oneOf:
> +      - items:          # for Pro4
> +          - const: gio
> +          - const: link
> +          - const: pm
> +          - const: tx
> +          - const: rx
> +      - items:          # for others
> +          - const: link
> +          - const: phy
>  
>  required:
>    - compatible
> -- 
> 2.7.4
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
