Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 439FBCCF9E3
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6o9cuoVHuYMt1TH6qujhRXGKFNSoMuPvXHU7yomYr/4=; b=O94yFb4y3J1mXz
	Zhe3MV7CWgR3tbC6Fo/i8ydq4u22Z0i2CxAvFV6/t74ST2i6k2ccsA/oVcDl8uoxTv9Hd8BnBKfPj
	KoQACYzkm38Ck72/k4qoLuyHP30mBY+6/UgKst1gLYq+s03sC8hc2uKmlvi5dPU04bZ/cuRs/Tbhf
	u+JYoJoIvZgFEQXLrLDvrhtKl5mOO2ZMTLoe0lgi77qr4hOiHDOtkT1QtLagCX5c3Mwu7q/Jj3QZi
	if1RfyGOr1Qqqqxx8ktRINkcY3bqLKwvi79lIErHVZt9x9pNIylaLs+MQB+iVLipbaRX19Nk4i7D4
	t31yZLpAkGVK6rnheH+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHR0b-00000000RFv-02Vt;
	Fri, 07 Nov 2025 18:16:25 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHR0Y-00000000REq-33KV
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 18:16:23 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-429bf011e6cso1044500f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 07 Nov 2025 10:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762539381; x=1763144181; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=tVJ2xtJlmj5EezO+VKSHrAcAYjS9yDJNYT/T6/c6kPg=;
        b=Wv5pGvHUuhMcnON3UGxHZzkvB25ax81aHENI0sCP7bPweJDgfH7GNUKn+m4AqFP2HD
         +fNS6GafhPV0qK4U5+qILUFc3Bi1s3lOIg+pYE/s3L9+h4OnnCGauqdLd7OLBofQLz5E
         9jL3vSRPzw1+KUJ11cHzFtjhXQ+1XLaHYtdNzxxSsajr1IDGraWmrCfgzWKDsWRUHD5Y
         V1xmNGQgaeHA1o64k45v450fA/pIEVvqXdVoUBgoaG82DJmdxX9hy4qX37RFIKdWAh2I
         vOfi4qvAdLhnyRT7VaJPPl9PtLg+j7DE/Uc9mniYadD1GjkCxRrNJ976sla4jv8QIEhk
         gdTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762539381; x=1763144181;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tVJ2xtJlmj5EezO+VKSHrAcAYjS9yDJNYT/T6/c6kPg=;
        b=A5IVJyh6X4Jo1jHmUU5v46yvBcxgUz6wxdRS0eUCl8AOB1GyDIQGp2ttP566IE1S5o
         qwBLHWe8wr7RuM8fTbdECxiVOzUQ1TiD1B8NHCMXaYHMKKdYh+GpazFK6xV34GMWuS1f
         Ff010H6L1VLHG5BDMzqhSrWtGIgVe1w2GTGicyc6MoLkeRnIfhM+Caz0urM5RWtdgh7x
         VB4K1EG2ZxwogxbxmH+awH60KlfFpprv+rFtQTWQJMFRMGyM7Dodgaj0hyFAA0M3Zs0G
         UIR6qLr2bow1bo7ybyD0u+NsVh9sbd0RP76c2F1JwyYNFxwQMbiUbt/ZL9FwpIBLn1II
         uQAA==
X-Forwarded-Encrypted: i=1; AJvYcCWuUPzxOvt8lvLstc/68Kgb/JVZnaVE3LHlOY/iYZsJFsvLAUwMrfcxHorDnQ5o2GB2KKckfDvu/HM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2yv58EM6LQYJVYFfby+xiK50WrHW7uj9dHV6JoTyAM+su1HeU
	7LKIO6rYDNeCF0ka+9hpQ3LnuMmyErdpugC3gYhsoqESnKqEAy48COqm
X-Gm-Gg: ASbGncvAwnxXjGK1Ww+4H+0MgK0T+RlLyKYD93y3XO2I/nPw9HN38Kl4CrKt+cLS4jS
	Xac0BKnZvyT2QuxdNjDiNkZFr7vakJvvrzEzRiD8PVA5+zWzNu2LCHr0xUs6oSWYuXrdC6PkuT1
	Kn6rGquC1N35xZ96Wc9GEYgMC2ZAfMI86v3ZMyvLfLjWSGL2hxmilc6ho+lrkl2Ekq9qj0a3BNR
	CoE5CicN7EVCT+Yc0CBMub60kZKoNhiFuXthWYUV3GlEHN6Y4AqkacAMw0eocih2KzpKcFHt2rl
	OFE+eKxnXC7Htm8ZaLyt6fUiQyDC84SjQjJ2XFpd+XJL2rcCvVt7M19Pag2AtfMv974+0cWa2RS
	AInGGfHzlOqhYnvpek0wgecK8oCfhHBUGL6CP2MNGjkInn4/hZf9EspCswM9TVaOIVxuAhwD0i9
	2jQQ2QHRlm0Wg7fvqsI6ttwU5GgF7Ijz6/d9qXNog=
X-Google-Smtp-Source: AGHT+IEp8RA70w6dQWLu5Sj+5AV/4tZ1eqge9CXFqZ79B7Chsq8jWBSCViddS2yq0HyDzJ/vWl+q5Q==
X-Received: by 2002:a05:6000:25c3:b0:429:c851:69ab with SMTP id ffacd0b85a97d-42ae5af4abemr3058281f8f.55.1762539380754;
        Fri, 07 Nov 2025 10:16:20 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac679c5dcsm8032998f8f.44.2025.11.07.10.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 10:16:20 -0800 (PST)
Message-ID: <690e3774.5d0a0220.2246e9.71a5@mx.google.com>
X-Google-Original-Message-ID: <aQ43cbO7Lu_IBJek@Ansuel-XPS.>
Date: Fri, 7 Nov 2025 19:16:17 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/4] dt-bindings: soc: Add bindings for Airoha SCU
 Serdes lines
References: <20251107160251.2307088-1-ansuelsmth@gmail.com>
 <20251107160251.2307088-2-ansuelsmth@gmail.com>
 <20251107-crisping-doable-365d6b7d60a6@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251107-crisping-doable-365d6b7d60a6@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_101622_802242_65BCFFA7 
X-CRM114-Status: GOOD (  19.50  )
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

On Fri, Nov 07, 2025 at 06:14:31PM +0000, Conor Dooley wrote:
> On Fri, Nov 07, 2025 at 05:02:43PM +0100, Christian Marangi wrote:
> > The Airoha AN7581 SoC can configure the SCU serdes lines for multiple
> > purpose. For example the Serdes for the USB1 port can be both
> > used for USB 3.0 operation or for Ethernet. Or the USB2 serdes can both
> > used for USB 3.0 operation or for PCIe.
> > 
> > The PCIe Serdes can be both used for PCIe operation or for Ethernet.
> > 
> > Add bindings to permit correct reference of the different ports in DT,
> > mostly to differentiate the different supported modes internally to the
> > drivers.
> > 
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> >  include/dt-bindings/soc/airoha,scu-ssr.h | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >  create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h
> > 
> > diff --git a/include/dt-bindings/soc/airoha,scu-ssr.h b/include/dt-bindings/soc/airoha,scu-ssr.h
> > new file mode 100644
> > index 000000000000..a14cef465dad
> > --- /dev/null
> > +++ b/include/dt-bindings/soc/airoha,scu-ssr.h
> > @@ -0,0 +1,11 @@
> > +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> > +
> > +#ifndef __DT_BINDINGS_AIROHA_SCU_SSR_H
> > +#define __DT_BINDINGS_AIROHA_SCU_SSR_H
> > +
> > +#define AIROHA_SCU_SERDES_PCIE1		0
> > +#define AIROHA_SCU_SERDES_PCIE2		1
> > +#define AIROHA_SCU_SERDES_USB1		0
> > +#define AIROHA_SCU_SERDES_USB2		1
> 
> I'm going to assume that 01 01 is correct here.
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Yes the value are then translated in the driver internally.

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
