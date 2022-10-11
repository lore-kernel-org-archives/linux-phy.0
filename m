Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3270AC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGVRLroLNGunLxFmDRKWh7Qo8aPDAEa305nox4NqK7Y=; b=pL4d6rntW836UN
	x8wLBD2z0qg7h6/SFEiT+x8k9xyewp43n9dZOJyK7wL582shXh3pqiuccm+i3l3eD+Frq8g1fQ9hL
	DvTMgjR3L760funqcMuSEd1jVv4WOzMAgu3+6OyM+4kH9T++qxLexkFTEu9j6mgbqT9YdCf7l2JWo
	oz0sWAl8ZJa4ghnN5m5tJ12YAjoCfNC2bKilJnKgiy+lb3PTabQmMVX54hfVCEVRBPWUmU/AIUgb3
	GqYdzSHK335+g6ZVD4eX+Z/iBbNtVgHnYb4H8zCVvphyxb7NQAngxrCKyTRILjJefFxWxJxkjs6+H
	XXPuxsCSgW4GnliWlNtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFb3-004NKS-IU; Tue, 11 Oct 2022 13:47:01 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFb0-004NJk-2f
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:46:59 +0000
Received: by mail-lf1-x131.google.com with SMTP id y5so21189050lfl.4
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 06:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Br0NTj8ZuH0OMXFiG8Wg0lpHMqpiMdL9G9IUbDLd/Zs=;
        b=RQSrGdfX0bpIJ+tAeoNzDiC1J6uuDKzs+4KorXjRVyWtREspgXAUskhA/H67L51QTc
         VLbYqejgMfLEPc3Jdwl4hVyrgFyq6q+kwAAYqM3ojG+9BRx0MNlqlE2g1ym8KiTpBtsZ
         LbJ15asNufiZcc1paa60exl/aSLvMaD6Yc6OVz+V8xs0bcUjMUo62qMzW/4QNCevKipm
         hqO53NlKsBBtZnkfn90wERhPBaBP2Xf2rYSpLKZ9R/fuTX2V9yhevm88zjenHxnQDMNr
         fSsY0WsL1yLowE7ChAilBqRR04wdAxOrINdDiAOL7TGC94mo4lvIxFYm8S+1f3sGm29A
         iHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Br0NTj8ZuH0OMXFiG8Wg0lpHMqpiMdL9G9IUbDLd/Zs=;
        b=QwEmbw4CYXJ82oje9Oof1jn4Tis6MV7ypey9lof6v0IJ8J60twhtkKLJjv6mkjgMyo
         Yd2jgK2s6SDdIZLd7B9IJbEciVKaaEy256DjuJH7kWaD22QOg+evGCeLZ9hbew5yXMGS
         0xuob+HhKEiUVD0LxtdjlY1nXOLX42TT9zB7C8rMu3hNxGQw4eZoCkBml6h0dC7FqvR2
         ZwTQi+I8zx3y7mHgJLqo9bs7zwF2I0eN+lRe37bSs4M/g+UkES+x5rzv4AOYAHX9dTw1
         k72B68KhYPl56SYD6ycmxBv+BK33QUCUtvJQ6fjcJpczIeWU9qBrTMSATZqHNRYMrpal
         1NZQ==
X-Gm-Message-State: ACrzQf1Dd4nXPapCPsQurFmNxogNmKIL334Njyil4XBSdp9fSvQpZSF7
	Vr0nc9wcHlzWedBNC/8pnJcu9A==
X-Google-Smtp-Source: AMsMyM6dqVFivVBAfJnusOTTHFixr6ta36EYELj9FkxhYexenNncJW1G3ektGPum7oYy8DXfnSf/1w==
X-Received: by 2002:a05:6512:3b13:b0:4a2:564e:6cea with SMTP id f19-20020a0565123b1300b004a2564e6ceamr8373899lfv.242.1665496014326;
        Tue, 11 Oct 2022 06:46:54 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z18-20020a056512371200b0049313f77755sm1858954lfr.213.2022.10.11.06.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 06:46:53 -0700 (PDT)
Message-ID: <66261491-530d-c368-6cc8-daeef74fcbda@linaro.org>
Date: Tue, 11 Oct 2022 16:46:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 08/13] phy: qcom-qmp-pcie: drop power-down delay config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-9-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_064658_174848_0180CECE 
X-CRM114-Status: GOOD (  22.37  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/10/2022 16:14, Johan Hovold wrote:
> The power-down delay was included in the first version of the QMP driver
> as an optional delay after powering on the PHY (using
> POWER_DOWN_CONTROL) and just before starting it. Later changes modified
> this sequence by powering on before initialising the PHY, but the
> optional delay stayed where it was (i.e. before starting the PHY).
> 
> The vendor driver does not use a delay before starting the PHY and this
> is likely not needed on any platform unless there is a corresponding
> delay in the vendor kernel init sequence tables (i.e. in devicetree).
> 
> Let's keep the delay for now, but drop the redundant delay period
> configuration while increasing the unnecessarily low timer slack
> somewhat.

Actually, the vendor driver does this 995..1005 sleep. But contrary to 
our driver it does that after programming whole PHY init sequence, which 
includes SW_RESET / START_CTL, but before programming the pipe clocks.

I think we can either drop this delay completely, or move it before 
read_poll_timeout().

> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 27 +-----------------------
>   1 file changed, 1 insertion(+), 26 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index fa8bc6aeedf1..315de484f875 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1362,9 +1362,6 @@ struct qmp_phy_cfg {
>   
>   	/* true, if PHY needs delay after POWER_DOWN */
>   	bool has_pwrdn_delay;
> -	/* power_down delay in usec */
> -	int pwrdn_delay_min;
> -	int pwrdn_delay_max;
>   
>   	/* QMP PHY pipe clock interface rate */
>   	unsigned long pipe_clock_rate;
> @@ -1500,8 +1497,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
>   	.phy_status		= PHYSTATUS,
>   
>   	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= 995,		/* us */
> -	.pwrdn_delay_max	= 1005,		/* us */
>   };
>   
>   static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
> @@ -1529,8 +1524,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   
>   	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= 995,		/* us */
> -	.pwrdn_delay_max	= 1005,		/* us */
>   
>   	.pipe_clock_rate	= 250000000,
>   };
> @@ -1562,8 +1555,6 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   
>   	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= 995,		/* us */
> -	.pwrdn_delay_max	= 1005,		/* us */
>   };
>   
>   static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
> @@ -1594,8 +1585,6 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
>   	.phy_status		= PHYSTATUS,
>   
>   	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= 995,		/* us */
> -	.pwrdn_delay_max	= 1005,		/* us */
>   };
>   
>   static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
> @@ -1624,8 +1613,6 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
>   	.phy_status		= PHYSTATUS,
>   
>   	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= 995,		/* us */
> -	.pwrdn_delay_max	= 1005,		/* us */
>   };
>   
>   static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
> @@ -1666,8 +1653,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
>   	.phy_status		= PHYSTATUS,
>   
>   	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= 995,		/* us */
> -	.pwrdn_delay_max	= 1005,		/* us */
>   };
>   
>   static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
> @@ -1708,8 +1693,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
>   	.phy_status		= PHYSTATUS,
>   
>   	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= 995,		/* us */
> -	.pwrdn_delay_max	= 1005,		/* us */
>   };
>   
>   static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
> @@ -1765,8 +1748,6 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   
>   	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= 995,		/* us */
> -	.pwrdn_delay_max	= 1005,		/* us */
>   };
>   
>   static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
> @@ -1797,8 +1778,6 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
>   	.phy_status		= PHYSTATUS_4_20,
>   
>   	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= 995,		/* us */
> -	.pwrdn_delay_max	= 1005,		/* us */
>   };
>   
>   static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
> @@ -1829,8 +1808,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
>   	.phy_status		= PHYSTATUS,
>   
>   	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= 995,		/* us */
> -	.pwrdn_delay_max	= 1005,		/* us */
>   };
>   
>   static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
> @@ -1876,8 +1853,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
>   	.phy_status		= PHYSTATUS_4_20,
>   
>   	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= 995,		/* us */
> -	.pwrdn_delay_max	= 1005,		/* us */
>   };
>   
>   static void qmp_pcie_configure_lane(void __iomem *base,
> @@ -2037,7 +2012,7 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	qmp_pcie_pcs_init(qphy, mode_tables);
>   
>   	if (cfg->has_pwrdn_delay)
> -		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
> +		usleep_range(1000, 1200);
>   
>   	/* Pull PHY out of reset state */
>   	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
