Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CF52C77B73
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jun 2023 08:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6HN2yzqnCPpkkRrYjoFCz/Hs/MwRDAP24y32u4XaXM=; b=trPXg90DWUPG5h
	zoooYCI/ympfl53Gmq05ATuBgOWRbzZncpxMBrI7qTKbfE2VcJ1tClhNWQIQYqfdUE4A/w8ilE8mR
	PC09G6yQb5GGu1rNpHmgSqSrqrvzYp+XlaoRQ3jOpIbK804FQmd2XL8Anxecjb5wvlz2rIJxpYbEK
	gsgak+3E/RbhoLAyXzVJIfmFTMjPKqOMfMAgqyb4CKf2aB+a8dQezxpFpGt7x1+B4g2FUexGTDIjK
	L5Nh/x1Hh850wGyIWKK40VtohvcXnhSssG4Y/K8xNAj/r4XuXJOLC3TlIQNzUH6x5kZYAHK17QqsB
	7g0zMH+/4mOe/9OAc5Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q65pG-00EkIl-2R;
	Mon, 05 Jun 2023 08:44:30 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q65pC-00EkFx-2f
	for linux-phy@lists.infradead.org;
	Mon, 05 Jun 2023 08:44:29 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3078cc99232so4144244f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 05 Jun 2023 01:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685954663; x=1688546663;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MrfUcOIoh78ZG5yS7R23juCUyPfE+5HsrCyM0YNurn4=;
        b=IgSNkde0F2plrIXJephmlvFxedbx7tHM/IirdYyN8pIDo1/xuMRvfD3003V3SWGHl8
         Xze9Y//QtV5Ftzj9fe4SKQCZtkWTeyO92TffXIgoNk/f0UTaEOLtvzh0OKVOfviV2ZDz
         kaVgp5xNaUfGdZgx0+4PlUx5MlzbexzibYxSjDjpapVblsms1sKsRFLZRK2bdIb27J7i
         H2fo5fxIYxiaQg/Oubg67FQ9i6jDMbwv4rC77dQ4G84nkEJ7alXmS0jKXSsLjo/AOmNJ
         jnqpRhceRR89MCqgmvivmJ9Top5sIb3qzgDkyZzDvZIWBVvD85ieWL8lkmwaHMAQ3/pr
         P5lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685954663; x=1688546663;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MrfUcOIoh78ZG5yS7R23juCUyPfE+5HsrCyM0YNurn4=;
        b=CAmis9fO/tRiJCizOqzNAGzMNMQKwhFdZ8g/99OidwiZpenZ19CJT1T2WTZbqT1SzV
         2LMXIs1XzPSF5t+mpZUCAcQVpglajvKtOT1rGcMW6e2KMsHXtzsR1RZiENUpw0AP0mzA
         dyNd3Bnmd9zoauU6gcFnoLdxE+0/+jqfwK8E8iU3xZ+/j0qjfyj1/aT4k0XiBFE/2MGb
         mdKQBCFWq2YA6j08yogjgq+XizvqW4PXtuJ32d1bfoio/xtxyYAelAxs1YgCGyoYw9ym
         5je1m3rlC26/etHem92wUPsXXw46TfeQMeGb1WQ+/S7n/MPZyu6DfOHPhePcKwC/UEPW
         vhRg==
X-Gm-Message-State: AC+VfDz/YU061o6f179E9VMzpMA6coV//7RnUjAGBQBdU3bRjAgIaq9a
	EydExS+0QOuf0RWQZd9P5s3gjA==
X-Google-Smtp-Source: ACHHUZ5lrv51N2yyyZvduWpzWmbtXLAxBQh2VfWJZNp02Pt1G+uTkEUIrAQWOBc93DFyD+N73N+83w==
X-Received: by 2002:adf:f986:0:b0:2ff:6906:7169 with SMTP id f6-20020adff986000000b002ff69067169mr5341675wrr.68.1685954663499;
        Mon, 05 Jun 2023 01:44:23 -0700 (PDT)
Received: from localhost ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id p12-20020a5d458c000000b00307acec258esm9107444wrq.3.2023.06.05.01.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 01:44:22 -0700 (PDT)
Date: Mon, 5 Jun 2023 10:44:22 +0200
From: Julien Stephan <jstephan@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kevin Hilman <khilman@baylibre.com>, robh@kernel.org, 
	chunkuang.hu@kernel.org, linux-mediatek@lists.infradead.org, 
	Florian Sylvestre <fsylvestre@baylibre.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Andy Hsieh <andy.hsieh@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-arm-kernel@lists.infradead.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add mediatek mipi csi driver v
 0.5
Message-ID: <totyr5bsupdv6y6muvndnhywbw5fl5kezoxie2hyz4g53yi34m@6geccwkjvupc>
References: <20230515090551.1251389-2-jstephan@baylibre.com>
 <ab9aa30f-82d7-1d14-5561-e19ff10af0b0@linaro.org>
 <4yppinkucchwnwtnnpbqdn4bejmntjq3q6mx6es55f2pwyce3c@qdhdks47lpyt>
 <1853f049-4f00-b7f0-973a-2c4e7b0b2634@linaro.org>
 <7h353w2oug.fsf@baylibre.com>
 <fbf1b0a6-f45d-69a0-5de6-8269567e15b3@linaro.org>
 <7hwn18yndq.fsf@baylibre.com>
 <c63ebd7e-8658-9cdd-4fc4-ade9c94dfa64@linaro.org>
 <7hcz2snpnw.fsf@baylibre.com>
 <10074d67-394b-3ddb-8bd1-fc051bdb7f79@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10074d67-394b-3ddb-8bd1-fc051bdb7f79@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_014426_873966_22835B31 
X-CRM114-Status: GOOD (  45.12  )
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

On Tue, May 30, 2023 at 10:53:31AM +0200, Krzysztof Kozlowski wrote:
> On 22/05/2023 21:15, Kevin Hilman wrote:
> > Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:
> >
> >> On 16/05/2023 23:31, Kevin Hilman wrote:
> >>
> >>>> Third is to use versioned IP blocks.
> >>>>
> >>>> The second case also would work, if it is applicable to you (you really
> >>>> have fallback matching all devices). Third solution depends on your
> >>>> versioning and Rob expressed dislike about it many times.
> >>>>
> >>>> We had many discussions on mailing lists, thus simplifying the review -
> >>>> I recommend the first choice. For a better recommendation you should say
> >>>> a bit more about the block in different SoCs.
> >>>
> >>> I'll try to say a bit more about the PHY block, but in fact, it's not
> >>> just about differences between SoCs. On the same SoC, 2 different PHYs
> >>> may have different features/capabilities.
> >>>
> >>> For example, on MT8365, There are 2 PHYs: CSI0 and CSI1.  CSI0 can
> >>> function as a C-PHY or a D-PHY, but CSI1 can only function as D-PHY
> >>> (used as the example in the binding patch[1].)  On another related SoC,
> >>> there are 3 PHYs, where CSI0 is C-D but CSI1 & CSI2 are only D.
> >>>
> >>> So that's why it seems (at least to me) that while we need SoC
> >>> compatible, it's not enough.  We also need properties to describe
> >>> PHY-specific features (e.g. C-D PHY)
> >>
> >> I recall the same or very similar case... It bugs me now, but
> >> unfortunately I cannot find it.
> >>
> >>>
> >>> Of course, we could rely only on SoC-specific compatibles describe this.
> >>> But then driver will need an SoC-specific table with the number of PHYs
> >>> and per-PHY features for each SoC encoded in the driver.  Since the
> >>> driver otherwise doesn't (and shouldn't, IMHO) need to know how many
> >>> PHYs are on each SoC, I suggested to Julien that perhaps the additional
> >>> propery was the better solution.
> >>
> >> Phys were modeled as separate device instances, so you would need
> >> difference in compatible to figure out which phy is it.
> >>
> >> Other way could be to create device for all phys and use phy-cells=1.
> >> Whether it makes sense, depends on the actual datasheet - maybe the
> >> split phy per device is artificial? There is one PHY block with two
> >> address ranges for each PHY - CSI0 and CSI1 - but it is actually one
> >> block? You should carefully check this because once design is chosen,
> >> you won't be able to go back to other and it might be a problem (e.g.
> >> there is some top-level block for powering on all CSI instances).
> >
> > We're pretty sure these are multiple instances of the IP block as they
> > can operate completely independently.
> >
> >>>
> >>> To me it seems redundant to have the driver encode PHYs-per-SoC info,
> >>> when the per-SoC DT is going to have the same info, so my suggestion was
> >>> to simplify the driver and have this kind of hardware description in the
> >>> DT, and keep the driver simple, but we are definitely open to learning
> >>> the "right way" of doing this.
> >>
> >> The property then is reasonable. It should not be bool, though, because
> >> it does not scale. There can be next block which supports only D-PHY on
> >> CSI0 and C-PHY on CSI1? Maybe some enum or list, depending on possible
> >> configurations.
> >
> > OK, looks like include/dt-bindings/phy/phy.y already has
> >
> >   #define PHY_TYPE_DPHY		10
> >   #define PHY_TYPE_CPHY		11
> >
> > we'll add a PHY_TYPE_CDPHY and use that.   Sound reasonable?
>
> Yes. Currently it is usually used as phy-cells argument (after the phy
> number/lane/ID), but cdns,phy-type and intel,phy-mode use it directly as
> property in provider. In both cases they have a bit different meaning
> than yours. You want to list all supported modes or narrow/restrict
> them. Maybe hisilicon,fixed-mode fits your purpose?
>

Hi Krzysztof,

Thanks for the suggestion, using something like hisilicon,fixed-node
looks like a good fit.
With mediatek,fixed-node, by default CSI node will be considered as
CD-PHY capable (unless the fixed-mode property is set.) so I won't need
anymore the new define PHY_TYPE_CDPHY introduced in v3.

Also introducing mediatek,fixed-mode suggests that PHYs not declaring
the fixed mode property support mode selection, so I suggest to add a
phy argument (#phy-cells = <1>) to select the mode (D or C mode).
Exactly what is done by the hsilicon driver.

How does that sound to you?

Best,
Julien
> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
