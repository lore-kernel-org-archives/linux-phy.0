Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50FA5C6FA8A
	for <linux-phy@archiver.kernel.org>; Thu, 15 Sep 2022 09:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7u9btDzOGsXcGt/sm80ACUi8iKorKoeJGbPS1l8jKM=; b=Bek9KkJGb+RxYf
	g+TMJ5MJb+b/aDZ9nV2ZmREcxm5ZaEaro6Wc581+4+OAo96M5FvRXF57hQh0WnQb4Fen5/5aU6BXj
	OCq3anvCxhWMf3O5IbpR4UKTcl85ERVkZ5OyyXjotaRDvudpamQwT3FCKdboNXo4NQD0AUJrCzdrY
	ME7apZpkh+33xUtCvfhJkDLSkPgxQEjXnWHh40nIJwIfaDA3KPaM4osAUmSdk+t8rZ1hg1kZmQCwd
	5TFLKI7eH5ssBXeDpOKuuL9hNGgxBl5ieU5U1MFzgFMZInOf0ybPFIHP3O/+zliKK8Ic+ZgO+S36v
	UBAIOxE6zE9wiPyZsymA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYlHu-005Shj-Oi; Thu, 15 Sep 2022 09:36:02 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYlHi-005SXY-SC
	for linux-phy@lists.infradead.org; Thu, 15 Sep 2022 09:35:52 +0000
Received: by mail-wm1-x32c.google.com with SMTP id o5so9430934wms.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Sep 2022 02:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=zAQhEoqs9m6tH0S1Pwi/N64OzurKgUWPJ1fRej5gFrw=;
        b=Vjxh0C/hmbpUVZ/3/fYlTE1tcmtpwzvvwDGawLMSy2FaTgqKyMGNDna02fmkZer0uG
         2F+KT5uttz3K/VNbEMKfP2YSLKGCPDcr4o7mo1gjFXINnajbx9vHG+vNUu6ATNkeO2K6
         /oAQ2KuQj2Ai+xTS0VdfkhPPGdD0EfSkjIJ/ljj0hLQAj2VqRjX6e++3iMXqkKIrs1U9
         O6VfGv5tNCb9QcSgo7XHrYDVq+cEdaGjIManrO8mm3MOzzDmlBCgUKqi2ysu7+go8jOh
         wRCl2IWp4OcBBJSP+pKlxKnZz9xqWDNz+oc1/S0/kWkXEOU7yb2jya+pPZ10zliRB/PS
         HkFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=zAQhEoqs9m6tH0S1Pwi/N64OzurKgUWPJ1fRej5gFrw=;
        b=tlWY6EFTP/nXIc8GSgufBPGdYpYUeU8F+zIlQcVGo8Dr7BXCoaynEB9YA235qwnfKH
         1Tk1SSlueyz3A/QOPuPvgGqw1zzY9LgBi496uTQ5poMxW9ECS4MKuJ0NUxS8HfxQv3eW
         9RtAml5Ct4cCOJmqUWmCORQfq/0EmtovnBVL6yzuCVRnSkYiLbY4mnpfR56uFYm4/Z1f
         At6uRUpAkjKDAgr2nIHcTKiKANQYmsfUvL3BJPO0JG+279ePQdWHLn20W3lH9N6MilHQ
         zhnQqzf1I6L5E0rDTCZFWj4aCjsHk4xTXmu0BDNmtJwr34cGC3b7To96/9DtRZJ4l1zj
         i9rQ==
X-Gm-Message-State: ACgBeo2frtoJeI3zmW9auiKMfW4F5z417U9jBZAfRAYO1tJEVM9pHdtP
	SSYnKz4TSaQKdJQyRgb4PNYeQQ==
X-Google-Smtp-Source: AA6agR7x+cQFPHQpAzgOrdY5Dr+3kqXzw6uVPUGUgZRe4xBrQsDIXWw5+TeXlLrt3hz4d2so4EFEBA==
X-Received: by 2002:a05:600c:3ba0:b0:3b4:8ad0:6c with SMTP id n32-20020a05600c3ba000b003b48ad0006cmr5919992wms.186.1663234540088;
        Thu, 15 Sep 2022 02:35:40 -0700 (PDT)
Received: from krzk-bin ([89.101.193.73])
        by smtp.gmail.com with ESMTPSA id y17-20020adff6d1000000b00228d6edade0sm1995265wrp.46.2022.09.15.02.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 02:35:39 -0700 (PDT)
Date: Thu, 15 Sep 2022 10:35:37 +0100
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v2] dt-bindings: phy: renesas,rcar-gen2-usb-phy: Convert
 to json-schema
Message-ID: <20220915093537.qqddtqx2lr5ttuck@krzk-bin>
References: <dbdcffd009302734fe2fb895ce04b72fa1ea4355.1663165000.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dbdcffd009302734fe2fb895ce04b72fa1ea4355.1663165000.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_023550_933886_216A2364 
X-CRM114-Status: GOOD (  18.84  )
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

On Wed, 14 Sep 2022 16:17:37 +0200, Geert Uytterhoeven wrote:
> Convert the Renesas R-Car Gen2 USB PHY Device Tree binding documentation
> to json-schema.
> 
> Add missing properties.
> Rename the device node from "usb-phy" to "usb-phy-controller", as it
> does not represent a USB PHY itself, and thus does not have a
> "#phy-cells" property.
> Rename the child nodes from "usb-channel" to "usb-phy", as these do
> represent USB PHYs.
> Drop the second example, as it doesn't add any value.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Rename nodes to fix "'#phy-cells' is a required property".
> 
> This is the final conversion to json-schema of DT bindings for Renesas
> ARM SoCs, hurray!
> 
> Note that there are still a few plain text bindings left for Renesas IP
> cores that are present on non-Renesas SoCs (nbpfaxi and usdhi6rol0).
> ---
>  .../devicetree/bindings/phy/rcar-gen2-phy.txt | 112 ----------------
>  .../phy/renesas,rcar-gen2-usb-phy.yaml        | 123 ++++++++++++++++++
>  2 files changed, 123 insertions(+), 112 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/rcar-gen2-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,rcar-gen2-usb-phy.yaml
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


usb-phy@e6590100: 'usb-channel@0' does not match any of the regexes: '^usb-phy@[02]$', 'pinctrl-[0-9]+'
	arch/arm/boot/dts/r8a77470-iwg23s-sbc.dtb

usb-phy@e6590100: 'usb-channel@0', 'usb-channel@2' do not match any of the regexes: '^usb-phy@[02]$', 'pinctrl-[0-9]+'
	arch/arm/boot/dts/r8a7742-iwg21d-q7-dbcm-ca.dtb
	arch/arm/boot/dts/r8a7742-iwg21d-q7.dtb
	arch/arm/boot/dts/r8a7743-iwg20d-q7-dbcm-ca.dtb
	arch/arm/boot/dts/r8a7743-iwg20d-q7.dtb
	arch/arm/boot/dts/r8a7743-sk-rzg1m.dtb
	arch/arm/boot/dts/r8a7744-iwg20d-q7-dbcm-ca.dtb
	arch/arm/boot/dts/r8a7744-iwg20d-q7.dtb
	arch/arm/boot/dts/r8a7745-iwg22d-sodimm-dbhd-ca.dtb
	arch/arm/boot/dts/r8a7745-iwg22d-sodimm.dtb
	arch/arm/boot/dts/r8a7745-sk-rzg1e.dtb
	arch/arm/boot/dts/r8a7790-lager.dtb
	arch/arm/boot/dts/r8a7790-stout.dtb
	arch/arm/boot/dts/r8a7791-koelsch.dtb
	arch/arm/boot/dts/r8a7791-porter.dtb
	arch/arm/boot/dts/r8a7794-alt.dtb
	arch/arm/boot/dts/r8a7794-silk.dtb

usb-phy@e6590100: 'usb-phy@0' is a required property
	arch/arm/boot/dts/r8a7742-iwg21d-q7-dbcm-ca.dtb
	arch/arm/boot/dts/r8a7742-iwg21d-q7.dtb
	arch/arm/boot/dts/r8a7743-iwg20d-q7-dbcm-ca.dtb
	arch/arm/boot/dts/r8a7743-iwg20d-q7.dtb
	arch/arm/boot/dts/r8a7744-iwg20d-q7-dbcm-ca.dtb
	arch/arm/boot/dts/r8a7744-iwg20d-q7.dtb
	arch/arm/boot/dts/r8a7745-iwg22d-sodimm-dbhd-ca.dtb
	arch/arm/boot/dts/r8a7745-iwg22d-sodimm.dtb
	arch/arm/boot/dts/r8a77470-iwg23s-sbc.dtb
	arch/arm/boot/dts/r8a7790-lager.dtb
	arch/arm/boot/dts/r8a7790-stout.dtb
	arch/arm/boot/dts/r8a7791-koelsch.dtb
	arch/arm/boot/dts/r8a7791-porter.dtb
	arch/arm/boot/dts/r8a7794-alt.dtb
	arch/arm/boot/dts/r8a7794-silk.dtb

usb-phy@e6590100: 'usb-phy@2' is a required property
	arch/arm/boot/dts/r8a7742-iwg21d-q7-dbcm-ca.dtb
	arch/arm/boot/dts/r8a7742-iwg21d-q7.dtb
	arch/arm/boot/dts/r8a7743-iwg20d-q7-dbcm-ca.dtb
	arch/arm/boot/dts/r8a7743-iwg20d-q7.dtb
	arch/arm/boot/dts/r8a7744-iwg20d-q7-dbcm-ca.dtb
	arch/arm/boot/dts/r8a7744-iwg20d-q7.dtb
	arch/arm/boot/dts/r8a7745-iwg22d-sodimm-dbhd-ca.dtb
	arch/arm/boot/dts/r8a7745-iwg22d-sodimm.dtb
	arch/arm/boot/dts/r8a7790-lager.dtb
	arch/arm/boot/dts/r8a7790-stout.dtb
	arch/arm/boot/dts/r8a7791-koelsch.dtb
	arch/arm/boot/dts/r8a7791-porter.dtb
	arch/arm/boot/dts/r8a7794-alt.dtb
	arch/arm/boot/dts/r8a7794-silk.dtb

usb-phy@e6598100: 'usb-channel@0' does not match any of the regexes: '^usb-phy@[02]$', 'pinctrl-[0-9]+'
	arch/arm/boot/dts/r8a77470-iwg23s-sbc.dtb

usb-phy@e6598100: 'usb-phy@0' is a required property
	arch/arm/boot/dts/r8a77470-iwg23s-sbc.dtb

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
