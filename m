Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B9C3C0015E
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 06:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaJfmu9YQNOg3TDnCcOT5jNykvzV0u/ohmVmfbh3xs8=; b=iIwURvj14BVZeh
	YZ741Muxw6aDJWllWMNYFI8VLTN9oY11Uaa4gjOPhPU/7V936qsoHYayl6U1qsbHAbawLuJqNp5vo
	nlZqHqI+5FWtZkeQaVDwCWBpGjLV0tSvSKtRzj9gQun/GaI3HWTbCBSDbug6TPg926n1eBpCSFgzA
	rJod1E+Le+aDEM6C1OPZ8VljdkeekCwbbVH+HzUFuOsOeqqduA5OXiW+Pqtv/WGvZB859J5f/NybA
	OK4XIrm0GTZxfZN/CKUR8O4fOU+jyI+6oOQXKK1oFBeZuRHLYjkITpBPdtMm3BBKlaL4odPGmCUdL
	vBMfq8QM4TRWjBFWru2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHIep-000fgs-31;
	Thu, 06 Jul 2023 06:40:03 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHIen-000ffd-1x
	for linux-phy@lists.infradead.org;
	Thu, 06 Jul 2023 06:40:02 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-98934f000a5so36511366b.2
        for <linux-phy@lists.infradead.org>; Wed, 05 Jul 2023 23:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688625599; x=1691217599;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g9Lr53a5FzMbobQOgcXx29sEThYjNb3OAfuRJxgypPU=;
        b=Ojsi/JZ2g42ODEl29O6Pe/nx0eWsLXYUZDLKLcox6/D0JuG4qR5UQSxNxb47yDQSHU
         4XFMl0nVmZrttdjJyzgT01Lpa8NMss+siHLDEiOmFQ8Rd0BDDLQ9vECwNsz54L34X+Cd
         ksAlmljSp//0vJufJftwlDcMJuldV2hVMBwjwyWBFHj39WykdbUcfs9RSuAmQ5cb0YaO
         w9W/r5P+XBRugc5H+NH8vujIz7dQBFt24FVboN7SnobBkw/KRP9TcOpbntcKW8+1UIoj
         RzbQPCnksoaDLWd9pQleLLFTr19oGDwNoEvQEzAJ5gcyasS4YWsX1V1j51uv4mrrKXvS
         XPTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688625599; x=1691217599;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g9Lr53a5FzMbobQOgcXx29sEThYjNb3OAfuRJxgypPU=;
        b=dlXdj5dxqNaazAs8180LpFzQiSXiPUmV6Fqqx746ptLdTyDvYhkITWjbWrd2DjESQu
         ehmMLseALzGfB4sKvqB2fAdcrFqBIgUDIqidsVf08yZxOy5d6ndw+o1gRZDHXjW42uhZ
         heE6c6YQWFM/w2lmhIT1vhqIWTTz1q9APDAkXcqcciUV3id9e3/Jbyz/plPoIZHykUNo
         NYLrKW0CSRFN8kdYZp0X+v+G58ZQJ5Ms0MpfZND/39HzTluYyhKtz0kcjMZaAaDL4NCR
         EX1kaj+m1JZzKx7oz3ybfaekw8JsgiF4h7oIP41hET8aNd6mi/aV01wS+BlTEF7VCUq7
         Kf7A==
X-Gm-Message-State: ABy/qLb2kWdTjmGt8TPPEBUHALlVF9J5aoCD6Rx4jTPQmSDpmcibddsk
	AF4PXqMPI5cdLrWX7ab6MpXuZGV7pIbm3M1RSMI=
X-Google-Smtp-Source: APBJJlFe3mJbYP5HOYEAflyYq1r1hjT3H2KqDuSD93Sbb4Ats7EOFA2VltdFwHu3Zsd0znCxRd1y2g==
X-Received: by 2002:a17:906:2a48:b0:988:c3f9:3ad6 with SMTP id k8-20020a1709062a4800b00988c3f93ad6mr540685eje.42.1688625599228;
        Wed, 05 Jul 2023 23:39:59 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id r11-20020a17090638cb00b00993a508b818sm399619ejd.1.2023.07.05.23.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jul 2023 23:39:58 -0700 (PDT)
Message-ID: <a450e2e8-307d-49e9-d76d-de397b801a96@linaro.org>
Date: Thu, 6 Jul 2023 08:39:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for PCIe
Content-Language: en-US
To: Manivannan Sadhasivam <mani@kernel.org>,
 Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
 quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
 quic_nayiluri@quicinc.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <20230705084606.GF11854@thinkpad>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230705084606.GF11854@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_234001_666673_42155760 
X-CRM114-Status: GOOD (  11.89  )
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

On 05/07/2023 10:46, Manivannan Sadhasivam wrote:
> On Wed, Jul 05, 2023 at 01:47:05PM +0530, Mrinmay Sarkar wrote:
>> Update the relavent DT bindings for PCIe, add new config to the phy
>> driver add pcie and phy nodes to the .dtsi file and enable then in 
>> board .dts file for the sa8775p-ride platform.
>>
>> Mrinmay Sarkar (6):
>>   dt-bindings: PCI: qcom: Add sa8775p compatible
>>   dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe PHY
>>   PCI: qcom: Add support for sa8775p SoC
>>   phy: qcom-qmp-pcie: add support for sa8775p
>>   arm64: dts: qcom: sa8775p: Add pcie0 and pcie1 nodes
>>   arm64: dts: qcom: sa8775p-ride: enable pcie nodes
> 
> Please note that the dts patches should come before driver patches.
>

Why? DTS is always independent thus usually put at the end of patchset
or better separate. It is the first time I hear that DTS should be
before driver.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
