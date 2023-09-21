Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E65ACD4933
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 11:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R8gqlUz9tmqKU9yr9Ji7HzmbD66kDcla528rHyJR25U=; b=SPMefRHSmS3OLG
	S8I6WEwo4juOvvvZN4w/eB7/sqOPV+omZdsJzgd9YUyKWvuU3RCkp0APp6ILDqAT6A3GgxiteWeX0
	27TtxtYJS4oidDwqj/5ZHTUijkVUpySIh6MxGX+dcflvBbUH/nU1baoGcfe5DIhW+0/jtyCVT7OkY
	czxHgH+4J/2XX6AcHovO42cu77b7yNGueGB6pXHwDrVFAecmuZq1lmASdDSeXeh6jAveukbyIlKOF
	sW5dQ6+SMJMAGhaKL7I3Twv/GcVrNWtTiVRkDe6iL5W31AnX6VpadwWZoGwYzYPUMTg2oJcdYYwFH
	Fq2rffr60IaBBzI9FKBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIKZ-005x9G-14;
	Thu, 21 Sep 2023 11:58:51 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIKW-005x8a-0W
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 11:58:49 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c02e232c48so14335841fa.1
        for <linux-phy@lists.infradead.org>; Thu, 21 Sep 2023 04:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695297523; x=1695902323; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uEg9oi9fsFQj5N/t7+XiCLJ8W8KXemvDmRrScebryl0=;
        b=msFObLNr8BAWDQPFxBenW35/miN9T+WMc8C/E0R+owLxa620Z+9oXD5HcWcotkDSlu
         mBYSn1g8DVm7wPsMd52TLB/iLQhL4R3Iz/qJA4V4XHKQtXlDN0vOcbjL+QHvnrcspFuT
         oYk5EGqNr6IXX08zUQRHlKhZCAqE/w7/xEvbveOemzZNwcWxPg76Hso8Hg27HOYnfzX3
         eGc5xB+3XWljVCMc3tK8NjLDWa1DwL6B0BuN8p9xv/EOzRTT71u9eqpqfD/wuyXgbOCx
         fN8IBoasPXbDXnSlwLV3N7YuN2jgeDf/5fkfN/spLQE1o+KPwOdxmNZr83i4knoWlLmk
         f8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695297523; x=1695902323;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uEg9oi9fsFQj5N/t7+XiCLJ8W8KXemvDmRrScebryl0=;
        b=u1s4eRH2qwXf2lDe3vlSNteIdI4Twqr+tbyv4mEL1pnCk9eWrKSxUlg8RzSsfIK0K2
         KnEPRxK8H/MIeg5s6F0uTxhJoLXZo+MAxiH2ns4qBZUSCO2Jjwlvy0AYA5AZ++Le2SZ2
         n+Km35p8eFOfWjZCXCLFZCAzuUsVfoXkUA0sRznqb91zkWG6MKKgSmqcw+Ltqpkj4Zht
         W1mX1xvPAw3LJ3LB7EIvNLRfAwavYZZ+EmDhhhVfGG3vnHV0SzRH2v0uOYkPOOSFpjHx
         3jk8Uq/FlU4OPPBMQ7B4luW8pkz4EKHpYOIMjQ08GekgDLMwskpUUiL3x2B8ORJ8BHqA
         MTkw==
X-Gm-Message-State: AOJu0YzMF9B5iqWKfdgD6iKpD9Xo6XMRsKWibPckQwMAaRIYRSNy7CuU
	eOsF6gt99w32OaMBexBoFuzSEw==
X-Google-Smtp-Source: AGHT+IHQrrrIHyHEDSkfYu9SO7d0pvsOVdZ1oGCXmoscM6UKG4H7ogFMpzJNut6Kcge3kLh4skQepQ==
X-Received: by 2002:a2e:86d6:0:b0:2bc:cc1a:139c with SMTP id n22-20020a2e86d6000000b002bccc1a139cmr4675996ljj.11.1695297522786;
        Thu, 21 Sep 2023 04:58:42 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id h10-20020a17090634ca00b00997e00e78e6sm931391ejb.112.2023.09.21.04.58.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 04:58:41 -0700 (PDT)
Message-ID: <707f3f85-d38d-f112-16a7-2c602c453298@linaro.org>
Date: Thu, 21 Sep 2023 13:58:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: qcom,qmp-usb: Add SDX75 USB3 PHY
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org,
 quic_wcheng@quicinc.com, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel@quicinc.com
References: <1695291692-18850-1-git-send-email-quic_rohiagar@quicinc.com>
 <1695291692-18850-3-git-send-email-quic_rohiagar@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1695291692-18850-3-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_045848_237772_81A0F3CD 
X-CRM114-Status: UNSURE (   6.39  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 21/09/2023 12:21, Rohit Agarwal wrote:
> Add dt-bindings for USB3 PHY found on Qualcomm SDX75.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
