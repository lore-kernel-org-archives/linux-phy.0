Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1D42CF9C6E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Sep 2024 11:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nr3QN/gtUYX5QITgvrFN90Pf69UvmxN7g+On4e2AwDA=; b=nMLuKqja3dcNiG
	D1j+s2lB6I8qYKr8TlTsDPMrcPKjJSmPlLZ7uqI+1yrykxIXgE6ik3F1eLlOdBdmErbYQTT3vlkZK
	fX1ng+kaokChY+7UaNOqBuIub5Yj4RL6hjbMsqEYyDguHVQ81a2IFuvxoqUOQn9PDESlpkJZhOvqz
	TGjdRGVwfMsZzIa2TUkST7SyLiMRdwOXtHN9cmSJJNxzX+hUglX6AedMsZsf5w0ywqGjr7zB3d82F
	MrD+MtRa98VFsT6lBMLdPEn4TiEmyVGFR5sTUbHQSgMFwLrky2VGugVPNmK1AQZluf4WAjknThLd/
	XsRquhqOE6Tl+/rbfXdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sshV5-0000000H5rF-0n7K;
	Mon, 23 Sep 2024 11:45:07 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sshV1-0000000H5ou-2JEu
	for linux-phy@lists.infradead.org;
	Mon, 23 Sep 2024 11:45:04 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5365c512b00so4816914e87.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Sep 2024 04:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727091901; x=1727696701; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jhnBmWAe9NUrsichqtPogCcJph5ClsF7zPozObEyXA4=;
        b=IqxNXInttBl7X6Nnm/9bN3DlxsPOc6aLa88X5hLQQ/pcdD5ERJOZMMZe9MgipHX7+G
         jLVsM3ABxdLeGIIAI61esONuKr3Dx7BYYIVNyTiUFsJiZu+9+GB/p9IRcaFNwkT0khcP
         twclWoa6IhOcPQd6KVorUufqAt+bTIydEjPD00T4dJ68kfPJu55fyArPBhPUXoQ+5Ah+
         fFMk6PyKtEhari8yD8jXjcOs0aM5fXc/TyWtHJRv2HBkf/P4NdW5HuHZnMkyzFPXhGBW
         VYn3B+G7tmFd5CzGZVzQcO8KnjMjlFADEHss3j+M8vNq+OL6Wl2GQKz+K7393X6P460W
         C19g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727091901; x=1727696701;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jhnBmWAe9NUrsichqtPogCcJph5ClsF7zPozObEyXA4=;
        b=dyocx2IwvaYk8jU1pHEys3LLJwZv18VB+pEgjoucRnW4Yx9OaXB1k4W9OzxbisV2BJ
         k5tf+EWpQ634itxywCPODh29mOO0PhY8PtF4oOQkltLjt5j5vsyE4kkrzuWZFvWT39s7
         pWPTTllnJj31puNu0Uw9fZH8I/PU7Q469iI2epeXGMZr75ZetZkNWHZ8FaJsQtV+Ih5M
         TXsiULfYvMJISxr/Yg7Z/5SJoxFwkhCNHTcY46sHao19lPfC/tOAhtzeCzmcRCeV/Hqc
         n4CQs+HLvaSs07OPxvVtVJio4RpPXJs4ZTei+h9+5A47PmpphqkNYQq379LhxQ49lCvJ
         yPnA==
X-Forwarded-Encrypted: i=1; AJvYcCWhlOndvkMyWq4UXYjp8DPnpWsWeQXC4faXZGkbxRxUinp+jMVO3Za2trCZw8AZ3apr6vasNqRU/ac=@lists.infradead.org
X-Gm-Message-State: AOJu0YzqREIBFu8G4rjTT8bmTaw5NudKwwS3amuQmcLr+PgH1lnJpzDz
	eEeKVjyo17WpGqILRZefEGX90XfXN9PAs2eagPcyXX5A8qUxxmsRHgNrN7qVioM=
X-Google-Smtp-Source: AGHT+IHa4aqsZXTbC37KCXn5fe4mfHLWoWf0Nyyz2mtzA1/7uiKYj0/E1PRavXBv3jLrfICSOaxmpg==
X-Received: by 2002:a05:6512:a8e:b0:536:52c4:e45c with SMTP id 2adb3069b0e04-536ac2f54b4mr4462943e87.31.1727091901086;
        Mon, 23 Sep 2024 04:45:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870a875bsm3259740e87.224.2024.09.23.04.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 04:44:59 -0700 (PDT)
Date: Mon, 23 Sep 2024 14:44:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, abel.vesa@linaro.org, robdclark@gmail.com, 
	quic_abhinavk@quicinc.com, sean@poorly.run, marijn.suijten@somainline.org, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, quic_khsieh@quicinc.com, konrad.dybcio@linaro.org, 
	quic_parellan@quicinc.com, quic_bjorande@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com
Subject: Re: [PATCH v3 2/5] phy: qcom: edp: Introduce aux_cfg array for
 version specific aux settings
Message-ID: <qughwerqucheykdwxhip32n7epijn3625jxn2ls7t7nptu4tkw@ls2u7uzaoegj>
References: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
 <20240923113150.24711-3-quic_mukhopad@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240923113150.24711-3-quic_mukhopad@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_044503_638486_B3B8E4C9 
X-CRM114-Status: GOOD (  10.83  )
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

On Mon, Sep 23, 2024 at 05:01:47PM GMT, Soutrik Mukhopadhyay wrote:
> In order to support different HW versions, introduce aux_cfg array
> to move v4 specific aux configuration settings.
> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> v2: Fixed review comments from Bjorn and Dmitry
> 	- Made aux_cfg array as const.
> 
> v3: Fixed review comments from Dmitry
> 	- Used a for loop to write the dp_phy_aux_cfg registers.
> 	- Pre-defined the aux_cfg size to prevent any magic numbers.
> 
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 41 ++++++++++++-----------------
>  1 file changed, 17 insertions(+), 24 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
