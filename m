Return-Path: <SRS0=Ei7n=NI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB37CC4338F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 10:31:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 779EB60F35
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 10:31:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 779EB60F35
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iX9zG8yJmRaeVWLPekdyuov3cnCcQrRW/CY5Na8/hUM=; b=iVes6ks+gDcIat
	pjI9+Ummi85JBUwmiEapDzKMIIX/KZM6C/LNuhd10gyJphEeNGn2IBPSS0Zg91640djxeu15u20j1
	IpPW/WIdXTR1NgCvc6PcYQLn0pDItD11phlvMXI+aT7lLURytMoaRcRsEja0MQ26eFiVPpQEJP38g
	h/BRufBGF6XNwNHnnoMLbNqIL+GjEzBbMrmgxEf6l4GZ38rzxq9VuB8c2wRD2r9Vhoy7XMR1yOCXu
	2B76tWXJY31ggGcTUIjlz0leGmt2YD3kx5B9FuRsHZuEPFAXEOmp/QOY5d4J4FN121nvSCoahntmU
	c1UaHew2XA2MzgcgT1MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFwNS-0028Js-TW; Tue, 17 Aug 2021 10:31:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFwNB-0028DE-0Z; Tue, 17 Aug 2021 10:31:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BBC0F600CC;
 Tue, 17 Aug 2021 10:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629196268;
 bh=gwHWOw/ASy61DLhExAAJff6S57004jn6JCY7yTCDpLY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ICnrOAIY3x8BStucty1s+XddE23iaDU6CpMMaQCdyyjQyhqEXlk8MeQHj5gjktf6u
 B5+dsi06P+oXwRZ7NPCoXNCWPgxyny24V0QHyfLuDLy9BBl/Ajo+jDnuhsTI5/Cm/O
 J61MyqioLWtl3yevXMwuIqNYoBnVEJgeyk8JT8FZQnE/19aazFBpEiBixUAWKQTYOo
 gBbTogqfhVSRQAuPJ8Vx15aVHDCITtazvPkrfDaiP3aMTgbRlZ+ONa9EnrDwxEfmCg
 wxkRGAg9dYAlpBQoQPKbMv3Xo6hPzrzSM0NXhfW52cXHXjDCFY0m8Iz1p50tl6aGwL
 I9Fml9+Wd1E8w==
Date: Tue, 17 Aug 2021 16:01:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Matt Corallo <oc2udbzfd@mattcorallo.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Emiliano Ingrassia <ingrassia@epigenesys.com>,
 Brian Kim <brian.kim@hardkernel.com>
Subject: Re: [PATCHv3 6/6] phy: amlogic: meson8b-usb2: don't log an error on
 -EPROBE_DEFER
Message-ID: <YRuP6JfdEZNL8tXt@matsya>
References: <20210817041548.1276-1-linux.amoon@gmail.com>
 <20210817041548.1276-7-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210817041548.1276-7-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_033109_122915_CD956CD3 
X-CRM114-Status: UNSURE (   5.69  )
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

On 17-08-21, 09:45, Anand Moon wrote:
> devm_phy_create can return -EPROBE_DEFER if the vbus-supply is not ready
> yet. Silence this warning as the driver framework will re-attempt
> registering the PHY. Use dev_err_probe() for phy resources to indicate
> the deferral reason when waiting for the resource to come up.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
