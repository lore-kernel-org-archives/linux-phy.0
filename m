Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB2321061B22
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 21:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3hrD5qXKNnmCF9ycuph9u4QtItcUcr/+Xppgj8iRG0=; b=gx70YbjE5JmRMz
	rp6LC8cCipbeSjPn4i3rYp2o/2eeFQnNMutOKF+QJTwHu5opJfub69yuQZ0BTetf/50S+sgw60qKi
	WcqJodW1n/8E7rdOZ0/iyBzgvbOxJnuYhAu/jLwQVxob8ssGUdJGtalXQsFo7u7+vGR0SxjzvxtjL
	Z8uaMv8oac5b2V68LmoEJ3OhlV68j7L7PZlfnxPAAhI8z5dPbgEH3AafTzUnDFCcRjqHgTFMQ3gEK
	ASrSifaE8om+7dyo1iZShhaWGh4hKSvHoxR7Mgo5WX16skX2KjnQuSGB4UYMK1miMO2OfdOwm+3br
	hrusOGlXdqTFe7FEsxjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7KVN-0000000BvmP-1oYI;
	Mon, 30 Mar 2026 21:50:41 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7KVK-0000000Bvm4-2wAv
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 21:50:40 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-48533a598fcso9409245e9.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 14:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774907436; x=1775512236; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1rvOVfipuNnH/UivVwc7De7z6zvsPeKLD3Y+JlWhA4s=;
        b=sgVVCq7N/AT9TH0d2XNt6/WR9NN0uyZ1rQsVJ/oLDQ7qeqEG/FG3PDa8DZUehyqysr
         r6w10/odMI0VKJhkp5vLp/CW5tvwx84PUbk1ZOime/TUrcniq1l5FNaFsjDX5MZQ8uky
         WhqgMMuPKY5xFsNyG7LWtHazxiDbgXgslmdh0SIM2jgw8zWiBABRy8lGST0ew5irPqqL
         xWugeu/crOLENQBvkePasKBSFyhafEal9+nqRs4NasbBohbovGUlORgppzfr3dJ3yRVx
         Yg6jX6wn12qAz4m8KH/tfDlt8HJSO4qV3wFvfyGFOnlEMoRdKYY+68xuPJO1Gf3B2Psn
         LoFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774907436; x=1775512236;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1rvOVfipuNnH/UivVwc7De7z6zvsPeKLD3Y+JlWhA4s=;
        b=ldMNbUSF1B1N66Yl449yjBFUcF6XDlQ+Tzt2F/nM5ynya+1Zu164HCHDMRuglB+O3F
         0HYFUo7JFj5U+k6K80gxNiXf+MXvcybEBgCQ5HnYln9eRmS/Tvq3stT28Qnsaorg9aeS
         ipgGdDBKATSIaLvCb6QeSGCejWahxhYqWPaO9mrh2t9MIoo3UHDvkzqWCBSqY60ct3Ks
         oPfR7LWQQlXYzz3adhGLk1tmt2QDV5RDQ8Pw5VIt2aRAAz/AXOFwNyR8y9GvNH8N0FmA
         uGpAQF+0D1AQfYhCrf5taSRbrb+DPxl6aCWjmgfpvzTP4G+eJRM0exCq6hDIQ2H/dtQk
         fCMg==
X-Forwarded-Encrypted: i=1; AJvYcCW7luumgxyld21D0nkgC8sIuDjO5tj7gE8vA04brczP5rRKn3FC5bjsJx+p0sAps7yQsZmF4hTLkoc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOGH6Nvr4c5SOTtedFNkTGpG5nX9XTTa2+YmAsYqJ0pmMVnkAR
	DIMOXRPlBq2S0YByLjYQ2bYkdwLicSu4EhwOf6CdrNS3cTFqBg2/totg
X-Gm-Gg: ATEYQzzgND0fBiX1Jn/zukQkpJT8ERPD3DSj9Wyc6y+HqBfJ/2eCebOK4ZfbEetBpzm
	uG1oCuHzypEKZVhKiTfwmjhriqc5quEhRS5FY/wUJutZQQz+5KnAr7e/mz2Zy4P606IHfZmT36I
	/ST/+r0U1CWd1dY0ksKrZ+WBsxY7hsPh/UFivnauSeEApjhePeS64JxDjqV2XQrr2Y673/ETI0O
	jJfeGWKCMNjWrYfZ/juSpkgUeQjoS1ZdrElfsoxlB9tZAFmbKNR4xpFi7gbm3XXxarXfI2C9FV0
	ZOUZYfmBc2PVOuiDTvqYulAj2LivnfMPpsLUGkYChCxqnbT96QZq1lvZkhs0by8G1TqdvcOhpx8
	KqKOHuAthoB0E/MhQIh2WVhIMadMkbZCO2HgH/8VPE2gUmy3FLC4WyAhgPYL/E8pG7di4QDOaj5
	mYEWN6g1Tvi/i0ZSA=
X-Received: by 2002:a05:600c:8b41:b0:487:17d:d0bf with SMTP id 5b1f17b1804b1-48727ee0e73mr119411695e9.6.1774907436457;
        Mon, 30 Mar 2026 14:50:36 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d50a:b400:fc92:d05b:3301:b722])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf24739easm22792835f8f.30.2026.03.30.14.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 14:50:35 -0700 (PDT)
Date: Tue, 31 Mar 2026 00:50:33 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v2 5/6] phy: realtek: usb2: add support for RTL9607C USB2
 PHY
Message-ID: <20260330215033.ven3bllyw3jverfg@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-6-adilov@disroot.org>
 <20260327160638.15134-6-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260327160638.15134-6-adilov@disroot.org>
 <20260327160638.15134-6-adilov@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_145038_782201_C0CE144C 
X-CRM114-Status: GOOD (  24.55  )
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

On Fri, Mar 27, 2026 at 09:06:37PM +0500, Rustam Adilov wrote:
> Add support for the usb2 phy of RTL9607C series based SoCs.
> Add the macros and phy config struct for rtl9607.
> 
> RTL9607C requires to clear a "force host disconnect" bit in the
> specific register (which is at an offset from reg_wrap_vstatus)
> before proceeding with phy parameter writes.
> 
> Add the bool variable to the driver data struct and hide this whole
> procedure under the if statement that checks this new variable.
> 
> Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> Signed-off-by: Rustam Adilov <adilov@disroot.org>
> ---
>  drivers/phy/realtek/phy-rtk-usb2.c | 57 ++++++++++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
> 
> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
> index 070cba1e0e0a..bf22d12681dc 100644
> --- a/drivers/phy/realtek/phy-rtk-usb2.c
> +++ b/drivers/phy/realtek/phy-rtk-usb2.c
> @@ -26,6 +26,12 @@
>  #define PHY_VCTRL_SHIFT 8
>  #define PHY_REG_DATA_MASK 0xff
>  
> +#define PHY_9607_VSTS_BUSY BIT(17)
> +#define PHY_9607_NEW_REG_REQ BIT(13)
> +
> +#define PHY_9607_FORCE_DISCONNECT_REG 0x10
> +#define PHY_9607_FORCE_DISCONNECT_BIT BIT(5)
> +
>  #define GET_LOW_NIBBLE(addr) ((addr) & 0x0f)
>  #define GET_HIGH_NIBBLE(addr) (((addr) & 0xf0) >> 4)
>  
> @@ -109,6 +115,7 @@ struct phy_cfg {
>  
>  	u32 (*read)(void __iomem *reg);
>  	void (*write)(u32 val, void __iomem *reg);
> +	bool force_host_disconnect;
>  };
>  
>  struct phy_parameter {
> @@ -614,6 +621,16 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
>  		goto do_toggle;
>  	}
>  
> +	if (phy_cfg->force_host_disconnect) {
> +		/* disable force-host-disconnect */
> +		u32 temp = readl(phy_reg->reg_wrap_vstatus + PHY_9607_FORCE_DISCONNECT_REG);
> +
> +		temp &= ~PHY_9607_FORCE_DISCONNECT_BIT;
> +		writel(temp, phy_reg->reg_wrap_vstatus + PHY_9607_FORCE_DISCONNECT_REG);
> +
> +		mdelay(10);

LLM review:

Could we use msleep(10) or usleep_range(10000, 11000) here instead of
mdelay(10)?
Since do_rtk_phy_init() executes as part of the phy_ops->init callback
with a mutex held from a sleepable process context, spinning the CPU for
10ms wastes CPU resources and increases scheduling latency.

> +	}
> +
>  	/* Set page 0 */
>  	phy_data_page = phy_cfg->page0;
>  	rtk_phy_set_page(phy_reg, 0);
> @@ -1141,6 +1158,7 @@ static const struct phy_cfg rtd1295_phy_cfg = {
>  	.new_reg_req = PHY_NEW_REG_REQ,
>  	.read = phy_read,
>  	.write = phy_write,
> +	.force_host_disconnect = false,

You don't need to initialize rodata struct fields with false/0/NULL.

>  };
>  
>  static const struct phy_cfg rtd1395_phy_cfg = {
> @@ -1170,6 +1188,7 @@ static const struct phy_cfg rtd1395_phy_cfg = {
>  	.new_reg_req = PHY_NEW_REG_REQ,
>  	.read = phy_read,
>  	.write = phy_write,
> +	.force_host_disconnect = false,
>  };
>  
>  static const struct phy_cfg rtd1395_phy_cfg_2port = {
> @@ -1199,6 +1218,7 @@ static const struct phy_cfg rtd1395_phy_cfg_2port = {
>  	.new_reg_req = PHY_NEW_REG_REQ,
>  	.read = phy_read,
>  	.write = phy_write,
> +	.force_host_disconnect = false,
>  };
>  
>  static const struct phy_cfg rtd1619_phy_cfg = {
> @@ -1226,6 +1246,7 @@ static const struct phy_cfg rtd1619_phy_cfg = {
>  	.new_reg_req = PHY_NEW_REG_REQ,
>  	.read = phy_read,
>  	.write = phy_write,
> +	.force_host_disconnect = false,
>  };
>  
>  static const struct phy_cfg rtd1319_phy_cfg = {
> @@ -1257,6 +1278,7 @@ static const struct phy_cfg rtd1319_phy_cfg = {
>  	.new_reg_req = PHY_NEW_REG_REQ,
>  	.read = phy_read,
>  	.write = phy_write,
> +	.force_host_disconnect = false,
>  };
>  
>  static const struct phy_cfg rtd1312c_phy_cfg = {
> @@ -1287,6 +1309,7 @@ static const struct phy_cfg rtd1312c_phy_cfg = {
>  	.new_reg_req = PHY_NEW_REG_REQ,
>  	.read = phy_read,
>  	.write = phy_write,
> +	.force_host_disconnect = false,
>  };
>  
>  static const struct phy_cfg rtd1619b_phy_cfg = {
> @@ -1317,6 +1340,7 @@ static const struct phy_cfg rtd1619b_phy_cfg = {
>  	.new_reg_req = PHY_NEW_REG_REQ,
>  	.read = phy_read,
>  	.write = phy_write,
> +	.force_host_disconnect = false,
>  };
>  
>  static const struct phy_cfg rtd1319d_phy_cfg = {
> @@ -1347,6 +1371,7 @@ static const struct phy_cfg rtd1319d_phy_cfg = {
>  	.new_reg_req = PHY_NEW_REG_REQ,
>  	.read = phy_read,
>  	.write = phy_write,
> +	.force_host_disconnect = false,
>  };
>  
>  static const struct phy_cfg rtd1315e_phy_cfg = {
> @@ -1378,6 +1403,37 @@ static const struct phy_cfg rtd1315e_phy_cfg = {
>  	.new_reg_req = PHY_NEW_REG_REQ,
>  	.read = phy_read,
>  	.write = phy_write,
> +	.force_host_disconnect = false,
> +};
> +
> +static const struct phy_cfg rtl9607_phy_cfg = {
> +	.page0_size = MAX_USB_PHY_PAGE0_DATA_SIZE,
> +	.page0 = { [0] = {0xe0, 0x95},
> +		   [4] = {0xe4, 0x6a},
> +		  [12] = {0xf3, 0x31}, },
> +	.page1_size = MAX_USB_PHY_PAGE1_DATA_SIZE,
> +	.page1 = { [0] = {0xe0, 0x26}, },
> +	.page2_size = MAX_USB_PHY_PAGE2_DATA_SIZE,
> +	.page2 = { [7] = {0xe7, 0x33}, },
> +	.num_phy = 1,
> +	.check_efuse = false,

Similar for these (+do_toggle_driving, use_default_parameter).

> +	.check_efuse_version = CHECK_EFUSE_V2,
> +	.efuse_dc_driving_rate = EFUS_USB_DC_CAL_RATE,
> +	.dc_driving_mask = 0x1f,
> +	.efuse_dc_disconnect_rate = EFUS_USB_DC_DIS_RATE,
> +	.dc_disconnect_mask = 0xf,
> +	.usb_dc_disconnect_at_page0 = true,
> +	.do_toggle = true,
> +	.do_toggle_driving = false,
> +	.driving_updated_for_dev_dis = 0x8,
> +	.use_default_parameter = false,
> +	.is_double_sensitivity_mode = true,
> +	.vstatus_offset = 0xc,
> +	.vstatus_busy = PHY_9607_VSTS_BUSY,
> +	.new_reg_req = PHY_9607_NEW_REG_REQ,
> +	.read = phy_read_le,
> +	.write = phy_write_le,
> +	.force_host_disconnect = true,
>  };
>  
>  static const struct of_device_id usbphy_rtk_dt_match[] = {
> @@ -1390,6 +1446,7 @@ static const struct of_device_id usbphy_rtk_dt_match[] = {
>  	{ .compatible = "realtek,rtd1395-usb2phy-2port", .data = &rtd1395_phy_cfg_2port },
>  	{ .compatible = "realtek,rtd1619-usb2phy", .data = &rtd1619_phy_cfg },
>  	{ .compatible = "realtek,rtd1619b-usb2phy", .data = &rtd1619b_phy_cfg },
> +	{ .compatible = "realtek,rtl9607-usb2phy", .data = &rtl9607_phy_cfg },
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, usbphy_rtk_dt_match);
> -- 
> 2.53.0
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
