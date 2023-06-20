Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26DE5EB64D8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jun 2023 15:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sg9MeayO2T1p9/Sn8FMpNrJfCm2vIOq4m3xywH/GYxU=; b=0g/WO9qSQA7kpA
	alq9feZaDpEZuYIOpkf+rfXQ3sLM5lCKF7tixVwSLfZ+/EznGbznnkGNf0tg0naxsOMOcwYEED3Xu
	L8LM+JoeyHx0+P2BXXoLDQwuEfs6QqZ442eHSDLLBfmUOM4tbK67o6XqnKlouVU14VYsSQXfMXF3r
	sU8DAIdoDze5fpGMXOHgmJjP2pY/BpWfAdn8thm8G6/+120/1v5ScDj2EFpK4qxSO+UBOrPhRWfWf
	HjL5Ni99v+SKe9dc7lDOLWMiT86nTLsZv/+EI9nRsHgDKBcRmjpRXWR9IBshpubZiw6D9wtOG9uin
	FjrqnwRiQ/lTclJll06g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBdQY-00BguO-2l;
	Tue, 20 Jun 2023 15:37:54 +0000
Received: from mail-il1-f172.google.com ([209.85.166.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBdQV-00BgtV-13;
	Tue, 20 Jun 2023 15:37:52 +0000
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-340bba768acso24075395ab.2;
        Tue, 20 Jun 2023 08:37:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687275467; x=1689867467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0sJbkvA8psBZvCbiZz79+0aLmkyZYgwDhRQ2jJ0L/Xc=;
        b=AwMiWeU28Ca/FzrpZxEXCT4j3IqVXUghEpbuhmqtXWhryQmNAXzOv2OCq8gFKrwvg9
         J5Xz1cgteQ2UZlWhxT9t5CqyOPQ1iM73uVjMjJh4u97r77HGmcT/U8j/jjCSivuBQqU/
         6Fmms/3EylWln97To24P8fCnlRJ79epQnJoZldOjjmGqkQHd/zYMevJTCQyYgCqQPeYj
         mN7L6ErWKqO8vc/Qfr8nkhAd8sdbFZDpAsATAKGjkLVRWoMYElzrCHJIVwizvQO/UQJB
         5nadwVtZI/j4J2aGrQ66sn1sc1RSX+Hpowz+QxbuZIHaRCCcON9kuF+MO8UQB7XGZMPT
         cKkA==
X-Gm-Message-State: AC+VfDw5kDo1k2Wv0JoQaQxKEXd/cFfRn9KCpFUoqaclyQUzMk+ih/Ws
	61rqRBb9kklr/alEHBRSQA==
X-Google-Smtp-Source: ACHHUZ5u+D4bbGxsP6bC+gdajHPXjGwM+AGf0+Hh4eLKoobenWPCJtpJM8Pm4EeQsdQZBZHPQ2GHEg==
X-Received: by 2002:a92:a30e:0:b0:33d:1735:fd79 with SMTP id a14-20020a92a30e000000b0033d1735fd79mr8830286ili.20.1687275467410;
        Tue, 20 Jun 2023 08:37:47 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id n13-20020a92d9cd000000b0033b2a123254sm656797ilq.61.2023.06.20.08.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 08:37:46 -0700 (PDT)
Received: (nullmailer pid 3641003 invoked by uid 1000);
	Tue, 20 Jun 2023 15:37:43 -0000
Date: Tue, 20 Jun 2023 09:37:43 -0600
From: Rob Herring <robh@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, oliver.brown@nxp.com, Sandor.yu@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de
Subject: Re: [PATCH v6 2/8] dt-bindings: display: bridge: Add Cadence
 MHDP8501 HDMI and DP
Message-ID: <20230620153743.GA3637514-robh@kernel.org>
References: <cover.1686729444.git.Sandor.yu@nxp.com>
 <8687f2221299b120e12f29fdccf264e120227bd7.1686729444.git.Sandor.yu@nxp.com>
 <3439354.PYKUYFuaPT@steina-w>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3439354.PYKUYFuaPT@steina-w>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_083751_390587_27B1D987 
X-CRM114-Status: GOOD (  16.30  )
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

On Fri, Jun 16, 2023 at 11:31:43AM +0200, Alexander Stein wrote:
> Hi Sandor,
> 
> Am Donnerstag, 15. Juni 2023, 03:38:12 CEST schrieb Sandor Yu:
> > Add bindings for Cadence MHDP8501 DisplayPort and HDMI driver.
> > 
> > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > ---
> >  .../display/bridge/cdns,mhdp8501.yaml         | 105 ++++++++++++++++++
> >  1 file changed, 105 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > 
> > diff --git
> > a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml new
> > file mode 100644
> > index 000000000000..a54756815e6f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > @@ -0,0 +1,105 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp8501.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Cadence MHDP8501 Displayport bridge
> > +
> > +maintainers:
> > +  - Sandor Yu <Sandor.yu@nxp.com>
> > +
> > +description:
> > +  The Cadence MHDP8501 Displayport/HDMI TX interface.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - cdns,mhdp8501-dp
> > +      - cdns,mhdp8501-hdmi
> > +      - fsl,imx8mq-mhdp8501-dp
> > +      - fsl,imx8mq-mhdp8501-hdmi
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +    description: MHDP8501 DP/HDMI APB clock.
> > +
> > +  phys:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    items:
> > +      - description: Hotplug cable plugin.
> > +      - description: Hotplug cable plugout.
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: plug_in
> > +      - const: plug_out
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description:
> > +          Input port from display controller output.
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description:
> > +          Output port to DP/HDMI connector.
> > +
> > +    required:
> > +      - port@0
> > +      - port@1
> 
> You mark these ports as required, but apparently the drivers do not use them, 
> AFAICT. E.g. missing port@1 is not resulting in an error, at lease for HDMI 
> one.

A connector node should be required whether a particular OS requires it 
or not. The bindings without predate defining a connector node.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
