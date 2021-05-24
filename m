Return-Path: <SRS0=iewK=KT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C2C8C2B9F8
	for <linux-phy@archiver.kernel.org>; Mon, 24 May 2021 22:14:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B5C96142A
	for <linux-phy@archiver.kernel.org>; Mon, 24 May 2021 22:14:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B5C96142A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L60VO+fj1Zmxzn9GIUz4eipaUaqE0xDp4+GJz2y1Ums=; b=sJDXHEwEwfmWE8
	/MNCIKAnZIYF4axWQUb2uJINQL190sLWbtwFUlLDdWRs4IVpEirx5XlsgIPBCbl/cwoaJ+1l1n5Pe
	ZdXaLzz70DdL0u0pVqP1gakZqEf2Em+iEpArAJt3gWY42YbftWkGY2e0k1llcOSUX8vHrHPh7Xh+2
	eiDpxB2e2jye7Y5aP+J/qBMWKnviV7BIHL4g5thHEtcPvT1MkNYFXTw5ybxp9kPCVPirapXIqqsHi
	FXjfXyHl7WrK97aZAnRmYAu0PQv8BftrFP0FocaNIl8oEjBNZp44todCFr4FLSqZCdk/gNKdVghml
	1nqN0NonA5XWu+W6bl2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llIqR-0024wl-1L; Mon, 24 May 2021 22:14:43 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llA3j-000vN0-Td; Mon, 24 May 2021 12:51:55 +0000
Received: by mail-ed1-x535.google.com with SMTP id a25so31800427edr.12;
 Mon, 24 May 2021 05:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dD9JUS/9clmQAwtTw0oy+Y0L6eGW7GOSlCzKvAfOcqI=;
 b=uXZObOQAWLi+UqUELweUTgzr0xS+D+JIv93PqQnNec9m1DWvK3ICqM51zXr3H1LNYr
 niW8fRxeIc6J8YtGGWrvJBOLrerpqW314Klei3EwcaLDhhac5I5dcMSMok8WaKoH2AuX
 LGVvbwYGNZEn2k/XNFTXFa6YWl2fdccjLZ9dLzgsUWMhoLktKRLUdGC0J5w+3U2SqgPv
 +BQhqksplDDFCbLkURCCWhxg5XeZez34ewqV9eMPcoh9HFkEr+tQ89VS2EPTjJA+PwvF
 hrDIBl/uE8oybSgvxlaOLY8vpWrfyxawVPh3gTz+4SfBcQoQ4nEVnOgrr0OvFjFgYyLH
 onjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dD9JUS/9clmQAwtTw0oy+Y0L6eGW7GOSlCzKvAfOcqI=;
 b=IZBbpMN0QpWQb2lyDNza04uN/XWy4Xgj9vpIYYWxDSoxNd6z3W7eBsTKorRQpveFyQ
 2EYKO3/rmrzW4oCZhTcfsT33WQT0n6MnkNsnmOUBQlQGmPFmaY9j+vhBWE7c/2iJP1St
 g9OFMwYsM/alqOTeeTxSscIhjl0mVX7eJ1Y1dOyHsuWy9Z9Z3XuFphLlCleNunUqR72j
 aMnFu7YL3agyPGOZPQwlwcVW4XwLDFIMU4as/guCo5NIRb/idZ5Kkpi31MtbRkSP0X7o
 5JI4+FuFT73nGScyMuAGOrpgUGOsR2B40Dk0RNWqa6zrDfDH2ZpXkY/Tzzf5QFfusVnv
 jMYw==
X-Gm-Message-State: AOAM532hf1pM1Ga5Ky7hQteg+fzrS0BmyxBoRYGJEOedVZMUa9k91dT5
 l9yvkimNyNX1GJxBL8ZLjKA=
X-Google-Smtp-Source: ABdhPJyMEkKmMiyUQ3uf21R2RgYMv75IOOJQ9W04QhJLUu7XPaq6mnxSqiA+tfBvgJn1FPWNjpSyNg==
X-Received: by 2002:a05:6402:35c4:: with SMTP id
 z4mr25067694edc.362.1621860709805; 
 Mon, 24 May 2021 05:51:49 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-17-133.cable.triera.net.
 [86.58.17.133])
 by smtp.gmail.com with ESMTPSA id u1sm9282891edv.91.2021.05.24.05.51.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 May 2021 05:51:49 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Andre Przywara <andre.przywara@arm.com>, Maxime Ripard <maxime@cerno.tech>
Cc: Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh@kernel.org>,
 Icenowy Zheng <icenowy@aosc.io>, Samuel Holland <samuel@sholland.org>,
 Ondrej Jirman <megous@megous.com>, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH v6 12/17] phy: sun4i-usb: Introduce port2 SIDDQ quirk
Date: Mon, 24 May 2021 14:51:47 +0200
Message-ID: <2348352.12aM7klthN@jernej-laptop>
In-Reply-To: <20210524115946.jwsasjbr3biyixhz@gilmour>
References: <20210519104152.21119-1-andre.przywara@arm.com>
 <20210519104152.21119-13-andre.przywara@arm.com>
 <20210524115946.jwsasjbr3biyixhz@gilmour>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_055152_003375_6E7A8924 
X-CRM114-Status: GOOD (  18.98  )
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

Dne ponedeljek, 24. maj 2021 ob 13:59:46 CEST je Maxime Ripard napisal(a):
> Hi
> 
> On Wed, May 19, 2021 at 11:41:47AM +0100, Andre Przywara wrote:
> > At least the Allwinner H616 SoC requires a weird quirk to make most
> > USB PHYs work: Only port2 works out of the box, but all other ports
> > need some help from this port2 to work correctly: The CLK_BUS_PHY2 and
> > RST_USB_PHY2 clock and reset need to be enabled, and the SIDDQ bit in
> > the PMU PHY control register needs to be cleared. For this register to
> > be accessible, CLK_BUS_ECHI2 needs to be ungated. Don't ask ....
> > 
> > Instead of disguising this as some generic feature, do exactly that
> > in our PHY init:
> > If the quirk bit is set, and we initialise a PHY other than PHY2, ungate
> > this one special clock, and clear the SIDDQ bit. We can pull in the
> > other required clocks via the DT.
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> 
> What is this SIDDQ bit doing exactly?

If this is similar to Rockchip USB PHY, then this bit takes care for powering 
up/down analog parts of USB PHY:
https://elixir.bootlin.com/linux/latest/source/drivers/phy/rockchip/phy-rockchip-usb.c#L83

Best regards,
Jernej

> 
> I guess we could also expose this using a power-domain if it's relevant?
> 
> Maxime





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
