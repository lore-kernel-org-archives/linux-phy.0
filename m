Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0680DC48BF6
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 15:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Wlwy1JkX2uacCBHShK/dpx7HuJlKTtitAN2YnCc+Us=; b=nUG4eGRA7DyXk1
	kiyDW9ZF2/vnkDJs+MAVtqtt/Q3j/HjxRGjA07d3/Ad7/3JpKV2W2yZAEJszexXFdLnbr+QuNVYus
	+KZipf0zZe1MffiL4qkSMhfh4s369ADYXiQvyyANgsPazkKxC54lXRk5wX4nnfPzdfXIgboiZTQEt
	Gu85qABppIQ4egROs+JdZByb/cpUmp0GPa3asMYQqZhcUug7X1jY7ySA+N7ciicQZantIUompdl+E
	G6PszT4IYVVZoPU4e3iHKkpyMYZU2oA9ylR2rqAd5lWJUJExDVjv4xKUVf1HPxJ5PXvmNa3sy31kc
	o+oCAyTr2AOYvAbN3u7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfiHd-0000000E2wL-2rse;
	Thu, 29 Feb 2024 15:25:17 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfiHb-0000000E2vZ-0QPH
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 15:25:16 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso887564276.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Feb 2024 07:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709220313; x=1709825113; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uzMWoKlDMMLS8CYQyDkEOnyEHux+MlN8O+qm0UOvqjE=;
        b=RSuzVZ7hzsTRM5yveyrS3wDmI1UayQtt6ns7ktqfTScqiL1NNFpfZn/EBBL8OjVF+v
         +OMvEmZexWehrvI9srhPdwG115p432s47HQYsPsIZOYrA92wP6SaUUBwdEgb68o9gn++
         6tnShAu0vbO1aCjHO+k6yYw5VocjVy7Ql4C+PBtcJ45e1AftmIQQxlj6smT9tH3Ok+V+
         W2Au/caNeoVhZsxSczY1m3tPQDgyCZcYCU7Oo5Ev8DsLc0Wv6Fv5pKDubWAwulWUsRQE
         90ZrijGSBZM6HL6WbYs6Yqr+VTIyOTFAJBuGXIYL+QrocrVW8TsDTHqIAFidehtovF2s
         EZDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709220313; x=1709825113;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uzMWoKlDMMLS8CYQyDkEOnyEHux+MlN8O+qm0UOvqjE=;
        b=ir9Jp3GCjJrZLKyLUYotoFzuBN+Q1gkGM4Tz0LHp30Z3g12VFYiqLo1LBkIVXT9/q4
         Ow+30xAWV+rUI070xmrlEI98/EtB07eESWdVQcMOtIleWdbs35hbVc241rddZhpFfCdA
         dNvxSb8nRAv0oa5hHsYLITNWc0WudCljfnEgrgG+HvG8ZxqkLpcKdVfjPPpM6bn3tbFk
         URIbxFOeF1cf4Nuc3ptfeKZnNoSzVZhMenuPy4H4/uCgmD7sy90782tSXyp/2OeVrYD1
         kCpDQaiRVtMhIZt+k17kaC+uvauMEeL4REBooGAXe1ysFtLF2iegu3TAkQclWwr3IytE
         F/jw==
X-Forwarded-Encrypted: i=1; AJvYcCXL/rc+WfY3aWmmVRdgNyh9N17760KzCjwMT9y0d02rFFKqZ41ZtUvI41lBncGuJaTOcplTBCLuTrap1Bh9QgL0Vrtp9eB3snfIQiM6bg==
X-Gm-Message-State: AOJu0YzxBnVlRKt9u/TgdmoJ0db0+LaKuXYtcue2zCyYUaMWDSqgayMI
	LbsTN3tvcdzh3/tbBhKWqoT/YSu4q9u8wzAVyficP69HlkVwv97Hj8Ox+6GFKB7mDMAWYX9wJJe
	7ClGG9hsVm0qIvw4mBwGTOOlLTcAiaClVHxfh3Q==
X-Google-Smtp-Source: AGHT+IErTDqtWr/D6m6kf3Ky3S6RSfZ7VB4e2l8ocRKaKu2NzT5rJdZCEfK77WaU/F7nAGBSU9GbC98fAxqFesV0ogg=
X-Received: by 2002:a25:b309:0:b0:dc6:f0ac:6b53 with SMTP id
 l9-20020a25b309000000b00dc6f0ac6b53mr1651319ybj.15.1709220313372; Thu, 29 Feb
 2024 07:25:13 -0800 (PST)
MIME-Version: 1.0
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-4-07e24a231840@linaro.org>
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-4-07e24a231840@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Feb 2024 17:25:02 +0200
Message-ID: <CAA8EJpoZn5V8N3=4x4AfYM91XBuCZx47vSS8tB-nCP=LvVsD6g@mail.gmail.com>
Subject: Re: [PATCH RFT 4/7] phy: qcom: qmp-combo: register a typec mux to
 change the QPHY_MODE
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_072515_179420_E9C48856 
X-CRM114-Status: GOOD (  32.11  )
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

On Thu, 29 Feb 2024 at 15:08, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
>
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
>
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.

I think this is not fully correct. Please correct me if I'm wrong, but
it is possible to switch between USB / USB+DP / DP-only at runtime.
See the Status Update and Configure commands.

>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 122 ++++++++++++++++++++++++++++--
>  1 file changed, 117 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index ac5d528fd7a1..b5fb6cbcf867 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -19,6 +19,7 @@
>  #include <linux/reset.h>
>  #include <linux/slab.h>
>  #include <linux/usb/typec.h>
> +#include <linux/usb/typec_dp.h>
>  #include <linux/usb/typec_mux.h>
>
>  #include <drm/bridge/aux-bridge.h>
> @@ -1515,6 +1516,10 @@ struct qmp_combo {
>
>         struct typec_switch_dev *sw;
>         enum typec_orientation orientation;
> +
> +       struct typec_mux_dev *mux;
> +       unsigned long mux_mode;
> +       unsigned int svid;
>  };
>
>  static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
> @@ -3295,17 +3300,111 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
>         return 0;
>  }
>
> -static void qmp_combo_typec_unregister(void *data)
> +static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
> +{
> +       struct qmp_combo *qmp = typec_mux_get_drvdata(mux);
> +       const struct qmp_phy_cfg *cfg = qmp->cfg;
> +       enum qphy_mode new_mode;
> +       unsigned int svid;
> +
> +       if (state->mode == qmp->mode)
> +               return 0;
> +
> +       mutex_lock(&qmp->phy_mutex);
> +
> +       if (state->alt)
> +               svid = state->alt->svid;
> +       else
> +               svid = 0; // No SVID
> +
> +       if (svid) {

We should check svid against USB_TYPEC_DP_SID. Otherwise the driver
will mishandle the USB_SID_PD states.

> +               switch (state->mode) {
> +                       /* DP Only */
> +                       case TYPEC_DP_STATE_C:
> +                       case TYPEC_DP_STATE_E:
> +                               new_mode = QPHY_MODE_DP_ONLY;
> +                               break;
> +
> +                               /* DP + USB */
> +                       case TYPEC_DP_STATE_D:
> +                       case TYPEC_DP_STATE_F:
> +                               /* Safe fallback...*/
> +                       default:
> +                               new_mode = QPHY_MODE_COMBO;
> +                               break;
> +               }
> +       } else {
> +               /* Only switch to USB_ONLY when we know we only have USB3 */
> +               if (qmp->mux_mode == TYPEC_MODE_USB3)
> +                       new_mode = QPHY_MODE_USB_ONLY;
> +               else
> +                       new_mode = QPHY_MODE_COMBO;
> +       }
> +
> +       if (new_mode == qmp->init_mode) {
> +               dev_dbg(qmp->dev, "typec_mux_set: same phy mode, bail out\n");
> +               qmp->mode = state->mode;
> +               goto out;
> +       }
> +
> +       if (qmp->init_mode != QPHY_MODE_USB_ONLY && qmp->dp_powered_on) {
> +               dev_dbg(qmp->dev, "typec_mux_set: DP is still powered on, delaying switch\n");
> +               goto out;
> +       }
> +
> +       dev_dbg(qmp->dev, "typec_mux_set: switching from phy mode %d to %d\n",
> +               qmp->init_mode, new_mode);
> +
> +       qmp->mux_mode = state->mode;
> +       qmp->init_mode = new_mode;
> +
> +       if (qmp->init_count) {
> +               if (qmp->usb_init_count)
> +                       qmp_combo_usb_power_off(qmp->usb_phy);
> +               if (qmp->dp_init_count)
> +                       writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> +               qmp_combo_com_exit(qmp, true);
> +
> +               /* Now everything's powered down, power up the right PHYs */
> +
> +               qmp_combo_com_init(qmp, true);
> +               if (qmp->init_mode == QPHY_MODE_DP_ONLY && qmp->usb_init_count) {
> +                       qmp->usb_init_count--;
> +               } else if (qmp->init_mode != QPHY_MODE_DP_ONLY) {
> +                       qmp_combo_usb_power_on(qmp->usb_phy);
> +                       if (!qmp->usb_init_count)
> +                               qmp->usb_init_count++;
> +               }
> +               if (qmp->init_mode != QPHY_MODE_USB_ONLY && qmp->dp_init_count)
> +                       cfg->dp_aux_init(qmp);
> +       }
> +
> +out:
> +       mutex_unlock(&qmp->phy_mutex);
> +
> +       return 0;
> +}
> +
> +static void qmp_combo_typec_switch_unregister(void *data)
>  {
>         struct qmp_combo *qmp = data;
>
>         typec_switch_unregister(qmp->sw);
>  }
>
> -static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
> +static void qmp_combo_typec_mux_unregister(void *data)
> +{
> +       struct qmp_combo *qmp = data;
> +
> +       typec_mux_unregister(qmp->mux);
> +}
> +
> +static int qmp_combo_typec_register(struct qmp_combo *qmp)
>  {
>         struct typec_switch_desc sw_desc = {};
> +       struct typec_mux_desc mux_desc = { };
>         struct device *dev = qmp->dev;
> +       int ret;
>
>         sw_desc.drvdata = qmp;
>         sw_desc.fwnode = dev->fwnode;
> @@ -3316,10 +3415,23 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
>                 return PTR_ERR(qmp->sw);
>         }
>
> -       return devm_add_action_or_reset(dev, qmp_combo_typec_unregister, qmp);
> +       ret = devm_add_action_or_reset(dev, qmp_combo_typec_switch_unregister, qmp);
> +       if (ret)
> +               return ret;
> +
> +       mux_desc.drvdata = qmp;
> +       mux_desc.fwnode = dev->fwnode;
> +       mux_desc.set = qmp_combo_typec_mux_set;
> +       qmp->mux = typec_mux_register(dev, &mux_desc);
> +       if (IS_ERR(qmp->mux)) {
> +               dev_err(dev, "Unable to register typec mux: %pe\n", qmp->mux);
> +               return PTR_ERR(qmp->mux);
> +       }
> +
> +       return devm_add_action_or_reset(dev, qmp_combo_typec_mux_unregister, qmp);
>  }
>  #else
> -static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
> +static int qmp_combo_typec_register(struct qmp_combo *qmp)
>  {
>         return 0;
>  }
> @@ -3532,7 +3644,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
>         if (ret)
>                 return ret;
>
> -       ret = qmp_combo_typec_switch_register(qmp);
> +       ret = qmp_combo_typec_register(qmp);
>         if (ret)
>                 return ret;
>
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
