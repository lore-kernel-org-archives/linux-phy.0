Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43C5DC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 10:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o350CDpcAdJamCaPJVi86iOUNv/M1LkUFCPeLtYPJf0=; b=0FF5b+YoLO4q7+
	mUKz1X2aLzPmu/ammS6j+fT9gOFWEXqpjNmFzBKJnBwzror2QJJAWn6DCp9+S0fOOjmimCDmYRXyD
	6dh8vkzh/oSODQmveULaSjrwXl4fbXunh1TxToq4vv09nXCgTBmEFmtcyVtZh6WNdJ+LdUR9Sd97X
	jcZwMANYjmFisf+NsaMukVc8ofrKAvp4hjtPHc4j0Mi9ZnR7ZllsbwZcq7zPOuxKW+2/K5L0Udylh
	/zc/y4D835aE5ydH50HUuB9m7hLrpM3UzhfuBU0ULwi1Ys+S/TZTb7ZmgiVGnWGLVwVv/i+cSZivG
	VnBjVb+C0dSjY9UOUTBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqTX-002KET-Kr; Thu, 29 Sep 2022 10:09:03 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqTV-002KDR-8B
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 10:09:02 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-35393e71e1eso9383527b3.9
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 03:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=MXQESY1mHG8/5D/ME7ABQ5lBEKvt6gTe2x7xG90vFx8=;
        b=X2iymI2EEZhUIAYurukNRtZnYgro5MMmDG53TG8dBHxQ3R/Re3ZvfAt1sZpPhOTI3v
         hq7jJRQWZi6iCNANUCkgAwMZ8qSF3bYR2w1CBGOj/W1Ezgqxf06HKSV70s4X4jJoIHTh
         l0k8Yfk1J+MTZXJQPWiJxT5AHikQbNT9jk5s+oGpetr7gE+AFZ/tMQtA2CaTe9Tnggo4
         B/M8Ol7YYAR6ESa52OuByK7w4tm1eZFylKGDtf2k+Kn64MxHw9U5SwUwa9WNBH+wdrWt
         PvSemi1i1QbdPm/Bqe7K/C5/VRfPxVBdlIRADk8shXjcbi0NV29CK6ra/MtcgEzCAJim
         WZGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=MXQESY1mHG8/5D/ME7ABQ5lBEKvt6gTe2x7xG90vFx8=;
        b=DsOQiFy2nnMNgvdr76fAi/wAgbM1O8zrGg6W9sMRseJkFr9A8K6vsd/ycoGo4nRYoH
         2iqKWea4F0SxhUmlm27OhOYkDtL1p2kTH7wPqrYX2/qB9UliRMekMeRXQjTFPUA+5kCP
         P9S/tASrOeH5Tl6AjHN2hcCmJ2TSWmeMzRkkvqAFQW/Mb0DCfodUpDT4Q1ZmqC7yT9hY
         mDoCfckBD4Q05i13jme8+jRqLpC6b4YfYx22a2EL0aLdib6xxVvyPNC8SIW/9fu7+j3L
         nEVzb4+E/OEqDmQFR5UpKQ3v0DLbEIGihmrv2y45DSS4G+JEDcn9ZaqCwMN5kf/b5DqG
         BXag==
X-Gm-Message-State: ACrzQf3tACvQvKrnaJPkg6g2F0tEpeKhXo9N0thIGVVrDsKf6Ne07t/d
	XIvN6i1GmZKUG2ZE9Z+XceHA7mQMD9JzuRpMEoDitA==
X-Google-Smtp-Source: AMsMyM7s37ylpy85RJLyzF4hNLN92DAViFRfIK0/3RnisNb3gJYZ94sOIWj8I9K0VQ4WODCIH9aXlyRdcfwv1rMknns=
X-Received: by 2002:a0d:f685:0:b0:343:bd3d:80b2 with SMTP id
 g127-20020a0df685000000b00343bd3d80b2mr2221076ywf.485.1664446140144; Thu, 29
 Sep 2022 03:09:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220929092916.23068-1-johan+linaro@kernel.org> <20220929092916.23068-8-johan+linaro@kernel.org>
In-Reply-To: <20220929092916.23068-8-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Sep 2022 13:08:49 +0300
Message-ID: <CAA8EJpr9_1V8nb_VBn9cBsb1VvVpUh=Necv0ZK3f9t+X_Lbs1A@mail.gmail.com>
Subject: Re: [PATCH v2 07/11] phy: qcom-qmp-combo: clean up power-down handling
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_030901_303618_11F83AF7 
X-CRM114-Status: UNSURE (   8.95  )
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
> Always define the POWER_DOWN_CONTROL register instead of falling back to
> the v2 (and v3) offset during power on and power off.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 19 +++++--------------
>  1 file changed, 5 insertions(+), 14 deletions(-)



--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
