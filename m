Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65082C32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 04:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YN/PCHyvpWfBsQbXI2smaMkeD7x+t2IJEU5PwMNzWsY=; b=Pv3q7mZqatAGfm
	nLQr3fSZRdlsze4jQSbNRMC722+NalGp7Yszy24fbPgUI+GM+pIuatiUc1EerYF6Lctfatm4qorfU
	7EWvMqjKpbh5neZk7b0ZFqUPjtXBbEW0pAIZjrPASBGXL0vG18MDfcLlvnC2oM3/bX8meKUBTgNCe
	drSP4YPhrdl3o1j5x5PaKkXMyG9u8R62vmWAYG7F6FwTDtLq9/fLN5UnVtKkW6Ib1El5Q3t271VC0
	+JbAIhcIOD27I4vCCct6Z3VwhUG0mQPXfxtPPDDI+uGbY5jHSXwN3IUPGPQpXjJ2UrCRh6/OwQSko
	HdCWbTwFrZ+LkASiIvGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI05S-00Gs8M-Qx; Wed, 18 Jan 2023 04:30:10 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI05Q-00Gs7x-S2
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 04:30:10 +0000
Received: by mail-ej1-x635.google.com with SMTP id bk15so22814799ejb.9
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 20:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u6v14LcAICHb69jcIlcu7Td3nT4SVb66NgpvBJDBzQM=;
        b=zO+g8C4ezhmweF2QHzrs1mI/xUQWKclHS3VraN5/JLTU0t9Hp6C2GopHcTNUsLz3Fy
         bSeWI+iMs1o2fcU4ep8egVhdSd9g44TvNB2eSPuSVjNSHmRvUgGvXmi2SEU/JltcNG9N
         /pVbUAM+c+j/pKfwaoE7Lv2qvgfOmqnj59fOzUI9+1Dx1oIwmtmwLfbeg42/mA5elzOD
         WvQYaNK6MjUfLyFSwNo9Wcx6FrcgtinY65Ssm7vsLFbz3G3q8fdJcBHj8c3B+e9T1HKt
         WhmS0zf7yYG74QDaksdOx4VC+p9FiHp+u3qwCoaRdhFbWVlroI+J84O0j485bsnJa7Rd
         33hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u6v14LcAICHb69jcIlcu7Td3nT4SVb66NgpvBJDBzQM=;
        b=LD5tFGZkEOEB6facAuH3XXpeq3WP7k+OVlGxD0BGrWP+ldZSKPOkRK5UJRhqTxb10P
         UcxrljHVqax33L15YJpgFi9hJTtaJ14fcRLmbNvhoUWD1B2tdOXYkKesf1NfHECg2plE
         +Gj4dDqpPNL7HByo1WsJ02s+P0WL3uPjUMku1ZyjjizZZvYY3c9q9wjMab2I2jiYR1rC
         sVSJmjYwQZLSasElHKm0Os+l0AHwCwjuFI2i9z0Pg2+//2IU7//tsFf+lWZtRNttWHnz
         2OkLHwWHV1k2XjVE2VN7NwH2wZ3Fo1tAcTTe0aYjQlD3qneHWCMD6epXj9vrpnojRm8B
         wzlg==
X-Gm-Message-State: AFqh2kpB1pd+8LzoPmxLR4fub8DnejaaRtIxH+NUOCgru6YA9+jU3THI
	vPU+siPp2S3dP09lPgOIjgTMEg==
X-Google-Smtp-Source: AMrXdXvS2536eufZEdPZZko+pPBcNSUfVGd9P/RK47eqEqzFUcd720zKnxwJ9k+lBGSY97RHoaHF9A==
X-Received: by 2002:a17:906:415:b0:7c1:2e19:ba3f with SMTP id d21-20020a170906041500b007c12e19ba3fmr19594339eja.57.1674016207224;
        Tue, 17 Jan 2023 20:30:07 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id f25-20020a170906391900b0087223b8d6efsm2238610eje.16.2023.01.17.20.30.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 20:30:06 -0800 (PST)
Message-ID: <bad1127c-9a4e-4be4-c893-f3baf1413416@linaro.org>
Date: Wed, 18 Jan 2023 06:30:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 6/8] phy: qcom-qmp: qserdes-txrx: Add v6.20 register
 offsets
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-7-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230118005328.2378792-7-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_203008_942269_CE6177CE 
X-CRM114-Status: GOOD (  10.30  )
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

On 18/01/2023 02:53, Abel Vesa wrote:
> The new SM8550 SoC bumps up the HW version of QMP phy to v6.20 for
> PCIE g4x2. Add the new qserdes TX RX PCIE specific offsets in a
> dedicated header file.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   .../phy-qcom-qmp-qserdes-txrx-v6_20.h         | 45 +++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp.h           |  1 +
>   2 files changed, 46 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
