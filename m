Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6EA6C433FE
	for <linux-phy@archiver.kernel.org>; Tue,  1 Nov 2022 19:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVlgFmhSJKRDMhygSVJKPOx32hhEsWsFm4BYzuyIuas=; b=giMGIAz7QPWQWw
	ZEQ1oEDOd6YFhACrWVvyB4LUeer2xVp/YQff13Dncd8tYY2gJETzmUQuts9SVhVk0LDrXT5cwsKtX
	r+7jS91h6fDwt0ktJQ8U0+rKA3Q0y5zXSZV0URtHWWte77hvZ1cnhVBmxVkUJPNSE5Iz/v72kEHxX
	GBI2dN7hzEbClVNVmN0lcYkVB8fB3oKqnev7kF62MEoczChgK7/Qt53w3NoN24mCTwJrbcXPfPs/C
	WiKoIl3BrNkErpBQ/9905pfTPJbfnkwbl0SNSWZ6MMUIuZWCgzMKKwx8aWumCEze9wN71eidvp9kj
	RNOSaW/F4o5N8CMgdUBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opwzC-006ipe-0F; Tue, 01 Nov 2022 19:31:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opwz1-006imy-MI; Tue, 01 Nov 2022 19:31:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 39C086171A;
	Tue,  1 Nov 2022 19:31:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2E4BC433D6;
	Tue,  1 Nov 2022 19:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667331094;
	bh=WyIzLEcN50Fw5PFe9SKdT3KJdU4GGa4/iSjE4+abfmc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Iy0cKseHZkLThuvTOkeIMgCEC+VZO0kEfgA5718SGnMx7DWcmz947Jm3aVE7bAbYA
	 8jGiq/FqZIAoDgWVuyFXpRwEazh63/R8DcTvJcf/muxytxnWDMJo5RfzlH3z2X05Rj
	 VZyFaeUSUzTQC2LT7z8sct2V7pm7fVFEe4ZfvA4eLXjH/UVMKI6g0fcXTu1ekxtsTV
	 ThBeBX8nPbbnhgN4EiA94iVxIXHp10RYi4ckwZ/IIM1YoZCZlBK310/xD9WhexCQ1v
	 CiZdBAHHoCKVGOgqwgZv5cY1+dZLgHHQJA2zPqJTuLgRDNLExYKQIU5U+c3zYQPlZm
	 +Peul+4PXO1Vw==
Received: by mail-lf1-f54.google.com with SMTP id g7so24834285lfv.5;
        Tue, 01 Nov 2022 12:31:34 -0700 (PDT)
X-Gm-Message-State: ACrzQf2m7ZIK8ZnsjozPAj/EeFHbIGVF/elV6RutairYQmtHg4Oo+cYA
	0GIgizWg3ZwIMpoHQv0hH0ovNZpbrBGIGypogA==
X-Google-Smtp-Source: AMsMyM56o6ehUTqHNJex/6nPD6TozwNOv5iAUrQfO3Tq4EY2MBqu+fisAt2c5ELx7fLLoUJJ/1LYXLFBfHigj58hF3U=
X-Received: by 2002:a05:6512:3e10:b0:4a2:48c1:8794 with SMTP id
 i16-20020a0565123e1000b004a248c18794mr7516415lfv.17.1667331092636; Tue, 01
 Nov 2022 12:31:32 -0700 (PDT)
MIME-Version: 1.0
References: <20221027044920.23194-1-hayashi.kunihiko@socionext.com>
 <20221027044920.23194-3-hayashi.kunihiko@socionext.com> <20221028193859.GA2188803-robh@kernel.org>
 <0d7636f6-2c51-587d-1961-face98dfa056@socionext.com>
In-Reply-To: <0d7636f6-2c51-587d-1961-face98dfa056@socionext.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 1 Nov 2022 14:31:23 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+8Rm9v4megza14JPyamV-9Yr4iAa5r+HhM6qtdHRWEBw@mail.gmail.com>
Message-ID: <CAL_Jsq+8Rm9v4megza14JPyamV-9Yr4iAa5r+HhM6qtdHRWEBw@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: phy: Fix UniPhier SATA controller node
 names in example
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_123135_822718_7ECED0AF 
X-CRM114-Status: GOOD (  22.92  )
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

On Tue, Nov 1, 2022 at 4:10 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> Hi Rob,
>
> On 2022/10/29 4:38, Rob Herring wrote:
> > On Thu, Oct 27, 2022 at 01:49:20PM +0900, Kunihiko Hayashi wrote:
> >> The word "glue" is ambiguous for the controller node name. Should put
> >> "sata-controller" instead of "ahci-glue" on the controller node.
> >> And rename a phy node to "sata-phy".
> >>
> >> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> >> ---
> >>   .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml  | 4 ++--
> >>   1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git
> > a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> > b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> >> index a3cd45acea28..89b8b133777a 100644
> >> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.
> > yaml
> >> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.
> > yaml
> >> @@ -117,14 +117,14 @@ additionalProperties: false
> >>
> >>   examples:
> >>     - |
> >> -    ahci-glue@65700000 {
> >> +    sata-controller@65700000 {
> >
> > But is this really the SATA controller aka AHCI?
> >
> > In cases where we don't have a standardized name, I don't think it makes
> > sense changing node names from one non-standard name to another.
>
> I see. This can't be named generic, so this change will drop.
> And "sata-phy" in the same way.

I think sata-phy is fine. It may not be added, but usb3-phy or
pcie-phy are common already.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
