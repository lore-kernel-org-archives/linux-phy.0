Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3275ACCA485
	for <linux-phy@archiver.kernel.org>; Mon, 18 Jul 2022 14:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vQytHi4SK5AEuLJGqL8LcjtNR1rJF9KuJ+XNjkzczU=; b=atf3D45l5HSM2i
	R12Kpuk8vo0SNjXV4SmOjdhUcDDODYO/fcFRiZPGKd4Mw+u45iK/nor3h9g7IfyMMdk0xbuEK6bhX
	1rBd48IBe6VuKkYH1WsK4JkNjLbWokTXHsr8i97ZRUkSEqpbfcB/6g2nc7xaAfjsZO76muHqu9KDE
	ceoH2ngVjDXpB/867R9FZxHY76ALUGHilAsMugr2jmmH2Jd14eWcnEmx/bL1FzQcX9mzDzHQmQkC3
	1/PkJIVxXHIaI2xeTw2a7UNJ6+hwIhM8TxxmSUYef2+qkX6anIXxVsHhaK88N7o8BFheFaOKzhhRc
	YVe5YXA2teIyvnYwh3Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDRTu-00ESED-Jk; Mon, 18 Jul 2022 14:12:18 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDRTr-00ERqD-TB
	for linux-phy@lists.infradead.org; Mon, 18 Jul 2022 14:12:17 +0000
Received: by mail-lf1-x131.google.com with SMTP id o7so19522736lfq.9
        for <linux-phy@lists.infradead.org>; Mon, 18 Jul 2022 07:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=3A1pwYA+9FmIi8p2b6mGGlRlD8boBkr9tedQRRE3OGw=;
        b=LtRuShdjnX5B6eYwnoEW+6QtEzDFPpA2ejTnRmXXrdZykusYnUqHAX4SotY4JxubfL
         MbN7ksokGRoZgHHzjdJYTjwnzqPIc9gngsDhjjs2xoQ8qv9IWB9xDHmaHrku3IxHsxCG
         T+fKxsnt4SpUciNjMQ3KSODdGp4QxDUSbOxz6ZIqx4xMVUXaW2Z7XeNSla1WML63xoYG
         n2aA6vPFHlYAhST1/N5F/GN7uEW+VfFwsW3ueK7hUfrmUe+xA221FADW/fga/tdZ/4PW
         W8SVtoN14bZXp375LdzaOlutOGFvdHtzc0q0HARmPHpIKd9+8gvOJVrawqDU4fmnYQQa
         0X0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3A1pwYA+9FmIi8p2b6mGGlRlD8boBkr9tedQRRE3OGw=;
        b=btcBEN5BdhmwkrfvI1yNTBRndX+XJjAur4u4YQIDd42lYaxBVPC1Ul+GE/rowtch6W
         dI2LE0vVZ9yPz1rqN2eBJV+ENpCTCiwY7BvD6tMHQJfoNLJRDfKhQy8vC1cU1wCBgLNw
         uBgo0r6oDGlpeQnEaitYWRdwI+Bo29b2wgXGfCBTX/0HsdkF1fZ2Yl9EA10FTuXr2oXB
         +QtJqYBtg31abdlph/FhapuAeK9yEUbJWmN75qgWwDKKtevGu0FCobY8a4Hea623fj6G
         IRwiQCeivHC/I9WDA+TsbOsAPDmG/X/VS4AE38DNtjhvrrLLy+LHGeyFyk57Sx6TQWbw
         GSoA==
X-Gm-Message-State: AJIora8XuptLRegdkf33t4h2Dz001amsYiP+pAAq2xbvrkk8aB/cnCtV
	5fo/12M9Tob5XTCbcoaXKJyVKg==
X-Google-Smtp-Source: AGRyM1uPqgWas+MQLu7jqyCHTRDKBBuAtsxPfwX2Ln/MOsU/F89ubYmh0biVDDxjB+NwN2IIol0VTA==
X-Received: by 2002:ac2:5dc6:0:b0:488:e498:1d71 with SMTP id x6-20020ac25dc6000000b00488e4981d71mr14580614lfq.140.1658153531868;
        Mon, 18 Jul 2022 07:12:11 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id v14-20020a056512348e00b0047f6b8c2127sm2611415lfr.186.2022.07.18.07.12.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 07:12:11 -0700 (PDT)
Message-ID: <13e66ec9-f9be-c384-a581-b0b05ca549ed@linaro.org>
Date: Mon, 18 Jul 2022 16:12:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v4 2/2] dt-bindings: phy: Add bindings doc for Sunplus
 USB2
Content-Language: en-US
To: Vincent Shih <vincent.sunplus@gmail.com>, kishon@ti.com,
 vkoul@kernel.org, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, wells.lu@sunplus.com
References: <1658141480-9291-1-git-send-email-vincent.sunplus@gmail.com>
 <1658141480-9291-3-git-send-email-vincent.sunplus@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1658141480-9291-3-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_071216_141693_1F6A88E2 
X-CRM114-Status: UNSURE (   7.28  )
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

On 18/07/2022 12:51, Vincent Shih wrote:
> Add bindings doc for Sunplus USB2 PHY driver
> 
> Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
> ---
> Changes in v4:
>  - No change

You should keep Rob's review tag:
Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
