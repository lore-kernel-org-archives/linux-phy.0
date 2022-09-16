Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBBF2ECAAD8
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 18:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZUyfT+8NX/CDNnDqnucL+TPOUO84Eq8Ock9xIIGeJA=; b=0gYQM0DjZlEuD2
	ZFQchuglNo08W1YaF3dipSXpmno7JDewayVBNBFS6uFljfDlWs0PIPLPZzqb/hrt06DmQniKUvsLQ
	U+/nYYVnpbS5ITse1E0DlXjvCxM2sHqRpNlCYNtMXPNwUjBrSirxKYZghCSclHZXjrdBJlKA35hz8
	ZfTQT1K65/rfWXrclw43cqIfwGJ2JX356oFU9RJxEOyemp46bbDUCgXAsm9u+o60g2JeLysyeqLgh
	Dn+uUnIMzY42jzYVTS0Du/2F6yrLCQA9+XSw/Y072Um5XgKf1QVf5epjy6sOxIB5X2AB1grrE4M6s
	AgMGb09zOzWrELU5AUBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZGYN-00G3OP-CA; Fri, 16 Sep 2022 18:59:07 +0000
Received: from mail-oo1-f52.google.com ([209.85.161.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZGYK-00G3Lz-3o
	for linux-phy@lists.infradead.org; Fri, 16 Sep 2022 18:59:06 +0000
Received: by mail-oo1-f52.google.com with SMTP id w39-20020a4a97aa000000b0044dfa1ddc67so3670637ooi.6
        for <linux-phy@lists.infradead.org>; Fri, 16 Sep 2022 11:59:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=AhHzUg6sAcI7kHU9Kdx0W2elNHmfIsRvh9U9bG0+ZFw=;
        b=FeisBrA66kfAwREl5Yx4p/KuqJWUKfuThlOLI9mRPe4A4yMpP49nBbAcD3TqZ059CG
         D7gUAEeU95S4Ssg5Row9qnymsY34naYH2bNGOJ7V64Obr3FQMZ4WKDh8aPGHF/K1iHYB
         rmrN6SqHy80bLW04qj080GRdDqak2Xs2g6vVI1/meN6IVGVSfIH0Ao7HY05ri/NuXFuk
         c0VwwTEhN8PhvNvQLXJw1M6Ul8DVroowZ1bgSb77OBe9iROGf30EgTWAdTVrqvlIn2rn
         jvumgcSoj2FHH+0btDM/yiIsgdUp3uWa4e7mE07qJK3U9Op9wCh5SUoaYNhPZJhmy6N9
         mbWg==
X-Gm-Message-State: ACrzQf39/B0JTqgm5GG85k1LfZb/bngDaVDmHgnOHK1iDfvT8+64I7Nh
	/LEDhWSJ9nz3tEmvsHytFg==
X-Google-Smtp-Source: AMsMyM55Fzj4mdMY1jd4SQ3DuCs77p0S/VLy5s/+PEwNJncApSxP4N57T9TasdX70CGZo105m/Kl7Q==
X-Received: by 2002:a05:6820:415:b0:475:7535:daf0 with SMTP id o21-20020a056820041500b004757535daf0mr2628307oou.98.1663354739602;
        Fri, 16 Sep 2022 11:58:59 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id eo42-20020a056870ecaa00b00127d2005ea1sm3272104oab.18.2022.09.16.11.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 11:58:59 -0700 (PDT)
Received: (nullmailer pid 1079081 invoked by uid 1000);
	Fri, 16 Sep 2022 18:58:58 -0000
Date: Fri, 16 Sep 2022 13:58:58 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2] dt-bindings: phy: renesas,rcar-gen2-usb-phy: Convert
 to json-schema
Message-ID: <20220916185858.GA1079047-robh@kernel.org>
References: <dbdcffd009302734fe2fb895ce04b72fa1ea4355.1663165000.git.geert+renesas@glider.be>
 <20220915093537.qqddtqx2lr5ttuck@krzk-bin>
 <CAMuHMdV9dv8j34bXBiussjM3f6+nW2aJ-S2drU-MF4q_aB8trg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdV9dv8j34bXBiussjM3f6+nW2aJ-S2drU-MF4q_aB8trg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_115904_186618_032CCFE8 
X-CRM114-Status: GOOD (  39.17  )
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

On Thu, 15 Sep 2022 12:12:48 +0100, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Thu, Sep 15, 2022 at 10:35 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:>
> > On Wed, 14 Sep 2022 16:17:37 +0200, Geert Uytterhoeven wrote:
> > > Convert the Renesas R-Car Gen2 USB PHY Device Tree binding documentation
> > > to json-schema.
> > >
> > > Add missing properties.
> > > Rename the device node from "usb-phy" to "usb-phy-controller", as it
> > > does not represent a USB PHY itself, and thus does not have a
> > > "#phy-cells" property.
> > > Rename the child nodes from "usb-channel" to "usb-phy", as these do
> > > represent USB PHYs.
> > > Drop the second example, as it doesn't add any value.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > ---
> > > v2:
> > >   - Rename nodes to fix "'#phy-cells' is a required property".
> > >
> > > This is the final conversion to json-schema of DT bindings for Renesas
> > > ARM SoCs, hurray!
> > >
> > > Note that there are still a few plain text bindings left for Renesas IP
> > > cores that are present on non-Renesas SoCs (nbpfaxi and usdhi6rol0).
> > > ---
> > >  .../devicetree/bindings/phy/rcar-gen2-phy.txt | 112 ----------------
> > >  .../phy/renesas,rcar-gen2-usb-phy.yaml        | 123 ++++++++++++++++++
> > >  2 files changed, 123 insertions(+), 112 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/phy/rcar-gen2-phy.txt
> > >  create mode 100644 Documentation/devicetree/bindings/phy/renesas,rcar-gen2-usb-phy.yaml
> > >
> >
> > Running 'make dtbs_check' with the schema in this patch gives the
> > following warnings. Consider if they are expected or the schema is
> > incorrect. These may not be new warnings.
> 
> These should be fixed by the DTS counterpart
> "[PATCH] ARM: dts: renesas: Fix USB PHY device and child node names"
> https://lore.kernel.org/all/6442b4042e26537abc8632c4772f8201685f1f1f.1663165098.git.geert+renesas@glider.be/>
> 
> In hindsight, I should have cross-linked the patches in both
> directions, not just in one direction. Sorry for that.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
> 
> 
> From git@z Thu Jan  1 00:00:00 1970
> Return-Path: <devicetree-owner@kernel.org>
> X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
> 	aws-us-west-2-korg-lkml-1.web.codeaurora.org
> Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
> 	by smtp.lore.kernel.org (Postfix) with ESMTP id 70230C6FA82
> 	for <linux-devicetree@archiver.kernel.org>;
>  Wed, 14 Sep 2022 14:33:50 +0000 (UTC)
> Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
>         id S230107AbiINOds (ORCPT
>         <rfc822;linux-devicetree@archiver.kernel.org>);
>         Wed, 14 Sep 2022 10:33:48 -0400
> Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57100 "EHLO
>         lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
>         with ESMTP id S230095AbiINOdr (ORCPT
>         <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 10:33:47 -0400
> Received: from andre.telenet-ops.be (andre.telenet-ops.be
>  [IPv6:2a02:1800:120:4::f00:15])
>         by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D62BE2C125
>         for <devicetree@vger.kernel.org>;
>  Wed, 14 Sep 2022 07:33:45 -0700 (PDT)
> Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:e925:8cbe:2e99:b03b])
>         by andre.telenet-ops.be with bizsmtp
>         id KqZi2800x3vs4GX01qZilT; Wed, 14 Sep 2022 16:33:43 +0200
> Received: from rox.of.borg ([192.168.97.57])
>         by ramsan.of.borg with esmtps  (TLS1.3) tls
>  TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
>         (Exim 4.93)
>         (envelope-from <geert@linux-m68k.org>)
>         id 1oYTSQ-005B5L-8B; Wed, 14 Sep 2022 16:33:42 +0200
> Received: from geert by rox.of.borg with local (Exim 4.93)
>         (envelope-from <geert@linux-m68k.org>)
>         id 1oYTD1-000z8A-UK; Wed, 14 Sep 2022 16:17:47 +0200
> From: Geert Uytterhoeven <geert+renesas@glider.be>
> To: Kishon Vijay Abraham I <kishon@ti.com>,
>         Vinod Koul <vkoul@kernel.org>,
>         Rob Herring <robh+dt@kernel.org>,
>         Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
>         Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
>         linux-renesas-soc@vger.kernel.org,
>         Geert Uytterhoeven <geert+renesas@glider.be>
> Subject: [PATCH v2] dt-bindings: phy: renesas,rcar-gen2-usb-phy: Convert to
>  json-schema
> Date: Wed, 14 Sep 2022 16:17:37 +0200
> Message-Id:
>  <dbdcffd009302734fe2fb895ce04b72fa1ea4355.1663165000.git.geert+renesas@glider.be>
> X-Mailer: git-send-email 2.25.1
> MIME-Version: 1.0
> Content-Transfer-Encoding: 8bit
> Precedence: bulk
> List-ID: <devicetree.vger.kernel.org>
> X-Mailing-List: devicetree@vger.kernel.org
> 
> Convert the Renesas R-Car Gen2 USB PHY Device Tree binding documentation
> to json-schema.
> 
> Add missing properties.
> Rename the device node from "usb-phy" to "usb-phy-controller", as it
> does not represent a USB PHY itself, and thus does not have a
> "#phy-cells" property.
> Rename the child nodes from "usb-channel" to "usb-phy", as these do
> represent USB PHYs.
> Drop the second example, as it doesn't add any value.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Rename nodes to fix "'#phy-cells' is a required property".
> 
> This is the final conversion to json-schema of DT bindings for Renesas
> ARM SoCs, hurray!
> 
> Note that there are still a few plain text bindings left for Renesas IP
> cores that are present on non-Renesas SoCs (nbpfaxi and usdhi6rol0).
> ---
>  .../devicetree/bindings/phy/rcar-gen2-phy.txt | 112 ----------------
>  .../phy/renesas,rcar-gen2-usb-phy.yaml        | 123 ++++++++++++++++++
>  2 files changed, 123 insertions(+), 112 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/rcar-gen2-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,rcar-gen2-usb-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
