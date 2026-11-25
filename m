Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8433C606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 13:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Q/kFJGHI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=UZ1EWn0X
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pHTOSP7Y5teLl4iJTgd2Uy8xQPeH6cruFg4Fr3SiC1k=; b=Q/kFJGHI8m5cVndEEFgWvmTq6x
	tniwL/cvR6l+JRQhcZoeXE+84L2NsyeUAuJz4StzjICfY2piD+Wd5xxmpgCWtL8j86fZEc4Or2xIk
	LcK7KtVQn5B4j00NdloLlFOntdc8FXuevKmOcyGQ/MrNPiBtJ2YpT2k9Gr5FwzmmyJfesjRJaqVd8
	N+FI5yUHIyaCHrbcMD5UwKYzQ0EoRDta5m1xp5E8+DY6AGXuWARNA0cXFzxKUufgRIzjIpEbik5gR
	gkC5IAEnX/lZgAefdBxYu7bwXtbQ6yRJd/e5Hk9SBa2FV4xdnRTfEJFRl6Vp0g9ji4stlGNMw94Er
	u/HdgLNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWD3E-00000009zHy-3UET;
	Wed, 25 Nov 2026 13:28:45 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWD3B-00000009zHF-1QKD
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 13:28:43 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5c14c0503dfso516729e87.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 05:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795613319; x=1796218119; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=AdBqif1XdprtG6YwyZi9UA3LL5Dre8swdPb1+TR3fvE=;
        b=UZ1EWn0XYlmSvu9f6cUr8oxaR5+4QjMQ3OvK2Sszg7GJ/+2nUGwdR5AuogKOcPiCpn
         oTv8YeOzopwJsl5CRkWfoFW0/0ZLYunky6jJv9J5wX8s8kg8ryHJjhcoDkOsDgDFX427
         gjZ6+OnQb2y+/Tt8SlfWEHOsRD+V07DxfmXUe07b3Kh7TaOXPNSBNW4m3mSBTR928mn9
         VuSV+HqjVHQesIUnfhSQZo9sCq+z9N1vmVKxhdcA4w53h3vePnXRDsV24G2fvAgINZm7
         EZERi3SS2h8gi3YU7/XFpyoVJNDw26cjv+OhTQ+u5meEFJGpQK4X3EWHZQi+5m9KjQXl
         mf9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795613319; x=1796218119;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AdBqif1XdprtG6YwyZi9UA3LL5Dre8swdPb1+TR3fvE=;
        b=abdYhsriqIdeaZs2+mx0rBC7dlj2rE9QrZ27/uYiz+KAKi3pdX5+CIV+y8booU8REo
         j9Q1I8+vwhGMuQ00TMcXZ6B7tTWEKEE+kyURnpnkB1/rrzr+56vQ5NJxnD3+kW3lBzWN
         Mm8+bAaVOKmGJHCrv5OyUdLarHMTds7LNvsCJl+2rY6Dxthq01uxn4MfelncdgRD9iRd
         zIa5GAo5j6u/uSrttgC4ukrja9q7nxyMvHSPUXIzbsxqkubwovuPKbDH9GoR4Ii8J2zm
         hzQoBtI865lYqQuX3ccV2bMBgKc3fk/6mh8xKMGZ60swcqSbqbT8ZVpFVxXR+9bttFmt
         JkFA==
X-Forwarded-Encrypted: i=1; AL+hErGPGW/+DetSePtsvfWMZ9PFHm/RlXdiaz3uQrvomlyyKcsP3Lc6s+p5EuzF7lK8lJFnPLHqu1ipI/w=@lists.infradead.org
X-Gm-Message-State: APuU4Z/YHH8ovrG9uB3fgfy0G2BRgx9t24YyFd4GBkhA9iJdoInR2Wl0
	ji8/860/y5wKFYItLiRFnFMDftXCqKmQu4XoBiIURdi9vZ9G5KEv6PMDsDdDyc6mGE0=
X-Gm-Gg: AZFdTZd4O5vW7pwWsx2SkVpRLhXdaty1f7XxwJMuHHG95g8v+U+mGSmIW9BLxYqXPlX
	vyl2SFVJ7N5/fKtZaaZJnAdgCn3Q7nDbw8s5llv7J4UfV1cpKJBGu4Dd3qQ6UIpMSuZmHGot9NP
	k2cCNDGLaamgC9BPr4O1lPnuC/W5Tv/F8Bts5BJvuUH8Cle2bUmrREyGOn4xDApbe77UtvP2y27
	cnTbdUeLu4HNzYWzdSg805zhNtmRF6/oXugIeNgUXSLapRXYTc8xG6q5W9TmZzow1wV56sczGRY
	p2tSKeW8yy2wS/X/afpcHnKaB62yIO/DZH2Aadqr4GNKIrZlu6dgiImciLiR655xduy+BycUGB1
	5tMcqa/9MsPydNGZQixO4W4dYA2Lr6NTZgnB5qI83DadXUjcJ7lCgKYozjDBdQCQ8RS7NxaS5Vt
	Q7leTNroPy9UFj4AmrFP4U7S3Ba1LOkwFkhd0tWFpy834pgMaUyca2ymzQK4w6Kme7QLmVN8WKZ
	njqAgA7OhQQRFi2F8C6DjSQPhg29pMrf0ltN58BmDR2GwcCLrsVssa/rnC5ZuPOpEqzTPk24VbM
	ZYS/VpiBkGGZO3jIAQVEuVayWIO1X/U6o6ePDM6M2qClA3Cd+jpptFOOeqg9uIIO8Jg4de6Pny7
	Gn13frS0=
X-Received: by 2002:a05:6512:2514:b0:5bf:a66f:e5e with SMTP id 2adb3069b0e04-5c1bc57989bmr6590468e87.0.1795613319090;
        Wed, 25 Nov 2026 05:28:39 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c1bcf333bcsm4683145e87.2.2026.11.25.05.28.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 05:28:38 -0800 (PST)
Message-ID: <a2010032-8750-4289-b443-3afb57d656e6@linaro.org>
Date: Wed, 25 Nov 2026 15:28:37 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] media: qcom: camss: Add Glymur compatible
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-3-d7c2983d6d7b@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260925-glymur_camss-v4-3-d7c2983d6d7b@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_052842_545621_143EA1C1 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Nihal.

On 9/25/26 08:48, Nihal Kumar Gupta wrote:
> Glymur's camera subsystem hardware is a functional subset of X1E80100.
> TPG, CSID, VFE, CSID wrapper and ICC resources are shared; Glymur has
> three CSIPHY instances versus X1E80100's four.
> 
> qcom,x1e80100-camss is not used as a fallback compatible since it is
> already claimed by its own binding schema, causing a duplicate
> compatible warning in the DT schema checker.

This sounds like the DT binding documentation shall be fixed instead.

It makes no sense to add a large number of new compatibles to the driver
code.

> 
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 23f3cc30a15a5e098162bea98ba69fa636abdefb..9954a99981004590d34c722337bb6510fe759699 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -5751,6 +5751,7 @@ static const struct of_device_id camss_dt_match[] = {
>   	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
>   	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
>   	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
> +	{ .compatible = "qcom,glymur-camss", .data = &x1e80100_resources },
>   	{ }
>   };
>   
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
