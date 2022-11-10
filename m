Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB02DC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 15:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtwjCHn6gRsIeF1MrjtYK145lR5YcvdWB/YyWHq39jE=; b=qddEOSsdskdMWJ
	X8AHnfXca8oOoPF7x7l8lneuWuL5nFsat5nLk5GZJtZ+6VQB8SgIcDLZF2TfxVnUvP/9tBLYAEU9f
	7ylf9eSUbtxlMRguCiwCS913IWas/rboL25eiPfjJM9BDxCF0bT3TmOQouDoKXHX/XvNuVw0SuGcU
	Qafxe4ZtXBdtxMRca1YqNlXThsBQ8D7/lGb4y8SstDArUITC1hqQNn4fwaT5G2M8TF82qmgtXBXz5
	sD6Am+iLlFGezAwNIJWe1XNRglA1h9VSqCXZlj1AO+QpnOk/2c2drE/aIln19NiKCAO5IetXvicmA
	KV33uvBbcRH2UsW6kHBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9N8-006hrP-BP; Thu, 10 Nov 2022 15:21:42 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9N5-006hmr-TH
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 15:21:41 +0000
Received: by mail-ej1-x62b.google.com with SMTP id bj12so5727972ejb.13
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 07:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XdzkbQ09fiKcu0tyK+8QqgzW/sjDHqNHnq+CN5MjlIk=;
        b=BVi8C3+ztHIjqgX4BxPZXyxk5UjXH6Ne3yNSCOIDsdSP2QhRqBTLO/kU4O0l3BlMmW
         Rd5YIyGfD73UFgMIFGCpPs0YZyXURSk/2fE5IYYIdbDa6c6e3IX+V8pmHMRdKV7XBKb2
         4KEHzJtsNodFl1BrwwUs5FB4LICSLkbKY/D3G1xCc2g9TnbFgpbf195wpVEUls9Rj41/
         Rec52P3J66QWtqD0bF3hie0xjfRmM7tL/Ftdgt2a7HKXK6UFzFNpHe61nzynavjW4Q6W
         tbjDMY22Hos4XWH97yVymMQ+T2Zei5S3tQTAfTgiwo0W4AfPt0rzOgBkTVdHIPCkEam8
         Zfww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XdzkbQ09fiKcu0tyK+8QqgzW/sjDHqNHnq+CN5MjlIk=;
        b=OpZGyWSgvIteN4h5sM4i9vJrwyL578YHLH7hE+WQFuUrcwJVdCz9Z0xtxiflFCMmuJ
         Dl5qOZZUcUpiSXGWalOPPQS6Gsq06+hggwvHa+Y+dAyqDxKZmHhdZVl3YsuVC7wcbvvJ
         7MhLeC+FlcUMVm5zkX5CvYH3p37S02PtHRLcqkwZImEMYaptqOeubQQ4wbctijU0Wf3h
         sHvHtqCdmMCN7pcWfry3on8XDC5Hyj/9LZRhbXCD+aYYzlT1yFzJa4zEsoO9Hr4VK5lP
         iEJv5eDgPu5grX0RhsmiIrceEX7ru/0ZPkc6+jxI/5o9vmVLOuFdk1f0uqHQ5U9Pqqs0
         DltQ==
X-Gm-Message-State: ACrzQf15AIAfFStSsH/Lc0gaWULqxiQhb7PyJ2fpOCibiMl+AaG9Yu8V
	9eLMfv3XTvtMsussLF8bcDDhJQ==
X-Google-Smtp-Source: AMsMyM5hPZh95vJZWS/RrPzb3gfJ2Kshld4mkcMh3tJ8TLUKkrvnvomlXajIygcPcbNqFlDApPTZgw==
X-Received: by 2002:a17:907:9615:b0:7ae:1219:7032 with SMTP id gb21-20020a170907961500b007ae12197032mr35429550ejc.658.1668093694193;
        Thu, 10 Nov 2022 07:21:34 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id n20-20020aa7c794000000b00459012e5145sm8596852eds.70.2022.11.10.07.21.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 07:21:33 -0800 (PST)
Message-ID: <a09b34d1-769e-91b1-bd07-6a6390c1a5a9@linaro.org>
Date: Thu, 10 Nov 2022 16:21:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.1
Subject: Re: [PATCH v7 3/4] arm64: dts: qcom: sm8450: fix gcc clocks order to
 follow the schema
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
 <20221110151748.795767-4-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221110151748.795767-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_072139_974242_83D3A977 
X-CRM114-Status: GOOD (  11.93  )
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



On 10/11/2022 16:17, Dmitry Baryshkov wrote:
> Move the sleep_clk to make sure the gcc device node follows the schema.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index d32f08df743d..efb01fefe9c7 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -720,13 +720,13 @@ gcc: clock-controller@100000 {
>   			#reset-cells = <1>;
>   			#power-domain-cells = <1>;
>   			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&sleep_clk>,
>   				 <&pcie0_lane>,
> -				 <&pcie1_lane>,
> -				 <&sleep_clk>;
> +				 <&pcie1_lane>;
>   			clock-names = "bi_tcxo",
> +				      "sleep_clk",
>   				      "pcie_0_pipe_clk",
> -				      "pcie_1_pipe_clk",
> -				      "sleep_clk";
> +				      "pcie_1_pipe_clk";
>   		};
>   
>   		gpi_dma2: dma-controller@800000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
