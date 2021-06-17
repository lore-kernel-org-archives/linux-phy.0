Return-Path: <SRS0=Iqmd=LL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B931C2B9F4
	for <linux-phy@archiver.kernel.org>; Thu, 17 Jun 2021 22:27:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1EE7C61351
	for <linux-phy@archiver.kernel.org>; Thu, 17 Jun 2021 22:27:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1EE7C61351
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAgpXoZJVVZQEyQbTFdkTbFWtjg9r88SSdxVyBtluho=; b=ISE1Zc5iYyTjL1
	SH/ateNAh2mX/3dN3b2Uanj1J9gzHR74Vs0y48D63CMJxTcbYUi614kar7eVQzMZwRq2P2rh0jPKZ
	pqNU18bp0mWd6Yk6iYpHv2jikJOigTgatP6Ar30EDF6M73SYmYIlIzV0WosvbrF5Kyo59ND7hiIOH
	SfPookZluVTdxKhbDQHiO6EKKJk8aGzyQBelep+jPgtiMkvjzkH0Yh9X4j2ilMB3tPJat9dBRjpNE
	HpP0MN2WQ1JkCCaUBaW0bU4APcRHEZd/lYP5BifHz2U2Z9l5FwBnzzLR78+BtU4bK0Vl5AtXjSrnH
	rqts/6hGDZ48LcfX4lZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lu0Ta-00BxYJ-L6; Thu, 17 Jun 2021 22:27:06 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lu0TY-00BxXf-My; Thu, 17 Jun 2021 22:27:05 +0000
Received: by mail-ej1-x62c.google.com with SMTP id hv20so6553906ejc.12;
 Thu, 17 Jun 2021 15:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XBUUiRVifylGetd2oLvmNK/P++7zX9Z7YgNBUErs4Vs=;
 b=ggMhfu3axYL8C4ap0nbWKkEpnCtKKRXBEbRmyc0jerIaGcMimeQWJ8RvvbZL6U5OZF
 WsKQNOenJLOATry+yy1U1+cXSxUZntw+/z8ZQnko27QXIQhw38R7wORTRIgr27P5X7SG
 ipspex+3Zz0PEpfp16gkt61mRkmdpFsOHIWBcRw8OPSGvyHSO6wptXqTlu+FCKCgUHMb
 +YwjCicDWlyHGL38hNobBy5/Rnxyjx9JfQORRi8AucdnazkVESDdcpVwGyG3XuU8kOLQ
 tluzcMwM060nXgRbuwLWeFmFDmU+vQZqQH2zB+Mzng45PbBywIr9QoiFrms3dtbr/HUb
 qVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XBUUiRVifylGetd2oLvmNK/P++7zX9Z7YgNBUErs4Vs=;
 b=IbYlTWBYWjUV3m5lp1l+yQ6UC+COadTk0kwZ6OKzdpTqyquitHtvCTRX0KcRnSBlSr
 baYQeUiE9Dt63ZuIaw9FO1VsK6KaNDp4gppsVGLMqE5GaI9PRrr6L9B4b8EIlWGqZVnK
 n81GGDn4RluqUz21+3+jdbvCduKXjLPal4D/68/xQ8Z80l7oPRXCogXK5FV+JPMw5cWQ
 mfVA1PiR06aA+o53h75C8jvoCBCjuq7pGw3AbcEKg1+II+lS3kESg79Cf6JIjEEAhzZM
 tiZJMkZz+f6grXyz9UOHOruZxTPSIi/sStsYlJk8dZHbZFznSyNRpSGem6bm53nD+noK
 jx4Q==
X-Gm-Message-State: AOAM530YPiO7SCCdEA73Zg7CkCVRzQk+uY++zUpFP9o+/nBY7G3dVmy2
 L4SWIw67kE9zx8HhZPZu2e66giyWLISQRGDIcAk=
X-Google-Smtp-Source: ABdhPJyMKvbRGhk/yi1r0TWkeVgBBCLvywBFU7icC+Ej8Hh6tgBltevZFnA2nAbDjyGU1B7W65uQ06sVjxLlzccRECI=
X-Received: by 2002:a17:907:988a:: with SMTP id
 ja10mr7501286ejc.527.1623968822667; 
 Thu, 17 Jun 2021 15:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210617194154.2397-1-linux.amoon@gmail.com>
 <20210617194154.2397-9-linux.amoon@gmail.com>
In-Reply-To: <20210617194154.2397-9-linux.amoon@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 18 Jun 2021 00:26:51 +0200
Message-ID: <CAFBinCCS6mzukqgnJijn2khaaOAPb_mg+zAqYxpUb57297C6Tg@mail.gmail.com>
Subject: Re: [RFCv1 8/8] phy: amlogic: meson8b-usb2: don't log an error on
 -EPROBE_DEFER
To: Anand Moon <linux.amoon@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_152704_787763_084A5DBA 
X-CRM114-Status: UNSURE (   7.32  )
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

On Thu, Jun 17, 2021 at 9:44 PM Anand Moon <linux.amoon@gmail.com> wrote:
>
> devm_phy_create can return -EPROBE_DEFER if the phy-supply is not ready
> yet. Silence this warning as the driver framework will re-attempt
> registering the PHY. Use dev_err_probe() for phy resources to indicate
> the deferral reason when waiting for the resource to come up.
This is a good improvement - thank you!

> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
