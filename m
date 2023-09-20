Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49023CE79D7
	for <linux-phy@archiver.kernel.org>; Wed, 20 Sep 2023 14:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHCfoqhsxTQsyBMuvD3Gm4QZ5tqVANuzcVpwBNs3MDY=; b=FnnIV1TMHJ8qRE
	eS3zd0YUx5BNZKMnmm7W4CpJKJIctDKLlXq+hP8G4Z0bVDhxGGDbdOLBcVnPMkLZirVIisBVUyqKQ
	jqc6frzXn+F7vcq8u55Iw9NLXgwBEchZzN8N0OnucVqa3oJIU0x1WiFvhGt7b8soODfg9ORq/vJOg
	OEGR0bP1w/AzvKgHjLweF2s1v9vIs1ATalRluLujFsw4f7d0QQueuiT5CCFSZnvAVzXKEijXVH8So
	eghiREixMekdVFfpZCDWPZXKIX4j3B9eozEIe3bOTb9FaoiVm0D70uCh55MCkSQbCvlJfRCroYG5f
	pS9DehhVlgCUICgQWs8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiy84-003JZt-37;
	Wed, 20 Sep 2023 14:24:36 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiy81-003JYc-1U
	for linux-phy@lists.infradead.org;
	Wed, 20 Sep 2023 14:24:35 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9adc75f6f09so769157766b.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Sep 2023 07:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695219871; x=1695824671; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CNbD5JZlT85L92cZjusJkHp4jtK/JZ5bz82Z9IIMDbo=;
        b=EFYM/xSKMpT7JtVy3Bs4jwFGElrZ5AfJb9F4rUhdlr8+CAWcQBbUB/kgPoF9WgojPp
         vBRbV5ufvKjcZsaLOjAhVUGAzT+QwtSoUPTlqNt847SFavWqCtqf1FMHXKH0He40IIiT
         hwEYxp1iqNpzsW3S1LcueZpXH9rxDmuDCGyg/jfboobjiaFahEGFIn+zKiLr8+36qxXH
         /x2VgxJS7p3nepjfc30WwBMC8kkF5kCzKiXbRv9wwhj7C4Pq+69E2lKVMMhDrKW0+Swy
         EgAmrJzmiCkjCzRcZr6xN3beGCcDaCwJu75N0kCrTGZ7dEx1cH7K7hwNHOy3049ie41B
         OnWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695219871; x=1695824671;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CNbD5JZlT85L92cZjusJkHp4jtK/JZ5bz82Z9IIMDbo=;
        b=XkP+pBuK+7jiXNSuxSwrBkzAZGrKRCJwbrTS61J+EMOp4vRdViiZfXg7s7QI0hw/vg
         ytKs9nq/6UAIMgNUlXSRUcd55yV5n+Ydx2KIwA1CLVfoMbRQcvZ3QVfGxZmHXll0+Azf
         3WkVGdRgc3vst1oB/QEaDNI6LtfgWhc6KnyBDcw9J5CD2VvkRwRpBx/0klsR4+i6nM/e
         izGsd5WPmSGnJi1AjaPzj4JeN44BU2nIAX1N6PMfBRxZUDRVh9l0TJsX+BZJSSbH1eVR
         BdzP+UPzcYVwVMps1cSGiG6xkIwKN8a0VWK8I7NiLXvYGWH6yevqYnBeSKBQzkN9ENLL
         +feQ==
X-Gm-Message-State: AOJu0YxssCH5ucy17CTeoY0AG4jrAGhx+Hnrpz2+/0TUPQoAGTP90H65
	Guphm39Avq7rO1QODwnlEHLyWQ==
X-Google-Smtp-Source: AGHT+IEWeR4ibVo/0lBYIQnbCIzA4Q1ZL7a5w7fDqs/tLyxpyOxPFsZtH1PIFFFFdedlS+oRgvhRMw==
X-Received: by 2002:a17:906:225b:b0:9ae:541e:7310 with SMTP id 27-20020a170906225b00b009ae541e7310mr477368ejr.33.1695219871576;
        Wed, 20 Sep 2023 07:24:31 -0700 (PDT)
Received: from [172.20.86.172] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id lg13-20020a170906f88d00b009ad88839665sm9435005ejb.70.2023.09.20.07.24.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 07:24:31 -0700 (PDT)
Message-ID: <4b20d3bb-d2d2-0864-013f-104e26ae558c@linaro.org>
Date: Wed, 20 Sep 2023 16:24:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 2/5] PCI: qcom-ep: Add support for SA8775P SoC
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
 quic_parass@quicinc.com, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
 linux-phy@lists.infradead.org
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-3-git-send-email-quic_msarkar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1695218113-31198-3-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_072433_509542_99F72E0B 
X-CRM114-Status: UNSURE (   7.86  )
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



On 9/20/23 15:55, Mrinmay Sarkar wrote:
> Add support for SA8775P SoC to the Qualcomm PCIe Endpoint Controller
> driver.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
This compatible does not bring anything new to the table
on its own. Please create a fallback compatible, document it
in the bindings and use that. See [1] and [2] for example.

Konrad

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml?h=next-20230920

[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/qcom/pm7550ba.dtsi?h=next-20230920#n65

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
