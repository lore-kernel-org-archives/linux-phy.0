Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75070C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 12:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:Message-Id:Date:Subject:References:In-Reply-To:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vEpdOijHfpv7J322drvQrcoC0Vr7Neal4rawMqCZOx0=; b=4IeaXUy3mUvVLW641EQOzUMCip
	xRgYR4e2pI93fsTsffzLgdigNpluGLLa39llWpQ2ebTbhrrLyM6/qv+9/GZ8wc43tLuPBRbJe4dji
	Cpqqf4cOABU7kpr4YJvZZlEcxrw3pUfNFvrDYhaL4xEzfocnReGja4nzme92BMiT1X9w9f1cW1rGf
	zDOtSYBwM/yJSR37pRSdluWN/Dg1R4dWj1ebbRYTcQ6hc/kSJXkYPlRe0WULr+QOpUCyv5y9C+4QX
	0qhiAu5jrzsRsi/x15C8KbYifdTzbCC7iwYMzjEcRZsznjbiPkHmyBFDGNM1+Ne8/UP8O0Y97nrOZ
	qjWH7+gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYovE-008cHW-Ui; Mon, 28 Mar 2022 12:56:36 +0000
Received: from mail-oa1-f51.google.com ([209.85.160.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYovC-008cGp-MX
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 12:56:36 +0000
Received: by mail-oa1-f51.google.com with SMTP id
 586e51a60fabf-df088cb155so1732583fac.1
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 05:56:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=tvIH566M2naDeof99DqDztnAH/aJCYf9hZLfUroAlzE=;
 b=zxazR715rgBWGdsXONx29ox7DOwjR/DZ8ZtdOgOzIM27tAytUblHL+TF0GjXMXLVWs
 ap3pcex8JP2XSdMkqXpf0iQrolFgNh8JP7oQwR0IgcM564DQRMsvVigts6pAORQ0Tbn4
 jz6Sfxl/NDEltJWE03Gav5AkWmvd0VAnuXRBRup4d44/21FHraUlknbtynREJfAUIE8n
 nOhh8KSEEhSeADSY8H4K4rvcs/TLe/wRy9IJKBfZkSO5P2voPXBaoZ32uwYQBrDLJ+G+
 BsNujSQmt69pfF4Zsr1xx9Bx6s+alz8PaFMWok9wxK98eWveih3fT0YY6tHKjK9LOeGb
 VJBw==
X-Gm-Message-State: AOAM533VpBWUEVeGTuq/VyVaiiFQLBBwbbNtVLSntSjcFeVFxX8UVC15
 qMNaF2ICdZzLu7Dxl8i09yJ4qKb77w==
X-Google-Smtp-Source: ABdhPJxHZ3DRiUohCXK1pGQxTd+pIpKejsX9Ww6u1GMMfHC1FdeHxhL7RxOkTMJMno7hIeqlfFYuOA==
X-Received: by 2002:a05:6871:b22:b0:dd:9eeb:4292 with SMTP id
 fq34-20020a0568710b2200b000dd9eeb4292mr14997931oab.223.1648471873557; 
 Mon, 28 Mar 2022 05:51:13 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 m187-20020aca58c4000000b002ef721352easm7183219oib.14.2022.03.28.05.51.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Mar 2022 05:51:12 -0700 (PDT)
Received: (nullmailer pid 2153572 invoked by uid 1000);
 Mon, 28 Mar 2022 12:51:05 -0000
From: Rob Herring <robh@kernel.org>
To: =?utf-8?b?7J207JmV7ISd?= <wangseok.lee@samsung.com>
Cc: "kernel@axis.com" <kernel@axis.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kw@linux.com" <kw@linux.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 =?utf-8?b?7KCE66y46riw?= <moonki.jun@samsung.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>
In-Reply-To: <20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603@epcms2p3>
References: <CGME20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603@epcms2p3>
 <20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603@epcms2p3>
Subject: Re: [PATCH 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
Date: Mon, 28 Mar 2022 07:51:05 -0500
Message-Id: <1648471865.787623.2153571.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_055634_749481_957C89F1 
X-CRM114-Status: GOOD (  11.22  )
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
Content-Type: multipart/mixed; boundary="===============7774139751973987584=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============7774139751973987584==
Content-Type: text/plain

On Mon, 28 Mar 2022 17:43:19 +0900, 이왕석 wrote:
> Add description to support Axis, ARTPEC-8 SoC.
> ARTPEC-8 is the SoC platform of Axis Communications
> and PCIe phy is designed based on SAMSUNG PHY.
> 
> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> ---
>  .../bindings/phy/axis,artpec8-pcie-phy.yaml        | 67 ++++++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.example.dt.yaml:0:0: /example-0/artec8/pcie-phy@16c80000: failed to match any schema with compatible: ['samsung,artpec8-pcie-phy']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1610068

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.



--===============7774139751973987584==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7774139751973987584==--
