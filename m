Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EDC5CCA473
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 20:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhW8gd9voTOJfBJqyycxAbyfxR0MOekQ9vB5XtxQkak=; b=oJswcyPMOEUnOV
	LmDJr6lXNrZC2HPGV1TLqPMU6TVp86peyNeQaQdKbM0kiyHKmt0X3XYB7kkjBxOFUGmaPx3S+JL0G
	lFFDd2RRPJqvilWBGVdICqxiZqyLbS//O8ZaDXpcsMPfARtCcUtXFttLyBS4AUteCwj0QGaQ55mgk
	TidANFFfMEnKtIDOdsuKfM6M8xOGdjrFr31wegP25J4xaiiiuykQaRxxl/AA0qGp3/RwTJlLmg2Fw
	VD5s+/iaa39gUoO6Uj5gKwry5G8TDB/quOhWbfWlOWdqIjfbN4cST415GHKGLxTmamWPJEf42a8PU
	OfRD6qo++F9dwhviuQOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3kIe-0072bO-Hf; Tue, 21 Jun 2022 20:16:36 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3kIc-0072aH-Es
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 20:16:35 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 89so22154811qvc.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 13:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7d0mbHgm/3CHKa8+yNo/eKtCHXnWmc1BFBITjPRRp8E=;
        b=t+wXwST+5EJh5elrY/WUgT6GlZnU/umVv8mn3vwcWseSOZbCzRRFDq39OIRnxoV4yr
         GFKsraeHF+WItzZTrlOQTK0dmPObFNfuMJ8ndpzIlRBHaEFX0f/4g3ldeVedN50Pm9h3
         WtxKPkSW4C0LVS96CqYmrGI1FVWCdpJK8Ra2wEuLVr2GYt8ANFBqAjATpCIotUx+ytYP
         5GrdwU8FXWue73mB44qJb3XDO6LNp3lKrQSrXTHAkPbMJdqVTmGQpZmUyS5TX3dGbEYI
         Twx/K3ecPzjdTnvbWBO1W12fKFbD2T3nK7w+J5e46ZPntnLINaPgIN8N5HOzSh+hG+g1
         dClw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7d0mbHgm/3CHKa8+yNo/eKtCHXnWmc1BFBITjPRRp8E=;
        b=lYsGLfufrjf6/JD/Z8WXSTblZ7IOchasKIoIFwiYb0fuzNg4TjnLPQqtYrtdQQ6a3E
         DviFYdtHaFnnWOwaSZ9Kd8ns3wWq0iCZaGd+Q7b6S8ZU/MgYRpBeUI9CGZn7NH3wcHwq
         CFiciABwJKjylp8VNsHWMDzZ2m9qoEKsQyxAJuhlXaxhu6PC2rryGvlFxtmvECn5m3UN
         C6wOUO8IntVTQwflrbL4VfvIJl7cV/RJ04UTF1JlX9KALkOBA7Bie4cu0guI+xFLlyEc
         KukOkQVhNKPXonn2ZKd3NtGtMZ94Gw9Y8SXXpuzdSgidD+W6Y8lfmwJo8+VJv8Ep0XMF
         Fdtw==
X-Gm-Message-State: AJIora+w5A+wE6niyHA34sUBwgBMcQXiCuUwROeSkaGrnK3vZ+rOa/i5
	edWHDNchbXc/f/QF7P3Qu98N87IN9bcJTLXowQleyw==
X-Google-Smtp-Source: AGRyM1u7re2hm6js0oXZPsDS+sYWHON14Tm9/zGOd8X3vNsZpjkLMZyW3dwzRVhTuBHWkJYUUfWiRXOQDWlNNsoS+wU=
X-Received: by 2002:a05:622a:34a:b0:304:f25a:ecf0 with SMTP id
 r10-20020a05622a034a00b00304f25aecf0mr17285qtw.62.1655842592542; Tue, 21 Jun
 2022 13:16:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220621195512.1760362-1-robimarko@gmail.com>
In-Reply-To: <20220621195512.1760362-1-robimarko@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Jun 2022 23:16:21 +0300
Message-ID: <CAA8EJprka5FfOeBkrvOHDSf=d8stmQNpgSUfi3BmTxSiG0Rc_w@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] phy: qcom-qmp-pcie: make pipe clock rate configurable
To: Robert Marko <robimarko@gmail.com>
Cc: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com, 
	vkoul@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_131634_537629_FD6965C7 
X-CRM114-Status: GOOD (  10.41  )
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

On Tue, 21 Jun 2022 at 22:55, Robert Marko <robimarko@gmail.com> wrote:
>
> IPQ8074 Gen3 PCIe PHY uses 250MHz as the pipe clock rate instead of 125MHz
> like every other PCIe QMP PHY does, so make it configurable as part of the
> qmp_phy_cfg.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
> Changes in v4:
> * Set 125MHz as the default if not set in qmp_phy_cfg
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
