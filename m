Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FECCCCA479
	for <linux-phy@archiver.kernel.org>; Fri,  1 Jul 2022 16:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gf96w5tjc0WtcOua/Mal+8A3XB1vfY4Zbs51yz+TVaA=; b=T6TORKp1GGGshN
	pl2kR3remsL2EzE6Rt92+f1VL4nfgRIbaFm166zVTJ+OWhr1JndRaaJd1dvPhEXe5ZkegZ1vEEpFO
	1y6tU3abzGXOufkfZ2JkDezvsfgQfDNdJUDUCqptECpp89bigNJ5BBh8bKTvXfKjtOgP+77rUMH+p
	UD8CZ14T0U6Hm4FxHhXNsguzs35EY9Fa3aTTt4ct6k29JBSRx8MI5lirFmaYKIJCQBqtebGE4QhjE
	1MMI49cbeMXI0BqzeisIsS+eMOxSaX3556iVRLuSJv7lV69vPxPJfFM0OWtOVjA/GsMNe/nlGt7Qu
	Gg7S9DeDX4NV6ULvMyiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7JND-005vye-00; Fri, 01 Jul 2022 16:20:03 +0000
Received: from mail-io1-f54.google.com ([209.85.166.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7JNA-005vx9-DV
	for linux-phy@lists.infradead.org; Fri, 01 Jul 2022 16:20:01 +0000
Received: by mail-io1-f54.google.com with SMTP id p128so2762831iof.1
        for <linux-phy@lists.infradead.org>; Fri, 01 Jul 2022 09:19:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZQCylsq9M4rPkFWxs4C1uvnNMPUdbfbfI4jjvjvy8og=;
        b=4qUV5Gp8GwN59/Ywt3xROHRl37bKgPEKT/iwwjzW63/LDBd9Ys/anhNlrbjDn2c/fm
         qCDsz3lyO/GbPLfklsjlS9eaLeMPe/MXw68lxwqOWH3fvBYvWu/t9IrZ08ypG2RVVhB/
         DeKHoD0KuOeMP33PinqN4d3ctB0WWT4jYJws3Jth0MNzDTgFZ3iZ+Q7Zi9lp1oWooED6
         MLN05SjnTfawJvgdr063YhqiCucOeyZRt1a0m3jT1wRiOGzJUt9g0pLHIGiIgYDSzA0b
         2s2ykmrcMtkGErpem/H7KOaIBZeWbnpGc0g0dudCmmpf147JB4yqovojqheOFbhtan47
         FA2A==
X-Gm-Message-State: AJIora9TRUT/ZDg6TKncCHxV8/hz6O5s4YFoFFjOMm+ZliY4Ns9aDnrt
	GNQKHzzvSmGEdZBmb9R4oHUzrQK5wg==
X-Google-Smtp-Source: AGRyM1u3Qr+tXqjLIi/7Jr5GJVG/S9BRBU00/78V+UB90jdiTjI+ZtZU2goYTjMedm+wRJ06+ao5sQ==
X-Received: by 2002:a05:6638:10c:b0:339:e949:b332 with SMTP id x12-20020a056638010c00b00339e949b332mr9136760jao.22.1656692398271;
        Fri, 01 Jul 2022 09:19:58 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id b11-20020a05663801ab00b0033a3d88cebbsm10036931jaq.105.2022.07.01.09.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 09:19:57 -0700 (PDT)
Received: (nullmailer pid 1067780 invoked by uid 1000);
	Fri, 01 Jul 2022 16:19:56 -0000
Date: Fri, 1 Jul 2022 10:19:56 -0600
From: Rob Herring <robh@kernel.org>
To: Roger Quadros <rogerq@kernel.org>
Cc: t-patil@ti.com, s-vadapalli@ti.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vigneshr@ti.com, kishon@ti.com, linux-kernel@vger.kernel.org, sjakhade@cadence.com, vkoul@kernel.org
Subject: Re: [PATCH 5/7] dt-bindings: phy: ti,phy-j721e-wiz: Add support for
 ti,j7200-wiz-10g
Message-ID: <20220701161956.GA1067719-robh@kernel.org>
References: <20220628122255.24265-1-rogerq@kernel.org>
 <20220628122255.24265-6-rogerq@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628122255.24265-6-rogerq@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_092000_491581_93AA5643 
X-CRM114-Status: UNSURE (   9.72  )
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

On Tue, 28 Jun 2022 15:22:53 +0300, Roger Quadros wrote:
> ti,j7200-wiz-10g supports an additional reference clock.
> Add compatible and the additional clock.
> 
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Roger Quadros <rogerq@kernel.org>
> ---
>  .../bindings/phy/ti,phy-j721e-wiz.yaml        | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
