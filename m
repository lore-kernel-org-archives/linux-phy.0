Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52E6ACCA479
	for <linux-phy@archiver.kernel.org>; Fri,  1 Jul 2022 16:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mg2+L9B48ABCMfJ9u4fHqLlXv9pibhWv3+VJTZLDP9A=; b=ygSMdI00SLFfOZ
	VmaeQ/7nrZPiA9/gzR2kKQn1hujD1Rrm/8iFuirLi6nA9HQnKUSWZNHiypbjhwrM2q7TNVXLUjI9U
	MKcIFREUfhtTOQQmhnZBTiR0KJ5H6Xfyy9f3I0q4OPv0wf+Ay7YgFwCrFsbdO2Enlu8XfZe1Ay48m
	QqmzkJBFumtlwb+Oh6YncOoNxLM0oSx0NSTlN1p8ewUYZrAepK+XwUyB7qJ5dDD7Tltkeri+jZEea
	PCor1Sw57TdSFb9bofzm2BG4pgsn7kK7+96AFlxCIuVR+8kgwZYJMhyzNBFjGIa3Ky/ZQ+eibU27T
	tFmpHuP4vnHkfg0OiELw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7JM8-005vhY-O1; Fri, 01 Jul 2022 16:18:56 +0000
Received: from mail-il1-f176.google.com ([209.85.166.176])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7JM5-005veo-QB
	for linux-phy@lists.infradead.org; Fri, 01 Jul 2022 16:18:55 +0000
Received: by mail-il1-f176.google.com with SMTP id h5so1719744ili.3
        for <linux-phy@lists.infradead.org>; Fri, 01 Jul 2022 09:18:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VVq9FhmaSCUNqqcPRzai6+Yorwbl6Z9gJF6zzAz/I1o=;
        b=ANM6bnhE3aXgVGxSad0L7U/miQu21jRQsblryFpBb0I+6oE5w6Nbf0SiErAeKqYMMe
         Vwbea33rLGdr6Jkomtg5x1AasBt9EGTdJf2BLs7o86ADTYlWUWknMFOhrFRTwJ+fC01C
         wqpuVeabiqseRybuG1fKIcM/g0IBTaVq32aSxDODLouIR+jJXy5ycOKrcwBJL2229JJW
         mQxloex+0G2YMuOe8wcQrSBxvmquAS35zTzMkjCoMJdBi9FwxyBzii+qTszm3MxRiUGB
         oF6Zw2S7V1UQKlWijYlSy36kUtpPn1g5oO0ejH/yXlF/FiRef/O0dFBBV/g/T9lXFUjp
         Arrw==
X-Gm-Message-State: AJIora/rVNtPOu2/yprfTj8XUU4+efju4QHfCr9S4gubQn4bb+Fpueaf
	Mn5QT7fssxKWVQpcRXYF7FZthNUyhw==
X-Google-Smtp-Source: AGRyM1uKu4ZHeXlBk47g/1Kn+xIxVsoVCeJJK86OxxIz1zMtHypyobrtFZSlf2w6duKGphDJrzQIhQ==
X-Received: by 2002:a05:6e02:194b:b0:2da:8568:99da with SMTP id x11-20020a056e02194b00b002da856899damr8933917ilu.80.1656692321453;
        Fri, 01 Jul 2022 09:18:41 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id a3-20020a029403000000b0032e6358ccefsm9862984jai.77.2022.07.01.09.18.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 09:18:41 -0700 (PDT)
Received: (nullmailer pid 1065573 invoked by uid 1000);
	Fri, 01 Jul 2022 16:18:39 -0000
Date: Fri, 1 Jul 2022 10:18:39 -0600
From: Rob Herring <robh@kernel.org>
To: Roger Quadros <rogerq@kernel.org>
Cc: sjakhade@cadence.com, vigneshr@ti.com, kishon@ti.com, linux-phy@lists.infradead.org, s-vadapalli@ti.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, t-patil@ti.com
Subject: Re: [PATCH 4/7] dt-bindings: phy: ti,phy-j721e-wiz: deprecate clock
 MUX nodes
Message-ID: <20220701161839.GA1065515-robh@kernel.org>
References: <20220628122255.24265-1-rogerq@kernel.org>
 <20220628122255.24265-5-rogerq@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628122255.24265-5-rogerq@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_091853_885964_02749676 
X-CRM114-Status: GOOD (  10.13  )
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

On Tue, 28 Jun 2022 15:22:52 +0300, Roger Quadros wrote:
> Mark "pll[0|1]-refclk", "refclk-dig" and "cmn-refclk1?-dig-div"
> as deprecated. The clock muxes are provided by the device driver
> so not required in device tree.
> 
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Roger Quadros <rogerq@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
