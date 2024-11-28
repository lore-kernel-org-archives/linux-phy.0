Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 356C1D69109
	for <linux-phy@archiver.kernel.org>; Thu, 28 Nov 2024 13:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kf1Uoiq7dtTTnUdoPswU+URK+wxi2pXs+LnTpZ5b5Kk=; b=15V2jVRj8nNY4c
	QEuW/WdlwScfosqVIp3HzxlAUXVTYaSFrz6U+OM58q29hvKl+AfoRSKB9FiiIFdlsy3AWxa3WguE6
	V9fXrOPctHpwwkIofNaiHyM4+lnIb6X9UJiCzO5hYnNTlkxDLqfnyTHrIXO9koTJlAdszhbyHF2Yh
	NiRTyQitsXzMoYuT2unNNVqb2UUo21E+v+G/zZGfCszgTWFD7gPclvqak458Ko2n1tJjZXMNCnrIX
	SVTL6vfXhkORy2nSaiBA9tvue6UkKHrjFeY65xGzo3PvrQu6XRb2t+pTzoc8uINMi+cvsT8YUbmVJ
	XWsIzlUU7H6ppzso46zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGeTn-0000000FcI7-43ge;
	Thu, 28 Nov 2024 13:22:47 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGeTl-0000000FcHb-3zmr
	for linux-phy@lists.infradead.org;
	Thu, 28 Nov 2024 13:22:47 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2ffd6882dcbso7033521fa.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Nov 2024 05:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732800164; x=1733404964; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0trBlkAARfcalt0wvM3utILQ/svffGiHUkuNkTIjo9g=;
        b=N0FQKhjkgPEsjQUy8suCBnAygeeGUWBboWEMF1LIwEqpcdj83FyxFOFSdOyr26Gjxc
         DiKN/mOe874VNl4lDEs7EZdbBfPIoHKUtrl+u5u6GPnToTKEYDdOqVUp+sHIr+8KcOwE
         ag81tikI9d7U0eNOe4H13rgvSZHAe6yWNPg7AFnJp2BHVhD/HzDTxmCRv6HdWVxb3A/s
         wh35/LMoaHmiVVL8dm9Z7VvheCmgBcDVk5ZbqV4rhEcfqMFazq/s0KGt1gNukBDmOR3O
         /OAznn6tjtgM2r8QOiOwOveCBPeZ0eOQX7X08Hj7BiXqbmX66+4pV87yqcCZKG6m8FBG
         pp2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732800164; x=1733404964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0trBlkAARfcalt0wvM3utILQ/svffGiHUkuNkTIjo9g=;
        b=CJtqdy4+q7P9vnkRXttjZb6OD3TW7PHCAeKPZqQGitVo4MmDnsmbFGTiH41lcasryF
         Jj0wmKtp17eZH9VPhaNZHMDmiMKaqRy2GYDl4Z2MifR3v5HzLodDKDLZIiC5a9bwWNdW
         JUz0xpDIOKmKJ3OjgV6bbgACeW/DnE2xqpjVCuGiiyCu92i/F+jyTlOF8ky2Nc3qzzn1
         PCJAC58EzCMgSudyrq05VDBEGvKWx6un+EaI3WZN2pnkHHmcNYrVGe+bDMX+ifMgw+I/
         GAhpbLjm7huoGL2OAp39D018ijpoGaDXdviPVhheNsbqw2tZPaF5DXUbLDwUUVucjs5V
         IEXw==
X-Forwarded-Encrypted: i=1; AJvYcCVn51dR//xIVtM6Bh8wAWACjI6VifpbqCWYj6jQya5R6IX0jllNzS10lFnsKOWkGNFPw2u+VO22S+M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8qUlAeruMOezCfRPYjKtPIV/GRzPSFAMfcGLlhEgILgAV+o8k
	zunuZvHnLS3ZvZrGkoOmJild3jfQIZLZwwtKtkLfNTsyb0oFloEbKPbXMJD23Zk=
X-Gm-Gg: ASbGncvVgP1JZTmHh8eq9CrMGS7YLKMcZV7fMHlLEfpi55Hl8oFsPMxagipCVqx7o9x
	aaJZvTpqiq+QBQp41wWaTndmOqyXUimbE6PnyagGEwux1J2NjeMCukumeWFYF1Eg+n2noqDg7O7
	+6BFfyD6QC500kfDUCWCtfz2w+zAVdSOWrvlZRvqNHPfVxc18Hcw2OwhTT4CZQV1VGgvrhrgXpd
	IhT23fElKBUmQ1syN6bImO298ix36YILIuk3yKp16z9GXfwBMJgMG0dIXklL4++uHQd80ufxdP4
	ROFfbh9CEh428I+bWY+L1lDUKL0sgg==
X-Google-Smtp-Source: AGHT+IHEvVWrBgLarPrP+szMgf0Kt+2464HFdoUTduj2gmCoJGkPBz1dSTuSfhoY5FnSXf3ADQPMpA==
X-Received: by 2002:a05:651c:150e:b0:2ff:d41e:d1eb with SMTP id 38308e7fff4ca-2ffd60dc0b8mr25239271fa.37.1732800163793;
        Thu, 28 Nov 2024 05:22:43 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfc7503dsm1894131fa.75.2024.11.28.05.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 05:22:42 -0800 (PST)
Date: Thu, 28 Nov 2024 15:22:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_tsoni@quicinc.com, 
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/8] phy: qcom-qmp-pcie: add dual lane PHY support for
 QCS8300
Message-ID: <3azkbn5grdficfn3ojuckfawug65piodgs4jvcaukxkvgrhtkf@2vfm3qwv23vl>
References: <20241128081056.1361739-1-quic_ziyuzhan@quicinc.com>
 <20241128081056.1361739-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241128081056.1361739-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_052245_991031_B7A8C784 
X-CRM114-Status: UNSURE (   9.03  )
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

On Thu, Nov 28, 2024 at 04:10:50PM +0800, Ziyue Zhang wrote:
> The PCIe Gen4x2 PHY for qcs8300 has a lot of difference with sa8775p.
> So the qcs8300_qmp_gen4x2_pcie_rx_alt_tbl for qcs8300 is added.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 89 ++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)

v1 was already reviewed and got a tag which you've ignored. Please fix
your process to use b4 tool. While doing so, please collect all the tags
from v1.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
