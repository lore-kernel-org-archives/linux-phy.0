Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79E9DEB64DD
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 06:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vhPrVFlSRILg9rifb6PU6KpVnLjKBneDY/WUc1N3Lg=; b=OrUI3eQHHZwQy/
	iIbdgGzHa4yEZJahd0Zpd+9LWFuTRH2EsMTQGRtjtX5GV1pFjcBDpHjCZBdkjdnnlPgDGvlO8emti
	kXeSay/g3W6gUIXe1gRj/VpAPyr+ujzkiOP7EaUl8nmwVaLERgxyXnKJeEpESIZxAmaZXhwWXS/2w
	7VVXu1cDDm/klL4N279q7tP8DLwdgKC9YLcTnmQYxD30AhM9/Q4w9qy5fNISUb/0RmVAbPMXLizrt
	wT1/CCSdgV9OxSZPBpp8Eo3FI+15z1ykbsgmU4wPZEM83YT+7vSp9T5KzcRen0ycToaYD6CHP8XeS
	7bkiMHRKpGlYSpKDRcsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHIdt-000fX5-0S;
	Thu, 06 Jul 2023 06:39:05 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHIdq-000fVr-0k
	for linux-phy@lists.infradead.org;
	Thu, 06 Jul 2023 06:39:03 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9922d6f003cso39037266b.0
        for <linux-phy@lists.infradead.org>; Wed, 05 Jul 2023 23:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688625540; x=1691217540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ubpoaC9EzMplfQrBSeEcb7LUnfn7d45sUTFt95vzvBc=;
        b=CQAv2r9jw5Vw9NsORpehoSIOxspn0nGUVtog4W4gS/FAyNPsXCCuel9cngxv3TafTT
         +ZBa9AA0N/rxkymEGOMDH+S5onhIAtQTdLoEAJMSJ7bGvGvUb3BSF0ABWRVbrsR14pjw
         ul4F/dN1SVMWUYwYsRmppzMlm6dHhSAi+AcJrNkBcS7rtpdjjrQm5GMtdtvK/ras3XLH
         C8wJ03F2x1hpoQ2VPDqtq89tKjQiQLT+uC8Vwg+oy4IfylklYNIVvMHJMYrX3A98zU2J
         l6ttWevu95ZeGROAk4cgc0UH8zakCbUFTb+G7QOxQCZOIniLH0ljJvotq2iHdDI6Stas
         P+hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688625540; x=1691217540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ubpoaC9EzMplfQrBSeEcb7LUnfn7d45sUTFt95vzvBc=;
        b=c5gToOX29lFWROHuLOEgh1B6dCEGN8XGq9o/hVtuAkIxo2pHdAa20+ydxEPezvb2o0
         WGlCglRbJv7TqqbjQqvVT8u2OCbCXGVIao102rddklC3BAfneZ8yW7eFDOS0PH72OHTo
         KEHBDjKnNV6VLS6BIGE/SX+JsxooRDSLPTVfeEXjYTJEUPUpikxTF/TAjkcWllIBRmT7
         ze+OF015LLtOvEoZa6bjYrKAvzGRPFwVPV/kwKRhq5Xl24ll6esSExeIMcXwVsK/RXOF
         GNElndmec24UpnlSv2dZS3JgMF6pyrvGVZ6oP7hlgSYT6hB1vqfsC8iceca51ZoEcwjg
         MPYA==
X-Gm-Message-State: ABy/qLZqMZXgLAWUY53tVUS5WYJw5F6gcuYyhx1GcJQoTagOivIDVE3b
	opga0aDk8IXuAZrxHvZqagdT/g==
X-Google-Smtp-Source: APBJJlGdk6m02V0kX8E+G3wiBzfjjWJX4q5mx5yIhxxnI72FPFBQh7N6W0jmb66+UCh2kWaVXY/jNA==
X-Received: by 2002:a17:906:729d:b0:988:b58d:5e0 with SMTP id b29-20020a170906729d00b00988b58d05e0mr738996ejl.16.1688625539940;
        Wed, 05 Jul 2023 23:38:59 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s24-20020a170906169800b0096f7500502csm381433ejd.199.2023.07.05.23.38.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jul 2023 23:38:59 -0700 (PDT)
Message-ID: <9d5c1411-e56e-fa56-c8f2-808e0c403d9a@linaro.org>
Date: Thu, 6 Jul 2023 08:38:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 6/6] arm64: dts: qcom: sa8775p-ride: enable pcie nodes
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-7-git-send-email-quic_msarkar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1688545032-17748-7-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_233902_268193_901A70D1 
X-CRM114-Status: GOOD (  11.55  )
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

On 05/07/2023 10:17, Mrinmay Sarkar wrote:
> Enable pcie0, pcie1 nodes and their respective phy's.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 68 +++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> index ab767cfa51ff..4a39294259fe 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> @@ -443,6 +443,74 @@ qup_uart17_rx: qup0-uart17-rx-pins {
>  			bias-pull-down;
>  		};
>  	};
> +
> +	pcie0_default_state: pcie0-default {
> +		perst {

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
