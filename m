Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5C2BC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 10:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8E0KghgC0LCtjDCwx+rSRiEIsQMHyMWqgmU1dJu1HNg=; b=tbDMtPpvwXxIm+
	pZmDa/+NWrja1JOVKbn3WCf5xz4XI8qzEvBiU/0pzzk5CQCOq46nqEw2PgstrMMDFNCjohpw7AM26
	DaxuKs8as47a99Edqc1S51rmqYIUZEW94BxUsoDwL14LvHZlklu0j+8W5smaeKqlrxDrjkRy21RPa
	JaJ1mRDo0g8XN7oWpoVHDv2oUrJ2H/FF5vYHg018fc6fRK9XEJSte392xpp/fYDHB500GmzG5bv21
	l8V/TJBuRuQTF6JsDAYOTjJQ3HLZ1qWkCEgf9f+fEclafL1TKjsU9SGtd3tCLmoqk8iK4H5KRHUfk
	7sWlGn2iZZJBSh50FIMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqSu-002K5k-38; Thu, 29 Sep 2022 10:08:24 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqSq-002K4H-Gc
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 10:08:23 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 135so935113ybl.9
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 03:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=ydGq/fPOdVjN/NSWHeJ2DxbY7fBp6o6MA/HFKMNqxgU=;
        b=AHHAs497vvbguPlXv7XHKDPBy/Di8mERVLRtJr6se1OXYNV4By1TAyWPXLp5A7mMel
         MpClPx+X43T1zrGG5JoQcPUEEHuA16XKqkCqtmfuEknM7GNANPQmBkdkshLFTUOMfkOF
         giogsSMyQmWV7j43RqgZ9wQXRqU46KN2hzxq0qUBNj9D2vwR+jlUwc/+s+Hf/HeNkhVo
         jQmQUY1xoYJqoMrBbMjHxczrDmORvqvUS/D8gPiWhfBH0nYz9l5KTPdqRYm+mhSysyz/
         5ANjBDd89CAkmP1titLwj6cudheqAQ+bBwppe7JkQMGweSqOjA2i4h60cXG/yqj8Jwcy
         QoqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ydGq/fPOdVjN/NSWHeJ2DxbY7fBp6o6MA/HFKMNqxgU=;
        b=CQarapOBhr6Od5fzUDtLoHnmOmrgYqpJn+jl0tO2UPqByngw5E2Nyz+lSjnEnzbQOo
         PPhbUswCqyI/uh8P1w6CvOKtanTJnRJRFIZUTuVJAiPOSyF7u57vhbgYcepFZ6pL/OQI
         ltGuyYBAiSTnDc+Md2n+hVV/RRTTtwLKIXcXHlWwJ5dpatuWN7ty8zjB5zGo6/1zEql8
         fnCD0h118GYhCZ4lV6iYodn/8RyTi+VAoyR9T/FJPDUwtQa+Ldpm2eBNAmBTFut6U2eP
         jZM3ggJ4PmO29Uwc5rFFYCcj1baEa6ooty5MHXDnxmpXjIUVn8suQvJnaLXqajLcQOaE
         wOyw==
X-Gm-Message-State: ACrzQf0wag5dZDA35VZU1iKyC6GzPUP8mVusghPoFXNeISsTSm7uWoke
	CYFddu6JTC/oUSad8G/fucvz+fXgkPc4BA2UILxHBw==
X-Google-Smtp-Source: AMsMyM7ieyTxTTA6uPOVN42Yh8JamyiN03of0aSAkU5rfnFNvnB/25KQmZu9RYp8Jp/ffCRaoA5jEKsedRKVz9CMqvU=
X-Received: by 2002:a05:6902:102f:b0:6b4:7cba:b77a with SMTP id
 x15-20020a056902102f00b006b47cbab77amr2433124ybt.516.1664446099269; Thu, 29
 Sep 2022 03:08:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220929092916.23068-1-johan+linaro@kernel.org> <20220929092916.23068-11-johan+linaro@kernel.org>
In-Reply-To: <20220929092916.23068-11-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Sep 2022 13:08:08 +0300
Message-ID: <CAA8EJpqirdWwWp7HJw8B3Wpnxzt9-rY+NmoKHPsRQ20LMscWZg@mail.gmail.com>
Subject: Re: [PATCH v2 10/11] phy: qcom-qmp-pcie: clean up clock lists
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_030820_565204_8E07C3F2 
X-CRM114-Status: UNSURE (   8.35  )
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

On Thu, 29 Sept 2022 at 12:29, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> Keep the clock lists together and sorted by symbol name.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
