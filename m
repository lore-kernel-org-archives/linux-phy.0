Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 139B7EE4993
	for <linux-phy@archiver.kernel.org>; Wed, 23 Aug 2023 13:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Sq1xNp2lIh1UrlKG+icQKV7vMkO16w5WGsYlCtkrBQ=; b=pvgJmRM/hq3b5m
	pMioSrY1NpzaOZqXvX6OSJvDI4b246BSiHD2UJEe+MXtkxNtEf//kW9SPgReGFOcnrNOH41McSok+
	izmjX9OCCcjzN+MSQKeb2ucVKAqyCIR8M+6IIShjGzKRKM34gKqzjK02jVmfiyJ+Xc4pxcohNQl9D
	dfWotu/QF9u05y2eygvgNj+k9cdHB4fMmCviOzXxx6PrSLGBBcj8zt3oOmtnGQWuqMSWV4J9OztEV
	gJzE+h5JLu0ENQuuO73+diQ2OoTYle61uwIdXm4wf3ExEt05GREF60kJRMYddbz2FmnVEM7iDOa0b
	ubo0Ep+J8nGqlMheZZCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYntG-000gCn-2W;
	Wed, 23 Aug 2023 13:27:18 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYntD-000gBd-32
	for linux-phy@lists.infradead.org;
	Wed, 23 Aug 2023 13:27:17 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2bcc4347d2dso41921291fa.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Aug 2023 06:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692797234; x=1693402034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3VJEkZrJi5COn4keidfPLKaEGFF5PW7AzdVSvDuyuJI=;
        b=ZJq6O8NwVH9wEHjdNic66KhMyku21pwRqFIIVgrNZILStZl0eS4UdH+TLV0LTiByQB
         Wv6jymiZABqRy/EveXxIl34BzKKe2fKVUdDKqIle8QJ1ASuNtyvcAChy3OtY9y+MghSv
         MDjG9vlhmpWUV+jCORResHDPVegdeHzFxcj+cVouqKFIdJ5QsQElyPmg0/EVldUaumRm
         nFndfFUjG3tb1pRovm4iuSF3Sll8HuIjOvD91nK9WEyVh49+gI6+ZfWIuR/DmEesBxMV
         HGS8GIrvWkbCazhK3V9fTHGp/IWXsggNk+Cgt2APq02/kDHRbe03dhSz4BNQAdWgYJBA
         W+3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692797234; x=1693402034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3VJEkZrJi5COn4keidfPLKaEGFF5PW7AzdVSvDuyuJI=;
        b=gUInloeguX8UOOFCi0byUn7rKUM4XAtmvWFmwc/UHjLzMzN6ktSjWLDxSpOOOsRVjl
         fvA1ZoAjEsPAt55kAYKJwhsMYI1LcNbh/flqCGDOlFxlpEXN1bDrzpkGyoY3RMkpBR25
         EyUKUYVtlrEWqHeS/1KPUsfJmQcJmx66iUbTRTT870GhLQbFT7Huud+5WcA30c3i8kBj
         830NlN58dcL/zATY3bpebPT0ZWpAjiu+iacHKYYOL6L7mDkc6ABLwXweM4hdVIMNZnU4
         ukVeP6awpZZLyTkr/fgc92pIk1QutMHKhj//+0PEWdgsOigV0h/qffbBOPk8e+8sJ6pC
         bcgQ==
X-Gm-Message-State: AOJu0YzpkmSUm0xCuQLhcs+1hkRih3wysTyoIcBpox38TgTcWAL1Odxu
	FHONM0B5ZfYYFE6exGtpJKQpVoToPDhIoSuWJKc=
X-Google-Smtp-Source: AGHT+IEyOSfb5mYMIn2e/As1tn/ZMWk9CBmGlem/rppvRjqD0BZ3/751rmNUo0rWrD5ggdc2F1o/AQ==
X-Received: by 2002:a2e:6e07:0:b0:2bb:b626:5044 with SMTP id j7-20020a2e6e07000000b002bbb6265044mr8877530ljc.6.1692797233698;
        Wed, 23 Aug 2023 06:27:13 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090694cb00b009934b1eb577sm9718403ejy.77.2023.08.23.06.27.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 06:27:13 -0700 (PDT)
Message-ID: <a3b1f9ce-bedf-bc1f-d641-8cb7ca3a5de0@linaro.org>
Date: Wed, 23 Aug 2023 15:27:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3] dt-bindings: phy: st: convert phy-stih407-usb to DT
 schema
To: Raphael Gallais-Pou <rgallaispou@gmail.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230823132224.111326-1-rgallaispou@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230823132224.111326-1-rgallaispou@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_062716_024995_992D08E0 
X-CRM114-Status: GOOD (  11.29  )
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

On 23/08/2023 15:22, Raphael Gallais-Pou wrote:
> Convert the st,stih407-usb2-phy binding to DT schema format.
> 
> Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>
> ---
> Changes in v2:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


---

This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
