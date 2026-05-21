Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0BD9CD5BA4
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 08:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVCzDw09BmuOqsrvi+hXBgEYVzw+hc4RrQ0FqUurTJI=; b=qRsi7Qa7DnfvZr
	4jrgyE3Rvd6+A2tHn6KrylV0kyCeBWjfESNFAhjuLCjHQdxdCDXJCjNZJrcVsI61w5wSqQ3W5ta8x
	1UwKCGihGZjlvgSrDMWC/BOTK4BOAhy9z/2u183UdIvQwgDfRowR9B9Mov4PBK+5FnRhG82ZGDVRJ
	5N/GsegzO6hgWuqQ9rFfp419QwfedWUOGPrrR9GgDV9UPCEZmb29kvA5BER787sAh7aZ8Hvr4GjRZ
	jLTw+Wf0CW/PFMI3X1P+5mYqHaDTZIF3N5XrmgW1OMyDhFzs/0P7qR26gXWNXbhPBCS/BsGof0EEO
	gFUX1r9EannRqd6tYT1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyfr-000000076rc-38pB;
	Thu, 21 May 2026 08:22:35 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyfo-000000076qE-3XPI
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 08:22:33 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4896c22fcbaso48314155e9.0
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 01:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779351751; x=1779956551; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=iCcyB5LFRmVcSIROxmyKJG5EejU8FPAzcsI/5iDjdGU=;
        b=izR40d9KzMgIqWJ3JanY+dhXe3sWVxB8+NHznKaQpj2mbG50XLM9OSL26LdHFS6k5M
         tKVrH55eaeMMH0GGy5bLENIkqJzGQZLq7x1bdez2ZjhEoMYO9OGWPq1wkuYAouZaplzl
         4D/7zgB8Kn+qHTSkSngopUVyWHkOulq9mBCj9G1WZ/y6QoFq8ekHbMa067nF4+YL44yD
         ChNMXBDBuLbS70e2Vr0R89HUGrv4cRN9ia3RhGo0BiX4SfQh29eA6o9xYtlni8Kr4O/Y
         xq2wgYLyAJ4nY8p7KbwI7lTtfA5+sFke9LdmhOEHvnv6AblOprzWvQFrHoPINvoAcG/u
         U8+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779351751; x=1779956551;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iCcyB5LFRmVcSIROxmyKJG5EejU8FPAzcsI/5iDjdGU=;
        b=m1unMjdfbvBh1E3Ogdss0PzyZ7GGlQOozPJd+JxGST97+mQR+jUk3rzxKpdv40tqwy
         DsJ2B6knmrce4PZfJvL4wGc3ULziSej1FBFj20MMnJE+KaTC70WYbQi/4RNanig/TIKg
         DTnbeC0mkI7THNqS6VpBvqRn5HiET4OukE4egfFnAl+JMNhPPYlw9PJH1S/zSsYtMz0I
         1oeh8ZY5aMnux+4wZEXIk7QXgDCqvudbK9f7zOC5bFm/eQljRODqPyvxAmY2GGYLM0Mf
         faQy03X9vn3DkNN/7KXtBNHuGEGB4CtU/JxNQqQ4MluVUFJmSeK+ri2fwG9C4tY1yfYy
         OKLQ==
X-Forwarded-Encrypted: i=1; AFNElJ+HHRoEm9YxCwCxaBTzSVxlTqYj3tua1MWIoeKO6Hb3tjDnocj22yAqXGcEjkEAFO4E81sUGt8xfbY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEa1VBlYHZ+eqL54r5NZseZQOFxQ5ByttHAWHLbtlAfWfxsUAX
	nT/7PmkKhVJ/ujrXf8wf/pQ+PsBWOYgc7XwG4hMhSxQubPiPjP36sHrZ
X-Gm-Gg: Acq92OErahuXCbwwyZTyHi6CRUhWGje34lNkNp7JY5sSDPkVnXJC0z+qZUT46aFioUT
	cLJpMRu8ZidqoJh1IxQ6PqwzRwBcpqRDZL6xRsu8bwziOZZ9tBA2nGz+XNe/4I7U7goif4XEYX8
	021DKYx4CGDagLy0Xq05r5e/6QYGJAijI3xMLQHzYq7XQMyrfW5wlxiHEz9NPN2m+ijWMqToAGE
	dk0casBE2qbvlxMxuJyAl2gPeVjLrSB23kdUTLKs3zcC/fEcIi10l7ScetvsvamTq+NpR9agBWA
	90Zyab23wGiyNvo79wonAw+vSPT9mtIHX08tcv7tKV9cRRnTP0sVQgSV4WNZR5UtyyuA89j0lhM
	LD+aWqioQr+Oa5DL64Gc8hrzDPUmYAOhKy90q5cLPI5xYrMxtgV+JaF7Tl2NPBwYlRovxiCkD53
	f9cBps6w3xOrhlDLTaB4QGTZA/BaECBzMUbbX2Skv8ArlOiBwn84S7ObR63wEGOhkUF4ECIqvu
X-Received: by 2002:a05:600c:858c:b0:490:778:4fec with SMTP id 5b1f17b1804b1-490360f28f7mr17896195e9.33.1779351750348;
        Thu, 21 May 2026 01:22:30 -0700 (PDT)
Received: from Ansuel-XPS. (host-79-22-5-99.retail.telecomitalia.it. [79.22.5.99])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4903caede9fsm9490145e9.14.2026.05.21.01.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 01:22:29 -0700 (PDT)
Message-ID: <6a0ec0c5.16c38fd9.2b754a.4dc3@mx.google.com>
X-Google-Original-Message-ID: <ag7Aww1CbIvhnItD@Ansuel-XPS.>
Date: Thu, 21 May 2026 10:22:27 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v8 2/5] dt-bindings: phy: Add documentation for Airoha
 AN7581 USB PHY
References: <20260520150912.11614-1-ansuelsmth@gmail.com>
 <20260520150912.11614-3-ansuelsmth@gmail.com>
 <20260521-ambrosial-abiding-lyrebird-9dc86f@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-ambrosial-abiding-lyrebird-9dc86f@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_012232_897751_1E30E2F3 
X-CRM114-Status: GOOD (  21.00  )
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

On Thu, May 21, 2026 at 09:44:16AM +0200, Krzysztof Kozlowski wrote:
> On Wed, May 20, 2026 at 05:09:07PM +0200, Christian Marangi wrote:
> > Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
> > for the USB controller.
> > 
> > Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
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
> > provided by the SCU node.
> 
> 
> ^^^ here - required but:
>

I think I have to rephrase it. It's required if the USB3 is used/wanted. In
the other case for the USB2 phy is not needed.

I will bettet describe this in commit description and on the phys property
description.
 
> > +  phys:
> > +    items:
> > +      - description: phandle to Serdes PHY
> > +
> > +  '#phy-cells':
> > +    description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
> > +      as defined in dt-bindings/phy/phy.h.
> > +    const: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - airoha,usb2-monitor-clk-sel
> 
> 'phys' is not required? I think you need it to configure the serdes
> correctly, no?
> 
> > +  - '#phy-cells'
> > +
> > +additionalProperties: false
> 
> Best regards,
> Krzysztof
> 

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
