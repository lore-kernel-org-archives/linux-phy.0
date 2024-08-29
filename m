Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 293F6C83000
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 08:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OZT6AQ/4TZjlEIjXy5s1RTCCH/qVRfVNF/DVqaJlQE=; b=QFraU8xDcfRQyS
	pkD5a+F9Y7uf4Z51lwURGX+dFSwuUPKMDiSQycV+7Jp9IcDAmmY/lZw5qjUSK7zyt+uwM2CZzSLEU
	uf247ZK1eHqtKMNI6i5F8ypQRTiHkp0zh/B7FGyVdYz6Hude0nN6qvEzIwbQyJKgTWLOWsjGPB/Ru
	ZlgvaNKorQn66H7EnQFSa49tQ71hUTJqZ5LXFgDSr6gUChUrdUexncVjye3ieWZap+zNf2g8oFgKR
	F6qJKDo1XceJHf0OYADbV/5SBsNiR+0KHbzmpCHfJZOBVXhFdXW/aaSrOxK97ukJjR51dtLerptKi
	l/IQSFdwgtqc2cUTHxPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjaDq-000000015Jy-3SYd;
	Thu, 29 Aug 2024 08:09:38 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjaCz-0000000158B-13yC
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 08:08:47 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-53438aa64a4so396972e87.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Aug 2024 01:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724918923; x=1725523723; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=T4BmdnrzBdhHgzltTkpUo2txI/5MakiYPq5y08PZ3iA=;
        b=bGLCZDS/Gy1Kt/ziouUkVh06G36VCaXvPaVCAYWBa2Vu3W8cQc593wMDZWvcVtsQBd
         jzWd4Ab/d1GGzcbQuvnc9NKvJ8rsaK3z5yNClHBe7U0gMBdcCyE1+7QG6W906YeV/DlO
         U5fVAXxEmcijRLFXwU2YPKvkQlDHisKO6YGe7C5iHAXvenV6ug1srPgohr7xxjqbHCGW
         Wq5+BDhxFzuW7lMPz+PeAOIT98/GO+CXppQlOPB7cn5Tm1pjr6FpUrs38eAAJ1/zJEN5
         yTAlJQWxEZjDql+AxNyN32id9Jv0njbcWEXOt3+CnbxGKJG587S0rQCzAPv8JA3abiRe
         xsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724918923; x=1725523723;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T4BmdnrzBdhHgzltTkpUo2txI/5MakiYPq5y08PZ3iA=;
        b=St6c8Noa4S2BguB92MKgQ9pOyijafOGyObmTigR5X8aHbNGB1TT2Pp1z2p8XuJ78cO
         vPWiIMQPoUHv/pjuGfTAASLmxu+dtiUY5VvMZXcoAlj8r6w7JZe6suNuq5CWHUyfe6ZK
         CN5BCG/0A1bs8DV63SrfCKINQPOvVeWuy9xFJUpZWpC70XhpWOgiUd+I1rkDSO7ifPqo
         7sPK83B3nwx0tG7j+Pvltjrh6Aj3Yu31qfvfrIFvifCkAcFFy5MTJw7n75idzy8oNI/1
         UArUfezDblnRXgKQU/pfGjmNBTcX2WsvCs8BzoBPQGZz7tprxrgks/XfW77iRlNNIGF3
         FhSA==
X-Forwarded-Encrypted: i=1; AJvYcCVAikD4+LHfyFRndUuOHpRYgh5hE5LUhgPn69KMCJkPqqumUzDKj5q2aowYgHunTBpnGt7Kj/2UBHQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyhf3By3qlEVeHBLaS5nzUtTD6Tb5AKSAS9pa1bPd06QCHLurr7
	+8MO8RTPlgs15HY6c5qXFGZYPtDjZpFoG4rw9UJH1XglIzc4X+27BB6EBVYDHcqi0eDF4OZrLeb
	A
X-Google-Smtp-Source: AGHT+IFTQjqSKFSw070YjNsOEWLTFMBsy1Rq3X8Pmfp9WqqZRc0GHm4rRo/dmxH9UycESrTXamJ/2A==
X-Received: by 2002:a05:6512:1195:b0:52c:e159:a998 with SMTP id 2adb3069b0e04-5353e57874dmr1271656e87.29.1724918922593;
        Thu, 29 Aug 2024 01:08:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53540827759sm86257e87.158.2024.08.29.01.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 01:08:41 -0700 (PDT)
Date: Thu, 29 Aug 2024 11:08:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yangtao Li <frank.li@vivo.com>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk@kernel.org, 
	alim.akhtar@samsung.com, konrad.dybcio@linaro.org, liubo03@inspur.com, robh@kernel.org, 
	yuvaraj.cd@gmail.com, ks.giri@samsung.com, vasanth.a@samsung.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 2/4] phy: qualcomm: phy-qcom-apq8064-sata: Convert to
 devm_clk_get_enabled()
Message-ID: <fngnwis5yyf56w3vs424clfuqf6qvaquq4udipqidco7jmr6fx@ijledjmr6apj>
References: <20240822084400.1595426-1-frank.li@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240822084400.1595426-1-frank.li@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_010845_335556_E02FBFC5 
X-CRM114-Status: GOOD (  10.01  )
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

On Thu, Aug 22, 2024 at 02:44:00AM GMT, Yangtao Li wrote:
> Convert devm_clk_get(), clk_prepare_enable() to a single
> call to devm_clk_get_enabled(), as this is exactly
> what this function does.
> 
> Signed-off-by: Yangtao Li <frank.li@vivo.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 22 ++++----------------
>  1 file changed, 4 insertions(+), 18 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
