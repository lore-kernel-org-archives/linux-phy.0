Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3792DC19F32
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 04:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95rD5IiSKh3s1oNt7jGL5gGkaHe1TDQdAQluVAodu+c=; b=JyEa4Mvb2ORKFk
	IBPoFffEHhHMrT2XvtkSuFZq/YFis2DFyWpackIOOf/r4MtQ/MbO1eSMymajJMCoF65gL2cEhhG9f
	q/+95aucCIZKN6DTZqjLUjPXGsgg0dRz67aqmA+Tgjpzxubr6QAqSqFXX5faW78zxR/9ujeNhwZh2
	Y7ouPYIouCP2ZGGTZbnahSrv6UqAH2z7jHm/odh6YLjb9S6IVmngJT8wUN4B6DjcAl5FbQKlK7A4A
	WzoaqltxCAtLSeH60P2RoNJYnZT6VSnEo6Iea9lPr6gjXBP4CQK9b1dW+k07fzA2E/AfoeO0RAA4d
	dw6QfhSyCziuIvPzfj9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpg9j-00000006wX9-3TMd;
	Wed, 05 Mar 2025 04:14:51 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpezC-00000006qb9-1udS
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 02:59:55 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5494cb8c2e7so5425104e87.0
        for <linux-phy@lists.infradead.org>; Tue, 04 Mar 2025 18:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741143593; x=1741748393; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WJvKJ68rlC+sLGTBZdabg/gqDqFQctmrcG+n8a+ztWA=;
        b=BkhD94VJlBpQvFxwW0c3SDKoIsgcZ6zWN1EHypdqnw41Cl5SFYVboiESbXQesYURTO
         5Aoc+9gfDXwfoN90P4zNQrOmsbGX1bcovJon9ls3ixnm2zDJzqe3EZYTMzqhscNGx9A5
         fomnfZWRu6O5JPMV5kmgKQ7tBvOH5EwzTyIK3Ny34A0l7jWCZE3ApC1VhFKhxq801GVa
         Wj5NlCc/3LDDgx2wF5MNjVRVWXXZ+UAPRCtwrNZKXku6CjppU8EUcrLSMItnUKhHsdRE
         /eSzgoubCqE8RR6YhxFvA0SpeLasppyYArf9+c22NHXXN7D/jX14sF4Kp2YBJCQCEMp7
         bVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741143593; x=1741748393;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WJvKJ68rlC+sLGTBZdabg/gqDqFQctmrcG+n8a+ztWA=;
        b=RGOZOYlA3KecMF3QlBtHsDlUZJM7bgnwMhjCJWpJa7doyl908wIw1VccOEeVwPbr/I
         /HPaHfsKQ7lYlsaJPaMOlyqQ0QjFxJegMETdS5dbn9gaJD8Czwgr7ZAej9LoE4uGHuFs
         PB6gLWTEjmllXTEQRXiBqGgFLbxpPKkHszuJzT8hR+QHwAKYFPJ/ts6Tf2gQln/bVKYn
         O62AzCGsB5M/L+HhAlm5ztqHeZ/Ic0NYlSNugApfvesV4WlqvwmG6wAsj4QQquFDJJZO
         aaYdbiMg5LQktYcPcpWBSYMo321NMl6YZlQZqaUyddt9sroGDphnlsy7DuY6iCSFuwT/
         49RA==
X-Forwarded-Encrypted: i=1; AJvYcCUma3GjHNz4u3xZCr6plaZSS/L06TmuNTsK0MHOzGRbwHpwmtSjgV7flG4mR+LEScJPklV4z5mgVVU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHRrbJdyYHkphUpi5dCeTM0U4GSlcR2cThOv5oKOJaclhhQ0Tt
	NdrGREustrxh2lwqJoIp1+2R/50caeasFQgacJfeDPSV6t+4SX8ufhpBrUv2Auk=
X-Gm-Gg: ASbGncvUPFlRatv8F45WK3mA7gIBtHKyHg6AxJJcctyFWaFjhUFua3zyy7ORh25ZFrm
	fkbdOJaSZXxD0tG3MlqwSrb4CHboolGtOmA9tvQ/weq6zYIPbPay1K/f4IUJbINyY5rPAkMIRlt
	4O/h/X9PfIOK9gHEHRFWl6J/oLsc6MB4hKU3thJX8ePZCqytiYEjMgUM7lxM2xeCnEA0vjtUr1i
	byaBKxZNeQY5vej38zkwDvpcH/kTSdUe2Fg7rL+Qjzn4g/PiencjQxhg+IYynAGfDZ38bk4VoR6
	SdOd9sYO6MOfB5C6tA6LPwcn42O0OaGLH1DB8zhKy1c6V+gfizS01nM2XXqfJQ+cY6PwUD3ngha
	4kohDKo1hkyO3PyhXje/GLfdN
X-Google-Smtp-Source: AGHT+IGkLyEj88NKFgMk5Dc/qcrMMu5c5mz/edvqKr7cxRFirThc+Fkx33VXvY/6F71lJ9O4B98xLQ==
X-Received: by 2002:a05:6512:ac7:b0:549:39ca:13fc with SMTP id 2adb3069b0e04-5497d382f6bmr469921e87.49.1741143592852;
        Tue, 04 Mar 2025 18:59:52 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54962415d13sm925305e87.257.2025.03.04.18.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 18:59:51 -0800 (PST)
Date: Wed, 5 Mar 2025 04:59:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 9/9] arm64: defconfig: Add M31 eUSB2 PHY config
Message-ID: <xgryihmtcbvhimm4fr2pcrhjcwdp6djfrgtwj4a5kl4tukeavb@de5irgx54w5p>
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-9-a698a2e68e06@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250304-sm8750_usb_master-v2-9-a698a2e68e06@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_185954_491400_01DCFD05 
X-CRM114-Status: GOOD (  15.40  )
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

On Tue, Mar 04, 2025 at 01:56:42PM -0800, Melody Olvera wrote:
> Add configs for the M31 eUSB2 PHY for SM8750 USB.

Please use git log on the defconfig to check what is usually required
from the commit messages. The defconfig is not Qcom-specific so you can
not expect somebody to know what is SM8750 or why does it require a PHY.

> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 3a3706db29822036d25a7228f8936e2ad613b208..7a7187475a11206e708a5a2c6dd51736e16932e9 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -1587,6 +1587,7 @@ CONFIG_PHY_QCOM_QUSB2=m
>  CONFIG_PHY_QCOM_SNPS_EUSB2=m
>  CONFIG_PHY_QCOM_EUSB2_REPEATER=m
>  CONFIG_PHY_QCOM_M31_USB=m
> +CONFIG_PHY_QCOM_M31_EUSB=m
>  CONFIG_PHY_QCOM_USB_HS=m
>  CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
>  CONFIG_PHY_QCOM_USB_HS_28NM=m
> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
