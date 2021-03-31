Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A858DC433ED
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 13:41:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 52A9861989
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 13:41:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 52A9861989
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2RM5Ek9md95SjL0uYa2+5Kj5NHqZGRiZbRiXw+/3NrE=; b=LWzTuTcbrLmdchku6bhenGVo8W
	8lITimeDqb4xGx6o0t5k0pr1j8S+QINW6usb3JRJRLQE1PN4PoDt9RROt7OvHPelrOH6/gv6VkoFT
	DJ+dQ80C6NQnLMKz1mSo9snCTZGK9pxCj89PwDcjAAIF/VbOGaLzgCvbN3G32+7xkasLOue2uKpG7
	GW7Yzwg0/0Fic48IK22wSuS5hiNckFThpyZyu6JJSzTlZsQv1NetphlwpV5C4k+sgUSnpgkuS+Ulx
	GC0VoDys7QEuEkvv19wPt/ZTVl2nXO1F33G1QBsaMoNk51unqOuVVMdbQ4rkboSdzkCyUmHl9p/yA
	Dr77Zr5g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRb5o-006h7O-MD; Wed, 31 Mar 2021 13:41:08 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRb5j-006h2y-TN
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 13:41:05 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 g8-20020a9d6c480000b02901b65ca2432cso18957487otq.3
 for <linux-phy@lists.infradead.org>; Wed, 31 Mar 2021 06:41:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=jsgIdaqlH2C9MJUIwIFmOwXHosTK36DMQwbtDc67PdU=;
 b=IduRHrSpI1jlBZlF3H4y5wV7jqhD0V/polPbWFZSkJVbk0uuJwDSZy4fz+6Dkg1O3z
 axqao/rWE4wOW1HGGFwECkjVMPHZLUnUNGB1isqeeWCOWUr9HUnPdJ4ftoARlyvNrkbX
 YRnMexaiS1DiiZ084uHNXJHXJSciRY9aINMhfEcYpm2CHVlZ//ecAx4myD2nSqvl+yVK
 qFvwXt9Al1Lk6Pah9ez/yxLvjs5/wZa9wacH9Vo4RGsdMQqVwq6qYabWcwyaV0EixgpR
 VQWe5ukVsafnONwLsS4vn9lxiMhpband6P5fepF9tAS6PGnAC9CF18k646WUT1KSyvjR
 rYBQ==
X-Gm-Message-State: AOAM530p96BFEaIJnKUgujnaGwLlmvOqZbEEVAUzcX5MjdpDehMtZl44
 sBdDxRSt9EcPlHf4ms8ubQ==
X-Google-Smtp-Source: ABdhPJy9cZd8SNUZfNXUreF3fwUvIluuSS4fiqRj0Ql+EUHendHCquhblhKUmO6JrZ58igOXICq5Tg==
X-Received: by 2002:a9d:4b8d:: with SMTP id k13mr2677027otf.354.1617198061936; 
 Wed, 31 Mar 2021 06:41:01 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o6sm474874otj.81.2021.03.31.06.41.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 06:41:01 -0700 (PDT)
Received: (nullmailer pid 2074854 invoked by uid 1000);
 Wed, 31 Mar 2021 13:40:59 -0000
From: Rob Herring <robh@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Peter Ujfalusi <peter.ujfalusi@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, devicetree@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-phy@lists.infradead.org, Alexandre Courbot <acourbot@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 dmaengine@vger.kernel.org, Benoit Parrot <bparrot@ti.com>,
 Helen Koike <helen.koike@collabora.com>, Peter Chen <peter.chen@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
In-Reply-To: <20210330173348.30135-13-p.yadav@ti.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-13-p.yadav@ti.com>
Subject: Re: [PATCH 12/16] dt-bindings: media: Add DT bindings for TI CSI2RX
 driver
Date: Wed, 31 Mar 2021 08:40:59 -0500
Message-Id: <1617198059.574658.2074853.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_144104_026302_99BEA78B 
X-CRM114-Status: GOOD (  11.30  )
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

On Tue, 30 Mar 2021 23:03:44 +0530, Pratyush Yadav wrote:
> TI's J721E uses the Cadence CSI2RX and DPHY peripherals to facilitate
> capture over a CSI-2 bus. The TI CSI2RX platform driver glues all the
> parts together.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  .../devicetree/bindings/media/ti,csi2rx.yaml  | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/ti,csi2rx.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/media/ti,csi2rx.example.dts:21.30-29.11: Warning (unit_address_vs_reg): /example-0/ticsi2rx: node has a reg or ranges property, but no unit name

See https://patchwork.ozlabs.org/patch/1460166

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
