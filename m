Return-Path: <SRS0=RY/A=MZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 806B2C432BE
	for <linux-phy@archiver.kernel.org>; Mon,  2 Aug 2021 20:55:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 508D260F48
	for <linux-phy@archiver.kernel.org>; Mon,  2 Aug 2021 20:55:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 508D260F48
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGGwDZ4YqlS9uEnLeRSi7/+XASalmmo6p4elaLcDT5Y=; b=sAYwrln6TzIgl2
	MDtXIDDN0ofyuCzQK89ZicIKqi6ag094gbSAW46tIAMf5lJ1t02pzYRmXPKQrjmbReyQ1RwwMGMel
	jV1ED7t0GA72SafPP7w1djuEkuNLj2iHKscVly9TjWZIML/+P3abM9Iuup7pktuaYVc/dcNMt0fsX
	KGQvcQWyMM2jf3AboCdwFHSjHN8aiQXv9B2jUkoJ1SSFlyT1mbArw8P6mHu8oyOl+xskK4S92c+5q
	Xy1yGFLaVXLWVzqK2LROX1V4s5Mt3AnbHrRoAMrCodEUGKcJVFpOPlHDDHhh/NsmpLJEwicK8jEqG
	b/M2eOOgEWwez3oaD91Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAeyU-000DED-Sx; Mon, 02 Aug 2021 20:55:50 +0000
Received: from mail-io1-f47.google.com ([209.85.166.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAeyT-000DDb-0E
 for linux-phy@lists.infradead.org; Mon, 02 Aug 2021 20:55:50 +0000
Received: by mail-io1-f47.google.com with SMTP id y200so21871076iof.1
 for <linux-phy@lists.infradead.org>; Mon, 02 Aug 2021 13:55:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Gg1BvQRuyVDkBMaHEC+x+cCkCoIuykzg2HO8zEzWVkU=;
 b=Wt2okZJ19NbspWbPQSF//y6oBWEG9fbAgQX7E8jbxz74KI+lLtE5eVaUGjvb36qx7V
 if312WCjOuoj8Z9BT67tk28Po9Lpix6VWf6RGD1+/qGngAUhmkQ0JLnr88OR47Z6snum
 2Ng/nNlIrULzgTdcd1nQhP+PsjuqZL7pwIqappsDHdKUSDTfDs6m/CNrgWfY+fdMGvn/
 QRWIi/vJEzwno5K+3ZfDEUr4X+57kgwxmz2atZFySu34yvjao+caeuqWhOFFPwUixhr1
 E/suGVLicF7T6W8HCQFYY5/Aneujqi//1ZraVN6RUlxeO6DgtjK99hST0b8BsKSW0Dqw
 mw9w==
X-Gm-Message-State: AOAM533Cn+BeOizeY69WkzgtdBjl61P+Rm5URIryJu2HYc4v0BgOQ1u4
 1CDkRvng0UXv9H8ALUYlgw==
X-Google-Smtp-Source: ABdhPJxyfELgaOHxtqFMAFc4cSJAkj0asz918/5SVNfc7XxjOCOUwylMbjXvVZyv5bDwIGqVg6tCHQ==
X-Received: by 2002:a5e:8d03:: with SMTP id m3mr2402340ioj.200.1627937748437; 
 Mon, 02 Aug 2021 13:55:48 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id t26sm7810751iob.19.2021.08.02.13.55.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Aug 2021 13:55:47 -0700 (PDT)
Received: (nullmailer pid 1594532 invoked by uid 1000);
 Mon, 02 Aug 2021 20:55:45 -0000
Date: Mon, 2 Aug 2021 14:55:45 -0600
From: Rob Herring <robh@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-renesas-soc@vger.kernel.org,
 linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v5 2/6] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G2L phy bindings
Message-ID: <YQhb0Ygfod+K9Xf6@robh.at.kernel.org>
References: <20210727185527.19907-1-biju.das.jz@bp.renesas.com>
 <20210727185527.19907-3-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210727185527.19907-3-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_135549_091329_64FBC8AD 
X-CRM114-Status: GOOD (  10.27  )
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

On Tue, 27 Jul 2021 19:55:23 +0100, Biju Das wrote:
> Document USB phy bindings for RZ/G2L SoC.
> 
> RZ/G2L USB2.0 phy uses line ctrl register for OTG_ID pin changes. It uses
> a different OTG-BC interrupt bit for device recognition. Apart from this,
> the PHY reset is controlled by USBPHY control IP and Document reset is a
> required property.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v4->v5:
>  * Removed 'properties' and just used 'required' for RZ/G2L SoC.
> v3->v4:
>  * Removed second reset
>  * Added family specific compatible string.
> v2->v3
>  * Created a new compatible for RZ/G2L as per Geert's suggestion.
>  * Added resets required properties for RZ/G2L SoC.
> ---
>  .../devicetree/bindings/phy/renesas,usb2-phy.yaml | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
