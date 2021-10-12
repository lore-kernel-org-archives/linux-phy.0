Return-Path: <SRS0=98aa=PA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 013DEC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 13:26:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B78EF60EB6
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 13:26:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B78EF60EB6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/e5xD3pU6g/zMzQRmWloUFRdNVqFDRfNhxX0K6egLCY=; b=160Ar5hv4s4Zxe
	GzvIFoH4GTosJuIKonczmb2OQrmw7/fKCSYg46Zv4l9L218VQ4KZJy5fCmaliniHkuPCnT23ncBa3
	oTlllClQ4a+qLTZ7psEcriKX/aDv7nH0k4ECuE4XTgG1BqXJkDM9vPd9njc10iQbnN3V6GZ300sRe
	gzdKvPcsAmuTw8dQacPBhYIH4UKL3senPar6AZKT3xLyQxxBEpYjHBXKacdQQaABaiBKz9jrBwnw9
	K2/ez4HP8Mx24DaQyuggAeh/oqMQNm+7IqF73TWp6buti3I2YZGeeYgvESF1Cw7VIvaeDJOJZZC7W
	WLENXMQigcZAg1q1KjZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maHnQ-00CwAZ-2g; Tue, 12 Oct 2021 13:26:20 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maHft-00CsHQ-Ie; Tue, 12 Oct 2021 13:18:35 +0000
Received: by mail-oi1-f182.google.com with SMTP id o204so20863059oih.13;
 Tue, 12 Oct 2021 06:18:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=XPmmclCS7vZ6DokRzDb336rjZzihsBvWwNeGDGl5d50=;
 b=W+8vKOXz+JuGabFMzZlmnOwATRTvyCrOaCnYVBRWxnBkY+TVblyLbUpzJnjEFcA5HE
 5/rPa/PiaxEOffl5G/qCh9GmgfiBry12bq4lXtBoC/9L1x/AjLXuHvfU1ZeBziRzvoVW
 r7bUuP7o1/EMJCA3/b/i7Dmb8hftVNgzMiwZSOhY3c1WBxQ6Ue4+zJsgtzkEK/aOIq3K
 xll1r6FXke9cjwRjvGD8qnClhm2VtFsPvjBLLkKNAmKUrB4ImsmlEKW5BWkja65z1R9g
 oVJyQNsut4vaj+T91auvdj7OdMV/M1chSK4aewmajyENPAPvqLRbiNAOM5u33HgFMmKg
 z1PA==
X-Gm-Message-State: AOAM531me1/PTHI+J+nVbeO2X4vYaqzSpawUZiFtfdoLOeEBeejrx4oQ
 6Cg3VBLhTYCt24LL+qbD6Q==
X-Google-Smtp-Source: ABdhPJys0d+0o8rxci0ZomJH/ChF9hDpAJ4YAfswM6BilnElES9fYjqV9AjrxvmQtIuSc+Q3g4fPzw==
X-Received: by 2002:aca:ac0b:: with SMTP id v11mr3481527oie.155.1634044710555; 
 Tue, 12 Oct 2021 06:18:30 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id s10sm2326572oib.58.2021.10.12.06.18.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 06:18:29 -0700 (PDT)
Received: (nullmailer pid 2661234 invoked by uid 1000);
 Tue, 12 Oct 2021 13:18:29 -0000
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: shawnguo@kernel.org, linux-phy@lists.infradead.org,
 galak@kernel.crashing.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org, tharvey@gateworks.com, kishon@ti.com,
 linux-imx@nxp.com, l.stach@pengutronix.de, vkoul@kernel.org
In-Reply-To: <1634028078-2387-3-git-send-email-hongxing.zhu@nxp.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-3-git-send-email-hongxing.zhu@nxp.com>
Subject: Re: [PATCH v3 2/9] dt-bindings: phy: add imx8 pcie phy driver support
Date: Tue, 12 Oct 2021 08:18:29 -0500
Message-Id: <1634044709.029189.2661233.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_061833_638014_9C54F377 
X-CRM114-Status: GOOD (  12.11  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, 12 Oct 2021 16:41:11 +0800, Richard Zhu wrote:
> Add dt-binding for the standalone i.MX8 PCIe PHY driver.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8-pcie-phy.yaml       | 79 +++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.example.dts:30.32-33 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:385: Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1441: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1539660

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
