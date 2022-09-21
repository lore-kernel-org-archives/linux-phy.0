Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76A7DECAAD8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 06:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJOrD0Gr8pnc1sWlhlIGzY04k5fOIQOrVvM0/iYOl/c=; b=BGjSzbIIEaD6cz
	F1a1tud6/uTMnhIWuNSpqtUmOlP7/ehqTGoTeOLDwP3FBQvJQs4m63L+OrW2sNwMQqUYZOsGfTcj5
	P92k6vaMb6EukW1BpJN3ibF+XcH5LnauEeFwc9lxKRZorYPNWPiq0PXOqaHRpdbGycTe0upiSDeY4
	kY4WHliE8AxhEL/Tn3J9wjL3Lqwl3aqV2GvlPelfQfbVaUcEam1/93pagwsqPkuZe2ImvdFjwf5j4
	zF2blJuLB3l9wgbr1wwW4vTb2s8yvu32oBO0Scn9w/89hh9qM5AFIShe3Icb1k2Jby2xKpX2ah0Nb
	OWhwqXJvNo3nhPLG5/HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oatft-009PmA-Q2; Wed, 21 Sep 2022 06:57:37 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oatfh-009PfR-5x
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 06:57:26 +0000
Received: by mail-lj1-x235.google.com with SMTP id g20so4608523ljg.7
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 23:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=NK2N/b/QQywGXjYSUF1DR4DFgFeCcv8ay3tmMR7yQe4=;
        b=zd9VKku7G1ak2cVyYOpEVge/UKl5/MrmOGUtOuV36rnH2moft2SkAC/9tMMOJjqevW
         iij9gy5AkWzLqLBhcQtg1LjWDm4G7jMk8WimQOrNfN9u3qVCSv4AvFMcBkGlB/Z+DkrM
         44pP9yln+ruBWW3bjLElOcV+dH5W1qdMRKI9bGT5lqT/8i3qKkxJAdDmOLkLgCbIHLdQ
         yXDMxXv2Kyp4S00TH8ryrjxRPvWLMtROado73s+RWJl4EyKQFnQDrVSrFJ1qNp7NWebr
         brEd1UtiG4Qv3mueTQn9TpQaUJVc7FuasEN6YvoZj72MynPHRGdqSqPndsNjRBMnNICy
         zACg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=NK2N/b/QQywGXjYSUF1DR4DFgFeCcv8ay3tmMR7yQe4=;
        b=rEeluis03h0ckc5sM2niFsvTF/wsde0xNEPLybYIcJX+dLFjxGZFlXbxjrsqOuuCZg
         0JUFAB9fBmiRCFULTTa5OGsOuGaEPmnLXzMRIKqmH4di3SE3wy/erip6Hul7Y5nkrlNm
         zgR02HRin2XGF3aLMfwommWQw10uJoYBT/JwOtWtuVaDZb7b/mSHLWVVLGmMeVIsGPKD
         Tgv4Xnr0tpv6PR8kdp2isT+bNeZ3wsMP0lsy0NHIPivBXqwFVSzG65/8pS2eMRFSN9cZ
         0LKJndamQPFaGlzIPFxe90/lR9hXcMDD7OMdRYMw/bfdvYyALmUlzUZidRBDITxDJfov
         Z+Yg==
X-Gm-Message-State: ACrzQf3bis6gC6sVVbmRjdKKfWpk1KuQ5bodwQULqLNBa+4qjL7bgN+8
	gRi+7PJpV/8kDwfRg7v3WloRdQ==
X-Google-Smtp-Source: AMsMyM4EcQa7KqdhM3o6+dyVA7n/gHX0GrxOqzZR52bpaVcu/jIZW6WrDc7SJVRTnVlFdh3dYeQywA==
X-Received: by 2002:a2e:944a:0:b0:24f:10bd:b7e8 with SMTP id o10-20020a2e944a000000b0024f10bdb7e8mr8835541ljh.238.1663743441318;
        Tue, 20 Sep 2022 23:57:21 -0700 (PDT)
Received: from krzk-bin (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p15-20020ac24ecf000000b00499cf3e3ebesm307999lfr.121.2022.09.20.23.57.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 23:57:20 -0700 (PDT)
Date: Wed, 21 Sep 2022 08:57:18 +0200
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: linuxppc-dev@lists.ozlabs.org, Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org, Madalin Bucur <madalin.bucur@nxp.com>,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 2/8] dt-bindings: phy: Add Lynx 10G phy binding
Message-ID: <20220921065718.lafutkkgiium5ycu@krzk-bin>
References: <20220920202356.1451033-1-sean.anderson@seco.com>
 <20220920202356.1451033-3-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220920202356.1451033-3-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_235725_249947_E13BB226 
X-CRM114-Status: GOOD (  26.22  )
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

On Tue, 20 Sep 2022 16:23:50 -0400, Sean Anderson wrote:
> This adds a binding for the SerDes module found on QorIQ processors.
> Each phy is a subnode of the top-level device, possibly supporting
> multiple lanes and protocols. This "thick" #phy-cells is used due to
> allow for better organization of parameters. Note that the particular
> parameters necessary to select a protocol-controller/lane combination
> vary across different SoCs, and even within different SerDes on the same
> SoC.
> 
> The driver is designed to be able to completely reconfigure lanes at
> runtime. Generally, the phy consumer can select the appropriate
> protocol using set_mode.
> 
> There are two PLLs, each of which can be used as the master clock for
> each lane. Each PLL has its own reference. For the moment they are
> required, because it simplifies the driver implementation. Absent
> reference clocks can be modeled by a fixed-clock with a rate of 0.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> 
> Changes in v6:
> - fsl,type -> phy-type
> 
> Changes in v4:
> - Use subnodes to describe lane configuration, instead of describing
>   PCCRs. This is the same style used by phy-cadence-sierra et al.
> 
> Changes in v3:
> - Manually expand yaml references
> - Add mode configuration to device tree
> 
> Changes in v2:
> - Rename to fsl,lynx-10g.yaml
> - Refer to the device in the documentation, rather than the binding
> - Move compatible first
> - Document phy cells in the description
> - Allow a value of 1 for phy-cells. This allows for compatibility with
>   the similar (but according to Ioana Ciornei different enough) lynx-28g
>   binding.
> - Remove minItems
> - Use list for clock-names
> - Fix example binding having too many cells in regs
> - Add #clock-cells. This will allow using assigned-clocks* to configure
>   the PLLs.
> - Document the structure of the compatible strings
> 
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 236 ++++++++++++++++++
>  1 file changed, 236 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/phy/fsl,lynx-10g.example.dts:51.27-28 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:384: Documentation/devicetree/bindings/phy/fsl,lynx-10g.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1420: dt_binding_check] Error 2

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
