Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4927AC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Oct 2022 14:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4wepy3ORpCxYHQtrs3uqaPtMMveZ5UOVFECtgHxXt0=; b=MRSkKwshAgO+Or
	QGmY0ReV6UFC80TGs+xiqOeqDPOXrEIMsxIPOiHvYgqGq+39QcDW8dkmo4QtykGtc0EotKWrpYr7v
	PEoJznxXvdOBJ/xVfKULYvQkk6HtjW/+uDQpcimmxUa49HsR5jHiVKzFLmUi5rbSf+XHEMwuHq6cP
	O3MRCHhWRreDXbtPEDsnGtQuvt6vrcx9+U1eBxHyTXaRG6E/JGDw5WimbwbtN/rLsKQNO6BO6vBjj
	C6oGVOCLrl2R0s7wA6e52aKFy1MX8Uz/Q97XHaCypQgx4q8PyDpDzHC6bOBvXzr+jBedEv0bpCu8U
	Gd0aUomztW0L44vf/fdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojM4E-00F5ZS-Mu; Fri, 14 Oct 2022 14:53:42 +0000
Received: from mail-oa1-f49.google.com ([209.85.160.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojM4C-00F5Xv-Jd; Fri, 14 Oct 2022 14:53:41 +0000
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-136b5dd6655so6135863fac.3;
        Fri, 14 Oct 2022 07:53:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gy30CbgzVzjQUM+rCFGdEeWdVOvfOjY22rZZUrW/yKM=;
        b=S5Ayi4DgTDgSMP6V5uvYax4hT/j2ejMMojXPqJUV863PI4ewN7NNeMCtk5OER6PY/6
         zI97/1A6g6L9kddKLehjK/53DxiWVscNbzJRdknaueh5kB6ZGDT2W76gadaz8j2ekrZw
         BcYO8q17/UaOcOeNl2ZRYbBRu1soz3TkZJILPgdROA0jHH4iLIwyZv6+KHWhKFbGnarV
         nGlhWGZ/qEkDxr6u//tdu14yPpakVeL/uQBL4jNVOvtjGA+5CzQBKKxJYjGp2e7JqRQj
         IpZlCIXy9l/R86dTvgYkrc2NSOC5DriMO8ergHBGvZ47zXYyHDKJ7q/z9SCrhfJhAvq+
         y6Lg==
X-Gm-Message-State: ACrzQf3bZorfjeXx/Kh+M06iEnF3AS4cVuP+ugTIoUczqRisZ6za9LJ8
	rY68rN68lkxk5gUzjgvrfw==
X-Google-Smtp-Source: AMsMyM4vNolvuaN6nEESb3jchZJppnaf98gn7taPwj073cN4z6ZsJ0f8+guVhtChAanhWKSaKP3H5Q==
X-Received: by 2002:a05:6871:54b:b0:132:b17:d0cb with SMTP id t11-20020a056871054b00b001320b17d0cbmr2806569oal.117.1665759217594;
        Fri, 14 Oct 2022 07:53:37 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id el40-20020a056870f6a800b0011dca1bd2cdsm1519301oab.0.2022.10.14.07.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 07:53:37 -0700 (PDT)
Received: (nullmailer pid 1940386 invoked by uid 1000);
	Fri, 14 Oct 2022 14:53:37 -0000
Date: Fri, 14 Oct 2022 09:53:37 -0500
From: Rob Herring <robh@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, jun.li@nxp.com, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, devicetree@vger.kernel.org, kernel@pengutronix.de, s.hauer@pengutronix.de, kishon@ti.com, Peng Fan <peng.fan@nxp.com>, robh+dt@kernel.org, festevam@gmail.com, xu.yang_2@nxp.com, linux-usb@vger.kernel.org, vkoul@kernel.org, linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: phy: imx8mq-usb: add power-domains property
Message-ID: <166575921695.1940330.11207621757952776145.robh@kernel.org>
References: <20221014095550.2125018-1-peng.fan@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221014095550.2125018-1-peng.fan@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_075340_658451_16C102C8 
X-CRM114-Status: UNSURE (   8.92  )
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

On Fri, 14 Oct 2022 17:55:50 +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add optional power-domains property for usb phy.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
