Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04B32C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 20:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1c5TBAajeovUkFu/IYudyS2rZycWj6/8uuTLuVRs/Fg=; b=rjIvKO64FxzSeY
	yZOm7bofU5WVUvY6BZ/h00Qi9Hqx4GpfNSO555FcCmrq93RiKZixu5ftEus6p8Zfum50ST8NC1K/x
	I31d7SctzNgAG/QRsgy25BYWKS9jyTXDu2ZHZOHy0zvrzbJlfzW5ce8UenAda8wRUHpnOiU605R4x
	n2IDrl24sDikFxVvAN4vC9og/sMKPILYyLOuRoUet7Cz45biGsPvmvA6VmFAWYzXB4SIvrO34TW72
	pdnW/abpGGmKMVFr2j776z+qYbuJc/SP110sNXAg3E9Cr20mYKJA4caqectQVk390CnAxWdZXYz/U
	E+boUr7LZensjwASKgzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiab-009JPI-CY; Wed, 12 Oct 2022 20:44:29 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiaY-009JNc-Kx
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 20:44:27 +0000
Received: by mail-lf1-x135.google.com with SMTP id b2so27490134lfp.6
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 13:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C+C0Mxv2tX523uCK05eKZPxUZ5oE4e3IyCVHLYGN5SI=;
        b=uvNDbWbG5eSo8weiIPDDLGWl8An4BMkTYO8SF7yC+yGjExdt81T37ieOfK+IDhI76d
         FqreDaEtg524sTKjC5lkpsWNNx0IlE+xv9xOZ0RkZx1FKjpP+4I15YgSZXadvR+/ryQk
         wCL3N1EI28kqJ6qJS+diwz1RwBORJrMX/EuWvdSnn/5kRs/BrxOgwN8l6h+486bpZTNz
         u0a2eZNigxL+OtWtlWMvQR6oIGMZuGwCuW4tZciVSsYskj1CQ8ywvoT2mA+EF8yaN8lm
         UIze/0FoQ+jh5NuSBrsDXDC4EOUcc3PiCtgH2Ycd5qy574j4mVE+UBMqJkYowJglYOhY
         d8xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C+C0Mxv2tX523uCK05eKZPxUZ5oE4e3IyCVHLYGN5SI=;
        b=VtJtLgbdUo9FGmfm7fpWjrVQsmlTgKxXLgkAh+gI51xbQsTcpEUKQEyzN0/FttYrqg
         kICjc3QN/gh7ESS4xEzueMFRIJBcM8duqlpHgJW5R1RFAQdBU3x+pWE84aM1TdExGH6y
         nIsXqZ0jqnE6OLVX7JJGGElr8LUt20deL+y4xCT7ujE/imC6In+NBV3OFXe2LCS+2b7C
         zbjBONH3os2CRSYGa39svtvydRXFC83wm3F+qyNn+0k8jLsdTtD3EJB47ZpOAPKEiZnR
         SB7a8as8dXvHlFad2pNgdlAW5h9J3vmrqTbREJHmgs2FGbUHC3eeQ1Wb/NAvwXkuWA9t
         U5vg==
X-Gm-Message-State: ACrzQf3dTvwmAeRRGULEh1Rdf++6cD0uk4jvwU+BwG41EWX/lsCGl9Ia
	BPh5cc1Ge7NMApBmyR51RI5MSQ==
X-Google-Smtp-Source: AMsMyM6hBJPbIlXaMhcnTghNSdmHcOfNis3jxOSvhveulPVBL8W/p5rpNKObX5xbxRTdurBq5KrwmQ==
X-Received: by 2002:a05:6512:2392:b0:4a2:550a:e21d with SMTP id c18-20020a056512239200b004a2550ae21dmr11490183lfv.550.1665607460721;
        Wed, 12 Oct 2022 13:44:20 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d23-20020a056512369700b0049fbf5facf4sm103561lfs.75.2022.10.12.13.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 13:44:20 -0700 (PDT)
Message-ID: <996cf5ca-fb54-a69b-f107-13571b6530e7@linaro.org>
Date: Wed, 12 Oct 2022 23:44:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 01/20] phy: qcom-qmp-pcie: fix sc8180x initialisation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_134426_716937_A1065A91 
X-CRM114-Status: UNSURE (   9.42  )
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

On 12/10/2022 11:49, Johan Hovold wrote:
> The phy_status mask was never set for SC8180X which meant that the
> driver would not wait for the PHY to be initialised during power-on and
> would never detect PHY initialisation timeouts.
> 
> Fixes: f839f14e24f2 ("phy: qcom-qmp: Add sc8180x PCIe support")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 1 +
>   1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
