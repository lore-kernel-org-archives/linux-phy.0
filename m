Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E397C27C6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 10:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9rMuiEgeDSCp/OVJUh9UyQKAqDtKZv4uix7Pta2hhQ=; b=iETxNV2DXRpEzx
	Tw+nR4d/5rAyP9jeBfupz8Iheglbn9PkE2Swi6DtpZ1X8vNy7xTPnygs15GCjjB0Qvs9LSOe5RaJM
	+H6bu5qQPkXCHoncSNACuTf5j/6i808yh2EHfoHUihKd3X62UFqtBeYtIn/MHYbYd0oprshn/DUuQ
	oh3qqMkKWHwTSfPBWTZBQ91bM8MGyImoT2RR48ch4Yjn5Evfhn7zP+aJH/uvzlQ+CdJAm9LrZKRQl
	boEJDh/fha+O6UO4/fK+h47WnljhnS3NklXP2UZyQixLAmwQnlRYl3P0/sEDP7V5fkhy9I+YP1xR8
	eCgi8oHJNgE5HY0YkN+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI4Fv-00000002SZP-0Sdj;
	Fri, 14 Jun 2024 10:34:03 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI4Fr-00000002SWu-19MZ
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 10:34:01 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2ec1620a956so6807071fa.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 03:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718361237; x=1718966037; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nzzrXsvYFvoKMaClE4C1QUvbpC22b7f20EhDi4vOiQc=;
        b=xKjk3Y/ZJFlQ6K+iXFjyLmrmesEDoWRILRN7kjKK0La4SiKMy94nttbF8d/8ytuZ24
         7Uod36Pf1HLkjq/fSO/3AEfiqBHgRIy/5J5QASOC0w+LgUyRcE2X7UgbcSEHU3PIQMQG
         PZa5LyaCXR7gSRiuWPtRlmuZXOY2VcJGGnAF42LG/d3F0JcbWoExYusr6VlUXONg115/
         leCRs2jrnw6SrPhILPDnaeSw6VvJUsRz6I3iGVBOzRNcJH9HYjz4Yw/Udm0vkJDn7oVe
         OJioXBFSQ0BhT3XL8HiKAWYy+X2nyMAp3aRxxZrXEz84kdMy29cMBynWymJOvNNzuCW2
         qWtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718361237; x=1718966037;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nzzrXsvYFvoKMaClE4C1QUvbpC22b7f20EhDi4vOiQc=;
        b=wDj/nOzeYCQQZItwlrYq4Ud0fNBWVIewz4XY8Uu4UReEU0vuveoG7Uxz0sgwWAzCHt
         xOj8iScwpwXX3AcYnducgdZJv3xIsBYRwrYIC9iecKt6oBZmwyNAXhtiQ7/wWKEHUvGt
         tZsDjMa/986WoJAG0Aa5hfDvyeJ6wyxdAFS/KNcntVx6txbsHDZUs/b2jLKW+tzKayPk
         GKcA8EWC9HNumw1UudMWzJYmUvt5MSTJMAOIGyyFSJE7mVH+Zs907UwU0RiqSU0Fi/VO
         PXntTGe2oJuwCfm+XF6I8doRHZjc2XI2CIBu7qOTSD8n2CrHmv58h29PZ44cM9CXHzUn
         d1dw==
X-Forwarded-Encrypted: i=1; AJvYcCWmzEeHhrd7xPmLtSSvKWDCE64lsSJF5mnBXckiVZN3sIyLuYtudMgre6DzxZyDuLkmxsazTLXbXahD2gnM6aDsZRHPhpuZxo4ADe5dng==
X-Gm-Message-State: AOJu0YwGlAzBcib6A5kOHh48Mfw4QJGjvvAXkKchtVVHrINu9pyAGmnE
	Vc4ybx8waGf4m08dBO61RR4Ftw1lfq/PQJGfbbsDY0aMOXs+Hzy4h4NkAsCw+O0=
X-Google-Smtp-Source: AGHT+IF6mEEorcmc78Jh2JqE/2g+YCduyT8m9BvWcoXYiiwCnJYwE/grVOArAgCLk+3BywJlJp44Og==
X-Received: by 2002:a2e:9d05:0:b0:2eb:120c:1a59 with SMTP id 38308e7fff4ca-2ec0e5c6614mr15445521fa.16.1718361237579;
        Fri, 14 Jun 2024 03:33:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec0596521bsm5135361fa.0.2024.06.14.03.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 03:33:57 -0700 (PDT)
Date: Fri, 14 Jun 2024 13:33:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
Message-ID: <pprbxhow6gl6bqlhzoiozz7ymwqk5uwuyuwclviulie4ucyjok@xv34zrzw72oz>
References: <20240613-hdmi-tx-v4-0-4af17e468699@freebox.fr>
 <20240613-hdmi-tx-v4-4-4af17e468699@freebox.fr>
 <348e16f1-0a1b-4cad-a3f0-3f7979a99a02@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <348e16f1-0a1b-4cad-a3f0-3f7979a99a02@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_033359_358109_2B9A74FC 
X-CRM114-Status: GOOD (  26.83  )
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

On Fri, Jun 14, 2024 at 01:55:46AM GMT, Konrad Dybcio wrote:
> 
> 
> On 6/13/24 17:15, Marc Gonzalez wrote:
> > From: Arnaud Vrac <avrac@freebox.fr>
> > 
> > Port device nodes from vendor code.
> > 
> > Signed-off-by: Arnaud Vrac <avrac@freebox.fr>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> > ---
> 
> [...]
> 
> > +
> > +			hdmi: hdmi-tx@c9a0000 {
> > +				compatible = "qcom,hdmi-tx-8998";
> > +				reg =	<0x0c9a0000 0x50c>,
> > +					<0x00780000 0x6220>,
> > +					<0x0c9e0000 0x2c>;
> > +				reg-names = "core_physical",
> > +					    "qfprom_physical",
> > +					    "hdcp_physical";
> 
> The way qfprom is accessed (bypassing nvmem APIs) will need to be reworked..
> but since we already have it like that on 8996, I'm fine with batch-reworking
> these some time in the future..


Yes. The whole qfprom / hdcp part needs to be reworked, but it should
not stop the platform from flowing in.

> 
> > +
> > +				interrupt-parent = <&mdss>;
> > +				interrupts = <8>;
> > +
> > +				clocks = <&mmcc MDSS_MDP_CLK>,
> 
> Not sure if the MDP core clock is necessary here. Pretty sure it only
> powers the display-controller@.. peripheral

It might be, or it might be not. DSI interfaces also use MDP_CLK on
those platforms.

> 
> > +					 <&mmcc MDSS_AHB_CLK>,
> > +					 <&mmcc MDSS_HDMI_CLK>,
> > +					 <&mmcc MDSS_HDMI_DP_AHB_CLK>,
> > +					 <&mmcc MDSS_EXTPCLK_CLK>,
> > +					 <&mmcc MDSS_AXI_CLK>,
> > +					 <&mmcc MNOC_AHB_CLK>,
> 
> This one is an interconnect clock, drop it
> 
> > +					 <&mmcc MISC_AHB_CLK>;
> 
> And please confirm whether this one is necessary

Let me quote the discussion on #linux-msm

<lumag> jhugo, do you know anything about MNOC_AHB_CLK / MISC_AHB_CLK? Should they be enabled for HDMI to work?
<jhugo> lumag: MNOC AHB, yes
<jhugo> lumag: MISC, probably

> > +				clock-names =
> > +					"mdp_core",
> > +					"iface",
> > +					"core",
> > +					"alt_iface",
> > +					"extp",
> > +					"bus",
> > +					"mnoc",
> > +					"iface_mmss";
> > +

[...]

> > +
> > +			hdmi_phy: hdmi-phy@c9a0600 {
> > +				compatible = "qcom,hdmi-phy-8998";
> > +				reg = <0x0c9a0600 0x18b>,
> > +				      <0x0c9a0a00 0x38>,
> > +				      <0x0c9a0c00 0x38>,
> > +				      <0x0c9a0e00 0x38>,
> > +				      <0x0c9a1000 0x38>,
> > +				      <0x0c9a1200 0x0e8>;
> > +				reg-names = "hdmi_pll",
> > +					    "hdmi_tx_l0",
> > +					    "hdmi_tx_l1",
> > +					    "hdmi_tx_l2",
> > +					    "hdmi_tx_l3",
> > +					    "hdmi_phy";
> > +
> > +				#clock-cells = <0>;
> > +				#phy-cells = <0>;
> > +
> > +				clocks = <&mmcc MDSS_AHB_CLK>,
> > +					 <&gcc GCC_HDMI_CLKREF_CLK>,
> > +					 <&rpmcc RPM_SMD_XO_CLK_SRC>;
> > +				clock-names = "iface",
> > +					      "ref",
> > +					      "xo";
> 
> GCC_HDMI_CLKREF_CLK is a child of xo, so you can drop the latter.
> It would also be worth confirming whether it's really powering the
> PHY and not the TX.. You can test that by trying to only power on the
> phy (e.g. call the phy_power_on or whatever APIs) with and without the
> clock

I'd prefer to keep it. I think the original DT used one of LN_BB clocks
here, so it might be that the HDMI uses CXO2 / LN_BB instead of the main
CXO.

If somebody can check, which clock is actually used for the HDMI, it
would be really great.

> 
> Konrad
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
