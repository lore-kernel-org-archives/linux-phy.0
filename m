Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5AB2C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 10:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbUadUCg6VfSG+nWmJvb3lUymLdn41qZez3Or0PwpXo=; b=ZAd3iOOf1VPa1S
	1jOCrIff3oPgPLjrf3VFIowVOVJMfH6K/T8yNHtEWagmU7WZOu5H173ImlJiIxZEXFk8+XfbwErQu
	NAzt4UljZkktO/IBUT+HX65P0Wibn6RvOTpfQ4UYlkMzwxm5L2woKNb8OvP+7ZU6VAtGZDmksQMZw
	xAbKhLS0Nl2dCAajK11cI+WjIWArTf4C1zQpeqiCew2wNXOPvla1Shy/UhFI1cLdyWiUlpsC6qDd1
	4FXUE7MwctvwJZq3BGWM+h+MFD4f21aeFI2rsK8W56mWjdcEcktZkBeqW+0EycJs3GzLUub7FY8VI
	sC1CB3Bn8YQtThsF+z2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouWT9-00HSMK-5r; Mon, 14 Nov 2022 10:13:35 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouWT6-00HSKc-KK
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 10:13:33 +0000
Received: by mail-lf1-x12b.google.com with SMTP id c1so18443827lfi.7
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 02:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g6cAfN8IG06N0cwb67XCQdfKg4B9Lyyex8HG2tereAM=;
        b=zUdSP0JeT13WiKx8Gt3/nM7r+KddIq3jWJoIrhUubjdl9m8mjTGrrl9c/ZbWjJdUFl
         px/4+SP6kkapuAYvY4addiAOIBnFkKNkd+wHVnnScs8FUba3RAlHI9nY6jYRWfS3YLmF
         GkzxRQKK+JJndGMQz8Vf+Hwcg6JcRM7rwaVo7IyNsUsJVeYRzw+Rjpgfk30buiJCBCAL
         7WeZ3CLEiqmsCfeAc6R4bzQhk1VD8gH7NQr1kg1h14/4FifheymJys8eI0hBBdXXpcKH
         i3Fw3NTai5YkWBFBLpUB+poIzU4o9PE5ETnMO9aDcVdjY9J3+bq3cYcleWFnEvMPttLm
         q76g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g6cAfN8IG06N0cwb67XCQdfKg4B9Lyyex8HG2tereAM=;
        b=4Etg/FvVRp6w9q/HMy2sqLjXOA+pPEyPGiLkvlyP24/QhGnNKrg/LabGZVB+LihfOX
         kjijrT4jS6vfQ+xcbs2zTHks4dLIIB6T+LJVbgW/H943Bum3351T+6lqqE5xc/YkBzCZ
         VWNeW8IfDi8dXWyVPqvKphIL2oPsP6odtAaA/+hwCsEfpdgtpe/VJEbOt/CxdLVpBWMU
         KB4XsyIs64MmhbrQRNfR+HkCI39iErbvibfK0IrKy5SHpPPkUWgjBJfA8X4vB2QUIbqa
         MV1yoROGzjTXjPf1DL1F6DVGaht9ziZLba3dgvnPBLZ2ViK5RpmjvrCM3lfBY7UzwVMN
         RIdg==
X-Gm-Message-State: ANoB5pnbTKwXBJbQrkliZmm9YshQ6NJ9KfEqLxWjAGgbxjaJwFxfNO2L
	+zChdKKHFPAMJpx5usOSyb8DxA==
X-Google-Smtp-Source: AA0mqf4Tuz7F6m9w8PcHB2AgdPxXncbTYHFe+4wzy5B9+QdsCr/y8SUDDdaTlgeazkYU2a44SCfYBQ==
X-Received: by 2002:a19:655b:0:b0:4a2:483a:bb59 with SMTP id c27-20020a19655b000000b004a2483abb59mr3705886lfj.523.1668420808932;
        Mon, 14 Nov 2022 02:13:28 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id n5-20020a056512388500b00492ea54beeasm1763991lft.306.2022.11.14.02.13.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 02:13:28 -0800 (PST)
Message-ID: <8e4d42e1-b0c6-abbd-0fc4-7a88b387cfd2@linaro.org>
Date: Mon, 14 Nov 2022 13:13:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 10/14] phy: qcom-qmp-combo: separate clock and provider
 registration
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-11-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_021332_698351_B5FFF64C 
X-CRM114-Status: UNSURE (   8.29  )
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

On 11/11/2022 12:24, Johan Hovold wrote:
> In preparation for supporting devicetree bindings which do not use child
> nodes, separate clock registration from clock-provider registration.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 44 +++++++++++------------
>   1 file changed, 20 insertions(+), 24 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
