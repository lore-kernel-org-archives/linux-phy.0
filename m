Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 888B4C6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 15:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOZ8iKYOt8b61OZ/19F2IyCdo3maSgfBqQ9+zgZ8zDY=; b=18Vssctr10gUam
	izUliKrdW7rf/Nf9muBHt5b5rvOwjsdKNDLxdu8wsl/k5D5/vyHQo3Mwp/oq5kIPnAtT1CkYlI7PE
	4F+qCqJGzn7mpd4shd2QI6Rf/JwAiw51cA83i53itZyZtoqtrDBfbU5q0CNU0xmKhabk+Lm5Mqa1u
	O/ix+uus0thGZkhRTo05a+nxAczOEKQBLhnu514utvAcvKvatuPCg0Z+/70Rq1vL/qpwze3F9z7cr
	bRi3eoE0nGimmSVHY8a8r46O4FgJzX73fxBVQVvdj95WPqPSxXaSmTPDl3D1GDQy9GXX0UOzsZ6vA
	Q+b8XLhTROjmMXxsfCjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7t3-00CYOJ-R5; Tue, 13 Sep 2022 15:31:45 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7kh-00CQiH-10
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 15:23:11 +0000
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1278a61bd57so33000128fac.7
        for <linux-phy@lists.infradead.org>; Tue, 13 Sep 2022 08:23:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=HBF93/3uK9ytKfofiwTx1nTs+Gg2IlX8qJpJ9qDMavQ=;
        b=iU6ewOEGg7ixk/XstpiS7pc4zePCI8Azr1WD8VREd+Xv2vdo/xqeJV9hVme6WAzr0R
         ddEsnG+b61U9LeKojzjzTqfRqx9LU//ssKVSG3lrt16J60e2Ang1F4s+V/Ef/hczx1O0
         mkdIEeyHS5BTt+VfPdNosPUw9MQxJAVuU40Ja9GF5Jg6LuRnp0fmxG2/r97ohQFxfVs0
         Um0/yeOYOX34Lw9oYoXnVmHqcfRmF+bpLhp5ZlVgBIplMs6KgAYonDV9mWM/7wQ4bG8W
         +ED0FdFxnua/cjUHD+gUQhNu/fWQjERG307PROqQHEkJ2789raVVJvfdVlqHcdoCJ5L4
         SiKA==
X-Gm-Message-State: ACgBeo177N1x0ffPVdFZFVeBxq4QgGBpvGe+y2/qP7JeKVprJK2BdMiE
	egd1gzMcx3Tc1jPqhggcDg==
X-Google-Smtp-Source: AA6agR73mOYbb8xQ4qxcGvgPxj2G+or5wV6qhF+ujSQEWH0K2S2Dxeq4LDJSwvhbSYSE8rlvI6P68g==
X-Received: by 2002:aca:3b89:0:b0:345:64e9:73c2 with SMTP id i131-20020aca3b89000000b0034564e973c2mr1723594oia.87.1663082583448;
        Tue, 13 Sep 2022 08:23:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m7-20020a9d6447000000b00616d25dc933sm6013736otl.69.2022.09.13.08.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 08:23:02 -0700 (PDT)
Received: (nullmailer pid 3762736 invoked by uid 1000);
	Tue, 13 Sep 2022 15:23:02 -0000
Date: Tue, 13 Sep 2022 10:23:02 -0500
From: Rob Herring <robh@kernel.org>
To: Colin Foster <colin.foster@in-advantage.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-phy@lists.infradead.org, linux-mips@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, UNGLinuxDriver@microchip.com, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/1] dt-bindings: phy: ocelot-serdes: convert to YAML
Message-ID: <20220913152302.GA3762698-robh@kernel.org>
References: <20220911163715.4036144-1-colin.foster@in-advantage.com>
 <20220911163715.4036144-2-colin.foster@in-advantage.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220911163715.4036144-2-colin.foster@in-advantage.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_082307_108884_E7EAB28E 
X-CRM114-Status: GOOD (  13.29  )
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

On Sun, 11 Sep 2022 09:37:15 -0700, Colin Foster wrote:
> Convert the phy-ocelot-serdes device tree binding to the new YAML format.
> 
> Additionally, add the file to MAINTAINERS since the original file didn't
> exist.
> 
> Signed-off-by: Colin Foster <colin.foster@in-advantage.com>
> ---
> 
> v1 -> v2:
>     * new yaml file is now named mscc,vsc7514-serdes.yaml
>     * examlpes != examples
>     * remove "driver" name from the binding
>     * remove ethernet port consumer from the example
>     * add additionalProperties: false
>     * remove unnecessary, obvious sentence in the description
> 
> ---
>  .../bindings/phy/mscc,vsc7514-serdes.yaml     | 56 +++++++++++++++++++
>  .../bindings/phy/phy-ocelot-serdes.txt        | 43 --------------
>  MAINTAINERS                                   |  1 +
>  3 files changed, 57 insertions(+), 43 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/mscc,vsc7514-serdes.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-ocelot-serdes.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
