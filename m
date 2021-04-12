Return-Path: <SRS0=mHkV=JJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17044C43460
	for <linux-phy@archiver.kernel.org>; Mon, 12 Apr 2021 17:51:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9F44E61350
	for <linux-phy@archiver.kernel.org>; Mon, 12 Apr 2021 17:51:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9F44E61350
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SasiZ/T6A+JiJ/i3HNurNW4DHAKrv/+oBuZhAzrA4JA=; b=bipRqff4+KH2CznRCMLqbX31F
	SMt+1SJrARiCj/gOOTIe9kxY0Xozpy6NDzlLTXjrGvXKsTmhHxRAr4jp8HVbFyiaEEvIm3wSURpNy
	qH9ZG6t0R4KIrAA/UDjEfAvjUdVEhKCPKDKDJjcNbLyWGMC/6gH8mcrDvSuk60W/7zPfovgxWuFM1
	3jH4D2xFlgKkw54xrr/9Ay/kXUpBXaihssnM6AFkk4UnIvnfhOL2MwY1Q0X8Ssas5mnqGN9QwjoMg
	DLRwDONxkBOfVAx6JhntjAQaXFPwogltN6AaHPHcFmqXqDC27mdnscbQYr/7UWNoxZrkivHRTFpo8
	gPco3fe3Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW0ir-007OEE-W5; Mon, 12 Apr 2021 17:51:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW0iq-007OE9-0I
 for linux-phy@desiato.infradead.org; Mon, 12 Apr 2021 17:51:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Ea0wwblc4jIaUkhNsCQ47PE+8gSD1cmdNSdI/VVXgz4=; b=uC2wGO/K3H1r274RWA9dtywGtN
 a26c9HVmRHd1J+9hsJvbVPOTyCHMeVbP/HPzdZ1994aBjj0eaJ7O3eLbMXGWprM9kxWQCJc478uQW
 +PEQ6Hp5HcmfvTq1+KLQd45plstDjo7zaVpEcXemd9dfD8V//G1HApGFlPtv9N/nKZVbPOKa/IZrb
 fB7r9dZv4ztNCfhfOEuUc4WxkJyalqUR6QrylK5x2I5rk+fP0nV0H0Y2esA8PtDNN/ypyZB9RG414
 I2O9omOpG5Vps7ZQ1zYYmeZNJyTD0WtFPhHLgLoMn+/Ote/HHv1YLlF/RGjQhNnWRcFoefXAS7J49
 RHmVFnlA==;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW0in-006Sst-Iu
 for linux-phy@lists.infradead.org; Mon, 12 Apr 2021 17:51:38 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 t17-20020a9d77510000b0290287a5143b41so2375688otl.11
 for <linux-phy@lists.infradead.org>; Mon, 12 Apr 2021 10:51:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ea0wwblc4jIaUkhNsCQ47PE+8gSD1cmdNSdI/VVXgz4=;
 b=gcILQjQxBWP6pNOyKVC3+IvuSMd3u8VeY4F+gl+4JVE2vBHpEp6iwNWTqIquSvKUI2
 emn7uzudLgG4edwQ8EU/7JZqvKaqPyFQ+OuOHnD6j5qKTyc7Bl2Vv0uh00F+R+HHRe6O
 9Lbl2B6Al2YvJwavHsTgk/EfEaab63UgiCRg50U2NTJNMxou3WEeps4E8vb0smDt7S/x
 pu17kl0kthawRBjUvVSNb2Os9YjoBaBM9UdFC847LuKk0eGlpXU1maFnyFESlFMPgnRP
 aWgUaodfFmkfh24H5G2JZqHhceOWGUvIVNxXod7TzzDbjqaaCKjhh8F+/USb5u+KQpXe
 Tzqw==
X-Gm-Message-State: AOAM53346LjyqxJmHwQVZy7NtyJkMI8YITjSTyluCP1Oty5zboUFLikx
 YNhaG+Ze5IyUCJ1ah8SWZg==
X-Google-Smtp-Source: ABdhPJwKbxwTVUrZdMdU9k0p+Wsk4lVs9GvzycQRqjvxXm32f7UEUb2pz9nQfnBVTu6enLeSzHeDVw==
X-Received: by 2002:a9d:4911:: with SMTP id e17mr3767679otf.38.1618249896643; 
 Mon, 12 Apr 2021 10:51:36 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h23sm2748216ots.0.2021.04.12.10.51.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Apr 2021 10:51:35 -0700 (PDT)
Received: (nullmailer pid 4110980 invoked by uid 1000);
 Mon, 12 Apr 2021 17:51:34 -0000
Date: Mon, 12 Apr 2021 12:51:34 -0500
From: Rob Herring <robh@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Sriram Dash <sriram.dash@samsung.com>,
 linux-can@vger.kernel.org, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 3/4] dt-bindings: net: can: Document transceiver
 implementation as phy
Message-ID: <20210412175134.GA4109207@robh.at.kernel.org>
References: <20210409134056.18740-1-a-govindraju@ti.com>
 <20210409134056.18740-4-a-govindraju@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210409134056.18740-4-a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_105137_644661_9A1CA25B 
X-CRM114-Status: GOOD (  18.72  )
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

On Fri, Apr 09, 2021 at 07:10:53PM +0530, Aswath Govindraju wrote:
> From: Faiz Abbas <faiz_abbas@ti.com>
> 
> Some transceivers need a configuration step (for example, pulling the
> standby or enable lines) for them to start sending messages. The
> transceiver can be implemented as a phy with the configuration done in the
> phy driver. The bit rate limitation can the be obtained by the driver using
> the phy node.
> 
> Document the above implementation in the bosch mcan bindings
> 
> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  Documentation/devicetree/bindings/net/can/bosch,m_can.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
> index 798fa5fb7bb2..2c01899b1a3e 100644
> --- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
> +++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
> @@ -109,6 +109,12 @@ properties:
>    can-transceiver:
>      $ref: can-transceiver.yaml#
>  
> +  phys:
> +    minItems: 1

maxItems: 1

> +
> +  phy-names:
> +    const: can_transceiver

Kind of a pointless name. You don't really need a name if there's a 
single entry.

> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
