Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA832C636D6
	for <linux-phy@archiver.kernel.org>; Thu, 23 Feb 2023 09:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVP4+z1OJSb7t3JGIF4bFFseWpgsECHwG6FfCWnSo4M=; b=ASiG+INepswCE8
	tHRGaRt+pahHp/lWlAUDRw2fk0HEchMOmugollA4+BnZGaX3OhlR11wxPPDNnup+EOgmBFCsKeI9p
	ox18fLACvqZfl+HTjYHV4PLZWozQ0muCd6FmbgM2P+FUwqfKjkmt+ZKof2jOsUEXKNeAwzegz03+T
	yR0532m5q+Ruwlo/1ep+JacW+eHWNowtcRc///UrJ5p8X1WMyVC1EzYH4XsxCYfaIp23E8cOP5+I2
	25GaMfy4XuxJ5D26+I/mOCI9iZNFuB7UqMZsB9fIEU5t5FVBejxjJeYd2nHVCpTr4ottCk8QqPY0p
	txJ8Pgq+IfzACRcAvjbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV82i-00Fkct-FB; Thu, 23 Feb 2023 09:37:36 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV82f-00Fkbw-Kw
	for linux-phy@lists.infradead.org; Thu, 23 Feb 2023 09:37:34 +0000
Received: by mail-wm1-x32c.google.com with SMTP id o4-20020a05600c4fc400b003e1f5f2a29cso9527927wmq.4
        for <linux-phy@lists.infradead.org>; Thu, 23 Feb 2023 01:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3m6S3L9AhnPNqrpJklFrakPE0HUtIHdZQC/onec6F08=;
        b=r/Hx+IUzELZk22hHOadZyhiv/xK7N7AYFz+cq0ApRK99wV6hgkZXPnpasvw5PL/lR4
         jmDV88cLPZfD37+hUmtr54FO2l+mRlM7Z5QehmcNH4sTCt+MV8/k7W3QsF8gGGivauvf
         +tGYRDEUQzdYM5t3bw46K+VFZMCeJUh3VP9beS+Lo63jRWKpgvVUsr372wyQiTWBUc5z
         9uRqrTBql1ZVMWYt6wI2QPNVgRMWZcX6eaRPPnf4ouuiSMhqzbo0avz1TUHZagX9CVVJ
         Tam805Q4BaurjVgSqnhfOIJjTLKH657P1lGErvMWqvds8cqTBnyTI1r87gIYdOOo2KJa
         eGFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3m6S3L9AhnPNqrpJklFrakPE0HUtIHdZQC/onec6F08=;
        b=AKzzli262kP7Lejc6KV2KHFaw+q3iPggPXwkqekVvZut9t6DMRp461DXuRDoBR/Gvz
         IcnCvH2VhIDvCQwGfwynttvknlbp0BXeiWTkKYTiZ8Ms3rrrqWbNwsbDNwRfgR69OLbp
         qOUd2MMfwShXhBxqCpaTlT3EARI2H23NpLhaHC+5OBKQllj9ZILhEjaHAfyhTRuFgs13
         Ao5I05uZ5AwFGlGSt221avoK6JSQ8HJnM5Wn0+YxaUpjwIHu8meVzM0i7QR8oKqlLV4O
         WXAndS8GbtRYd7mgmPJ2Uxr+Gg5Qq/g+6Ofzl8kklP5j7CiBvzScewlECD0vbXRlBALU
         +pKw==
X-Gm-Message-State: AO0yUKUYT69YcssUh980pC9aqxYvAda7BU5y+GVHqUJOyIKufIguzi5e
	e2jKxWz3mfphe5BPLyiAbzTvrA==
X-Google-Smtp-Source: AK7set/N8XA1AjFOy0uRc9/mKLRwAuG5dD11cQeljvb6oImng8f+3zsLRH5Xdo1BF8jluino6GjHGQ==
X-Received: by 2002:a05:600c:3093:b0:3dc:5c86:12f3 with SMTP id g19-20020a05600c309300b003dc5c8612f3mr2799265wmn.1.1677145050863;
        Thu, 23 Feb 2023 01:37:30 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u5-20020a05600c210500b003e00c453447sm10569614wml.48.2023.02.23.01.37.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 01:37:30 -0800 (PST)
Message-ID: <896e047a-9188-de5d-d3fd-197b3fa208da@linaro.org>
Date: Thu, 23 Feb 2023 10:37:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 02/11] dt-bindings: PCI: qcom: Add iommu properties
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc: konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-3-manivannan.sadhasivam@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230222153251.254492-3-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_013733_742326_29B9E158 
X-CRM114-Status: UNSURE (   5.92  )
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

On 22/02/2023 16:32, Manivannan Sadhasivam wrote:
> Most of the PCIe controllers require iommu support to function properly.
> So let's add them to the binding.
> 

If most of them require iommu, why not adding it as a required property
to respective (or new) "if:then:" part?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
