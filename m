Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 934F8E64025
	for <linux-phy@archiver.kernel.org>; Thu, 21 Nov 2024 22:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=03hEt5IxIbcRTDK6I2L1HZznuHB7sa58e0ZbPG3wp8w=; b=qmd4NVLU6qj3gZ
	KJxR03KOWARsK+3buThlUOt69JeDLwkwKCEgYDs5rRzUJt+xaVcyaK9YzneW2abAqnyH9JEIgoVUs
	WBYSBd6Gb8E1Tiis5JOOthTWD+urfXaehYXf2bi4A+if+tCHpY767xBlf77GcXjEDfFwOobve74V2
	d4AbmyzN5xG2HPIth4BHo/2esCJGyxF0x0W39wE/OmkHStyaKUz+ov7OoisNtFjERGLVitJswjH21
	8QAL7dtXV5PiF97fSf7i7I+KVToxXGeXg/uSpGA+jB5S+Kj8+C3kVyFIVnhWo8yvajC8Rs8hxEKXk
	0R6GnKxwpncx2XrVph+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEFbX-000000013xS-3xVL;
	Thu, 21 Nov 2024 22:24:51 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEFbW-000000013x3-03Xw
	for linux-phy@lists.infradead.org;
	Thu, 21 Nov 2024 22:24:51 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-53da07b78dfso1637812e87.0
        for <linux-phy@lists.infradead.org>; Thu, 21 Nov 2024 14:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732227888; x=1732832688; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h9qF8j45CSfYdsmm+Dydm51y3aJn8tF9GxFB43niHJc=;
        b=uoq4uKDpIHwz4LyJq8qxM2FETvNvta/D6q9QiZ8QpakzVc6UOnlImnUWRjajeoSzie
         YEpmFnsgmKduotjpaiyq65eojKqvHs/xS0zOSskfoSrtYsZBIvIr0Cdpmh+Mrdi9fYNX
         1B7UTlRN2g7DOZOOjPGQXh9fQ0Pkj6mUKNVbA59zn9lFWwD9mCL8OWJG3ulo3kHWaSsR
         peOngkKT0jr7sAVmafjQaATW4Y2P3csTc0gkOsRUY5rpU5HPkI0sIbTglTzsU5086w84
         i9Sm6/MUgLZBoIhcKuQZIP0xD5NyUhomTClAHmrrZELn8xMqTyn0BX3HEqUOTVS3qEaP
         TggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732227888; x=1732832688;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h9qF8j45CSfYdsmm+Dydm51y3aJn8tF9GxFB43niHJc=;
        b=tLYBObqMcyvijgZXU8XziHizv/9Zs5Afv+jVB2FOt+LY8VSEe674ik4ApgkuhHQLZ4
         xlBXtz8I0oSezSEh9UuYHgNpmsEAbRENUSz+5rUp9CpfNe2l/xjN59gXhZguNSiapAVm
         0/NpaEYbMvnbyaESCYGmyAGvZAbunK0nHOCI/epuLQ7NV9rm9jvlBw+GFcN3Skj77EvN
         RmYFCj1VRdoPjoBB5M7YFVRLiaXg5GWUo6ofseNKjHF0ecIqiUvH0ioAKbW+ioid1H50
         UyvqVmrXaGSBv8QGvkchLdfQMp5LscKH0haPaDxrq7jIx08TtTTXEi0BYU4vZPs4Tlra
         +Rsw==
X-Forwarded-Encrypted: i=1; AJvYcCW010Z3a+nO0/8Qa027KEhMG9MfHT+AchtOFP0H5en+TWJ+mEopCPMr3a6Vob+fh2OxZabI363H4Ss=@lists.infradead.org
X-Gm-Message-State: AOJu0YyXDiBvlHC5zLO0Rue2eGmN7B/FspY6scm5poa6RidnYS6GjHip
	xZkEKtFPRQ9J46deVKOa2v6FT6huOMSF0zFKtokB6cti5hgJh11q1aoi/K31IlM=
X-Gm-Gg: ASbGncvB0MmK8KNrf0qHpSfdX/7Ao4aw/8GHRFtahwSTEL/e0TnCxs+4SPVWM0izPzW
	nSB39L80ZANZDUJmgO3sM2TJ/bqPTSLth5auAWG/n2dJvgzKEPFUUNQLxWnNWD03RL/n9dT7W7P
	/PonHyt5jHEqe09wkp+YR/BAd6jgnrNsMuIxcO++CiOwnzhNpf8CbnOWyUQKug42Z7GyT5lIu59
	ElIXUmqcsVIpx0zOOexy4br/SZhlOBdRxcMqpvV1LrYgfFHuTF9107XZRhIKAzRsqepZ9fEjShF
	XNvPo5NUhjNB1Edx+TuzuTPLY6R/MA==
X-Google-Smtp-Source: AGHT+IE2T2Pj6r6Y1ycGgpu7KwhyGxrz0hWNZVwX6ZaXIy5LqSV1VBAcT58vN5h6glzEjVd3g7gW/w==
X-Received: by 2002:ac2:410d:0:b0:53d:d3f1:2f4b with SMTP id 2adb3069b0e04-53dd3f12f92mr106226e87.30.1732227887928;
        Thu, 21 Nov 2024 14:24:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24519b6sm99737e87.106.2024.11.21.14.24.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 14:24:46 -0800 (PST)
Date: Fri, 22 Nov 2024 00:24:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Song Xue <quic_songxue@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Manu Gautam <mgautam@codeaurora.org>, 
	Vivek Gautam <vivek.gautam@codeaurora.org>, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: qcom-qusb2: Add regulator_set_load to Qualcomm
 usb phy
Message-ID: <7qj4szkw365ve45hm5w475xs2vlfsfg5pcpc44bo3s5vhrcmuu@bh5swbug4ywi>
References: <20241121-add_set_load_to_qusb_phy-v2-1-1c5da1befec0@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241121-add_set_load_to_qusb_phy-v2-1-1c5da1befec0@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_142450_083672_077F7B33 
X-CRM114-Status: GOOD (  27.24  )
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

On Thu, Nov 21, 2024 at 04:09:27PM +0800, Song Xue wrote:
> Set the current load before enable regulator supplies at QUSB phy.
> 
> Encountered one issue where the board powered down instantly once the UVC
> camera was attached to USB port while adding host mode on usb port and
> testing a UVC camera with the driver on QCS615 platform. The extensible
> boot loader mentioned that OCP(Over Current Protection) occurred at LDO12
> from regulators-0 upon powered on board again. That indicates that the
> current load set for QUSB phy, which use the regulator supply, is lower
> than expected.
> 
> As per QUSB spec, set the maximum current load at 30mA to avoid overcurrent
> load when attach a device to the USB port.
> 
> Fixes: 937e17f36a32 ("phy: qcom-qusb2: Power-on PHY before initialization")
> Signed-off-by: Song Xue <quic_songxue@quicinc.com>
> ---
> Changes in v2:
> - Removed "---" above the Fixes. 
> - Link to v1: https://lore.kernel.org/r/20241121-add_set_load_to_qusb_phy-v1-1-0f44f3a3290e@quicinc.com
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index c52655a383cef008552ed4533b9f31d1cbf34a13..80f0d17c42717e843937255a9a780bbae5998535 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -722,16 +722,27 @@ static int __maybe_unused qusb2_phy_runtime_resume(struct device *dev)
>  	return ret;
>  }
>  
> +#define QUSB2PHY_HPM_LOAD 30000 /*uA*/
> +
>  static int qusb2_phy_init(struct phy *phy)
>  {
>  	struct qusb2_phy *qphy = phy_get_drvdata(phy);
>  	const struct qusb2_phy_cfg *cfg = qphy->cfg;
>  	unsigned int val = 0;
>  	unsigned int clk_scheme;
> -	int ret;
> +	int ret, i;
>  
>  	dev_vdbg(&phy->dev, "%s(): Initializing QUSB2 phy\n", __func__);
>  
> +	/* set the current load */
> +	for (i = 0; i < ARRAY_SIZE(qphy->vregs); i++) {
> +		ret = regulator_set_load(qphy->vregs[i].consumer, QUSB2PHY_HPM_LOAD);

Please use regulator_set_mode() instead. Or just fix the mode in the
device tree, if the device can not operate if the regulator is in
non-HPM mode.

> +		if (ret) {
> +			dev_err(&phy->dev, "failed to set load at %s\n", qphy->vregs[i].supply);
> +			return ret;
> +		}
> +	}
> +
>  	/* turn on regulator supplies */
>  	ret = regulator_bulk_enable(ARRAY_SIZE(qphy->vregs), qphy->vregs);
>  	if (ret)
> 
> ---
> base-commit: decc701f41d07481893fdea942c0ac6b226e84cd
> change-id: 20241121-add_set_load_to_qusb_phy-d1327c797ffe
> 
> Best regards,
> -- 
> Song Xue <quic_songxue@quicinc.com>
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
