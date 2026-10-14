Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87760CC6B1D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 09:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kM4uwDD6q1ODMMzHyMbeniKdP9wTLUkfF3mGtdXmSks=; b=bTdGsJ0p74SBGd
	+sMs+CHP/D73dNBjhn9fphL6qhznMOsCcLI/ALGRoGrhjtdj5nZbQjlKNdbzP4EEw+zew6ZdiRP4G
	Vf60/cvZ0Igjz05VXDUXDiJQn2kEl7Pu+GnZvQCLdL/a0IWljqLcAsfQOx/WkWcX+waGlaGcYNHbJ
	ZbUlH+jbRouPLNF0LAL0mLvS2p5UBeV5bAfjefzsc/udGg8bM3h4D0Whgt3jp80Byl56CImC8aiIH
	GrwxEKIFQifk8np7nusjnf/Qk7VXfp8fD46CT5G0DdNLxaxwcReFLmhNPYA4Y7V/YI/mMdwNnjIz8
	z0G579HcqQ7jhnVC3unQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvWe-0000000F5zY-2AY2;
	Wed, 14 Oct 2026 09:43:57 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvWb-0000000F5yK-3GXb
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 09:43:54 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-6b1f31c63ebso2343689a12.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 02:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791971032; x=1792575832; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=tOCQwbGkL9XqwqZkq5Sc8MdH9xmRzvz/HA/PLReDL08=;
        b=rmB0+OcR26NzrwAlIs7HP8H8JXIy9zq2mDSIzaOdL05ZSHk8ttlAihjRdG2XBz3LPs
         a6RiKfYdGZZh7NSi/rDP9leqp13a1igzaX2xHUWCikdrf/iITqsXoQNVK8wlWLxgRSHL
         yYmde4w1xejfe4nzPbpJwMf9oprM/SndgVm4a7taBzI850rGH9sJBpHrpDdlCket7tn+
         G0UXIO0eKvnpPKcSKZLNFJIVlPO3QghwUrUwf7i8irrCv/Dplvd6fwMYtjRNn6L/C2Mn
         GTlLrvG/rtcgYSb7EctVy0L12wASI/dD1zYPGv0Vg2GpuCNpmZqtF5QMgFbV+GBULcDq
         iukQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791971032; x=1792575832;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tOCQwbGkL9XqwqZkq5Sc8MdH9xmRzvz/HA/PLReDL08=;
        b=XpMtz03zx6gtl5Ola1gbA1EligPMmuF4QfU+Nh55/r3+Z25W8514LBDY2dYyKhKuXb
         Bxg3G3+slWbmNRSaraioYb7q4R1LrSxims96Rh9uaNASGw5aMv1Hd+4GA1RyEULutz5C
         2WWapVNx2EOVGj5bGdmp8lWHhUM7n1C/kM4mbffyls/jTt27j7LLfGxROO1vLu0G6bhP
         ItoEkRKb7IpSM7RSKFpQmoh4Te/fN37KlOyP4VPM74PECntVWBpAmYsaAd1Pft3D5MJ1
         SYJAQvMJERjAWcwG00FjxGJwL1uEoDcZuDpzaFHvOHPo+jNl0O917DYOO67Ga/LpWU3+
         WxgQ==
X-Forwarded-Encrypted: i=1; AKwUvBwAUD1zUn9sHmdD5nv3KMZcks8SRTgZj6HtLWeP/GjHLFngfeGKWy/Aqtx63L1c2i6TeiGuPQMp2GQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYIGPD0JKygIcPHMqp/qJz4pm9LaYS2aKJkTpc+gFJ1mPqBusGuR
	xZh4/iD060u3MAA6hixKEbQxWKSXWTYSmDGa1jRbU3EfZjAdEy8XApSGhXaUTKwyX3U=
X-Gm-Gg: AYBFou2ab5Vtj1c6PviXZ98TZC2gXdm0p56NE0KqhQWkF5inRnW2nn8Klgnb4mOJqhS
	xQyt4nYoN1Svw3/Ow3axlonpupwpCV0muDsYJVrehg40vICiuhfx2lR/F/1Y7dvzgs5xOx4UxuB
	c1kMeePLSGswL9xgIDPLgkULAuIDa1eRrZY4FR36gLahbEIW0i+P0xVecj8jZvtVMV6tN43GlDz
	Vqdy9IWefxRmqCFIyeXf/9aCQIbf2MGMzqAVClUWHMZJtWOdk9iiP5U4+PFqksx2fLvV7q6iV6+
	d0izOJS7kzrEUD4bbhZKnUG5Ht4Zp29TE2cUcOc5sj0pVU3q5yO/5pue9yhHQFGwK7Davru1/S4
	UVxR1A3vkbu2oeVXRFf90UkR8+/m+1q6H+9m58O9YzCpzyHLv2jYvSpHztuZ2WM4MvHYgMgMbVG
	Roc30nv1Ee/z8CRQG1uCxCqWmb9ZsitzWjN7qI/+jXeV26p8d9k5FAqKyc2VB8VvvegwvCGiBlk
	o8nf0d8yOUr
X-Received: by 2002:a17:907:6093:b0:c2d:d929:95e2 with SMTP id a640c23a62f3a-c31a7067739mr1466697066b.21.1791971031904;
        Wed, 14 Oct 2026 02:43:51 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.126.202])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c31a9ac702fsm690779866b.65.2026.10.14.02.43.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 02:43:51 -0700 (PDT)
Message-ID: <4fe3f636-2352-4f3d-9634-637622b2cd40@linaro.org>
Date: Wed, 14 Oct 2026 10:43:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] media: qcom: camss: Add Hawi compatible camss
 driver
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-6-fc93222da89c@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261013-hawi-maili-camss-v2-6-fc93222da89c@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_024353_845924_6FA4AAEC 
X-CRM114-Status: UNSURE (   6.57  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 13/10/2026 12:02, Nihal Kumar Gupta wrote:
> +static const struct camss_resources hawi_resources = {
> +	.version = CAMSS_HAWI,
> +	.pd_name = "top",
> +	.csiphy_res = csiphy_res_kaanapali,
> +	.tpg_res = tpg_res_x1e80100,
> +	.icc_res = icc_res_hawi,
> +	.icc_path_num = ARRAY_SIZE(icc_res_hawi),
> +	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
> +	.tpg_num = ARRAY_SIZE(tpg_res_x1e80100),
> +};

Wait a second - no IFE or CSID in this table, with both added in 
follow-on patches.

Lets just collapse the last three patches into one. I mean this can't 
bisect in a meaningful way as three distinct patches really.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
