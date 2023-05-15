Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA955C7EE24
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 09:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpVr5EUbU9s9xScnJ2yYzdKPOypiM1qlU+MBy7YTsHk=; b=JDPY/aKQ+9VwWV
	qj7HKIhMJ9i3A5pQKsEEfOtrkN2awvL8sC+aIy03Q9Qj9dTsKZKIyuNXWENcj6QWKykyXSh+Chmrl
	pkQzQ1GSxExHFhD0i1IlkWKK0Ek3E1PCDXJXriRumtHvI1Dzq3+Kxl8rock+HAt4T7BGXV2oTQ4EB
	3Hv4BS7AJOCsFFvn4IyjdTQK+B+pE1NfEp6phwU3jcFZNWBpiqflfyzPGN52679o3rSKzQq2OoYLe
	pWPvNk7Gb1kWkqgG8Ll5Brc3fMTZzwwBPvA1AbZb7Kq4W2xDEo9EG+eb88VZq4ZJNaNLqVhtinT8g
	n/EvcgKKdnZiEpy1GhEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUxg-001f2J-1z;
	Mon, 15 May 2023 09:57:48 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUxd-001f1F-20
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 09:57:46 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2ac836f4447so128055401fa.2
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 02:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684144662; x=1686736662;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Myh467EF6Pb3BMSb5rOub3Ulcx5RBQ1EdiBpNyIIW0g=;
        b=jUNxXZq34pXVT5oABufHPA6bk6cJGkYwHrhwPi7Q1prIQN9qVQbFGGPAqDybhOg4bm
         x2/1wnEmdXkgUlPZqKcz0BawwLaAbhKiU867pGBkddyzjYlXfnDzsl2HLtBjb2xGLcr+
         QAnTAsE+9mJA5SNxIyLEK+jX/KazdiWr6xU0EJTCrj1CnhWg6SiTMEchZ+kAXVHLCgiT
         McaDkmsqJ820ZxSHxBOdfKdfcoxlXge4HVYPgrpvISadvawKEPvi21hjECUOd0axfS09
         Mo3Z8BUYoL3kM3VFRnP+Im6Ze/JKUVjWVjNcwK2/aCBDCqpyWfpIvRCaD2gOySw3gGdH
         dPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684144662; x=1686736662;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Myh467EF6Pb3BMSb5rOub3Ulcx5RBQ1EdiBpNyIIW0g=;
        b=GW2LHfvWymId2TFRuEQ+jL187Zx7uLGTcZDWru4fVFhsUONIvVkMPr9KwtWnxc9t+u
         0cuDGbSbDsWTmj1KQkzk+JXYnf/d4DQn5VcD6PLtZRTrPfjPaPMMS854QJoFOPBJ/3us
         MvpNUaJ9FuHFYMBms2CJiwulxlqO56dQeGPQMG6clbEteG7v7nZ3FdhppTkRNA8xHGXL
         n3DBb/5DBWKZ1I0Q25nSTXNq3BCEEL4OBOUvnsSWtB4X1w5E/9Wn07TX2e/cvPGWRQQx
         1bw4A5fdhV2Kf06DFXSOn15xXxPckFptVOb7xrRHpJ0ejSPiDfcwqH5Eyu06mvP+0pkI
         awWg==
X-Gm-Message-State: AC+VfDxHJXYNO2nFth/f2bKXez+QemBI7/Fvcs9OEzRrJy3t8EW1TxMe
	dUZg3zvICaNSbL16Yqy1JYLTbA==
X-Google-Smtp-Source: ACHHUZ4O9wwfwBkhojonTTHZDmYDldE6sQZOsew94skskrj6x7HP74Jy52PPmgSmZfwDrw2dofo4dw==
X-Received: by 2002:a2e:920c:0:b0:2a8:adc4:a928 with SMTP id k12-20020a2e920c000000b002a8adc4a928mr7297758ljg.18.1684144662183;
        Mon, 15 May 2023 02:57:42 -0700 (PDT)
Received: from [192.168.1.101] (abxi58.neoplus.adsl.tpnet.pl. [83.9.2.58])
        by smtp.gmail.com with ESMTPSA id v4-20020a197404000000b004f01ae1e63esm2541005lfe.272.2023.05.15.02.57.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 02:57:41 -0700 (PDT)
Message-ID: <d10d66a6-3e28-5c42-c650-9d00d53045f0@linaro.org>
Date: Mon, 15 May 2023 11:57:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 0/3] arm64: qcom: sa8775p: add support for UFS
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Manivannan Sadhasivam
 <mani@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230515095308.183424-1-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230515095308.183424-1-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_025745_684306_F4EEE43E 
X-CRM114-Status: GOOD (  13.26  )
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



On 15.05.2023 11:53, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Update relevant DT bindings, add new config to the driver and add UFS
> and PHY nodes to the .dtsi and enable them in the board .dts for
> sa8775p-ride.
> 
> v3 -> v4:
> - drop applied patches
> - mark the UFS as dma-coherent
Bjorn picked all of these up, you need to send an incremental
patch now.

Konrad

> 
> v2 -> v3:
> - fix DT bindings: move allOf: below required:
> - collect review tags
> 
> v1 -> v2:
> - order new compatibles alphabetically
> - rework the UFS PHY bindings to accomodate more clocks
> - add a comment in the .dts regarding a non-standard clock used
>   by the UFS PHY
> 
> Bartosz Golaszewski (3):
>   dt-bindings: ufs: qcom: add compatible for sa8775p
>   arm64: dts: qcom: sa8775p: add UFS nodes
>   arm64: dts: qcom: sa8775p-ride: enable UFS
> 
>  .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts     | 19 ++++++
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 59 +++++++++++++++++++
>  3 files changed, 80 insertions(+)
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
