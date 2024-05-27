Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B00FC25B74
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 09:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9W3kGS+jnX+iPZpINfgdz0ok0YEiXbYIY5JsdQMoWg=; b=RHpcoBzzp/wBR2
	NFhvvFmyrfA2Mshh6rklRSdYR+F07OM4fPfHB5Gqszsv8FSz+a3HhT8MIioeZHLMA2Rx7ur6AadtN
	XLCq2nWXhWGYIzgpRAREQEOGZkhosc+VaxnGBu8hqlnc+YTAy9bMf9tIJfLzxUTCMoR5tiL0S+IjI
	PYTToRS/OHn6u5t2UrstPgOg/aFZdPr4pC5qjJ6scvB2zefWxzHZHL+SO22JwLpgZrEKQZZqpduGn
	2Pdxby+IYPKB3/yDIFlcBpvp11DJcnUSce6vepVmdGmOxvLt37bpD2GbWwEi8+NDfM6tJHbCN4StF
	oERJu9ANV93bd/YN9B7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWQi-0000000EMjv-4AMN;
	Mon, 27 May 2024 09:14:08 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWQe-0000000EMi6-1Zlp
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 09:14:07 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-529597d77b4so2935552e87.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 02:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716801236; x=1717406036; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fU7wt3RoJ/ZRhVzR1OvMGpUkhRA7vQQ7+ZvSLIkQePg=;
        b=hCjb60BoQgPI7mRV2Lym1pnhGLyzMmqAEP+a3I3MZbr2ijvBYOUNHG678747MNnUUr
         cewFQqNJuHJ7mNOFJAvw1mxUhY0qzoT/Lj2i14+zq/spYAzaMTIVzLL0qfuIIcJPH2uO
         2XrAyXi/eDqhugJqwvapiGs0Lf8pbFQ3XLzqKtz4Zlo/orZap7vGdDuNOszIJ57LupO3
         erOIIU2nu0Jphzf1HCcPwfxbkpN1lZ81qH60RLP4r+C3FpNKaq8qNvP5cFbCA43ndAht
         chLbdYiKLsQ1+efqGJXu6b7qoapbzdC/gf4Z0jirMTGvJ1XXlHSa5A58YtS/S6BJNSp9
         thVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716801236; x=1717406036;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fU7wt3RoJ/ZRhVzR1OvMGpUkhRA7vQQ7+ZvSLIkQePg=;
        b=eN9hX2kZGA7DgZUX7n1DzAubziMmsG22eGt5oZvQ+dduevjR+unV0clNpJ66hH3Vwd
         dOEU4+dYcOKkNyl7zF/5EogDNeHfAchwJb+EGvF/tQjDbmlIMsnkwyLayD2vqp7PRc3f
         h4wNGCHc2eCrxaiyhZL7c30NI5pflhQdJ4SBZuhMTL99cw4jSedv5Mz7s/qctXdI5qj/
         x76VGon3/cUy27GN9G1p+VDJg41iSEFXx5OosZ1eeNNLkIjg5Tf1MkSTX4W8lBGQaqSJ
         cNUCZDT8e17z0UTJGSN/WfdJURrIQefdhZTlnY0rCeasX8mefneO5jzkCcfF2dt/AT7z
         gQMg==
X-Forwarded-Encrypted: i=1; AJvYcCWM/7/HgMqpW7Y9q/fF0cV3cU8goyLxKDP84KjH0DSYXpBTdeFrUwHGRY8JD21iaMv3KYngAL7/7KOZrZq3Eid5yV/nAil6l+83ZvO2Ug==
X-Gm-Message-State: AOJu0YwLUvK38oU5lYPHDL6ti+SfWt/zzRKURLq/tVpZDdXy4YOcor1T
	q0ja5B/EFJwAlLMv5K88qQX9YZVkBnApIkSx//RJBt9d+YftHf23hobzSMNua00=
X-Google-Smtp-Source: AGHT+IFVa65amKWg0sDvxcneN95XLq2oAjYgTo5y33Nlr/ZBV8Jie8NEAzCjb5dV3ztVi9w84Tah4A==
X-Received: by 2002:a19:7502:0:b0:524:68f8:9566 with SMTP id 2adb3069b0e04-52964bb2c9dmr4994304e87.30.1716801236570;
        Mon, 27 May 2024 02:13:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5296ee4ad1asm500411e87.95.2024.05.27.02.13.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 02:13:56 -0700 (PDT)
Date: Mon, 27 May 2024 12:13:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Kuogee Hsieh <quic_khsieh@quicinc.com>
Subject: Re: [PATCH 3/3] phy: qcom: qmp-combo: Switch from V6 to V6 N4
 register offsets
Message-ID: <zbveo2mdozzumc3gekvochcemfhy3e4eo4dc3sgyfivlxpjbzx@if6svye4wvhz>
References: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-0-be8a0b882117@linaro.org>
 <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-3-be8a0b882117@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-3-be8a0b882117@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_021406_090640_61090D84 
X-CRM114-Status: GOOD (  13.74  )
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

On Mon, May 27, 2024 at 10:20:37AM +0300, Abel Vesa wrote:
> Currently, none of the X1E80100 supported boards upstream have enabled
> DP. As for USB, the reason it is not broken when it's obvious that the
> offsets are wrong is because the only difference with respect to USB is
> the difference in register name. The V6 uses QPHY_V6_PCS_CDR_RESET_TIME
> while V6 N4 uses QPHY_V6_N4_PCS_RX_CONFIG. Now, in order for the DP to
> work, the DP serdes tables need to be added as they have different
> values for V6 N4 when compared to V6 ones, even though they use the same
> V6 offsets. While at it, switch swing and pre-emphasis tables to V6 as
> well.
> 
> Fixes: d7b3579f84f7 ("phy: qcom-qmp-combo: Add x1e80100 USB/DP combo phys")
> Co-developed-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 189 +++++++++++++++++++++++++-----
>  drivers/phy/qualcomm/phy-qcom-qmp.h       |   2 +
>  2 files changed, 162 insertions(+), 29 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
