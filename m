Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9530C07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 05:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xychajQSmT++Id/gChMzi6Xd6rpU5IhaG5KmyO4b//s=; b=yHD7Yc21yw/NQG
	e/eB7kY5DP4WUHLnD8Mo3HO/9w6ouffmyoaCSV7fexlX1Xn3gcfJaHEZOylVi0XvqfP8JZU/Q7T/a
	N+RoQE93ZSgpmOq+O0Jx1iJoy6ikN9Hbub0EK1cQG/krEZrSPsy1KicIqbWFUNmJAWCZoo4eRpMeU
	NPzJ0EeAAVjmOA6QsD8JSrodrIzvTD7L3lrjHaCCQzxaTjiuyDW5FvaKNuL6JiMWfK6QDBv0Ly19f
	D5lpuhDLr3MzPuFzU68TDV5ld07ECsNhaXVypZErPfZz9dHZjjBdeWozoDUdLXAiWhrwhsbEndGyF
	vrXS7CtwimUsLWrEilqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocgNK-001ued-4L; Mon, 26 Sep 2022 05:09:50 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocgN8-001uZ7-HX
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 05:09:40 +0000
Received: by mail-ej1-x636.google.com with SMTP id hy2so11560932ejc.8
        for <linux-phy@lists.infradead.org>; Sun, 25 Sep 2022 22:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=vrb/QOBCOlwnil4xOu2RseRmD1KSKb1sCTEzWBoOr7A=;
        b=CjyMr8K5Wev1LqZH4hcWNR4hCa7hpv03fz6sO4CQoigIqQfzbByI+PeL62qb6OS5f6
         B6/UPRBG20hOIgzFCctOTxKGY7MWWmlbPU/fK1U2S6LaPHoAmR3Xm7v0Rx0GkuSc2vyE
         VrIRqSRv6Ih1HnvvylK+fBM5Zj+XYDUmwevzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=vrb/QOBCOlwnil4xOu2RseRmD1KSKb1sCTEzWBoOr7A=;
        b=fiCa6DeZAZErgYCTdPMufb5+AJajf42YdRwVukICTEup0VO/9bqkA3Dx1n6pVFc8Ei
         bGYwBuVQQ6OcmWZXrLAhRsj2X414S6DSNf0Kcy+wkTy9gnx/lgkxWLHEALj/D0J0ET9m
         yK37f2NQEjGlBp6So12WRWn3RiSk/lyIACQCJ8r3bBp53Ic6YUEeftiKVgPM3hoiWkuG
         sNMSV6oNTE5S6UX/hDJAue8q6N886HFAYrGCwP5RbjJkOAVCHNhQmbyKV08ZdH6c+ZX6
         6/dvPcnpI8lzc1oD7HaLJ674S28YbYp1PowjANRVGoVVwtkEflfpUautdzHc83TJKBKT
         nJ/A==
X-Gm-Message-State: ACrzQf1cU6OjX5MXvrNLLt/NtPrqEwSSKwk/E4fG+cUMq7fKGXDsRHkv
	pykb3ued9jX2PdfosGA31vH5wEopHoOutkeWMScwBA==
X-Google-Smtp-Source: AMsMyM7cfU1/JdOhkGvuQyhuRRKePnKXOOE9bin+YefFjefQP/PV7uR2GeazW9Tvxl2PgbNtWjbFZGX0+Elzhi37gGQ=
X-Received: by 2002:a17:906:8455:b0:773:c45b:d970 with SMTP id
 e21-20020a170906845500b00773c45bd970mr16504544ejy.46.1664168976587; Sun, 25
 Sep 2022 22:09:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-2-4844816c9808@baylibre.com>
In-Reply-To: <20220919-v1-2-4844816c9808@baylibre.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 26 Sep 2022 13:09:24 +0800
Message-ID: <CAGXv+5GJrjxG0pEGqseEacz_KFCRhWJSiLoiwuwwUTaSeO0RBg@mail.gmail.com>
Subject: Re: [PATCH v1 02/17] clk: mediatek: add VDOSYS1 clock
To: Guillaume Ranquet <granquet@baylibre.com>
Cc: Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>, 
	Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
	Jitao shi <jitao.shi@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, Pablo Sun <pablo.sun@mediatek.com>, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Mattijs Korpershoek <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_220938_667155_730593EF 
X-CRM114-Status: UNSURE (   9.69  )
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

On Tue, Sep 20, 2022 at 12:59 AM Guillaume Ranquet
<granquet@baylibre.com> wrote:
>
> From: Pablo Sun <pablo.sun@mediatek.com>
>
> Add the clock gate definition for the DPI1 hardware
> in VDOSYS1.
>
> The parent clock "hdmi_txpll" is already defined in
> `mt8195.dtsi`.
>
> Signed-off-by: Pablo Sun <pablo.sun@mediatek.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
