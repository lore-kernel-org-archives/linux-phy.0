Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C97B6D68BC8
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 15:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oosDOFjakX85NnapCaEaSx+1irRY/oU9vyjiUo+2fXg=; b=mQDiz32Wrv5EoZ
	rZ2M1wv1yDLtIP1lwHDyHdXB/l5LYEt7u/fFxe4MoijfIvvhXUud/jk/NtPr4oZUWF+6xn5+s3MVz
	LKLQZXPHx3oDLxfcHwfhDo1FI6mPLz2Y/WC27HgNJ1uNI3rRUCckyTdFOhGzhX2m/DIYVsvb99C4+
	5Hx9IQ78U56UsDGEZDQEbJM5Cs8y3uOMjyKVOfWUyke/R/qMPDW6sxAeTwMJghRNFAsXZS5FxtEja
	OZd4Jc5DtiS5WAIVHAQxVmZj6BmyOwCaONFfEuzpzpuFq3atP6H/kKhV3g5rO+X4cCCk7WLs4Rjw6
	wIhctbTy8ai7Gl1mu6Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tByj5-00000003GVN-07Ge;
	Fri, 15 Nov 2024 15:59:15 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tByj2-00000003GUj-1VJx
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 15:59:13 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-53da5a27771so2288993e87.2
        for <linux-phy@lists.infradead.org>; Fri, 15 Nov 2024 07:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731686351; x=1732291151; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gMfxO2Ju8vEjnQTSKznfl18LDxvCiGquG5jWu4YVQBI=;
        b=mvRCgUEpyjpOKem8B8S9ZDuBe+JbDd1YWSRSW5yo8eePgnUcM817Y98OFTxaa7f/5P
         i4UrFz/TGXSAIUlc8x+7/jV//a6l95CbS6RkeuiDE+lop89Ng9haC6iHiXdz16kBpkW+
         iylmNLZq62mLnBgBh8iZjOSsrx5mrPn71FJ8mw4t7VbSGbdpSSQYCsCVOfd7nImRiDrV
         9WgZXz1adgvrvuxM0ZpXMKkd1e/N6bselcvCm/orzPZMx3SIswn0wDATVe0AO2LSOe04
         KQGzvNu/DVJ69OsZryRQI1Fvy73dNHL315WH9eu7/zeqrmMX3hxaStEy20Xlqz6aGdhd
         +zKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731686351; x=1732291151;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gMfxO2Ju8vEjnQTSKznfl18LDxvCiGquG5jWu4YVQBI=;
        b=a2+XJahsaxBs6kPlEMbhlsOvK0E+6WwC6xbwlW7pfMBM74v2M96M0H71k1/P+k/tu8
         WVgNh2EY+u2Fei+C9AVQNTXC+Ml0j5H2GN3ETUB/yHrnardE72TFiClfanV2EMU3LOOi
         mkGNUqfGs1jjlM4U+azKIVxR3RnOLXzvt9sheGMhnimLGIjqyknFVE3hpy2QtxtbjxG4
         uILeC8goESSylKKB0kg9dwSZukONDTD8JwfxtytGfGJaCqzoEZ3LsMNF42lx2jsrfQPP
         SyQaHxjIbRp7elTCfXX+afFhXjmw0BXrHniMeVKKhsbZxmUNWC4330DhbNwEzvnmwwGg
         Hh4g==
X-Forwarded-Encrypted: i=1; AJvYcCVQdQac63chGQEL3vjgiQa+F4CROmLPJg6reKzzUth3oTdteKN5FUbAfAmg6PDLPF3XgNpHKqUsVcY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrFenZis0KyMr5qXgPHeIV0bleKGmUvjKhSp+lzD3uXEmjxeHh
	nXwhidIDv0fXmca871BkhEDd37MKlqA16mKaTMfGO/XBpbtKObWO9pGbq1UpoYo=
X-Google-Smtp-Source: AGHT+IGM7mU2Z7NRzQuZyYKrHQmac88PdjbXj6OEF7ihDrIv75j0NtxGn8TGk54rYau4nJmsS7JKLw==
X-Received: by 2002:a05:6512:1594:b0:539:93e8:7eca with SMTP id 2adb3069b0e04-53dab2b3c5dmr1925115e87.35.1731686350401;
        Fri, 15 Nov 2024 07:59:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da6548b79sm615903e87.242.2024.11.15.07.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 07:59:08 -0800 (PST)
Date: Fri, 15 Nov 2024 17:59:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Konrad Dybcio <konradybcio@kernel.org>, Andy Gross <agross@kernel.org>, 
	Stephen Boyd <swboyd@chromium.org>, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, quic_ppratap@quicinc.com, quic_jackp@quicinc.com, 
	stable@vger.kernel.org
Subject: Re: [PATCH 5.15.y] phy: qcom: qmp: Fix NULL pointer dereference for
 USB Uni PHYs
Message-ID: <ibh3n7gl5qcawpiyjgxy2yum6jsmfv5lpfefuun3m2ktldcswl@odhjnmkj5jre>
References: <20241115091545.2358156-1-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241115091545.2358156-1-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_075912_396000_5F4EA89F 
X-CRM114-Status: GOOD (  21.21  )
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

On Fri, Nov 15, 2024 at 02:45:45PM +0530, Krishna Kurapati wrote:
> Commit [1] introduced DP support to QMP driver. While doing so, the
> dp and usb configuration structures were added to a combo_phy_cfg
> structure. During probe, the match data is used to parse and identify the
> dp and usb configs separately. While doing so, the usb_cfg variable
> represents the configuration parameters for USB part of the phy (whether
> it is DP-Cobo or Uni). during probe, one corner case of parsing usb_cfg
> for Uni PHYs is left incomplete and it is left as NULL. This NULL variable
> further percolates down to qmp_phy_create() call essentially getting
> de-referenced and causing a crash.

The UNI PHY platforms don't have usb3-phy subnode. As such the usb_cfg
variable should not be used in the for_each_available_child_of_node()
loop.

Please provide details for the platform on which you observe the crash
and the backtrace.

> 
> Subsequently, commit [2] split the driver into multiple files, each
> handling a specific PHY type (USB, DP-Combo, UFS, PCIe). During this
> refactoring, the probing process was modified, and the NULL pointer
> dereference issue no longer showed up.
> 
> [1]: https://lore.kernel.org/all/20200916231202.3637932-8-swboyd@chromium.org/
> [2]: https://lore.kernel.org/all/20220607213203.2819885-1-dmitry.baryshkov@linaro.org/
> 
> Fixes: 52e013d0bffa ("phy: qcom-qmp: Add support for DP in USB3+DP combo phy")
> Cc: stable@vger.kernel.org # 5.15.y
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index eef863108bfe..e22ee71aa060 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -5714,6 +5714,8 @@ static int qcom_qmp_phy_probe(struct platform_device *pdev)
>  
>  		usb_cfg = combo_cfg->usb_cfg;
>  		cfg = usb_cfg; /* Setup clks and regulators */
> +	} else {
> +		usb_cfg = cfg;
>  	}
>  
>  	/* per PHY serdes; usually located at base address */
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
