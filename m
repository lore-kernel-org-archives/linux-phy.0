Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47EB6C83005
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 18:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3h037RyWP7HgEA1ZPOl0T6TMCxQfm+Q27Me2o7pJxa8=; b=w+bmSmzbdGodK3
	wHbxrKj6nFquoWUSHI3o6TijUExy9DYSq7P2ilzaGlZ7HGtISBNVM6mRh4R4qSwt4oYLumSnBDgA1
	1CW9JDAJCierJmUzmm2Pu+349hHUwMRxDMTJqqznIQi4WQ0/dnlPBjlnT4TvcvZnFYWh8Njj1ESDQ
	QuR5h1dAj13EebMqxTBbh4I/fLviWpVYH6Y8HtCsKYeVmDx9vsui3uPI5sAsn5qv05kr+NNv7suJS
	U7v0tIK+h+rlDryf/75Rmd+ap39OKOdrCMQte1J9Cyp81GW5AXduHz0lWlGrAMPD8ZEZxwj2kCJ+r
	tb/5GfEUZssn/v01Ymkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6y1g-006rma-34;
	Wed, 07 Jun 2023 18:36:56 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6y1e-006rkw-0u
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 18:36:55 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-514924ca903so1868738a12.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 11:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686163009; x=1688755009;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WUrZIzSJIRlczWd6GDv9NQC7NlUjf5TxBBAYmp5SqcM=;
        b=qNtY3+bmVG8jU5WdiB+8DA6SyFimd3qArmdD82vsrPRn2/h2gRi/9aarnRIgH+j9mM
         ThwPsaJrj6qNYiwYb/N7Jl4wzA6BHxyuqEuhfsyl7C1UKepauBZoKVYiGz311OPceDsx
         4sDeJ0FDwq0Lj/F7WZEV63zt/a4+9wXLlYj5/hFsJBHuyDbOvFxqdmLOQ4CMfuT/qf3T
         dMzQQL+oJYJnmwuxR13OIMXpl2WojUuKKMbjGzeU+X4FeZt5IpaRlvvsiGvZPZDt1FXU
         8HD40xMTMv5a4HhBfVsxjPDz/0C3nGUDZ80HoxPq5wiTE3dUwv+ibj51RsArP2wKAHBw
         +caQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686163009; x=1688755009;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WUrZIzSJIRlczWd6GDv9NQC7NlUjf5TxBBAYmp5SqcM=;
        b=BMIlkSLDnUI2dZbFQH223Az3NogVPK+hEZYO0vE7zFmz1+3NEJ1VFHjebwHhEmhJ5T
         Gsr3bSzVYWpN2B6UrvOe9g6HonIEanf6fhUnlIkgMqRbhjYvc76mi80q5CDP7F1f5btI
         fbU6pR8jIPYMqxphfZ/7ZmAJJdX47zqhpDammVPjE9CrC0A1DDghF+WXcK5KEEocUjWd
         K5paMTra91JrF+fCcnwI0N16vh9DVoaL87peiWb9NFynXSOm9LFFzl/i98QpCeyCcBQE
         nU1kYAyLKaPkH/v70crYEUcyWzJUrhCL79YH27JQLi6oRj0CvonYl1vRFB4fYLk0PmP6
         DT7A==
X-Gm-Message-State: AC+VfDzKqeBkv7mSmsLYzEQiYBc884y6DmShDgeqwe4uC1C0MdSHFudC
	9wl0yaquHqueHhLuYF4TZAujSw==
X-Google-Smtp-Source: ACHHUZ6Kslk/hZ+XFOlhi4ADtp8yKeRWk+pl++7bGMlZBsOk5y3KrpkIDuTfF8PrEbppQ+zPjcZmvg==
X-Received: by 2002:a17:907:c1e:b0:974:5ef9:f4d4 with SMTP id ga30-20020a1709070c1e00b009745ef9f4d4mr6992165ejc.5.1686163009416;
        Wed, 07 Jun 2023 11:36:49 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id fx12-20020a170906b74c00b0094ebc041e20sm7167411ejb.46.2023.06.07.11.36.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 11:36:48 -0700 (PDT)
Message-ID: <1904d271-8db1-e012-ab00-060e418f4c14@linaro.org>
Date: Wed, 7 Jun 2023 20:36:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 6/9] phy: qcom: Add qcom,m31 USB phy driver
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 neil.armstrong@linaro.org, nfraprado@collabora.com, broonie@kernel.org,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <353c5affd1d638bdc7e4ed187616a938e8d763a4.1686126439.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <353c5affd1d638bdc7e4ed187616a938e8d763a4.1686126439.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_113654_327688_CACC6279 
X-CRM114-Status: UNSURE (   6.41  )
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

On 07/06/2023 12:56, Varadarajan Narayanan wrote:
> Include M31 phy driver if CONFIG_PHY_QCOM_M31_USB is enabled
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

That's not a separate commit.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
