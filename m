Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D558CC5AC67
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 08:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIQoDWNYScr7/Rvj7wakPXl+fGQB2h+LJwzrvmfEd/I=; b=tI7RLQAuMMYs+W
	o5gSq1KUCZr1/sTRPECYghpRqQqSFSbAW4Z11HkiTDD2ulAFUaLziszIxRwblRGB//n46u4cSEXAe
	K8Hn4STBkk0aqPXTdiXv7dyZOxjiBXCs6uiQY58MsK1VcQr6a7CXf/dO0kN1EO2ZGK0zDPXzn+pzH
	OccQLzcI1mhV6QO1KjmNYH8iT90AJ1fIUqfylnMrGlpHnTGBKWLFbV52aYDjomcyi19MS4DQYjRDa
	rPr6Tr8XgX7oD2d2Mk+XwTWk+LUIrbOVz8IGXo31YKGCPdm0rO7NmwkWDIolqY4wU3XJSbxsusX/9
	nBgE9hsVIGB1vceuMHcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQxO-00000000B6A-1S0B;
	Thu, 13 Aug 2026 08:38:34 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQxL-00000000B5b-3dDe
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 08:38:32 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-49954b88fffso4907195e9.0
        for <linux-phy@lists.infradead.org>; Thu, 13 Aug 2026 01:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786610310; x=1787215110; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:subject:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=fYxN56Q1FiCTvNsl0xjkJkMf+TLROP+6g/NIvXZPeBM=;
        b=IKnUdyIqb3k4gadEg3B8QCEjbOGwVP9L5iPPo5fPq2DjFF01EXtxApYzQf6t1N/r9F
         sGVJ06LQB/WovhcKlmSEFJGXcMF8SP4VWEcxinrbxof43QiEAzZWaFBYptJ/VyADtuzZ
         0sP3trfz0m0oETvxkHwmpaFuqxnHfFWhKTWScK2JV4b7eAinSqkX6Py7iPnyyGbkAZ+G
         mrKel9mffmA0Cg2l5mR9SaST1aH5Y6MqgkWS+qkAlFxCAh9rINgk0XAD1g2nyM6l+rk8
         er6J+pTmr2RF5BUKIRK4buJMTzWu1702TfjGruLa8KQANG8oZ6C6js0vYFjEMNP/kQU+
         U/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786610310; x=1787215110;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:subject:cc:to:from:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fYxN56Q1FiCTvNsl0xjkJkMf+TLROP+6g/NIvXZPeBM=;
        b=WpGO5kv5qnupDX9gEAHsMr/Z3BeNC6P8AM2FxsEB4H4rB8cSndM0tLzG3rtpYqA2FV
         yrii7eLjCYRdFLbAIYUyp7tKZKVF4hOQvUd4Ju6x0rmVwpvC2sPnyaDGcvE0/Z6ALNi2
         VdW0VoPhB38v/wwyS+j2XdSizj/Fy/8AArmJgflJpHwfECBKZ+LLifJJkp0pR8PKC95H
         HZGsGgnuoq2wJexIz3zHBjubpe8qxDLE8+vnH2XNE1wfaNxKlYPG8u4FiInjO1ssIzVr
         LeAcdvtJgZ3X9QjGysL6qxpU2S+WiAtDWECcxgXggxGslS5RQIgJWAQLDe01VXEk69VJ
         lDnA==
X-Forwarded-Encrypted: i=1; AHgh+RoP2cipXdUx/8E0WSCjLQS6zQqlV0XaXhKBzmHsbA65jhQcJPd1QO8MMNNTkiJbkAHDCIM4XBJrhIc=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywm/W3rQajeRz3ZzHCiTBSJ8GK9gRR5gQXtk/Hz+v2f+AcXjvqy
	SwFOF0pjhMQHlDDh3cXXi8mzpzi84tt4RB9CPTQ5VK43lo/wd4Rz4HKe
X-Gm-Gg: AR+sD119WWkmd/7fn+dGejkONoicLOgsGAu9kb14nuO6yb5h5I5avAS1pzZ7Riev1vy
	zi6xJOWsf/illqJ35ZXSYqdLDY52EPZUrENwl9IrPwHnGlfQMRADn+e9pXTZFj4qgsaQxL4LAf4
	NznuGoWpwBIm0HOUSMtf4Deje3zpCTpifoSkzxSfTtRCyz1oUcYzon4tWYyI0OmAf7u4VMKYyr7
	GhF3Z12eCiBVMooKV26VmO0Rg21pYTqkDKHK1X2tSnbwuu/4ygJS0wt59v20jw/afIVLRE4RK0d
	q2vNA8CGXY3kyEnMrHaz8IOqewZDsU1l5YEP5GmRTH4X9n+DvV6WOrfV+BtdnzJwC8Ge4MNLFak
	LojIthS59ZzlW96reqI6+6EtSMXwnKY0ywc4/Gg7+kURc2um11Lg3lqZ9E9K64sUFQdm6KO/JiC
	NiEEVYS5jJdmcg/RcqKX+jQQyi83zg2CfOx25G67oLXIxrgCIaXsMKwMDjbCzH3O1Sd7nXnWwJ3
	v2qbw3+FTo89FGFjt80fswJRGBfmik=
X-Received: by 2002:a05:600c:4fcd:b0:495:63e4:7f78 with SMTP id 5b1f17b1804b1-499821e8016mr39965765e9.10.1786610309976;
        Thu, 13 Aug 2026 01:38:29 -0700 (PDT)
Received: from Ansuel-XPS. (host-87-20-3-207.retail.telecomitalia.it. [87.20.3.207])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815a56981csm4384046f8f.10.2026.08.13.01.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2026 01:38:29 -0700 (PDT)
Message-ID: <6a7d8285.ebbd881c.33c407.30ab@mx.google.com>
X-Google-Original-Message-ID: <an2CgeKA7uWbj0Wv@Ansuel-XPS.>
Date: Thu, 13 Aug 2026 10:38:25 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add documentation for Airoha
 AN7583 USB PHY
References: <20260811124724.702467-1-ansuelsmth@gmail.com>
 <20260811124724.702467-2-ansuelsmth@gmail.com>
 <20260813-xanthic-sawfly-of-greatness-47e9bc@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260813-xanthic-sawfly-of-greatness-47e9bc@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_013831_944775_8CCE7563 
X-CRM114-Status: GOOD (  33.48  )
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

On Thu, Aug 13, 2026 at 10:33:31AM +0200, Krzysztof Kozlowski wrote:
> On Tue, Aug 11, 2026 at 02:47:22PM +0200, Christian Marangi wrote:
> > Add documentation for Airoha AN7583 USB PHY that describe the USB PHY
> > for the USB controller.
> > 
> > Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> > always supported. The USB 3.0 mode is optional and depends on the Serdes
> > mode currently configured on the system for the relevant USB port.
> > 
> > To correctly calibrate, the USB 2.0 port require correct value in
> > "airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
> > selecting one of the 4 monitor clock for calibration (internal clock not
> > exposed to the system) but each port have only one of the 4 actually
> > connected in HW hence the correct value needs to be specified in DT
> > based on board and the physical port. Normally it's monitor clock 1 for
> > USB1 and monitor clock 2 for USB2.
> > 
> > To correctly setup the Serdes mode attached to the USB 3.0 mode, a phys
> > property is required with the phandle pointing to the correct Serdes port
> > provided by the SCU node. Providing the phys property is optional if USB
> > 3.0 is not used.
> > 
> > The second USB PHY on Airoha AN7583 SoC is used for PCIe Gen2 usage and
> > similar to USB 3.0 require a phys property to configure the serdes.
> > 
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> >  .../bindings/phy/airoha,an7583-usb-phy.yaml   | 205 ++++++++++++++----
> >  1 file changed, 168 insertions(+), 37 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> > index a6e2c0b1acc4..46b311040e02 100644
> > --- a/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> > @@ -26,64 +26,195 @@ description: >
> >  
> >  properties:
> >    compatible:
> > -    const: airoha,an7583-usb-phy
> > +    enum:
> > +      - airoha,an7583-usb-phy
> > +      - airoha,an7583-pcie-phy
> 
> Keep the list sorted.
> 
> >  
> >    reg:
> > -    items:
> > -      - description: phy register
> > -      - description: ana register
> > -      - description: pma register
> > -      - description: dig register
> > +    minItems: 3
> > +    maxItems: 4
> >  
> >    reg-names:
> > -    itmes:
> > -      const: phy
> > -      const: ana
> > -      const: pma
> > -      const: dif
> > +    minItems: 3
> > +    maxItems: 4
> >  
> > -  usb2-phy:
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
> 
> I don't understand this diff. Why do you add cells if you do not have
> chidlren with addressing for new device (pcie)?
> 
> > +
> > +  usb3-phy:
> >      type: object
> >  
> >      properties:
> > -      reg: [0, 0x1000]
> > +      phys:
> > +        items:
> > +          - description: phandle to Serdes PHY
> >  
> > -    airoha,usb2-monitor-clk-sel:
> > -      description: Describe what oscillator across the available 4
> > -        should be selected for USB 2.0 Slew Rate calibration.
> > -      $ref: /schemas/types.yaml#/definitions/uint32
> > -      enum: [0, 1, 2, 3]
> > +      '#phy-cells':
> > +        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
> > +          as defined in dt-bindings/phy/phy.h.
> > +        const: 1
> >  
> > -    '#phy-cells':
> > -      description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
> > -        as defined in dt-bindings/phy/phy.h.
> > -      const: 1
> > +    required:
> > +      - phys
> > +      - '#phy-cells'
> >  
> > -  usb3-phy:
> > +    additionalProperties: false
> > +
> > +  pcie-phy:
> > +    type: object
> > +
> > +    properties:
> > +      phys:
> > +        items:
> > +          - description: phandle to Serdes PHY
> > +
> > +      '#phy-cells':
> > +        description: The cell contains the mode, PHY_TYPE_PCIE or PHY_TYPE_USB3,
> > +          as defined in dt-bindings/phy/phy.h.
> > +        const: 1
> > +
> > +    required:
> > +      - phys
> > +      - '#phy-cells'
> > +
> > +    additionalProperties: false
> >  
> > -  phys:
> > -    items:
> > -      - description: phandle to Serdes PHY. Optional if USB 3.0 is not used.
> > +patternProperties:
> > +  '^usb2-phy@[0-9-a-f]+$':
> > +    type: object
> > +
> > +    properties:
> > +      reg:
> > +        enum: [0x0, 0x1000]
> >  
> > +      airoha,usb2-monitor-clk-sel:
> > +        description: Describe what oscillator across the available 4
> > +          should be selected for USB 2.0 Slew Rate calibration.
> > +        $ref: /schemas/types.yaml#/definitions/uint32
> > +        enum: [0, 1, 2, 3]
> > +
> > +      '#phy-cells':
> > +        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
> > +          as defined in dt-bindings/phy/phy.h.
> > +        const: 1
> > +
> > +    required:
> > +      - reg
> > +      - airoha,usb2-monitor-clk-sel
> > +      - '#phy-cells'
> > +
> > +    additionalProperties: false
> 
> Looking at the amount of changes this should not be the same binding.
> Also, things would be simpler if children were called 'phy', but OTOH
> why do you need children in the first place? Your pcie-phy child has no
> resources, except phy which can go to the parent device.
> 

Yes while writing the schema I also got this doubt that I should have just
made 2 different schema. I wanted to put everything in one as they are the
same HW and driver.

I will just split these 2 to simplify it.

The child is just for consistency with the USB and easier implementation on
the driver. But I guess for DT this is a no go. I will rework the driver to
drop the redundant child for the PCIe variant.

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
