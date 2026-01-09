Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D08FD1A61D
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 13:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqcjblcOD0bXzQTUTRc4ru6oH3+QCE5LUG2o2KjFUH8=; b=SagTRc4uie59V1
	F28p1VxAlfS6QXOLDXEJlClMfyfxs7k2bV7oHGxhEl47tVmQ9OZOYmRjX6FsW5u/GsL66MJCpj37Q
	rmzFXEdJMK1caiLsxRCwdvtamgT0xWDzSWygCcY915CMPciN0IYUv2P76rtNMEv7vn9mIex7y45c6
	pqpILd/fAi7BJSBM6JTo+xYv9v7/Ze/fgWUZQOQ1INMVD75Ogr7FvEzkLhDgoOw3VzCCkZjG3jU4p
	94bRQSa9iXhvT8ixTrr4lVqVxUx6uS6xAs0CfAfxNzvVb6fp4Igf/81H6ZCBVApjZHs2bzzE52Qp5
	CLXzGiVFwLNsKubF6LqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCE5-00000002KmA-2MwL;
	Fri, 09 Jan 2026 13:08:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCE3-00000002Kln-0YiO
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 13:08:24 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099XgtU1048208
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 13:08:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rYxmcgjAaPH5f3Joad06AAEs
	zFSwf1T+AckoT8boG/4=; b=GM5AFeFk08QzSSRT+XLnxcNKM1oQxOXQvaKaD95/
	h8JHQWL3tido895fnLFF8mUwa7K9WSyBmf7tpp0dqrQ6Gi7yQZHgz1yzuYanb4O7
	z6gSbPdhcGvsjpShEw0rtUjgFTZvEXUv3ar/eawcOQgwPZHuHZ3z0FhHak+B0YNE
	dXtLaQDGyJB6lXJQUrmke1qe0Na2ZVpCs/bPY1Y5CQo5+RHtngxBvO5fIaPDN7Xb
	QplAanTS9ytYFUEdC2BAqw7WIN5EBKf7df5g8ghOHNYIHcAQo0Tjc+ldlFLxDyEA
	fq7AR5XbwGVjuYwzu0C2EhGOrmUV1QaXg57Y+m97wFoQ7Q==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjy5b8jax-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 13:08:21 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5634dbbc1a2so1840329e0c.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 05:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767964101; x=1768568901; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rYxmcgjAaPH5f3Joad06AAEszFSwf1T+AckoT8boG/4=;
        b=HQBPQsYG63qvpyv0HlFvSugRCS4KO/FvKLYUTvlLNxk1KGtbweErQc74M812egafQ9
         cwqSdvy6KFSvOMHN5OnycvggNE3Yr97J7wHGWJiGhS7N+defat/QFlUbDYCVugdotVjx
         0T7uJ8p6cYBSrvqO7VDbrbCnDRQ6jeEypkBOoZVYdQckTXWFiysnV8t4RxfU/0oByjNc
         2CVTv9KiDZbH2dAIDxGcv/6kwotH7p12HrpIErKjv+HkqpMfPSJ9tpAG+fEfTi29BPeL
         y96kfLZCGYqJbA7obIdIieT7M5Ic9qwIJoNkB87XcgRm2C7M2sj5OEQuBf2IKYjK1tfP
         aLWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767964101; x=1768568901;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rYxmcgjAaPH5f3Joad06AAEszFSwf1T+AckoT8boG/4=;
        b=X4DILgqOaMglOVdn8d05+DpPzNO4xyYJRDQ9C3c6iohtiHqW+W88hF6Tg6MvNedhg9
         04asJSRgHsC3gv9efMWWdLcd048wZl1HLo9tWdMJJjMp60JD0WUn1oLkiSoZDQMBAVfF
         lsw9xgXCQyifR7fGZ6POiGkT9L26EdEs9BJ+uPXextzQVZdqYE64Z+aDgcH8WRlJKWlA
         6G+O87FNyMOLqBLZE0pwJh9sut0BGd/EVTRpBkgkB/uckEclp8Av2UDU7zkxVFZJO4vy
         mEcRJahpe1qNJn7B7XI84RfHbALctlVk2GCY3nWbBGfd8IRns4lr4I/3H7562gpaVGLn
         9Wjg==
X-Forwarded-Encrypted: i=1; AJvYcCVb2p1RKVPX32VJKdSpnMYPWpCe18A/Nn52Iy/24ToX2CAXwdP2o6irP2ESDqIddEOddmEfO3GYa4E=@lists.infradead.org
X-Gm-Message-State: AOJu0YyeLCAbNM7pfERs48oq73Ed8xVrYQhaSXx/KoSMQU1By44AJ5kw
	O9dA20iqajcysB1JuM7jIpUzO0NeTG53NODMAook43CSNSAbcfcxazUPPkHM/WmrPl2TI5q+ivM
	4dke5Xfb+OOWAvUYpSEbTHZpV9T2/OfUmknjgCwd7+8WSfumCunEKjgLQ31GeAuSfZgf8
X-Gm-Gg: AY/fxX7YumUPPS2PxEQxuZr6kroaFkas9mDjmK9P9vpmpd4hbae2mrKR83WZx/p9dv5
	f9qzUg6oxTiYtdVwZifsBsi5w35Qn+fJ28WO5d2L802koL7L8fuC8Jo3hAeIzd7+ob+stgEBsET
	za4JBIDicwFMx2l6pvW2XvWOraVtvyk/PSP/NeUtKK2Hu2xvS+uFxkgL0YJky76Ef9u0bU1fvNl
	tWSo8is/rhNXftsFqPq3wBP6xpr2VROjDEvb9D+fAFFLlPsa26TfuPM5cZpLW6hVyPKIdNN22na
	DI/R6zvjhNgEfNxXl50cVbgeqew1HcFoPbZAfpW+b4IURPB3tnowAGmxk8MxXc2W4pI45MsDPn6
	r3cQ24c4V9Xa5NYz3F6Yww7FScuu5VIeXz6O5kbs65Ha52lmZa96Z8hBXaJ2E269PVTyoLIWeaY
	RJfP8n1E24yzIZUwtZmowKotc=
X-Received: by 2002:a05:6102:6046:b0:5ed:6e3:2e31 with SMTP id ada2fe7eead31-5ed06e3309emr3029871137.45.1767964099673;
        Fri, 09 Jan 2026 05:08:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHALK7BJoUm7oZ2urRmssWrAnK7wGTj1a1eN5oUzSC5pVQM8bdSD0PoS8vDugwZTQGXpy2+/Q==
X-Received: by 2002:a05:6102:6046:b0:5ed:6e3:2e31 with SMTP id ada2fe7eead31-5ed06e3309emr3029843137.45.1767964099227;
        Fri, 09 Jan 2026 05:08:19 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-383140e641dsm7743091fa.50.2026.01.09.05.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 05:08:18 -0800 (PST)
Date: Fri, 9 Jan 2026 15:08:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/5] phy: qcom: qmp-pcie: Skip PHY reset if already up
Message-ID: <nmle3y6nb4kjcwstzqxkqzaokeyjoegg6lxtmji57kxwh5snxa@p76v6dr7rgsg>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-1-7e6782230f4b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109-link_retain-v1-1-7e6782230f4b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: rdBslIwf3gsGNeTAgOZuivoXPWCQEiSK
X-Authority-Analysis: v=2.4 cv=JP42csKb c=1 sm=1 tr=0 ts=6960fdc5 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=oGCaagtNXkZHtvXD5hMA:9 a=CjuIK1q_8ugA:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5NyBTYWx0ZWRfX/P4VsxE1nRAu
 PTZN51qbADlfgKVt2RjCI/N1nzXFTQy5lI0FMzBl0E9Y9zUFXFmJ8o43LsLTe+f+h2aQyo8K+zM
 ADhxCNBlygXIq0ZqWGJ/NMVK7G4UJeVGplaJ3feqwqAZkomNCH6nL0Pku3SsL3zLIyziqMl5r70
 3PO2L1JopMypPHQnoUzWU6qt30h3K5E/MaXYS4OHQb7p/jM55yTSR3GGBD/qiXukBsi+a4E54up
 jp390vlxz8fYOqxdyCfH4z52W3F1eoxVMnP0eGuswwNKEbt9b0aR5SoKTRJfyU/3cc/Be+b1PUj
 fk8AzuPNfPUFJ8vkEqUTw3WycR6WsiTaze6dly1h8RUxH57QTVF07yVLyCgt+8nqC62tJvohviR
 kiIw+ztmkk7bR7XvRerVu6EZNWhBVeYwwZ0b7P3qRL+WsIhLbSbIYaxaC2nxKSADdnB9onB3qH/
 68zUOxBcNRz/Vi/vufw==
X-Proofpoint-GUID: rdBslIwf3gsGNeTAgOZuivoXPWCQEiSK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_050823_298126_1047F8B9 
X-CRM114-Status: GOOD (  24.54  )
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

On Fri, Jan 09, 2026 at 12:51:06PM +0530, Krishna Chaitanya Chundru wrote:
> If the bootloader has already powered up the PCIe PHY, doing a full
> reset and waiting for it to come up again slows down boot time.

How big is the delay caused by it?

> 
> Add a check for PHY status and skip the reset steps when the PHY is
> already active. In this case, only enable the required resources during
> power-on. This works alongside the existing logic that skips the init
> sequence.

Can we end up in a state where the bootloader has mis-setup the link? Or
the link going bad because of any glitch during the bootup?

> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 28 ++++++++++++++++++----------
>  1 file changed, 18 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 86b1b7e2da86a8675e3e48e90b782afb21cafd77..c93e613cf80b2612f0f225fa2125f78dbec1a33f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -3153,6 +3153,7 @@ struct qmp_pcie {
>  	const struct qmp_phy_cfg *cfg;
>  	bool tcsr_4ln_config;
>  	bool skip_init;
> +	bool skip_reset;
>  
>  	void __iomem *serdes;
>  	void __iomem *pcs;
> @@ -4537,6 +4538,9 @@ static int qmp_pcie_init(struct phy *phy)
>  		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
>  		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
>  
> +	qmp->skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],

It is definitely not a long-term state, there is no need to store it in
qmp_pcie struct.

> +							    cfg->phy_status);
> +
>  	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
>  		dev_err(qmp->dev, "Init sequence not available\n");
>  		return -ENODATA;
> @@ -4560,13 +4564,15 @@ static int qmp_pcie_init(struct phy *phy)
>  		}
>  	}
>  
> -	ret = reset_control_assert(qmp->nocsr_reset);
> -	if (ret) {
> -		dev_err(qmp->dev, "no-csr reset assert failed\n");
> -		goto err_assert_reset;
> -	}
> +	if (!qmp->skip_reset) {
> +		ret = reset_control_assert(qmp->nocsr_reset);
> +		if (ret) {
> +			dev_err(qmp->dev, "no-csr reset assert failed\n");
> +			goto err_assert_reset;
> +		}
>  
> -	usleep_range(200, 300);
> +		usleep_range(200, 300);
> +	}
>  
>  	if (!qmp->skip_init) {
>  		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
> @@ -4641,10 +4647,12 @@ static int qmp_pcie_power_on(struct phy *phy)
>  	if (ret)
>  		return ret;
>  
> -	ret = reset_control_deassert(qmp->nocsr_reset);
> -	if (ret) {
> -		dev_err(qmp->dev, "no-csr reset deassert failed\n");
> -		goto err_disable_pipe_clk;
> +	if (!qmp->skip_reset) {
> +		ret = reset_control_deassert(qmp->nocsr_reset);
> +		if (ret) {
> +			dev_err(qmp->dev, "no-csr reset deassert failed\n");
> +			goto err_disable_pipe_clk;
> +		}
>  	}
>  
>  	if (qmp->skip_init)
> 
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
