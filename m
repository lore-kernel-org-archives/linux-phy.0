Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2ED7C61DB3
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2Dk8IGnQYPVvxOa1JC5s04v9HGi3pRWB45YNrFhITE=; b=LH+75nUy5QQ9Vx
	d2bugyv1f6zeJ1cdKUToYfN8JrAqG3qugWfoSGMfn0FF659mbVgeg2NGpMVNpUyfiZUQWTiI3s3MA
	k3abrcusA6dRpJqRZhtjTacg20iWrDJSp78Gvk2N3UR2QVKEEu2GSNKBv9CuD4NkY5xP+zpC8syI5
	a8RMfWgxkmay11YES+nbjYTxtL6IH0TP2/ynktw34lW4b1AakfubR8WpuigwEOtidbUxz8SsTvDDu
	hMne/otTPTy3mU9HHYcWVxAZseuXwnxAL0TPzmfooWqzJmtMSqrS4gzxPVdwdDCrewILdRIsK/Q6b
	S+HzFb/ffGOgsdLnUUog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG4Ma-00GzLi-Re; Thu, 12 Jan 2023 20:39:52 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG4Kl-00GyWT-2b; Thu, 12 Jan 2023 20:38:04 +0000
Received: by mail-oi1-f175.google.com with SMTP id e205so16215573oif.11;
        Thu, 12 Jan 2023 12:37:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=te3B7QXiN9a5dOliEetl+fEAA7YyitjOHHWZmEchd3w=;
        b=YzynTO/dGMWqANdvcGUQ5ky8b6BEN0GyQAcskyfyoZ02uSyxmr6DWPiyTXHwvR6XeM
         pdRs9BqDGuVhS04nNSmaRalx0Dp4y0MS78TtKcFAYijCWvEizCorarLNF/63MhAk9yWa
         GagdEgGmO/XeFuhj5eAZNwZYsu05MJNtT59kH/0OvpUg7KPAWXGpe7N6lu+GJVcYSR6W
         yKsaUXIHsdVt9oox9C4Yl7x2UhGYv0IP5uzgFey4Ndx1ML971EvU7WmTlQhdkM29+Vm9
         ZBFOdzw+LvF5R9ynWfVcHxNs5RckztGtSEoYCUXum31NditzL4uwGdLW4d/C6nF8FY5Y
         VznQ==
X-Gm-Message-State: AFqh2kqFLn933z8kjGld1x010fcHsvi4tXi5T6I1PDvFBuO5n5KrOr86
	CJQVZ0cnBvPSxxsrZbXpyQ==
X-Google-Smtp-Source: AMrXdXtC9JDQSCNr2mBpmyaH+oX/tQisTbLPdzKuWPbRgBBSAol/1Q54L3bzvRFV7wQZ4EvPIFzPhA==
X-Received: by 2002:a05:6808:f8f:b0:364:9fd7:4fc with SMTP id o15-20020a0568080f8f00b003649fd704fcmr1212036oiw.50.1673555874866;
        Thu, 12 Jan 2023 12:37:54 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x8-20020a9d6288000000b00661a3f4113bsm9393754otk.64.2023.01.12.12.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 12:37:54 -0800 (PST)
Received: (nullmailer pid 126537 invoked by uid 1000);
	Thu, 12 Jan 2023 20:37:53 -0000
Date: Thu, 12 Jan 2023 14:37:53 -0600
From: Rob Herring <robh@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Madalin Bucur <madalin.bucur@nxp.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-clk@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Turquette <mturquette@baylibre.com>, linux-phy@lists.infradead.org, Camelia Alexandra Groza <camelia.groza@nxp.com>, linux-arm-kernel@lists.infradead.org, Bagas Sanjaya <bagasdotme@gmail.com>
Subject: Re: [PATCH v9 02/10] dt-bindings: phy: Add Lynx 10G phy binding
Message-ID: <167355587246.126242.1070313368786035671.robh@kernel.org>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-3-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221230000139.2846763-3-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_123759_182645_E08801CC 
X-CRM114-Status: GOOD (  24.19  )
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


On Thu, 29 Dec 2022 19:01:31 -0500, Sean Anderson wrote:
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
> ---
> 
> Changes in v9:
> - Add fsl,unused-lanes-reserved to allow for a gradual transition
>   between firmware and Linux control of the SerDes
> - Change phy-type back to fsl,type, as I was getting the error
>     '#phy-cells' is a dependency of 'phy-type'
> 
> Changes in v7:
> - Use double quotes everywhere in yaml
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
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 248 ++++++++++++++++++
>  1 file changed, 248 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
