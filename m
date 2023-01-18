Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43D97C32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 16:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=jatfr+IKE1KlFxpOOfizE56QF2Z3GcRVV6APe/ZLJTE=; b=3zlltNvpx5ARe5
	AU0q6qDFa8tZeZBarJzWFwkapPrQNKb09mwSvRk0WgEScIGxpFDL2DsaGMxJ87z8ITIi5x9p1ST6M
	/PJ3PPgB1JINZVLzGUHRG4AGqblnDfLR+qEaRpac8TSytvOm+3Wqzjv2GhlVS7/8AzHQyMdBlBvD0
	Umy1OEDD0NOO9dPoNlWRyaCDhuEuD6C5vOBWwo0u2aCWCLxhjuunn6ckTQaSOP1BsXTGBLqXb0YgB
	BndjTzoqAl445FFrTuxnG7+xKxJlzNWRhwZg8f+9olQYCMrD9ALWdELvpEtHDue1X0skq+lWpDc4d
	pbin56vZgtAT2KNYcmiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBdS-001tt5-Nj; Wed, 18 Jan 2023 16:50:02 +0000
Received: from mail-oa1-f50.google.com ([209.85.160.50])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBdQ-001tri-Hj
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 16:50:01 +0000
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-15b9c93848dso27813952fac.1
        for <linux-phy@lists.infradead.org>; Wed, 18 Jan 2023 08:49:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v8pejbMfGfA7sger1cIjryPDFShEDApGoNKKJ3O3DdI=;
        b=A1ST4frfQrvGTp67SquyaBhRBAVTnFROyeOFTatqKFKUVq1oXi34a68cS7u8XpCfLo
         Pj56DKfw+q6IfCLorEZABg8wNzjdg6kwJIGNvcRf+rjL4kLqZzVJJYJSIoiRfrI+fV4Y
         KE+XNeOpPLxoypv0YjM9m+dutWAh1Vki0j93s/DkKw6eOXet0KNxMAMWcFw6LOzdPuBl
         roKw8+z5tl9Uw5isxvLmVBwS0NtAKzbiOHfaSNowngGfqn0XJ/uA5x4o67q63BKiHgAC
         FH6SxB29Yg6noP9bkpIB8lfp74xLuROlPZaR/jWbPqy4nDml9jk8ZDAp6sQ2GTuTn90O
         upXA==
X-Gm-Message-State: AFqh2kqC9DZ5mKeJDhguIkYIPunj0mC6d/WjPQaRsz0xrF/AF4fZVact
	O9zuc/XKobS3IpJR94tyoA==
X-Google-Smtp-Source: AMrXdXvM1ASDy1gMYTuFGeV9oShiw5s+IVzD1szfQKLsv0gKQG9VVXcVsWRFlId3mgDlBmOWlnx9lQ==
X-Received: by 2002:a05:6870:4c06:b0:15e:a2c6:143f with SMTP id pk6-20020a0568704c0600b0015ea2c6143fmr4594407oab.25.1674060596032;
        Wed, 18 Jan 2023 08:49:56 -0800 (PST)
Received: from robh_at_kernel.org ([4.31.143.193])
        by smtp.gmail.com with ESMTPSA id p22-20020a056870831600b0014813cc4a51sm18493694oae.29.2023.01.18.08.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 08:49:55 -0800 (PST)
Received: (nullmailer pid 149666 invoked by uid 1000);
	Wed, 18 Jan 2023 16:49:54 -0000
Date: Wed, 18 Jan 2023 10:49:54 -0600
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Wolfgang Grandegger <wg@grandegger.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Aswath Govindraju <a-govindraju@ti.com>, Marc Kleine-Budde <mkl@pengutronix.de>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-can@vger.kernel.org, linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document NXP
 TJR1443
Message-ID: <167406059441.149609.14786053112798414488.robh@kernel.org>
References: <cover.1674037830.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_085000_606960_6887E3E5 
X-CRM114-Status: UNSURE (   9.22  )
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


On Wed, 18 Jan 2023 11:39:23 +0100, Geert Uytterhoeven wrote:
> The NXP TJR1443 High-speed CAN transceiver with Sleep mode is a
> pin-compatible alternative for the TI TCAN1043.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
