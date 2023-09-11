Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FCDDCA0EC6
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 21:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5cQOKoLUNV9++8h0tjNA+QXK5z6wsvz5Cd0OUmutcY=; b=3tA7kVn2eOQe4k
	Yxv/cRmviZ2k23d4ZJG1WhTzUMyW4I7DwNV2dSR6oZP2s7TWOf2jnwL9mtXdYtpCAVa4sIwCICHSe
	+3Rai+IPL9rGmxUTMYFjpMoaFjf51/r6yRHs/7JcV6DZ+gxBLs0O/LCNGtOKV80f+dryfBgTnfJnr
	Dd/bEwmesotmOzmZMfNG+JZo2qw1qgQfRgs3T+M0mqrQhU4BJSHM5fKpSUAE9vETjI2kN96SpWdEn
	uF7BkukwqT5HMWt+JUiWBdcbbzqEPQW9kQHvR1WIKOf+2ds1S9Xggahpru5HF7L7WSGEZOfben2AN
	5nyS1iwxkr/CHGIOb0Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfoHj-001MAS-03;
	Mon, 11 Sep 2023 21:17:31 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfoHf-001M9Q-1E
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 21:17:29 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-d7bae413275so8379232276.0
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 14:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694467044; x=1695071844; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7Nd1n5uZnyvH2cXc5fW5ibMNh8lm1oC5KEya9dkyOck=;
        b=H8PkyYcGUAygX5HZio1YSrcVJgA6WyjZ98T15s81pq7a7tAPrI3ofg6lz/5dtVc/py
         NR6BIeX1/WeNOoOp49gwBGN/sIz5mmQTGG7hx9Xc0xpFMA6j1MYo00pnueqejjotG2we
         cq/RKyBUb/gaW4HBn58xcwvzgy0xBG/0ZN/DhUeXp/HQ4ddLGV6d33YCvbu7bHrEAZKD
         T9guW9jhUko39cTdioBqO2hPeEydhFnJhBK212wsKoJD0qqX+hKVA6/in94cz8ZMQHrn
         bl2PEsmncsjtpGfvkdOobnUI4hXktEYwghsHGmUL5QFbomHRNGBHg32z5uC4ApX+6acA
         K6ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694467044; x=1695071844;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Nd1n5uZnyvH2cXc5fW5ibMNh8lm1oC5KEya9dkyOck=;
        b=IPU/yyCQnsgU70V88FMDDG9PTo7bVPOg9pdOXZTRqR93837pKBC8HlzcDGPkgSNOqj
         has0uvFCas6pny6vtIaRXFA0EppJnK3c8AN7bU1vvQVSqFtSAeoLITBKJjqCzkDzfmjB
         /ukQQEjHThroBFXMAVhsU3N6MEi+g1EHz80priTUpey3d/cAGGxZzlq+6gbe/vgd83Vr
         HtuK15rtpBKF9star+yAxbzNgZj1xOna2+o81AIZ50FqUyZjh7KWzDvW7qBrBYl/AkRZ
         eJK7ZF4Cyl9nWvEEuzwwPyMbFXNm1gC8w/FARC/k/VgRVGgk3Yjygz6z6betlyjAfjkl
         d34Q==
X-Gm-Message-State: AOJu0Yw4ElRZtRojj+4IZguV8sY+9LVPRvMPMZTVVbmfAsM33Xrxd2i/
	0v/oZ+fggbmakb2XQ0OqapGipf5MR+hmOA5rRUGQ0A==
X-Google-Smtp-Source: AGHT+IHStPuea7IlSMoGtQSuu/DU7pn6DCEbsgI1PwGKI/e9QUw2BnbXlkhMuM5pYBqeKmZxklXaOCovM7t1xOBaOe0=
X-Received: by 2002:a05:6902:2c3:b0:d1c:876d:2c7d with SMTP id
 w3-20020a05690202c300b00d1c876d2c7dmr986749ybh.13.1694467044218; Mon, 11 Sep
 2023 14:17:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230911203842.778411-1-dmitry.baryshkov@linaro.org>
 <20230911203842.778411-4-dmitry.baryshkov@linaro.org> <2e78c237-d321-4b85-96d5-0568f1a46601@linaro.org>
In-Reply-To: <2e78c237-d321-4b85-96d5-0568f1a46601@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 12 Sep 2023 00:17:12 +0300
Message-ID: <CAA8EJpqNbykWGEGOKMDHK3OehV5ezsA8T4HcX8kadefBdSmUkg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] phy: qcom-qmp-combo: use v6 registers in v6 regs layout
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_141727_423382_3E22FB00 
X-CRM114-Status: UNSURE (   9.86  )
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

On Mon, 11 Sept 2023 at 23:42, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 11.09.2023 22:38, Dmitry Baryshkov wrote:
> > Make sure that we use only v6 registers in qmp_v6_usb3phy_regs_layout.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> [...]
>
> >  /* Only for QMP V6 PHY - USB3 have different offsets than V5 */
> This comment becomes invalid

This actually rises the question, why was it called v6 in the first place?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
