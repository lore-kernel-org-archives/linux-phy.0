Return-Path: <SRS0=D930=PP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 168A3C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 20:37:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D6E1360EB4
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 20:37:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D6E1360EB4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bT2nrLFo/KTXF+Zt7Qc92sMDAx2algvZNUWYk4R0DXw=; b=I2fSDh1E6PAnlE
	lr2O0UD5Q0fENzo9TE0dOoujzDy6JgZhsYuispNwbKHrGROalyKYoDbMh0/YENbqttMq113BFlcEa
	6ZpvYF6QmuzNgnVNHpPK5LIdO9lmh4eSEDvnKyTObLVZQpF9TR2dDJdaeW5uuQ32q4TsBPSMM0CKC
	iOA68wpc3+iiRyzWU73ToQYUmGQc40veyjFL1gjs/m76wceq+C+nFHmBlV5nPWEc2NDUAA+EqYoVG
	wko3CUg6q9uPluP0/3pdiC3090Q3XhhNDbgplyG9k6Ah5V8mgmfxXAxKJ/eg1Uybp3W8eNRAh40km
	ItINKYAy5QsoDEcJqg+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfpfl-00656K-DI; Wed, 27 Oct 2021 20:37:21 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfpfi-00655D-QF
 for linux-phy@lists.infradead.org; Wed, 27 Oct 2021 20:37:19 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 l16-20020a9d6a90000000b0054e7ab56f27so5363892otq.12
 for <linux-phy@lists.infradead.org>; Wed, 27 Oct 2021 13:37:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rX2cDz/wX3SJcEzn8Nu4ObsMyqT3SKyEBfgx7vaoHC0=;
 b=r13gEwgtotxgtz8eELQwWQIWBgXHgSjaPaCs4srC0o55sy91yo1BtxhpMcIQJ3qNAA
 N7TmdMcOQmxjJhdDQO65ZOCRe0XbLm8aOQcF3NVcouaIEjCEcApVeoKg32TNZxkZ+TPL
 inR8oC6UdhC0u4xD1W18a/qvbKnIY0fU3wlSycp8Eo3HJJlpZTlgAqETGTaLpujVnEku
 DAwNJGGSW/e7EY+i+U4i5ZoJ8oOxWwvrG3tUesE6C6xDz73xuXZuP5Sblad63bC1ywJ8
 Gu9oMd6Y/RTb4ISYVXpe3/LTYPnQe5MUy5Ldo/6wl9vFIeU9nYWUI8vyLR4OBoppfg/a
 aesA==
X-Gm-Message-State: AOAM533LDGDEWzS4N3DlD2GL0l+5a7OvIwEiakbcwWVuMFXbdjDLe3/+
 CpgKKsajWOkAYhGaQ5PDD4+uk5Rugw==
X-Google-Smtp-Source: ABdhPJy12B0q9y/jsgaw9j6Z9KG6IRo1plCckYJmB4tG62BmgFFtR7P/gNzCxU8EVI0mHiuMU/KcOw==
X-Received: by 2002:a05:6830:3114:: with SMTP id
 b20mr26764249ots.163.1635367037476; 
 Wed, 27 Oct 2021 13:37:17 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 38sm365362oti.13.2021.10.27.13.37.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 13:37:16 -0700 (PDT)
Received: (nullmailer pid 2110622 invoked by uid 1000);
 Wed, 27 Oct 2021 20:37:16 -0000
Date: Wed, 27 Oct 2021 15:37:16 -0500
From: Rob Herring <robh@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, alexandre.belloni@bootlin.com,
 linux-phy@lists.infradead.org, vkoul@kernel.org, robh+dt@kernel.org,
 kishon@ti.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: Add lan966x-serdes binding
Message-ID: <YXm4fIRt4NHo7z0F@robh.at.kernel.org>
References: <20211020094229.1760793-1-horatiu.vultur@microchip.com>
 <20211020094229.1760793-2-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020094229.1760793-2-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_133718_868451_47401D77 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
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

On Wed, 20 Oct 2021 11:42:27 +0200, Horatiu Vultur wrote:
> Document the lan966x ethernet serdes phy driver bindings.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  .../phy/microchip,lan966x-serdes.yaml         | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
