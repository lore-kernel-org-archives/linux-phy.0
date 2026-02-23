Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74350EA4FBA
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 14:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFuEBRmda3jYcCiqAYc0Ykmxuny0totAmRQOdsgyRrc=; b=pWbFMNy/kI2M3p
	xPn0w34zHJO4LSI5uzoGVquU3DY+40mSeoVjw+xz/dTXyJb7VZWn+zWTHVlFHwuH4SjQY9TvAgjTB
	SVa5js/GeJbuvt9+eO/VMk90bOJnyvpA0pNTFe9wGVKBGs6xPA+b59BmUtyGA3lhF4j3ZESRI1BFa
	fPD5Xg2qpp8lclnW3CbqW7a1reiRd7jZsoKKEKlF1rM3qp1Cor0XbkvhBV/WR+IsQGS+DH0CbohFj
	tVnWuov28wNCzuF+f7jsVtjJHWmmXRChZduzYhEV+QZzqW+2ty6VQrVpAJYcVhQ2GouSXWhX1cvZQ
	bPJMd2ZcDatDFVj7mBnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuWgm-00000000Ruh-0Jbn;
	Mon, 23 Feb 2026 14:13:32 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuWgj-00000000Rtc-0F7q
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 14:13:30 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-59e6491f1a2so4943286e87.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 06:13:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771856007; cv=none;
        d=google.com; s=arc-20240605;
        b=Osb/b8CHA9w0woDUG+IPybhwkpcbsNKoUN1V0+iVVxhTd2sTmyIml7EDSno2JkrN6s
         ne+KjGmepbBqPNBF0nkaPbwx15gfc/24y9vknkQd/POOvZRUb4j88piWU5cl0dbqA1Yb
         X9ut0JIeE4jlPbZPMLn7Ae8KdW3VfOeNmd/ZuBKnzAwGyp+tXJooxMyHv3bZOOB0cHzx
         7r7WPfXIv0pqr5/DJwjkWIzDBaOZ4PuJDWJMF7L4d6eYAL7en4ljVaYPcWAMgm+fhD0m
         yc+wdRnsEh8bsrzWigd8gm6i5DfQAoYjYg+MatT4r0mYI8c+2ZX5X53x2R2fpm8KYsER
         TiOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7UcNIiszEKvIE+Kf7TAf++7dJZgkiPPqma20oF8iNSw=;
        fh=JA5tffJ9V28TKScH2oW1aY1ZTt/RbeFlWinZSize5YM=;
        b=DcPfdbsmBRVUTop4yz+Y7WHH5H/IGoTU3A5jOurtnULQs/G6uJVVtIz0TVC5BDoe+v
         nH6kg7zXRdBR3+PSW7+6V0eENkcVlv4xflM7yk10FCHPKusEfSQSM9+9M8j7pPm9b1AQ
         hmny+LVaq6c37G/i7FFftoPVxHQoziRpniA81Vx+85c0sfgwRdd227TrQl+p5pawBrwk
         RkgNuz1OFyN6CQJH/jbeenikWfDv6xXkdPlDBg/Lr2OFvQH3/4myVRzw9MnhlMVB0JS/
         4di0UeNSHgoBogb21UZLS1CGInGhABaxJ7dDgKRMDSLpsuc4pORvAwDZ/uED3TiKwHpW
         NCRw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771856007; x=1772460807; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7UcNIiszEKvIE+Kf7TAf++7dJZgkiPPqma20oF8iNSw=;
        b=ac2RQW0pI1bgqmCYzOoI1fCPAR3XbSvuQ2mbMQWdj856VvpVybzHA/jFezV/DvD4vf
         GBhaaGRATzYPh4jSLhxBkYVkA/007z2Mnbii5Aw3+Cil4sD6GiKW89GMohUSPROHlsWf
         pfblbgaF+IHc62owBFKmKWo0xNKZzsnD8T6om+Ouul6GkuYx28X0ViEqoZgmejHZhBPr
         yuSpja2Iw6KrpO4pVjkSFjVwLPb2XBi0ODSDnvaS6PbMhzJJKvQr8jqXhCIO/3UgfzwE
         rohcrPToGVZS9nWs5J6CpGDALrpUL23BJ1zt+4CDkI5F3eURQedkCONeYWUUtTzMl6D+
         U7PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771856007; x=1772460807;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7UcNIiszEKvIE+Kf7TAf++7dJZgkiPPqma20oF8iNSw=;
        b=eEmXrtAr5dWyORT3+EHHjsgYwFS8WZiut0OHSt+N7KWM8lYC88bPUfAwwhtXD/hR/v
         cLBSZBCPrRyJpSfAKKirvC9eXlNZ+jBUJutultXPIbwbWUSX9tWlAD1IanCSDwiiHW18
         np2t4JNMvZaInk06hoPlnjMhXUBUEFj4YK1jCWTrJjv/x2CpMOCXVGmFViizYNtAedMk
         uusVFecX4Vz9OpROxGWXFKIAI1bvCdQOiOBVrrHwAc0c5Ok8546kzzq3WcNX3nd7I6Xo
         /abi0KOQm6fAmH1OoVHuBf7SfYr/pZ78RNQ3C5fP1rKs/2RlJHj75sy937wgk0Vbn0mY
         ooAA==
X-Forwarded-Encrypted: i=1; AJvYcCUTRhQLor0l1Ik5knkdEzVd4vVnqTNqEvDxY6OxHCJKrYLk7FXZgUYTGEEg+PAvquXXwnO9CFA+9og=@lists.infradead.org
X-Gm-Message-State: AOJu0YwrWvkBTyNh/heKnasTxoJ07Xptt/OhXD5UflDqYq3j88JS1qBx
	+hraGifDoQl2xxOMzEAT/1A8PLB1GHN+D3rMUlt+XNYYgm0NtfDoHirz1SuyxvAg9hk4eSwaGXt
	8XDjskKnBWJXGzZdetRgjg6FT0VFUZcgx4XOOonh/Eg==
X-Gm-Gg: AZuq6aJ/F731OtCPcy4HxO/XddAISlXSD3n0F6DIIuuT6nsEofdYDRBI5krFJbnlSgG
	531o8+prH0D1g8WjHB2gEppoXa8UkTsgF5EpKWKC2+KfiVBDfc95T2K2Ude83J/9wVDlP7mvxTc
	KgjmiL39dj6+NaqzF2uBdu4rORJ3ZH3LkO8P6qbwu8Sy3O2cQ2wxet8q5+4eZCWCXtExiq1CuTh
	jCepJ47Oj+Oe3MhtLtQGoD8CpCi3bmRYGXxfOPPnfOXe03VAuC0R9ZeLyaZ15fMExuW+rg3Yz3u
	wQYXbfkC
X-Received: by 2002:a05:6512:108c:b0:59f:822b:b739 with SMTP id
 2adb3069b0e04-59f8abde44cmr5314261e87.4.1771856006894; Mon, 23 Feb 2026
 06:13:26 -0800 (PST)
MIME-Version: 1.0
References: <20260206-axiado-ax3000-add-emmc-host-driver-support-v3-0-ef83b09325be@axiado.com>
In-Reply-To: <20260206-axiado-ax3000-add-emmc-host-driver-support-v3-0-ef83b09325be@axiado.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 23 Feb 2026 15:12:50 +0100
X-Gm-Features: AaiRm52Jn7GtelEGkOZ9XPfUniIrpYcIWOFdBS3zcfWiZwJDEnJ15M24z8fGJdw
Message-ID: <CAPDyKFr-N=P1vKSHGtOr1surWApBUz630v2xsBD+5KkPWaPZbg@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Add Axiado AX3000 eMMC Host Controller Support
To: Tzu-Hao Wei <twei@axiado.com>
Cc: SriNavmani A <srinavmani@axiado.com>, Prasad Bolisetty <pbolisetty@axiado.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Michal Simek <michal.simek@amd.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, openbmc@lists.ozlabs.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_061329_132249_21473EB1 
X-CRM114-Status: GOOD (  16.54  )
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

On Fri, 6 Feb 2026 at 09:23, Tzu-Hao Wei <twei@axiado.com> wrote:
>
> Axiado AX3000 SoC eMMC controller is based on Arasan eMMC controller.
>
> This series includes:
> 1. Add bindings for AX3000 SoC eMMC controller
> 2. Add arasan sdhci support for eMMC in Axiado AX3000
>
> For platform device tree change, we will send a different series of
> patches.
>
> It has been verified on AX3000 platform.
>
> ---
> Changes in v3:
> - Enable SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN quirk
> - Remove dependencies in b4
> - Link to v2: https://lore.kernel.org/r/20260109-axiado-ax3000-add-emmc-host-driver-support-v2-0-934f1a61f7c0@axiado.com
>
> Changes in v2:
> - Keep host controller changes in this patchset
> - Use pdata instead of mix compatible string
> - Fix coding style
> - Link to v1: https://lore.kernel.org/r/20251222-axiado-ax3000-add-emmc-host-driver-support-v1-0-5457d0ebcdb4@axiado.com
>
> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
>
> ---
> SriNavmani A (2):
>       dt-bindings: mmc: arasan,sdhci: Add Axiado AX3000 SoC
>       mmc: sdhci-of-arasan: add support on Axiado AX3000 SoC
>
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml |  3 +++
>  drivers/mmc/host/sdhci-of-arasan.c                      | 15 +++++++++++++++
>  2 files changed, 18 insertions(+)
> ---
> base-commit: 63804fed149a6750ffd28610c5c1c98cce6bd377
> change-id: 20251222-axiado-ax3000-add-emmc-host-driver-support-2cc84a8f889a
>
> Best regards,
> --
> Tzu-Hao Wei <twei@axiado.com>
>

Applied for next, thanks!

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
