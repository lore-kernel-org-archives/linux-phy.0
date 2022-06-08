Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A110C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 13:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BH3efYuaxE+vLpHzJwLvT5NSeNZHZU25nF18kZxfxlc=; b=kxDC/wzzoIfevs
	5raRuW3HLST4X3TVEB1UvGGOdTVXoAyz5yT64EEBCWRE1ZCs1kIvt48Wz3hSFpFNt+PpBjIlQD5rW
	HU52UXM7sruncHNixmlUn+n/HtQEuHg3wfx7R64D45YIO2qQ4DpeubIhI31WNgw40u4pJ4Hzl5jtg
	ewpP+P9w7lct3yQ+0MEKYnUbhJZBqUyV2ek83IvX9lsaKE5jd7APpVCdZRVovnrIQp879ZQEiQwE8
	/xquK4+xUEsVvLhw7+ebBR64lfgc7XpLAbwxfhjluOmZGYo42hj5GvaAPcfaGZU0qucrcNiQXQ7G5
	vZQU44W/JzcHNU7KtR2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyw1q-00DIzB-NM; Wed, 08 Jun 2022 13:47:22 +0000
Received: from mail-io1-f44.google.com ([209.85.166.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyvzn-00DI2K-Ev; Wed, 08 Jun 2022 13:45:17 +0000
Received: by mail-io1-f44.google.com with SMTP id y12so18866687ior.7;
        Wed, 08 Jun 2022 06:45:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=wTTvlPBhL0R4VGrImadF6/peV4pBTwvdmzGU+XrZruE=;
        b=ABtDoiz+lIXEP9J1eclDUl7oFF35uZ3r03X6I/MLx56Q35AeJtMAdC7cztSv9ou23t
         QV82BjT99D8YM9CpLJiYnRjNsIvxD5SdPFtZ1qav1Xwp1mFUfHv+/fgOafGQ/6GB2cAA
         oa5OIujC3Be7zV2RKi1jH5vQB01Og9F29ISPKCgzaY2nYoGTkocqn7nTHX8UvMS84Rqn
         /kulRzQD0E+5zDC8SvzdOFHtKVz9PhKxHdGhEfpPEBYlPr3HkSW+KsM79iBiyUEIQrqr
         caUx0bxzg82MZrwjtAtH4lGaEbK7KXmZMnEt8lqN0poxZWq/O/2UesELkeFWlfuO3aXK
         X6ww==
X-Gm-Message-State: AOAM532k2mWtSw2WybuMBXobHDfJ1EYvpkjlnYsm7CvjCTW40iTVj+HY
	ty2vOBPfRR0wlhxDaRr+vQ==
X-Google-Smtp-Source: ABdhPJzXC7b2axuL8VqcV+jcp6rJGpBavEB0PfCW3q7lAr4J3Dzn0kGXXRomqn4DlodahC0axmuGvw==
X-Received: by 2002:a6b:cf13:0:b0:668:bda0:f300 with SMTP id o19-20020a6bcf13000000b00668bda0f300mr16208468ioa.89.1654695912193;
        Wed, 08 Jun 2022 06:45:12 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id p4-20020a056638216400b003315a20c6e1sm7862407jak.9.2022.06.08.06.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 06:45:11 -0700 (PDT)
Received: (nullmailer pid 1272088 invoked by uid 1000);
	Wed, 08 Jun 2022 13:45:07 -0000
From: Rob Herring <robh@kernel.org>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Samuel Holland <samuel@sholland.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>, linux-phy@lists.infradead.org, Bin Liu <b-liu@ti.com>, linux-usb@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, devicetree@vger.kernel.org
In-Reply-To: <20220608070452.338006-3-uwu@icenowy.me>
References: <20220608070452.338006-1-uwu@icenowy.me> <20220608070452.338006-3-uwu@icenowy.me>
Subject: Re: [PATCH 2/7] dt-bindings: phy: add binding document for Allwinner F1C100s USB PHY
Date: Wed, 08 Jun 2022 07:45:07 -0600
Message-Id: <1654695907.384174.1272087.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_064515_569697_617AABFD 
X-CRM114-Status: GOOD (  14.59  )
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

On Wed, 08 Jun 2022 15:04:47 +0800, Icenowy Zheng wrote:
> Allwinner F1C100s has the most simple USB PHY among all Allwinner SoCs,
> because it has only one OTG USB controller, no host-only OHCI/EHCI
> controllers.
> 
> Add a binding document for it.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---
>  .../phy/allwinner,suniv-f1c100s-usb-phy.yaml  | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.example.dts:19:18: fatal error: dt-bindings/clock/suniv-f1c100s-ccu.h: No such file or directory
   19 |         #include <dt-bindings/clock/suniv-f1c100s-ccu.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:383: Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1404: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

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
