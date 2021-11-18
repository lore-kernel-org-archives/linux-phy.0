Return-Path: <SRS0=n1nF=QF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2302CC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 00:19:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E237B6152B
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 00:19:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E237B6152B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpRFLIV+EClT9vksUmof/Ry1GaZpkGq/s987RCUHcuI=; b=G5470n7eNlpL7P
	BIWm9zKEQmINBnaYP4LThFcIAsaOy4YlJRNDZSJWHIzMH62wkpyImSkd0SFJyzKCT7XX4/LKUmN6/
	zJnoGAeGeHxSBGDIcrkwg46aw6EActwwk2wf2wXIjFYiA4bPfrFf2xhcqB9Ex4t+A2rMRqnG3sFs0
	fmAZV97ZV+ho128C1z4s6lWmHx86qt2aOkSaHo7v8UUxJXbJOMJw6TyZIeGsX0Ae8vjNylO4O4pxK
	78BQKmoP3N5gpdj29A/o2wLD2BRKCosELzIK/P20Ox8fJk2/md5Re/BhEMkmHCvDouGaET8yjcMv/
	IT7m84hMyussrJZHph3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnV9N-006dbR-69; Thu, 18 Nov 2021 00:19:37 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnV9K-006db6-KU
 for linux-phy@lists.infradead.org; Thu, 18 Nov 2021 00:19:35 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 a23-20020a9d4717000000b0056c15d6d0caso7759029otf.12
 for <linux-phy@lists.infradead.org>; Wed, 17 Nov 2021 16:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/gaJI1xE92w5bybO+2uk+Ues/5YpheyZH3EPuUGi4K8=;
 b=Sj+T1phOokUkXxOFSzyVqGdWeBFB/EmuPW0cgTxMfAkU0p4yRF4HfxSOYIdbuYDw2S
 zylCoSWqTJIvWAx51p1VtB/HN41WxuX5pvOoThiiqkHEW7EYEbnUaC3Durx7N2+TaHzt
 7DxvD4uSw8AXlzNJBbSpIx3WWY1buesKq4qwIvQ5aHuGH7vD7+qV4sXT9Fg6WAHD6Puv
 kvPx4lxiVXE5VM4U7R5hHM9wb/JQRK9ESCWh4ooUbM2Do4Rb921BLIQnQ+y/s1khn3l5
 DPKLGAsE9kPBfrympiV6EvLSn3IrHhluCa79Jsg1qqbqoat2wn+seRwV2hOtZMZ2gaoQ
 cmdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/gaJI1xE92w5bybO+2uk+Ues/5YpheyZH3EPuUGi4K8=;
 b=aLH8o/5MbN1Tp8BVNA/RPm/l/CWAMKufaD4XvmY9pXg7L8NbutqqFe3/bgOEFtxeqv
 tfJh6ZSkj4xvKv2zeN/FHk/3D2znh+rW/I04om048SPc7bwbSQecXtKMJkVV7XyNSG8h
 nJLejcfNSP6T5dEq2fjDMp0pnk56/SZzbEIB2F96GeMT5A8vq47iwqSxoHR8+B+wOzmm
 d49qsgBQYYzEiEFNVZsW6Li04oJN1sLTMyqHHox2qrNvH2khPm7DSJ4AOHtZoOeoSK9F
 5AOhCDh+y2jmzP6glT55xS1AbJVL6Iyf1Yxij8w0fG0wN/dloIDzdSWpzCzFhisDaIuG
 /ySg==
X-Gm-Message-State: AOAM533WXAtKrKwgbcbA21hw5uZtECxlGVlE7qspmJp3uMye64rTUPAa
 4gTeKgqdk30vJOm4f8kFLkRBVg==
X-Google-Smtp-Source: ABdhPJztOz3dIEXI+eue87kR2w090haDCtHhMUZS8VjEo9p8tHIAM2q7B+V2Kziz1qXoZ6C5z5RkRA==
X-Received: by 2002:a9d:373:: with SMTP id 106mr17315004otv.127.1637194773899; 
 Wed, 17 Nov 2021 16:19:33 -0800 (PST)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id j14sm388102oil.43.2021.11.17.16.19.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Nov 2021 16:19:33 -0800 (PST)
Date: Wed, 17 Nov 2021 18:19:28 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/6] phy: qualcomm: qmp: Add missing struct documentation
Message-ID: <YZWcEBcJ9/ghbgTP@yoga>
References: <20211116103951.34482-1-vkoul@kernel.org>
 <20211116103951.34482-3-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116103951.34482-3-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_161934_731729_264B645E 
X-CRM114-Status: GOOD (  13.86  )
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

On Tue 16 Nov 04:39 CST 2021, Vinod Koul wrote:

> dp-* members were added to qmp_phy_combo_cfg but documentation was
> missed, so add that.
> 
> drivers/phy/qualcomm/phy-qcom-qmp.c:2995: warning: Function parameter or member 'dp_aux_cfg' not described in 'qmp_phy'
> drivers/phy/qualcomm/phy-qcom-qmp.c:2995: warning: Function parameter or member 'dp_opts' not described in 'qmp_phy'
> drivers/phy/qualcomm/phy-qcom-qmp.c:2995: warning: Function parameter or member 'dp_clks' not described in 'qmp_phy'
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index 456a59d8c7d0..c96639d5f581 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -2973,6 +2973,9 @@ struct qmp_phy_combo_cfg {
>   * @qmp: QMP phy to which this lane belongs
>   * @lane_rst: lane's reset controller
>   * @mode: current PHY mode
> + * @dp_aux_cfg: Display port aux config
> + * @dp_opts: Display port optional config
> + * @dp_clks: Display port clocks
>   */
>  struct qmp_phy {
>  	struct phy *phy;
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
