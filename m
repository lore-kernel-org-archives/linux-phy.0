Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0103AECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtvyrc5pnjq3zi3my8wqHndZ064ePlrGQt85Ue9ajJw=; b=USO9HnbLa95k3i
	ZBJ36KFBD7oDuh3nkVHCaLkOkf7z4SmRao1tk9QDDU//Wr8YKcHmQtDEV+0b75kzTqT6yD/0FcJpC
	XeEPe1CgLbdbHDzCYnAY9CDhIOuKvbnkpO3UcZPV135nDfzFUZgOEuhZVdcNIXf7reMM6JguOflu9
	k6aAfRcQuXfuxjUFEmFTHPToxMTxMyFTL+uB3g2LXO0KvU3PsYXV65/yxkOLchq2nh8PIZyDB1BsD
	wWXeJXzj1Y0Xll68k0xLKds37aVc8RdZwqe5dzGmmKq++jtNG48Zfp5HkDeHFak410+poeyEKazWU
	DjKzkYuat+1h/k5Q6uzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZwl-00EsrZ-F6; Fri, 09 Sep 2022 09:05:11 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZwi-00Espa-S8
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:05:10 +0000
Received: by mail-yb1-xb31.google.com with SMTP id b136so1753601yba.2
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=e9oyM6c9eO+oX1i0ikmglldoQMouIxTI5tr1NuI9GT8=;
        b=da8jwOMfsx5H05oRncihV5aFvyzpldWnjk6VRzdiJdjoiXpY+fCe9JssN6Nz9r+L+j
         l9E4JVcp5pgWrIuipD6Pi6wcKO+xD+VxeNwfuFt6elE6UHvSev+WLO0vDrW/tLIznTIL
         pDhzZzNph135gYHY2wx3yRTUBfbkz92m+AjchB4HbzuOoSIKq8dgKb1WAhflDbgHEbXY
         ftwjMPa5bH9X96v79lvW7Je1K0OWgSPjvuOcjVadzfvMMakdATI1M68Gg6PzbT1hBWxD
         jvBtOUUvWy5eJT0Fdxqw789DmY2q4uFclRA5L54De5cA0Z1HPHPMcwjpwr5m28TWxGz6
         s6Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=e9oyM6c9eO+oX1i0ikmglldoQMouIxTI5tr1NuI9GT8=;
        b=XfBvtyUARvGOSU/d2vRGbY1k0BgPpCRrX3NLGh6NpWjk1o+QGlvoq6hmP6V2RTsItq
         dfqifw/7t3SC9saV6neC7H+5C/rmmL21qg+edVgmvUkUIgtyNqdPhXB4bOlFrueWtVEz
         BvrIfxlKIhusDxsVJTe4XEdtyhAnJm7oF8DXCAgp4Ab0RntomSk74HwKnrExf24NdFnU
         2mW6beahX0hEcQGqa+GVn/Y7FRr2GaovtzAp3eGFy9MwM8U7WS6aGKsBNnIHXpWyFXSr
         Dr8WZAq8T+JbxqM13zTD0KVRSz3E/HT4S+RlmSaa/8Gw2/BHcp/JRGAnPPg8dgtfNx3w
         V0Kg==
X-Gm-Message-State: ACgBeo0vpL/5ukEig0SHFpllUk7+c9Jy9YIm9CfxA7G+facS6s5T22qZ
	HXfrFe2Db5mYO92CHnf0A1V9I19c150pS/mMaXplxQ==
X-Google-Smtp-Source: AA6agR60pT17TAOcus3ljp/+P1MMns0B4aTuhcTv8h8i4eJsYnX9f8UfuOksTxp7JfFCNnxnPWwh0eKuRzEoeHEZjnk=
X-Received: by 2002:a25:5c3:0:b0:6a9:90fb:c9e6 with SMTP id
 186-20020a2505c3000000b006a990fbc9e6mr10891297ybf.152.1662714304890; Fri, 09
 Sep 2022 02:05:04 -0700 (PDT)
MIME-Version: 1.0
References: <1662713084-8106-1-git-send-email-quic_krichai@quicinc.com> <1662713084-8106-4-git-send-email-quic_krichai@quicinc.com>
In-Reply-To: <1662713084-8106-4-git-send-email-quic_krichai@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 9 Sep 2022 12:04:53 +0300
Message-ID: <CAA8EJppgaAuEDU44ePOt+ZWK0_rNsXHnE3WOEc9F-n=VE=3aVQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/5] phy: core: Add support for phy power down & power up
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: helgaas@kernel.org, linux-pci@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, mka@chromium.org, 
	quic_vbadigan@quicinc.com, quic_hemantk@quicinc.com, 
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com, quic_ramkri@quicinc.com, 
	manivannan.sadhasivam@linaro.org, swboyd@chromium.org, 
	Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_020508_934119_0BF7D2A5 
X-CRM114-Status: GOOD (  18.44  )
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

On Fri, 9 Sept 2022 at 11:45, Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> Introducing phy power down/up callbacks for allowing to park the
> link-state in L1ss without holding any PCIe resources during
> system suspend.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/phy/phy-core.c  | 30 ++++++++++++++++++++++++++++++
>  include/linux/phy/phy.h | 20 ++++++++++++++++++++
>  2 files changed, 50 insertions(+)
>
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index d93ddf1..1b0b757 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -441,6 +441,36 @@ int phy_set_speed(struct phy *phy, int speed)
>  }
>  EXPORT_SYMBOL_GPL(phy_set_speed);
>
> +int phy_power_down(struct phy *phy)
> +{
> +       int ret;
> +
> +       if (!phy || !phy->ops->power_down)
> +               return 0;
> +
> +       mutex_lock(&phy->mutex);
> +       ret = phy->ops->power_down(phy);
> +       mutex_unlock(&phy->mutex);
> +
> +       return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_power_down);
> +
> +int phy_power_up(struct phy *phy)
> +{
> +       int ret;
> +
> +       if (!phy || !phy->ops->power_up)
> +               return 0;
> +
> +       mutex_lock(&phy->mutex);
> +       ret = phy->ops->power_up(phy);
> +       mutex_unlock(&phy->mutex);
> +
> +       return ret;
> +}

As it can be seen from the phy_power_off(), the PHY can be a shared
resource, with the power_count counting the number of users that
requested the PHY to be powered up. By introducing suc calls you break
directly into this by allowing a single user to power down the PHY, no
matter how many other users have requested the PHY to stay alive.

> +EXPORT_SYMBOL_GPL(phy_power_up);
> +
>  int phy_reset(struct phy *phy)
>  {
>         int ret;
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index b141375..3a45f4d 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -76,6 +76,8 @@ union phy_configure_opts {
>   * @set_mode: set the mode of the phy
>   * @set_media: set the media type of the phy (optional)
>   * @set_speed: set the speed of the phy (optional)
> + * @power_down: parking the phy in power down state
> + * @power_up: pulling back the phy from power down
>   * @reset: resetting the phy
>   * @calibrate: calibrate the phy
>   * @release: ops to be performed while the consumer relinquishes the PHY
> @@ -89,6 +91,8 @@ struct phy_ops {
>         int     (*set_mode)(struct phy *phy, enum phy_mode mode, int submode);
>         int     (*set_media)(struct phy *phy, enum phy_media media);
>         int     (*set_speed)(struct phy *phy, int speed);
> +       int     (*power_down)(struct phy *phy);
> +       int     (*power_up)(struct phy *phy);
>
>         /**
>          * @configure:
> @@ -226,6 +230,8 @@ int phy_init(struct phy *phy);
>  int phy_exit(struct phy *phy);
>  int phy_power_on(struct phy *phy);
>  int phy_power_off(struct phy *phy);
> +int phy_power_down(struct phy *phy);
> +int phy_power_up(struct phy *phy);
>  int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode);
>  #define phy_set_mode(phy, mode) \
>         phy_set_mode_ext(phy, mode, 0)
> @@ -349,6 +355,20 @@ static inline int phy_power_off(struct phy *phy)
>         return -ENOSYS;
>  }
>
> +static inline int phy_power_down(struct phy *phy)
> +{
> +       if (!phy)
> +               return 0;
> +       return -ENOSYS;
> +}
> +
> +static inline int phy_power_up(struct phy *phy)
> +{
> +       if (!phy)
> +               return 0;
> +       return -ENOSYS;
> +}
> +
>  static inline int phy_set_mode_ext(struct phy *phy, enum phy_mode mode,
>                                    int submode)
>  {
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
