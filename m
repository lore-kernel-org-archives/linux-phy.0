Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB9AE67480
	for <linux-phy@archiver.kernel.org>; Thu, 31 Oct 2024 20:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBX7Drm/jebjE8iviXx76D6c413iRdrksFjWFwTRnBI=; b=Is8TwvhlCwJniJ
	lwk0NEJkAETEwlbmHk5clTvDf7Zn1j9vplAoM1maXbl04UUSLSL371g1vrF589UNDz3Lf+vD0S82p
	Zsl+hrVi9ISZL8aJ3HxXzNDZ+BOry6+tAZ1yg4U9m+3oHG/ZhWNnLkdzFJ6UfnHHwUbcBloKxIGiF
	NSuJNjjCJnXnP7i9p2R4ALp7tLLAplaMx3ClS8KyNrxQLV6lGR4qUEnZskeYaGAtF2rkWy6WvpNYQ
	JIHwmYTs0HAlmyQTSK2uRUDHDIqFPBHJ8plTXSaFYJTRymI0nA9gWb2WBELf7Kv8mVNI9Aadyuk41
	CaXki/IWZe6KNybiY7ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6cFA-00000004qrt-0y8T;
	Thu, 31 Oct 2024 20:58:12 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6cDQ-00000004qL8-2AW6
	for linux-phy@lists.infradead.org;
	Thu, 31 Oct 2024 20:56:26 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2fb3debdc09so10470131fa.3
        for <linux-phy@lists.infradead.org>; Thu, 31 Oct 2024 13:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730408182; x=1731012982; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wcGe16S8C8s7dwE7spgvv4ewwqDlWbIAjr6C3TYG2q0=;
        b=M8R0jmcfyHf9zYlvChKrrxRI9ZGOvYKIACIUwPcJuMZyMxpfBeywVooT6JWfCdCZ7o
         UckZBVbonCNmG1MqckYYN7FVunUTnFcgoCfLqhxo9Ddj458E739avdu3NHpIRzmLEY51
         Gb8snaKUmMJiQXce06IZMGc3wRln67NOQ28tt5mwv0oR8f8KU3wcGZl/h6e+rBJ88yTx
         gnodAunU7zC652xY2Cl1QyrXNAZ39rCy/hUolNKHK6DFNyeVZYIMxYeCEtuFWtd+B1GO
         sttgF78AL8ySzRln0R+/BV4P1TsvBpVOFINQ+MNUrrqAEflmGMAD0wo31GTXyEaL1rjI
         S1MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730408182; x=1731012982;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wcGe16S8C8s7dwE7spgvv4ewwqDlWbIAjr6C3TYG2q0=;
        b=EomGU/HvQejiTpGZYgIOsfIwQEalrB91EAPo0y7I6SffwkZ0FGiT440aWx4sFL9/l+
         vYIXruDKqgCIOlmJe9Mw50/Rwjupey7T9tkhpkArR66KAPQsXFsLNj7lWLdQkueBy9DR
         UPJD7HiFdd2AWYIZSt+EaNeEQVVCB+R8Zsl2LUPYS8UfNyo5tBUm8PQjHrRK8R4srHUy
         hHdexv8x+Y6FiYl7+RlNMXJqt+st0xTMtygHRi51EGsQ+iAuSWR2LfQL1ULulGaLRbyS
         uAVLrP8AisxJaWq63AjBhij3aFMcEJrql5De9Lh5h861PyCe7ukQZ+XpcsJ7HK/ZiLq2
         Qqqg==
X-Forwarded-Encrypted: i=1; AJvYcCVDGWF0niNeVEkIn2zz5xQBFgwbIwLHY0KVGToD58xURls3uGrcOk0Xq+4jP0O6Y7tEIcYgXpjg/uk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6QzraqUoJK2eUY/7PuhxbXN48M6xlzGhPF0l7mixaNJup06hA
	oH7fO57iHD5pfcjEsfO+DfUOgOYgrvfOW9YMHnBIEz5DeNpgpYsZ6We9oPrBZbk=
X-Google-Smtp-Source: AGHT+IH1Dxv4hPTZoRhxByuTLT7M0QZnSUS3wobA+1jRRApV2idHM9Yb0PVuIF7o5aoJiS6cP3lHOQ==
X-Received: by 2002:a2e:4c12:0:b0:2f6:6074:db71 with SMTP id 38308e7fff4ca-2fdec5f831amr20876381fa.17.1730408182016;
        Thu, 31 Oct 2024 13:56:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef8a66b8sm3316571fa.78.2024.10.31.13.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 13:56:20 -0700 (PDT)
Date: Thu, 31 Oct 2024 22:56:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v18 3/8] dt-bindings: display: bridge: Add Cadence
 MHDP8501
Message-ID: <xmfohy6lpyfdc33gqt7vyagfqfhqwyb67id6gla6ydmah6ryuu@jll5fz2wx7dg>
References: <cover.1730172244.git.Sandor.yu@nxp.com>
 <e11ba0cf836d6f27935f58b7987e792026ab0233.1730172244.git.Sandor.yu@nxp.com>
 <22f3pkf63uphnx3opld6ibkhptbtxqoguqgu6iswb6w4hzkxxd@pwbdwjdodcnc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22f3pkf63uphnx3opld6ibkhptbtxqoguqgu6iswb6w4hzkxxd@pwbdwjdodcnc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_135624_568951_5E0F2D93 
X-CRM114-Status: GOOD (  18.32  )
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

On Thu, Oct 31, 2024 at 09:55:45PM +0200, Dmitry Baryshkov wrote:
> On Tue, Oct 29, 2024 at 02:02:11PM +0800, Sandor Yu wrote:
> > Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge.
> > 
> > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > ---
> > v17->v18:
> > - remove lane-mapping and replace it with data-lanes
> > - remove r-b tag as property changed.
> > 
> > v16->v17:
> > - Add lane-mapping property
> > 
> > v9->v16:
> >  *No change
> > 
> >  .../display/bridge/cdns,mhdp8501.yaml         | 112 ++++++++++++++++++
> >  1 file changed, 112 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > new file mode 100644
> > index 0000000000000..e4b900ecf1ac9
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > @@ -0,0 +1,112 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp8501.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Cadence MHDP8501 DP/HDMI bridge
> > +
> > +maintainers:
> > +  - Sandor Yu <Sandor.yu@nxp.com>
> > +
> > +description:
> > +  Cadence MHDP8501 DisplayPort/HDMI interface.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - fsl,imx8mq-mhdp8501
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
> > +    description:
> > +      phandle to the DP/HDMI PHY
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
> > +  data-lanes:
> > +    $ref: /schemas/media/video-interfaces.yaml#/properties/data-lanes
> > +    minItems: 4
> > +    maxItems: 4
> > +    description: Lane reordering for HDMI or DisplayPort interface.
> 
> So, HDMI or DP port? I don't think the format is actually the same, so
> it is either-or.

Please ignore this, I've misread the text.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
