Return-Path: <SRS0=ayEg=PC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE4E4C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Oct 2021 18:25:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D7B5611EE
	for <linux-phy@archiver.kernel.org>; Thu, 14 Oct 2021 18:25:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9D7B5611EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZBnU9U3RBqC4Jvf3gg76TKgXYoUrfg2yWUNBllYrO0=; b=xKYZWZqAmmA7dx
	3Ft81ujSTvi7rhqFjfV4S2zxCeKGN9aRURT+L/raMESfPP4O+bivmVLQbDB3nd8+l9dQHpnc8RrZr
	eNaylty1witbc7MLtEhTUbGdwCYNYR9Y9b/8VQ0R02StlRZgZJIYIiTVXz7Ew2Q8yv9JmBE3sQW3C
	B6sJy9kwNzYLKmuwOLO7kYIsm8z8qbJ2nA1c/9t0qKed4D23k59d/KGBaGQilnHUfV1Nrhwxe+Z48
	P/JA1BytfVciFDzwPtpgir6Zu0AvQtK62mgAsWs33WW2HY85j1fgcN+bWHAaM+ENITu9X47V6QDtK
	m4j4qks4RNUWvu5q4JIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mb5QL-0047Fw-59; Thu, 14 Oct 2021 18:25:49 +0000
Received: from mail-oo1-f50.google.com ([209.85.161.50])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mb5QI-0047ET-PQ
 for linux-phy@lists.infradead.org; Thu, 14 Oct 2021 18:25:48 +0000
Received: by mail-oo1-f50.google.com with SMTP id
 i1-20020a4ab241000000b002b7069d0e88so2174293ooo.5
 for <linux-phy@lists.infradead.org>; Thu, 14 Oct 2021 11:25:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lSGLR+TPyWEX+bgb5ym/EJSPMQUo+T6pVt3I38VRg4o=;
 b=BfEyjorRWAQwL2h9DAMYXS1fPJRMjDjfIgAvTm0NgjKalg/b5ElB1dSfubptDDHL+f
 yYve6upQwYRRg0cbgCvkjWNJwesKmgZb5lrKqfvMseXl86SFlSvAr3YBe19+dKf9eR8U
 HHP6Cy/iGbfofKzqOoYGrV4NkSuagRuzDOvnS4H39rZWwXZS2ZlcTqXInPlAXPmsLnLV
 1odVdMgFXdh/4+UTRfiLvpKP22qB8CSZXOoCILaWujh4PcVFb4kyvV+ejtLEwW4Vu24K
 MQ3WJh+GK682pCQTE/TfU/RLr2xWgruTYaQMnWSfzw0+iaX5PraB7Y9XNTeUGi1p+RZf
 2m8A==
X-Gm-Message-State: AOAM533lwmxM6uOPdydFGJ3KLOOpkCNL5AG9LMr2YcABe+FZjZLcXpmY
 o4DWgRlDBMvVg+kV9IQsvrtlacPp7w==
X-Google-Smtp-Source: ABdhPJxLbALqLdT/j1AMxSBA5iiUC9rkNODbqRwV6pXrXLNHuI+NpwW64OXR+/SyLkK9muFRv4cd3g==
X-Received: by 2002:a05:6820:514:: with SMTP id
 m20mr5538063ooj.66.1634235945371; 
 Thu, 14 Oct 2021 11:25:45 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id e25sm571055oot.38.2021.10.14.11.25.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Oct 2021 11:25:44 -0700 (PDT)
Received: (nullmailer pid 3677639 invoked by uid 1000);
 Thu, 14 Oct 2021 18:25:43 -0000
Date: Thu, 14 Oct 2021 13:25:43 -0500
From: Rob Herring <robh@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: kishon@ti.com, vkoul@kernel.org, linux@armlinux.org.uk, andrew@lunn.ch,
 alexandre.belloni@bootlin.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: Add binding includes for
 lan966x serdes
Message-ID: <YWh2J32hZftzIi+F@robh.at.kernel.org>
References: <20211006063523.3962427-1-horatiu.vultur@microchip.com>
 <20211006063523.3962427-3-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211006063523.3962427-3-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_112546_848834_C6BD0266 
X-CRM114-Status: GOOD (  14.67  )
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

On Wed, Oct 06, 2021 at 08:35:22AM +0200, Horatiu Vultur wrote:
> Add include bindings for lan966x serdes
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/dt-bindings/phy/lan966x_serdes.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/dt-bindings/phy/lan966x_serdes.h
> 
> diff --git a/include/dt-bindings/phy/lan966x_serdes.h b/include/dt-bindings/phy/lan966x_serdes.h
> new file mode 100644
> index 000000000000..06e529473475
> --- /dev/null
> +++ b/include/dt-bindings/phy/lan966x_serdes.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> +
> +#ifndef __LAN966X_SERDES_H__
> +#define __LAN966X_SERDES_H__
> +
> +#define CU(x)		(x)
> +#define CU_MAX		CU(2)
> +#define SERDES6G(x)	(CU_MAX + 1 + (x))
> +#define SERDES6G_MAX	SERDES6G(3)
> +#define RG(x)		(SERDES6G_MAX + 1 + (x))
> +#define RG_MAX		RG(2)
> +#define SERDES_MAX	(RG_MAX + 1)

I'm guessing these are used for the phy cells? If so, I can't figure out 
how and I shouldn't have to search the driver to figure it out.

What's CU? What's RG?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
