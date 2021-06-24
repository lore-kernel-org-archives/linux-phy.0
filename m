Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD53EC49EA7
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 02:48:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 843F9613CF
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 02:48:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 843F9613CF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shZ7a5xBatbx2VxEQe2YXW9jc8/px9Etfs3n/9k/FM0=; b=ak6OkCV4IRVaRp
	AtzxRMM+o3V9+pLvcqRbttpLirxLOm4kzgX0LPrdSIa7YjBMt1Z1GyMJ0Hni0OobELcXJ/LOgvgpC
	171mGO1bZpuKEUPnuWr7K12nHtOfAaIOr5YwLMfwUjXaz/cg2hg+c7ch5q78Rqjb6ZTxU7QdSLqF9
	pKwVACnMKf2jm7SO/e47xQx+2CshG3ELPLshjUdPznhxmw1erybYYQ89mr9ps6ykWt4olYR2jCDka
	+7CBGY0NiIlwStN0Vzh3LPtTyOgx4RSIkUGKHh8hrIwqPaxPu5SRDLPVAnVZkDXg3RWGPzQowG0J1
	OcCDbU+u7ExSzalYom3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwFQ8-00CTWb-0Z; Thu, 24 Jun 2021 02:48:48 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwFQ5-00CTVU-Ew; Thu, 24 Jun 2021 02:48:46 +0000
Received: by mail-lf1-x12b.google.com with SMTP id j2so7570331lfg.9;
 Wed, 23 Jun 2021 19:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5gXOkfW5QLdmxd3Wj2w+c9EViV9eI5MsnrUKf2z8FYs=;
 b=RUUtNGr5bfoevPXn+E3jhYX17ZhytUijcdcizuV5g4jQ4csAcRk/aeza4+qR2lvWm2
 nApl7i4P87KW/V3VmdWmT5rnNucE6KyVawrkZY/mYM6BrTB22om8kojGB0aoqBrGivyD
 ablP9MZHGlP/9wsmaXfsHq6WuEEMnrJMmmoJHij/4TS+w5DTgKyVWjOVbirOyDH7zKC4
 CW0N7U316rWwH6l4ydjxnV6Tes4O/Wgx6zcPcGySg2HNEfV5tFcYL5ymVYDAjIkY8+fZ
 mPEekWg9dqIadP4zouGwK4hPDmzZAQ0OO5uNK8m4HyR0np44kKJi6eE+jR92wFXrpABb
 UElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5gXOkfW5QLdmxd3Wj2w+c9EViV9eI5MsnrUKf2z8FYs=;
 b=OihQYqRSFmpKDxnZQN5aqTNR8MsPA9qnXS+UbkWgOYjUkT0NA8p7T0+mQsYTaFinii
 Z0JMgcjtwpL9Lydaeiz4PAglgmdtqFzK5/uBhcHV1OAgHfvxLGRkvT4gwB2xBRESnhTb
 ofc5FOtFjxzwyv0iqD2Q68mCvYQrwU+ptbt53aokrAAiKO4I8iBTOeoVKXWIgHZLhqkJ
 8eDSEZD1D5u3YUKZWhUNBt+iXDu2EJ8K1UP15/ZEqTN+Tu1+2rNN/u3Ms89Jj7LSjAUz
 UpD9uuBM8HylZ5oHcQwS9++X4yI8HybpE/hq80Qsqo/YMxpqBisWYj+fHHSFbYW3qKTZ
 6vaA==
X-Gm-Message-State: AOAM532IRaRQya/QA+VXMBUIWPdLVdbN+Tf3ZZEFhT/8DWNv/e0b0H00
 m4u2AdKqJvrq7amxL5uLcAhVwJHb9fitunjflCk=
X-Google-Smtp-Source: ABdhPJx3C4pME09Z+lCozESHkQ/9SDrguEu+2in3VcwEc05cxMVQ7T7rVyGEQn/CiFUVy/CuhM/rCWbxw+m+VilD2fQ=
X-Received: by 2002:a05:6512:3b24:: with SMTP id
 f36mr1930656lfv.443.1624502923336; 
 Wed, 23 Jun 2021 19:48:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
In-Reply-To: <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 23 Jun 2021 23:48:32 -0300
Message-ID: <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Jagan Teki <jagan@amarulasolutions.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>, 
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>, 
 Neil Armstrong <narmstrong@baylibre.com>, 
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Tomasz Figa <t.figa@samsung.com>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Andrzej Hajda <a.hajda@samsung.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>, 
 Milco Pratesi <milco.pratesi@engicam.com>,
 Anthony Brandon <anthony@amarulasolutions.com>, 
 linux-phy@lists.infradead.org, Fancy Fang <chen.fang@nxp.com>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_194845_564558_F32D0511 
X-CRM114-Status: UNSURE (   8.21  )
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

Hi Jagan/Laurent,

On Wed, Jun 23, 2021 at 7:23 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:

> Looking at the register set, it seems to match the Exynos 5433,
> supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
> that driver instead of adding a new one for the same IP core ?

Yes. there was an attempt from Michael in this direction:
https://patchwork.kernel.org/project/dri-devel/cover/20200911135413.3654800-1-m.tretter@pengutronix.de/

Cheers

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
