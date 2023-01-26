Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 175D2C61DA2
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 11:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTB/KMIiRiwO6FJqqH+nrLO5Iiu7B+Jx++PtEMbnO2k=; b=T7PKJTXUjDODCR
	wDLSMMQU6oWvQr7W1AUYEY3Y/F2Nl2hZfi5MVwp1ULcvSAAlfI1p+N4VH5nLxRNxadNJvOlcDKCqO
	iAaYTVuxtCjNJeVGfMMiA+kBmmfxNhVge4+C1+MTucIhUnKXt05vGi/DHJ9B7IrjgAGKfzRIRO9J5
	EFgmzD4ceQVI0mPE88QuGds8G+XSksocyDJejTheMt58jm+Pnaxk7W0bGmKcI317kfQFZ3mCl4SKr
	cNHbj+oefK4vMzU2u7cA8g9J8hx8zKtCc9sB70Xi0WOzYR7QXyyyKGqnTdjLy+5HcEDfmFN5ZcQDx
	pT1d65k+m47I9XUr4bQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL04p-00AdjS-FX; Thu, 26 Jan 2023 11:05:55 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL04m-00Adic-9V
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 11:05:53 +0000
Received: by mail-wm1-x336.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso862145wms.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 03:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=heZJw59T2BEIPcQJQ4uYDF/GEiW8kKbaj33CVJ4j0QA=;
        b=OGHW+YWFhgFliomeTrCvXab/b3ztik8IkLjKZrHCJPgZPJEHLNFlEWIsIs9obDB+4h
         qooeXwfrAccrxy0oVyS43oDAfvwjg5eahrRVHlcm7WR0QZbpNObdzPwi5N7RpzC+Paiz
         ugeJJDCKAZJqHcK3WSht20960TThpI74MvA6Z3juB0fb486A3gR9ExR6iubOwTz78VEw
         jaz/by3NaHMxtuEeCqFtviLmWEJzRXqnbGA5JnOcgT23kYEuwVpHufJyBVgeYd8nT+aL
         m7SSJ9cD6ig3rrZ7yUyf56wiBn5j53eVA9AHiwoReUR2qhTJUacNEGIpqgtOW7MMzMuQ
         SI8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=heZJw59T2BEIPcQJQ4uYDF/GEiW8kKbaj33CVJ4j0QA=;
        b=Dx5npFk9mrmCZTA5WF2RcD2GMbUTfOkWnOhkpFHTiRrMLvk7s5t0iVKWhwP83sLLtL
         Vkcb1CFpsrSo/3TojwFkIKXBv8PotNijHqc0XajInZu9qLlsnqvdFOWsjwYiO0bFXxWX
         k7PPxRTfcrd5RHV2bEJ2Cnw1b0RtHjHyvLA8gta3p4hZxugdjclQcxfbT8nfjWo2iKay
         TM0+3AGou9fMelcplNOxqdzSPB7Oav4VUvIU6F6wO9LyMS36Qh+hIUqbcZzhfSfkIVZo
         4Hr5q1G2HWJLcKYWV466NL1z3PLB8jMIZ/oW7vokGJza1eukhrP9v62nnIHPF2AKF63d
         UrTw==
X-Gm-Message-State: AFqh2kqsxRqs70mtzZDKcF3Wy2jQFY4LRUph9F1HzoCDdlkplyb0k7ke
	sp+swQpgl34bwENTfARm023WYQ==
X-Google-Smtp-Source: AMrXdXvm+/munbFIM9dMJkjNlLF8RunOzyerbBIAKGs4KuqxNnxcHriBwiL0Tytcq9WgMoOagu8Dag==
X-Received: by 2002:a05:600c:304a:b0:3d9:8635:a916 with SMTP id n10-20020a05600c304a00b003d98635a916mr36734444wmh.9.1674731149736;
        Thu, 26 Jan 2023 03:05:49 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m14-20020a05600c4f4e00b003a3442f1229sm5016139wmq.29.2023.01.26.03.05.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 03:05:49 -0800 (PST)
Message-ID: <64c5cd0d-86ef-2b98-36f4-62106edd657a@linaro.org>
Date: Thu, 26 Jan 2023 12:05:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v5 09/12] dt-bindings: PCI: qcom: Add SM8550 compatible
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
References: <20230124124714.3087948-1-abel.vesa@linaro.org>
 <20230124124714.3087948-10-abel.vesa@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230124124714.3087948-10-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_030552_363920_A1E4E703 
X-CRM114-Status: UNSURE (   7.27  )
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

On 24/01/2023 13:47, Abel Vesa wrote:
> Add the SM8550 platform to the binding.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
