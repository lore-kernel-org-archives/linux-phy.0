Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9434C28D13
	for <linux-phy@archiver.kernel.org>; Mon, 22 Aug 2022 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EozKaKGpzyv7Epg4x89uyZtg7o4o1IsqEXq502LIkvs=; b=aLYblovqpFErqO
	hsIuNL0rPiyx80o2OMlYiYIabHZxwayP+IHZQUIU0GMut3gyP/1EKM7XscPU+vNq5GS2Ol3up3Olz
	MMcPT6R2wie0e8m9COo9Al2Y0KA/1vxt+tTcTVyITYy8BEqvkpWKpilYibkO48+mn6PHMhDV2jNxY
	juQLTTZleM6Nf3WMXzuNRdoC1UdjRFWt42TU+0axgk/mMzRh095wfD//K0TAg6jnj0WHOIIbgKHxq
	j8uhSLqaUrkT8BjsB6u4yKpTQfwkp5e5ZCYo15minZKd7KwaYb7EwGhUsQN5JfLYAh3JEGAMOgw2i
	b4c1Wrr4XijY2k5vygVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQBtx-00DQAH-2V; Mon, 22 Aug 2022 18:11:53 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQBtt-00DQ7y-NE
	for linux-phy@lists.infradead.org; Mon, 22 Aug 2022 18:11:51 +0000
Received: by mail-ot1-f41.google.com with SMTP id r1-20020a056830418100b0063938f634feso1026224otu.8
        for <linux-phy@lists.infradead.org>; Mon, 22 Aug 2022 11:11:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=5VV3NoN7IqKqs9MOuS8FFToE6oCYmjPHLHIHLkHZ/PY=;
        b=TDOttH8X7rHs0armxN7MKOvvd0fYVVI556pjspFBllHnNAHGWEfLE39rt5/IzLT+bQ
         FVFev4FU30+cV+z+6XvZAHyBhUv9Ogu9nLzLUpTbTf3a3R0AzY/98Hz/p5n2bhCTkD+g
         lBJMXMLm4qbebeLqbshktRsIvZgrxcxwGBZ6zq5kW85sTQoxPVCpmXctD01tvG1g5oH0
         +7Lf4qhwcXwRfm9AbowfI6x9wZgZF2Ik+wMgwjM9dRmcq+bfW7JgHlJjnjkdotfSuGz4
         5Hj+gQEQ46y1jUg8i55RPZ90m+1Pt9Y70Iebq2K4hbmx5i20g/PJMZ4kdteQr2eLo95S
         iP6g==
X-Gm-Message-State: ACgBeo2arYp9Ws5/HubSslZZTv9U8Thkmukhjpl/ctDfo+Ldz108Wfzx
	yJ4SR6gbWLeEjfksbL07OQ==
X-Google-Smtp-Source: AA6agR7AulYdsRcGkCfdZggL0pjoN8rkWxX70QJmpzdyLYWvudLpE4cy1rAGFt+SddpfS+xDc++QuA==
X-Received: by 2002:a05:6830:1e85:b0:638:c371:a00d with SMTP id n5-20020a0568301e8500b00638c371a00dmr8098866otr.177.1661191908314;
        Mon, 22 Aug 2022 11:11:48 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p39-20020a05687056a700b0010d5d5c3fc3sm3106713oao.8.2022.08.22.11.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 11:11:47 -0700 (PDT)
Received: (nullmailer pid 87879 invoked by uid 1000);
	Mon, 22 Aug 2022 18:11:46 -0000
Date: Mon, 22 Aug 2022 13:11:46 -0500
From: Rob Herring <robh@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: kishon@ti.com, linux-kernel@vger.kernel.org, mchehab@kernel.org, vkoul@kernel.org, laurent.pinchart+renesas@ideasonboard.com, robh+dt@kernel.org, hverkuil@xs4all.nl, jacopo@jmondi.org, linux-media@vger.kernel.org, kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, sakari.ailus@linux.intel.com
Subject: Re: [PATCH 3/4] media: dt-bindings: add bindings for Toshiba TC358746
Message-ID: <20220822181146.GA87822-robh@kernel.org>
References: <20220818143307.967150-1-m.felsch@pengutronix.de>
 <20220818143307.967150-4-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220818143307.967150-4-m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_111149_817093_8EFC3EE2 
X-CRM114-Status: UNSURE (   9.14  )
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

On Thu, 18 Aug 2022 16:33:06 +0200, Marco Felsch wrote:
> Add the bindings for the Toshiba TC358746 Parallel <-> MIPI-CSI bridge
> driver.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  .../bindings/media/i2c/toshiba,tc358746.yaml  | 157 ++++++++++++++++++
>  1 file changed, 157 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
