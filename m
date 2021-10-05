Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB044C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 22:46:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C198611C3
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 22:46:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9C198611C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJwimMGv+Kq/A+81BWOofF+awL/VlcKAEp8jDjkCA5I=; b=hQqFKxvmXD7ayo
	PMzSKhjQEqbBZtFtt3xS2h9TV5MdSftVSxEoRng2elPaLGf2JfmmbPFF72a5T1suaAVA/yBWm7RUj
	EcCNZO4Jleu+h+GMFFiQgLhG8WF604P1H9XIqpvguv/3Dz/aNpTP4EpLZuklKTw8hvzxa6Merf2It
	/GzNyB08FN8JKvCM3TXRJ76y3X5qOL9FHeG525GhWCkAS6OHIapyd+Rs2z6hz2vT5LAdGbXK0uziE
	y4jhY9q9jbR26EBVg15vwP1+PXOzJawI2HsbVZgtHKK00PRpc5sEAYJxLJcyDGkqrSpNEvhLvQohi
	R+sb6wYpelm5xFsdaPbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXtCr-00C8BA-3G; Tue, 05 Oct 2021 22:46:41 +0000
Received: from mail-oo1-f43.google.com ([209.85.161.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXtCN-00C7yg-MQ; Tue, 05 Oct 2021 22:46:13 +0000
Received: by mail-oo1-f43.google.com with SMTP id
 l8-20020a4ae2c8000000b002b5ec765d9fso259231oot.13; 
 Tue, 05 Oct 2021 15:46:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=z05iAxjrVVtJJ74Uea+D+Nd3+xgMuNb36MMScUa9l6s=;
 b=s063hcQ2P+VmheXgj4TJtQ5sbiu53EQ73Lf7lHPTxd4DHZZpD+3mrNlOT7C6E62Irt
 eDmU2MXBM0YpXhRZV0LGCLy5ZHKeXA7llPOwaD5dhPOuFun7+7iDCdgxP2nwHzvmZlvJ
 ZR/3WpzSlclYX9Z+hM7PhxRVJXBP42T/mIjmU1D8zXK4Ef4zSsnJkvgcHBwPoie8/peX
 REGdHzC5FA40e71YsHfrv0/oSwYsh7kqbjxBOVffVDf74b3hW2DkXzT2406jVOxyQ50/
 cptHhorvf9ang49wepgeyxXdGaicJHGd4aY6lz6Qo6B7L8U1CNt4M0fwLzycipa6zppy
 LDNw==
X-Gm-Message-State: AOAM533Cbnd0XXYx8zCE3ecinXaSG/YUQGmvVHPsAbBgLd2L1ysyBO3g
 ZoNIojGuhGdy8zDsu5ptiQ==
X-Google-Smtp-Source: ABdhPJx76djZVqB0ioneDeAM81Uh6K9ykIIZGHIxMbOnpc1TdPJPUZs3JKxyO2ZilAWRhpHzhp3t9w==
X-Received: by 2002:a4a:a9ce:: with SMTP id h14mr15431532oon.89.1633473970735; 
 Tue, 05 Oct 2021 15:46:10 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id w17sm356605otu.53.2021.10.05.15.46.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 15:46:10 -0700 (PDT)
Received: (nullmailer pid 106812 invoked by uid 1000);
 Tue, 05 Oct 2021 22:45:59 -0000
From: Rob Herring <robh@kernel.org>
To: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, devicetree@vger.kernel.org
In-Reply-To: <20211005152453.89330-3-amelie.delaunay@foss.st.com>
References: <20211005152453.89330-1-amelie.delaunay@foss.st.com>
 <20211005152453.89330-3-amelie.delaunay@foss.st.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: phy-stm32-usbphyc: add optional
 phy tuning properties
Date: Tue, 05 Oct 2021 17:45:59 -0500
Message-Id: <1633473959.465401.106809.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_154611_769553_C2CF5B24 
X-CRM114-Status: GOOD (  10.66  )
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

On Tue, 05 Oct 2021 17:24:52 +0200, Amelie Delaunay wrote:
> This patch adds the description of new optional phy tuning properties
> for usbphyc phy sub nodes.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> ---
> Changes in v2:
> - st,phy-tuning property removed
> - tuning properties are now put directly in each child node
> - tuning properties are no more free form text and their name reworked
> ---
>  .../bindings/phy/phy-stm32-usbphyc.yaml       | 126 ++++++++++++++++++
>  1 file changed, 126 insertions(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1536730


usbphyc@5a006000: usb-phy@0: 'phy-supply' is a required property
	arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dt.yaml
	arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dt.yaml
	arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dt.yaml
	arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dt.yaml
	arch/arm/boot/dts/stm32mp157c-lxa-mc1.dt.yaml
	arch/arm/boot/dts/stm32mp157c-odyssey.dt.yaml

usbphyc@5a006000: usb-phy@1: 'phy-supply' is a required property
	arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dt.yaml
	arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dt.yaml
	arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dt.yaml
	arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dt.yaml
	arch/arm/boot/dts/stm32mp157c-lxa-mc1.dt.yaml
	arch/arm/boot/dts/stm32mp157c-odyssey.dt.yaml


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
