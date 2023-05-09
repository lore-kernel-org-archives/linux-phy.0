Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D933C7EE22
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 17:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJt4N21xvz7RmWcGxweHhFrTnyqV74zPsxp6ejQjY8o=; b=z7XG3U57QL7mIi
	KWJ/VkubvfLwuEbBoHnQk5V4ICXNBrxSsvGTeR4aPbJA/EigBPEWB1DZ2hv8Xl04VDLIC24CaAZsP
	j7FgRkUN07mAtycbeMlGtk43b7NVicnJ6fYdo5R/R/+rqNCkvx/Tfy5XxnNdxY+bDXOp32iyPK5rf
	mSQJRHD1EQA8MWNZdQ/lxv8nZ+PQzmav+IX+LCrZ9biQFRDizWHX4pKVSsDtwb3ZH0DWDUq7SzECg
	Solywew1lebJikn1HtU3JI4Ck3dIYZ8VeTeZiwwaaj1NtWV//ubjlsm3XJIYgDuf7lJ1tWo+rZyMj
	gv8uQe1X6FwghHhS57CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRBy-003uXN-2K;
	Tue, 09 May 2023 17:32:02 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRBw-003uX3-02
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 17:32:01 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bc570b4a3so11535863a12.1
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 10:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683653518; x=1686245518;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CgudkpE/XXuEJbi6kVtZntpRgZwfZvwHa+KTpRSfG84=;
        b=qi5aQvnnWPOLinC/jLCZf13CBVkM6FG3QOcdLfbuvwQP4XQbi7o7O9GhxbouDNwiRe
         myoPeE50qKEbJpB6arQ+03tEkTQeoceaqezgivj7x5hWepxoTWm+eEbJtW18WDF+Alxb
         R6TreSItd4esRPPLxX9Lm9M8AdHnW1hEwZRvQY+MSkzn1NQl6fzMJF6Trng6CcdBemqI
         BvodfS5PH6gEiGqgwEi7qDi4coExA1XOvLPNiySbDiva15i38Z/EldMz1n7Up9ju7fY8
         AIpwLJkgz6fyHqLSgZCFNAF12KnTYrdpHnwYDRP028+TVb5/WGuE6ds3VzuOlXRw3tAw
         ixFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683653518; x=1686245518;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CgudkpE/XXuEJbi6kVtZntpRgZwfZvwHa+KTpRSfG84=;
        b=Q5lpL1ByIigvmKLhnmxKhDRse66wcBWDD/WrwToMdLvQJNXxe5H+oCff1Fyp4zJT1X
         KbwjQA4cy04yBFEVcESSUB8QhipnaRLnHb/AuD5M6hDLplUaDbo85gRv4wPaDIOzDrFg
         kylFucGXi3QvDeLGMwWU07QHXL2F7T1RkJu5IIvf1KqHF1vgQaoslYUBOUjGaUxAQRH7
         hM45dKRRoXQJzJrZ9LYXAJRiNreFrPELmDaGQ8ScfVKNONJ5TrYjhNl3j+BUL4IkaExb
         xNgS8lsrW1buxmLeYfLOOSTUKoUFYCtZYzM/M+bihaR+HOUAl2BUpYcpvC6rNTn2q95V
         P+oQ==
X-Gm-Message-State: AC+VfDwq30CEN/83jZsMc5hHlMr17lOLTFJCidK2tiXORYxK/jNRLI8U
	2kPiired9uqUlwpmzY4h3TsCrQ==
X-Google-Smtp-Source: ACHHUZ6xfvURHYmwCA0rkcPEIbdWHaDDrsTw1yTug0O3WbxYCOy7Dpv+vT71lqkBRT29ssdlLeZXqw==
X-Received: by 2002:aa7:c24c:0:b0:50b:c582:7be2 with SMTP id y12-20020aa7c24c000000b0050bc5827be2mr12287972edo.29.1683653518253;
        Tue, 09 May 2023 10:31:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id v17-20020aa7cd51000000b0050daa883545sm976490edw.64.2023.05.09.10.31.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 10:31:57 -0700 (PDT)
Message-ID: <75e66496-6a54-1430-7344-fa816400fa7c@linaro.org>
Date: Tue, 9 May 2023 19:31:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v11 2/9] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
 PHY
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 sboyd@kernel.org, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1683630932.git.quic_varada@quicinc.com>
 <064614c5b28f6d813634ad14a59b0bf94ac334b7.1683630932.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <064614c5b28f6d813634ad14a59b0bf94ac334b7.1683630932.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_103200_068485_65903E28 
X-CRM114-Status: UNSURE (   8.41  )
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

On 09/05/2023 13:54, Varadarajan Narayanan wrote:
> * Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
> 
> * Making power-domains as optional since IPQ9574 doesn't have GDSCs
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v11:
> 	- Have power-domains as required for non ipq9574 SoCs

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
