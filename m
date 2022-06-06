Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8DFFC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jun 2022 20:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtnDNlrdS+t5+OlLnpz6lvzxsjwPUylSRG+QuFre3fg=; b=UpGX1GZYJTv7yG
	nrtAe98sHno5UasUDR59PMQxH5k+LHbryMvZH5RhlK98dJYpiBLAaCH3SlHrCOTJJ81brfS74KaiE
	CorML/0r349na+kjcFqDQw5sfsc9c9vV0rPHf8M7yrpDUXmrRYw51wga+HjmK8pxoRXbqs/rvC5JD
	sg6pyam6mEsmjns4YaNWKUAM0vwg2bMY2LikDAJYnXsnELo+PhGzvI/Zd80NMnCj096vLvkSsL7na
	vp77RCyA5kYE//A224K8nfFD27tR4UcM+Wp9P4XL0+/OeAc9Oqoe7Uj9IoW78SuSyKOw8SllkR7cD
	DQFmqCPdCa06IMsykgcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyJif-002nGA-6Y; Mon, 06 Jun 2022 20:53:01 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyJid-002nE5-5I
	for linux-phy@lists.infradead.org; Mon, 06 Jun 2022 20:53:00 +0000
Received: by mail-oi1-x229.google.com with SMTP id q184so4383331oia.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Jun 2022 13:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qWLu0CGS3iy/7eiKhm2guxzvJONBYd1dV/WdYo5dJpE=;
        b=i/mVanbw0l1c5Plh1b8EGgefhDVl6cQ8HOGlffP/jC1czKVR20tOIn2UrYsnJEdqcf
         Jb5sI1Q9mJx8bXj88OkW8Wy2toEebeg/etBFTSsJ2OHh9ZY6I5sELyEdxGANZeUZ9SPu
         EPmebXBDsg8WhUHOXoaeWxK0rntJlyenlWcsVB983xCePzDgLkTh8XyYU20E5Il71Kcm
         MNgvRCzMrkEr/sZ0D4jLw5Cvy1UxgayY2+KaEDe/169mepptXHXDmGlWmyil/z5AVBH0
         dvs7nZ4lbebX4cNH/KrZPewyFwXmPieFfWAhzmSDR6tCRAb7+jQVB1x9wtN718eoDgBG
         wCfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qWLu0CGS3iy/7eiKhm2guxzvJONBYd1dV/WdYo5dJpE=;
        b=tSF5+v0PCEd0nrqoF/YJyavApWmHlcz5TewpaaQdAUwhS4xEZQ442gdTHyIjtovYeM
         01jVdAri9q7czI/ZN5Xf8ySSQiti2+NKDGaKHNzWHeWv53a6hiFmtRjt0K05xfe7ydx8
         4wuoXtsIZnjF/zr1JBeK27eu38+YA9ptsKxSg3X32gVKtMcGzD8+KrUSOR59cUXMzNdY
         7Am/eeoazmBL8XM3qi1s2uCg36j0pBUq27ojQxBYTxpe/3SkfzsTe1lZfO1WfDuap8H9
         QYXHNrfrs/rmEJFvgP9qenjhKsvvtTeLv2VIVHm1mxVdQJrf35jDlPRk95D3cqkFmB35
         NuTw==
X-Gm-Message-State: AOAM532lQfj4eHgCBnkwpX1J6V00Wh+PtHXb8Xo51UHpOGblaVrEmZGl
	UuvNvFwIagZF7Am79XsGH7G1sg==
X-Google-Smtp-Source: ABdhPJzL4s6TLZ9AhDazX7Tvme0iMN+u41SxUQJIUaUD7bX/YsUYtr7jQajm3VydOPSIo14SAhbcDg==
X-Received: by 2002:a05:6808:1703:b0:2f9:cd2d:41c5 with SMTP id bc3-20020a056808170300b002f9cd2d41c5mr31957591oib.77.1654548777755;
        Mon, 06 Jun 2022 13:52:57 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r25-20020a4a7019000000b0041b768b58basm2522657ooc.22.2022.06.06.13.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 13:52:57 -0700 (PDT)
Date: Mon, 6 Jun 2022 13:55:21 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH v3 02/30] phy: qcom-qmp-combo: drop all non-combo
 compatibles support
Message-ID: <Yp5puQCGOVXN9G8p@ripper>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
 <20220602070909.1666068-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220602070909.1666068-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_135259_275468_39A5752A 
X-CRM114-Status: UNSURE (   8.91  )
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

On Thu 02 Jun 00:08 PDT 2022, Dmitry Baryshkov wrote:
> -MODULE_DEVICE_TABLE(of, qcom_qmp_phy_of_match_table);
> -
>  static const struct of_device_id qcom_qmp_combo_phy_of_match_table[] = {
>  	{
>  		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
> @@ -6175,6 +2594,7 @@ static const struct of_device_id qcom_qmp_combo_phy_of_match_table[] = {
>  	},
>  	{ }
>  };
> +MODULE_DEVICE_TABLE(of, qcom_qmp_phy_of_match_table);

You forgot to update this to qcom_qmp_combo_phy_of_match_table, then in
the later patch where you update the prefix you're making it
qcom_qmp_combo_phy_of_match_table (combo_phy vs phy_combo).

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
