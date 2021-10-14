Return-Path: <SRS0=ayEg=PC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E30C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Oct 2021 18:16:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8CF1F61139
	for <linux-phy@archiver.kernel.org>; Thu, 14 Oct 2021 18:16:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8CF1F61139
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCJGSXmu0m0NUAzijBNfpLhonbGWNH3umEzi1+MzQ80=; b=IS6cGPOSvBsl2L
	LOiQIFG144k3yDj0XTLPHcgjt1tLFuA0FZx1gnBIdaLfqpfbSMrCfYphAaSheGDzth+UWmsByoFMO
	FxaOlO8NIonJN5i+MbVQNPax2RMbVe8WwRowQl0HndmtWik5y7BxKRzT6O1bZbcSeZgc8R74RW2m6
	35+qpduNwlyiV+lsW+40ezL4sYdJ82wqLkpUT3khunoqHrQCP6t9ZmylrLhGn+cvEqHU1ezI2NNfe
	eTY8UwmIPlDmgIXe1SiaOiUvQHb5EsmdnhgSFxNeeKZpLHUkU+HFpSNoNagOr9L4r6pj+ULJBF+Ll
	fqLjWykV0ZVsuqd48LyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mb5Hb-00450O-2H; Thu, 14 Oct 2021 18:16:47 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mb5HM-0044ta-1i; Thu, 14 Oct 2021 18:16:33 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 p6-20020a9d7446000000b0054e6bb223f3so9422320otk.3; 
 Thu, 14 Oct 2021 11:16:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=q0HbPoa/SmLtlcbL4A98vA90nfo5N87+w7YnhWCZ1+o=;
 b=tFmiKmTGCyADJk9ulLn6PF+WME40M+FiyLUJbwbbMaKdyk2BV7kuB1u5ph30G4JBrU
 9zeLWNUY7QmbZooRlkyMQWYAAnlG4VTAZYFQw09xuIoJNDlVv7PlHmKHq1Lpf59O9yVK
 Dkd9voJyrPIf4dYiwQGCXmdlgzTDsJkoN1xjkyn8gk0z+rkBs2/0Eyic3Lxyr+eZtvxq
 0+WECmR+B2r610okOz/wU/vrV3pI2ObV7IeJEz6yxLmXC+2d8ihiMn48IKQsSTQ3r9/f
 Z7NkigBiVG+nlt8dHHqJDCRpdVCVmxq6T0AYxCKLj/y8h+3bgfgnMnk4SkPVACEcRuxm
 kOdg==
X-Gm-Message-State: AOAM531PLIrVlBkFqQJEdczhRUCaIhS/fHwGbkOa7As17wsUmSc19joe
 fBe4PVjioRAOBxwzHJen/w==
X-Google-Smtp-Source: ABdhPJxKfM3iXQ0zI911tswBcyLS7YVr4ZTJq7hvniXYOhLyYuHoLue+Q56bsDP/2yc8QCkCgynuuA==
X-Received: by 2002:a05:6830:4487:: with SMTP id
 r7mr657269otv.251.1634235389846; 
 Thu, 14 Oct 2021 11:16:29 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id f1sm553273oos.46.2021.10.14.11.16.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Oct 2021 11:16:29 -0700 (PDT)
Received: (nullmailer pid 3663089 invoked by uid 1000);
 Thu, 14 Oct 2021 18:16:28 -0000
Date: Thu, 14 Oct 2021 13:16:28 -0500
From: Rob Herring <robh@kernel.org>
To: Amelie DELAUNAY <amelie.delaunay@foss.st.com>
Cc: "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: phy-stm32-usbphyc: add optional
 phy tuning properties
Message-ID: <YWhz/AsfDX24iUR3@robh.at.kernel.org>
References: <20211005152453.89330-1-amelie.delaunay@foss.st.com>
 <20211005152453.89330-3-amelie.delaunay@foss.st.com>
 <1633473959.465401.106809.nullmailer@robh.at.kernel.org>
 <491ab475-e7dc-eb71-85aa-6d82543b74db@foss.st.com>
 <CAL_JsqLEPd9_4SgmDh8GakyNxQeuMKhJeGzaLbZSdxDJ_-dZYg@mail.gmail.com>
 <2a07f03d-ffaa-77f6-c223-74bae60eb3f1@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a07f03d-ffaa-77f6-c223-74bae60eb3f1@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_111632_119093_57D163C1 
X-CRM114-Status: GOOD (  11.95  )
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

On Wed, Oct 06, 2021 at 02:58:21PM +0200, Amelie DELAUNAY wrote:
> 
> 
> On 10/6/21 2:38 PM, Rob Herring wrote:
> > > Disable child nodes while parent node is already disabled fixes the
> > > warning. But it means to add status = "okay"; in child nodes everywhere
> > > usbphyc is enabled.
> > Presumably, you already have to add phy-supply everywhere.
> >  >> Is it normal dtbs_check checks in child nodes when parent node is
> disabled?
> > I'll look into doing that.
> 
> Should I wait for your potential dtbs_check update or should I disable child
> nodes in .dtsi (and enable them along with parent node in .dts using
> usbphyc) ?

I pushed a fix to dt-validate for this.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
