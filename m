Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F59C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 19:14:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C567611CB
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 19:14:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8C567611CB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r51+HkamXaClcjJTtJ2pa1EuTvEPSRjGEWN+AY5XN/0=; b=J8dbjp+aP8KPoA
	iAUYMQ6LNU2Qhv/WWyRClsbvel7q2s7WMO/zNUov8W9amIDqEE5Tq/XBONUqKfcyq6sOMsWvffcZu
	YcBYfRiF1RgtHpcCzGwVeal8xp64dqCmwlarwOb9w//TRBJD0JNsJJaOYbJWbbmk8ZzZIbdYGzgHe
	orvV97U3bFDAGtNB4CDU1NSIldEHiqNS60uIeCMbYr+c+mxVHYg9hFQCbLm1cZ9l0dxMihCmQg2Uw
	PgBnqWs34J8CgKlrui+ePMbsVMyFWiJ+b22NVFVizJnbe0Zw1t+CHppwm0rRx46n2NPZ/5kcxUo9s
	ZebImyAq64lJzdHPoS1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdH2Q-005dUb-3A; Wed, 20 Oct 2021 19:14:10 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdH2C-005dRM-9O
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 19:13:58 +0000
Received: by mail-wr1-x435.google.com with SMTP id r18so222424wrg.6
 for <linux-phy@lists.infradead.org>; Wed, 20 Oct 2021 12:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AJTtdODY5XsT1WlkimPK22rBfKzbxdKR4VylNcGjTYI=;
 b=XT2i6L6NXo101KmD1VesqNx6rOK+iBPwUmMpYmGxFAJONhE12xnN6HApLNylQCgGyV
 qM5/aPiGzRY9EgjgVU7d2GugzgBVdBU72ZivoxcJa61YOkmmIS2FV6afYk9fztegrFnr
 htGdMPeswfO2wesm4yVvFr7DZdNpPQ1vdOuLO0P0k5ja9S4yt8hjJqFn4GuDiRC7WjGW
 tL3OB1uT9g27oQAJe9fZ+q94l6qhNx9i2CP/eA80p2EyUcDRQQUAfyHbZWjschewf1Zs
 S9Uf6joxKEXCVGjx/3at3ckfDQFue6oUtDaJjnxTDxWOLX/zwSlsLJIv7IxEmnCl++5c
 jg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AJTtdODY5XsT1WlkimPK22rBfKzbxdKR4VylNcGjTYI=;
 b=1aqBGp9pTjSvNXAZAa+xIOTguUBv6CY8H4EuRiIPpr52sEq8a+SPTsAYzbRXQXjS4W
 lR/V69TWcnGd8L7c/pu/4euQRrNHXh1JqBdKV5DfrkrEtWNNg5zBqIoupnEkpEF+rojs
 OaxUY/m/pv5RG6V+vfH+bjsByLFNlALzXtGJrf/IukzX7Kj+8MsCV1PPiUPTfWllAnLU
 bied+yxxcRtFyTWQpdIh1yDxUE1qkn4Wc1/COCwQYLcu+U2qsNSBO/Ct1J7RQHUqG3xw
 fKq+xrhU8/YETL9AerbAtyvbFaIaSbGX7g5GO2mFG2EJ7i2fr07H7bVOL61aixui/kds
 gVGQ==
X-Gm-Message-State: AOAM530qNq1LQJJXHRxxDATrmuMYmDRX7MqWIjStLEjNw0cKe1LELNG8
 /GrTNbmjtTagec2ExInIZ3gWdI1wPzk=
X-Google-Smtp-Source: ABdhPJym3jQAKD5Xd56d6VcAvqIhipKJtFKNrtzYGJYNIM+xQMkQ3kC4a5hCTE1AXwyEluUcYvkNcg==
X-Received: by 2002:adf:e80a:: with SMTP id o10mr1298709wrm.322.1634757230857; 
 Wed, 20 Oct 2021 12:13:50 -0700 (PDT)
Received: from blmsp ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
 by smtp.gmail.com with ESMTPSA id e9sm2777665wrn.2.2021.10.20.12.13.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 12:13:49 -0700 (PDT)
Date: Wed, 20 Oct 2021 21:13:48 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v4 1/7] dt-bindings: mediatek,dpintf: Add DP_INTF binding
Message-ID: <20211020191348.yb3eu7lp4urzx75j@blmsp>
References: <20211011094624.3416029-1-msp@baylibre.com>
 <20211011094624.3416029-2-msp@baylibre.com>
 <YWTMdewWCNCZy+UE@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YWTMdewWCNCZy+UE@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_121356_350447_D34D0379 
X-CRM114-Status: GOOD (  18.28  )
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

Hi Rob,

On Mon, Oct 11, 2021 at 06:44:53PM -0500, Rob Herring wrote:
> On Mon, 11 Oct 2021 11:46:18 +0200, Markus Schneider-Pargmann wrote:
> > DP_INTF is a similar functional block to mediatek,dpi but is different
> > in that it serves the DisplayPort controller on mediatek SoCs and uses
> > different clocks. Therefore this patch creates a new binding file for
> > this functional block.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> > 
> > Notes:
> >     Changes v3 -> v4:
> >     - Fixed clock names in the example as the clock patch series is merged into
> >       next now
> >     - Add missing ports decleration to the example
> > 
> >     Changes v1 -> v2:
> >     - Move the devicetree binding from mediatek,dpi into its own binding file.
> > 
> >  .../display/mediatek/mediatek,dpintf.yaml     | 86 +++++++++++++++++++
> >  1 file changed, 86 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks a lot for reviewing. However I am going to recombine dpintf with
dpi as Chun-Kuang helped me realize that the fdp clock is a parent of
the pixel clock and therefore not a different clock. In the end the
clocks are the same now for both dpi and dpintf, so no need for a
separate document.

Best,
Markus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
