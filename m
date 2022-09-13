Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BB79C6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 14:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bf6gqAiaGJgPjQ3PTOJa00ZdCATLRfF8cLq6NilQIic=; b=SBFvga07XEM+Mz
	Dw8jKnK7BXr7ix/idnwo6+16uH/T/FjgOnDZ64WfdDNGlSsAQ4Y/B2SNsj/PrEjeRGuLno570wuqL
	mKp+axGLG8fdMZLlwEes2Yc9Db35WuKaP0pUiVHT6Aqn8qniDcC1VSCl0PvjRYhodE4Zef9DUrwVE
	fl9zEc4d1k+sF8xlCHoQwEaZ1fQzuE1DNYx8zaEcDEGPEaZhZke/U22K33CMIfGp9Q2QN5z+BFF6F
	cvFKzqJuNZHofu3CVUcjsthUISTgADFbVb7c1YGZZFf5bRtV8crweQJWenDjBRmoELlIfFC8stwHH
	dHglOJhIrAH3iO7tB42A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY6ZB-00BInj-4l; Tue, 13 Sep 2022 14:07:09 +0000
Received: from mail-oa1-f51.google.com ([209.85.160.51])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY6Y8-00BHZ1-51; Tue, 13 Sep 2022 14:06:07 +0000
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1225219ee46so32402060fac.2;
        Tue, 13 Sep 2022 07:06:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=QVFIfgOtjiiqBqGuqPoOB28Jgr9wt0ctc+fKksUA9E4=;
        b=em3PZyr0zWCWKRuOnMhrQaNTdGUarohg78jQXedW4VM/yumlizkF+zuGsb+con7XDK
         mNOZKFWj4eqxiVTySq/5wBuhtf7/tKa01u3X8PAB459bUR5nrsPmWxiaKuAWfbxlL+sQ
         mejozIbhoJ3l46f/m1PDelANWbqY/xAeGnA3/HQfs22+4qDs8dD+PcUtL7z6IQRKFVxK
         AgM/TwCwK/cPKHXvdbch2LBB92YdQP70EM3oYU/ROLGnC/cAmNMR7qVdItGZgwqxkm4d
         fR048iLqt5VE/0QTfgwsEiR4QTb8r7OwEv30OR8HREoqsrfu21vce+48NRRMbnLM0mHX
         fXqA==
X-Gm-Message-State: ACgBeo2pfPw1A+5HW3sx46bhMSExeTfQ9H++J7N2XThdcGK0M5dpBBWR
	vlhc2Si1EITXtHkRud9Qxg==
X-Google-Smtp-Source: AA6agR6Uh59tIqrYv6buS6ERBDFSApg5dMrnLMNOGP6F5OslqNg/DHtvwnxKsAIOrvT5pI93PeWyJA==
X-Received: by 2002:a05:6870:d146:b0:127:76fd:382 with SMTP id f6-20020a056870d14600b0012776fd0382mr1815303oac.257.1663077962897;
        Tue, 13 Sep 2022 07:06:02 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id l2-20020a056808020200b00344f28a7a4csm5155623oie.22.2022.09.13.07.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 07:06:02 -0700 (PDT)
Received: (nullmailer pid 3592015 invoked by uid 1000);
	Tue, 13 Sep 2022 14:06:01 -0000
Date: Tue, 13 Sep 2022 09:06:01 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-watchdog@vger.kernel.org, wim@linux-watchdog.org, linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, richard@nod.at, vigneshr@ti.com, miquel.raynal@bootlin.com, kever.yang@rock-chips.com, linux-pwm@vger.kernel.org, linux-i2c@vger.kernel.org, jamie@jamieiles.com, robh+dt@kernel.org, kishon@ti.com, thierry.reding@gmail.com, linux-mmc@vger.kernel.org, linux-mtd@lists.infradead.org, gregkh@linuxfoundation.org, linux-spi@vger.kernel.org, u.kleine-koenig@pengutronix.de, broonie@kernel.org, philipp.tomsich@vrull.eu, devicetree@vger.kernel.org, linux@roeck-us.net, linux-usb@vger.kernel.org, ulf.hansson@linaro.org, sjg@chromium.org, heiko@sntech.de, zhangqing@rock-chips.com, vkoul@kernel.org
Subject: Re: [PATCH v1 10/11] dt-bindings: soc: rockchip: grf: add
 rockchip,rk3128-grf
Message-ID: <20220913140601.GA3591983-robh@kernel.org>
References: <20220909212543.17428-1-jbx6244@gmail.com>
 <fddc23ff-0c87-4998-1bdf-4dbfa4c74046@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fddc23ff-0c87-4998-1bdf-4dbfa4c74046@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_070604_287208_FE52DFEB 
X-CRM114-Status: UNSURE (   7.42  )
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

On Sat, 10 Sep 2022 00:01:39 +0200, Johan Jonker wrote:
> Add rockchip,rk3128-grf compatible string.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
