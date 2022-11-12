Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7877C43217
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 11:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSP+POLUFnkpIJ9JpFZDX0N9Zxf9A02ZIQSC6pk4eJY=; b=hrT69A4p3U2/IE
	GQ3hN+tmnGccG+1YBobEuUMj1cJbjSPLSl3RUb436X1WXAUQPPUXYdTbmc+L44ZsHEV/gKskWvoY/
	2l7pI4X1jPPQZhQpy/CFwYmqn9rwAj3ZhzCzuUjU6By7NDWUbjnYrdu2JAq7TBViVQPw80M+BVVQC
	pESwfPnvmGXrUPVAfvuM41DrnBAjh+1WE+lV7bwZQbLQ/lE608EZCe50QEctd7eRW21YoGmyLp6Oh
	yd9hoWD3BL3ZXC2RS9Egkt75bxu1YEZwBUnwHSEs2CjTmuT1EnI/UFIUQfHsyne5d0wK7ZpTahETY
	kJbBIVd1lAbBeaXq7JIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otooG-005JeX-BM; Sat, 12 Nov 2022 11:36:28 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otooD-005JdX-UR
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 11:36:27 +0000
Received: by mail-lf1-x12c.google.com with SMTP id c1so11969388lfi.7
        for <linux-phy@lists.infradead.org>; Sat, 12 Nov 2022 03:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kRbo22PtqHobTCeV1YZA3tYBu2AmF31nXSrL8zFUE7w=;
        b=PxRzqdglo5xsAfV2+zPzrOeZyo8zSrbPaBOlhuS6Ei+U4ZJpP10HKAuetRzSqXQxGi
         3NcmnZamzK6tWa5TrY752rp5ix5pYsfoPqhTgLO6qvAyfvdl2dfnSw6nGD4KaIYbl0Le
         Uq9Gn7JIMqsBXxLjozKT41aa+GCF/Qzh0AurAxCy5xwOK0CTpgk5WwT+RXBvvgOsQAP1
         gOS93K6POaiWagi90o+aJWNyivFFyoJrhES4i4cqSEzBdbzKGGYy/1kIq4D4CUtHuxdI
         hNJr0jePbm1qnlIsgmfFvf4hQMq4dxJachtIvvZjNETwHwp2qJvg8tT7tY/vRExbdx3k
         oCJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kRbo22PtqHobTCeV1YZA3tYBu2AmF31nXSrL8zFUE7w=;
        b=DJM918kD+P/C0ZjqYu0UPGl7QoxQyNrBck0k3pWEixDhZlzXzxEtCMsNjSTUqazQKO
         RZa/LXtKoqgPWgPxYn1j7Jo0qxqqBjb6jkWhHLRykFBZIUUQHb0jnYwzfKXRHCLVV31N
         O1PTHXI7q+ckFZb/Gmm4ipJybuqwhZ7nW2juczm3F/Lat5bJ0Omnh3w8HBOyEBJkTmj4
         +/UB56ui3m4jszDmd6zBQ9mUpJZj+7kFEV02So+AsHV9sMRF7zfZMSVOBNEEz0oZYK4F
         S+lImDPCBI+UgKyE9j6NDBLzU4rXBDclNmxDdka24LvFaw/5M2Q64Zz+XhoEJqyaiOfL
         Sfgw==
X-Gm-Message-State: ANoB5plhRnaI5iREZmTmvEZVmAOuffzTSMFRoEh6640/IScnuYJzJB2S
	/sbN6VY/4I1JQnRCD81u8FX4bQ==
X-Google-Smtp-Source: AA0mqf7rj1x3q1LBG9NCbryzByD0dB+icZsVAx/s1dv6PQrlY1jKO6N36HaoBo09/p6FnElIW8TTDQ==
X-Received: by 2002:ac2:4bd0:0:b0:4b0:1305:7039 with SMTP id o16-20020ac24bd0000000b004b013057039mr1885054lfq.543.1668252984151;
        Sat, 12 Nov 2022 03:36:24 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s8-20020a056512202800b004a65780e4cfsm833698lfs.106.2022.11.12.03.36.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:36:23 -0800 (PST)
Message-ID: <ae61af60-46ef-e455-6063-e47238c608b1@linaro.org>
Date: Sat, 12 Nov 2022 14:36:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 14/14] phy: qcom-qmp-combo: add support for updated
 sc8280xp binding
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-15-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-15-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_033626_014556_68AB3076 
X-CRM114-Status: GOOD (  16.56  )
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

On 11/11/2022 12:24, Johan Hovold wrote:
> Add support for the new SC8280XP binding.
> 
> Note that the binding does not try to describe every register subregion
> and instead the driver holds the corresponding offsets.
> 
> Also note that (possibly) unlike on earlier platforms, the TX registers
> are used by both the USB and DP implementation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 143 ++++++++++++++++++++--
>   1 file changed, 133 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 0a4d53e6c586..544a7e55bf14 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -798,9 +798,25 @@ static const u8 qmp_dp_v5_voltage_swing_hbr_rbr[4][4] = {
>   
>   struct qmp_combo;
>   
> +struct qmp_combo_offsets {
> +	u16 com;
> +	u16 txa;
> +	u16 rxa;
> +	u16 txb;
> +	u16 rxb;


Yes, txa/txb are more in spite of the vendor headers. I'd sill suggest 
to use tx/tx2 and rx/rx2 as used everywhere in the QMP driver.


> +	u16 usb3_serdes;
> +	u16 usb3_pcs_misc;
> +	u16 usb3_pcs;
> +	u16 usb3_pcs_usb;
> +	u16 dp_serdes;
> +	u16 dp_dp_phy;
> +};
> +
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
