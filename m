Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42B04C49EA5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 17:40:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E543611C1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 17:40:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0E543611C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKBdb8MFUDXBrwKXeBdwcZndF7U6TTQCxXHSd2mVJVM=; b=pU6Pkyc+o9kWBR
	+AGvLMPVf7Pf7IkVSvP9mhFr/N6FG+LCN8Vhblzfag4ZOGFYi+TaUK/G3iWVc6UFHSgiF31kbvQ3L
	+6JZz8X62lAZw7rtF2ed+PtHu7ylKW8Hls8Uy7kdPP9WXlUcqhZGVMtEpdrwwtUr1TIYpKa3Agcgw
	IpFG/f539EDFb04tp2kMvYp0nyYvwkkAzuzjFS7cYcqiKV4bAuGDrguBfiIDlI6chT2J+3kk5xn2W
	xAZ/1xemVvqf3o59bL9E08Sh4i5SAMmCAbaBE00D488X/tseYqCv89+0pwGqO9dK61hsTUz+0Nwqy
	znSn2fWiAKVKfPRf/ksg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvNud-004HzR-Iv; Mon, 21 Jun 2021 17:40:43 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvNuY-004Hxm-Cm
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 17:40:39 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 v22-20020a0568301416b029044e2d8e855eso9333223otp.8
 for <linux-phy@lists.infradead.org>; Mon, 21 Jun 2021 10:40:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=JumfKqag8sdEdMQKJRhYZtkbB2UISdlxsx7ZMK4r0eI=;
 b=JDsr/YRaFSpgl+TUCm1IwPnDf6CKuT/DJlQIoWPMfWJN1UAem7Xu2KQTmZJer2LEcV
 Uz2XVnu+YHWQCNTigvD+3Ra/ULPd1XKZHqu4V07z4YeBOrtjhrpsRkrW0W2tb/4qhpO9
 VatqIOedscVJkHqXsCdydqwR2v45/ldiV2BJ3Xzq9pyEzAOlIjSTe3k05E8xA7CfD3Kl
 xurDYF4e3T7ki815njZNI2IlMmXRIVUA4P2045z6WGZV7+L3hqDoSsrYIRVKNi5X5GJh
 cKRipoCeT8KhUSAClT1QX06yKMKRtXnJLvGMRJnX0cNhRTPjY40uXWq4IfywH9vJmvEv
 +WLQ==
X-Gm-Message-State: AOAM533wJHQyHGD7wRutQgo/Eto7wafX9t8GKZigsjxWKxAZMndU/QhO
 zFU34cV6h9lGBGObTOJ3cQ==
X-Google-Smtp-Source: ABdhPJyIwirBm2rjwt09+rfxrFIW9U8PZbrrhyDXSZG7CHNuWEMnJLTebdB/bBrG6ruA5b6Z6HbI3g==
X-Received: by 2002:a9d:6e01:: with SMTP id e1mr2287421otr.178.1624297237510; 
 Mon, 21 Jun 2021 10:40:37 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id p65sm3764178oop.0.2021.06.21.10.40.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 10:40:36 -0700 (PDT)
Received: (nullmailer pid 1161639 invoked by uid 1000);
 Mon, 21 Jun 2021 17:40:02 -0000
From: Rob Herring <robh@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Vinod Koul <vkoul@kernel.org>,
 linux-renesas-soc@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 devicetree@vger.kernel.org
In-Reply-To: <20210621093943.12143-2-biju.das.jz@bp.renesas.com>
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
 <20210621093943.12143-2-biju.das.jz@bp.renesas.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: phy: renesas: Document RZ/G2L USB
 PHY Control bindings
Date: Mon, 21 Jun 2021 11:40:02 -0600
Message-Id: <1624297202.375929.1161638.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_104038_483272_7058B0B4 
X-CRM114-Status: GOOD (  12.13  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, 21 Jun 2021 10:39:33 +0100, Biju Das wrote:
> Add device tree binding document for RZ/G2L USB PHY control driver.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> V1->V2:
>  * Add clock properties
> ---
>  .../phy/renesas,rzg2l-usbphyctrl.yaml         | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.example.dts:19:18: fatal error: dt-bindings/clock/r9a07g044-cpg.h: No such file or directory
   19 |         #include <dt-bindings/clock/r9a07g044-cpg.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:380: Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1416: dt_binding_check] Error 2
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1494979

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
