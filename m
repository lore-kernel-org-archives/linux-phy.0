Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88C52EE4996
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 20:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z78CoSEga+P5ZAT2M9mlVfIeqDvvdu1CNuWBFuKuZug=; b=D9UXunkCjgIZ0g
	fMD42+Eo8uJpaiC4ULFkTHko+/s+80MNChWh5/Oz9LdoI47sf/p/B+BPqqDCTyBY9uyRolyYz0koJ
	CZEY5e03Zdm0eKM1wKhlfByUqUWrL+Q06AmdZS9rGdgeOF7ryEBzCCLKmnlyy9i4D/CYPOHbHGaui
	eCRvTnXWyRsNsBndN8jqaMnxenOao2M2IuZNIXT5eFL9jIAJvW/rd8W1np2tXiRty29aMvcAEkItQ
	jHM1UbILJCEX+sQFsJo7ua7GGYKRdx8lyRvghLryumIvm23w5v8DPY5aEEiazTNQukBTmMqqAUbCs
	SYjFa9c435BKJXl3Ow3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXp9H-00CSb6-0r;
	Sun, 20 Aug 2023 20:35:47 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXp9E-00CSab-12
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 20:35:45 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-99bcf2de59cso341631866b.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 13:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692563742; x=1693168542;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k5SY121PZsA6LLUqjl+m4aUPO7uMF/Lgar+C71AzQSA=;
        b=RXfGcD7VTR2Jy18ESeWDFxQaZi+uFVideZCJxWpig7AcAuZ0tmyOAXAZWAHv/6b2SV
         /1Ygp6CQyfzk5Ab4bP93JHmeyN/SYyhJr2W1TpD+F/4E2Smu6G20OxiP/7HSsFHkFrIK
         hOvadYS6+YOytNxGMPCZVGVgKq+ULq6xxm0oJJwrPlhSQWJAofKmYE8WhSjWSSKNMpSV
         nC7vmICM90W2Es4tkq7HWUjPQM7iGQWWQRK8BHOvY60xhuCTxGSHs6TSKxqAWgTTmSBF
         iqewmm6n3JHNC23GiiKggILr8rXk6Spl/KVyMtATb4HdvdynTwlmlfOFz+riEFXY0AoH
         tjOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692563742; x=1693168542;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k5SY121PZsA6LLUqjl+m4aUPO7uMF/Lgar+C71AzQSA=;
        b=ZEFKP1oP0fBRYZo3x/0qpceRyIuwpC8LWhGWdCcn0zz4UikBI2oKgRGXb66vuc/Lxd
         pypr5vckmIA9AwHyfgGYVx/CIXOa/vbYiTPximkXExpOTfLgqT2VK1XMWCbMCVJqK437
         y/oxL8ZC3p+NtLE7JW0OtuXDQVjS2nRPhHh5u1bKvxgrAaCQIsVODscM+dR8i/lRoUxC
         xvDo0dYR2BP7oqZsFzI9j2aVw5DAiOTWhud+8w6+Z/juswLlTFN7EmkY+jgYRXnluiZm
         VqSSp9KEoBr+KmOJ3Due4hGejbfFWDAnXTHNpZ5wilOt0eTGRCraUf7WnmaZ67ms1VS3
         waLQ==
X-Gm-Message-State: AOJu0Yz4QwzOclQUap8uZJjR1REfR3ZAeh0Yl48Cb/OeraUPpIlNA8bX
	Hm/i/3UZpESauv98n3ePAxzoAA==
X-Google-Smtp-Source: AGHT+IER4pOD7o4r4w1ZjFFpuMX2f2G7lRZwb52auVW4gkJL7iR0MMmTCG641xcE3pWrQuUjBmRKFg==
X-Received: by 2002:a17:906:10ca:b0:99b:6e54:bd5b with SMTP id v10-20020a17090610ca00b0099b6e54bd5bmr4311375ejv.50.1692563742595;
        Sun, 20 Aug 2023 13:35:42 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id d8-20020a1709067f0800b00992c92af6easm5186378ejr.161.2023.08.20.13.35.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Aug 2023 13:35:42 -0700 (PDT)
Message-ID: <3c6e9b42-4794-420b-f222-8de9a5383ad8@linaro.org>
Date: Sun, 20 Aug 2023 22:35:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 01/18] dt-bindings: phy: migrate QMP PCIe PHY bindings
 to qcom,sc8280xp-qmp-pcie-phy.yaml
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
 <20230820142035.89903-2-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230820142035.89903-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_133544_388016_DB87BD4B 
X-CRM114-Status: UNSURE (   7.16  )
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

On 20/08/2023 16:20, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,ipq8074-qmp-pcie-phy.yaml)
> to qcom,sc8280xp-qmp-pcie-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
