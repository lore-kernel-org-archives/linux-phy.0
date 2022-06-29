Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECC36C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jun 2022 06:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSpZtZhv9lkkoESZXigLyvWQRmu7uwaSKhYGQS5qLz8=; b=unjz99H4yxzCBV
	ir+2y0nRQm/aSBfk//KmZWlZD1CNmEyuX/dy5vIIQLf67dXw50byXf2+zRp+yrArsZy8o2g/iu4vn
	YfRbmAMy0glfFsE2djRKt6rzcpXioxXE1lC5KF5y+HIH5AiC5VYqa2t0tbg8xJbRJV7DVz3L3JWS3
	mWbM0ktM/7fFXFX+0rhL4FeDR6Bd93JOfCgP4iOE5wc7I8oxp4Wh37+oICv135H089eHW4F8oVZ21
	ja6UMpwIUpv7/Toq9PTGPf5CB5p3yqGFelSOUzkA/qM/8WUPeuCiZcjobWkZJmcr35YBZFIsRJqOT
	dBMfgYclH7NjaDaeduUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Qor-009hvn-CR; Wed, 29 Jun 2022 06:04:57 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Qom-009hsI-Tl
	for linux-phy@lists.infradead.org; Wed, 29 Jun 2022 06:04:54 +0000
Received: by mail-ed1-x535.google.com with SMTP id eq6so20655343edb.6
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 23:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ToylRnAwNq8wVM7oBOF8FSdHcp0ZisBXMar1kr6G3ZY=;
        b=IooOQOwLg32TtR8soIA7Hwq+zRoqSUHLE47vF1Lku0pI2ilI78793Ncg/hhVDcyPVE
         FgwioVXDrnxSPYTgIzQDYI0akLcwwWVx4R/GKVJeNTruIBKXDRtbrGVRZpzFXjsqq00T
         AG7vPY8sc/HTBpDZkuj2CHiRIBNfuyrdLKPeHqunW1fe/nRw2qOAz9OfJ1G/z/NXGP2N
         sof7g2WcmJL8js5RMq0BJORx5vjZSUMeWGn8mB7VWkjoLSzX6KW/Dahw94d4KevsFopt
         9QgKYxGkyVJPV3pg2wpG0ywQqc1p7TweTeu3FuhDTgjS/Evql1Y5UGvcyJJ4tGtNCHe+
         QAGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ToylRnAwNq8wVM7oBOF8FSdHcp0ZisBXMar1kr6G3ZY=;
        b=XQQKEKJAEgZFJeXT/HmaotSHRCAW4x1PMxMoWI7eG5eANI/0nZ4cg3ntaaaMbq2i2C
         s5CsyDrK1R4Y8BBCrqIwtAUqU1J06RVOaMqQ9+LnQY94qzDYkKLN+MiJbDvLw0RnOZSw
         gHhNOqdv+7K2/rTip5LAlKTIW390RrP1n70UAxqSc7QHymwIT2ws9oApwgPo/E86xRJy
         akb4C5N9abjS/Ce89gbvnhFc+qOZOAIKFyO0uQo/S4V2o5xg+wAmY1t7kI+p+ExtRx43
         fpD9Dl0pDkGhi5WCWNr85xltnpnAydT7dpQJMLVk3c5aFtjTRTWK9T5gH2UfVzqOjnuP
         RIcA==
X-Gm-Message-State: AJIora/EVhXHrc9ikLpgMYzQv0oYTbI3hGr2VDS2SEaioE9P6aTl7/Fh
	uosmna8dHuHQcq6ev7naHWn6Cg==
X-Google-Smtp-Source: AGRyM1trBlj7Bi/PtGND261JREZXCgiq2OnqUKREFcUgyVP869OpMPdzDh5GdqwElU0njB5gaHa4xQ==
X-Received: by 2002:a05:6402:4385:b0:435:9104:955b with SMTP id o5-20020a056402438500b004359104955bmr2008217edc.45.1656482689358;
        Tue, 28 Jun 2022 23:04:49 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id 21-20020a170906301500b00728f6d4d0d7sm398957ejz.67.2022.06.28.23.04.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 23:04:48 -0700 (PDT)
Message-ID: <1541997e-6dba-8f2f-2eeb-2bcc06decfd2@linaro.org>
Date: Wed, 29 Jun 2022 08:04:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] phy: samsung: phy-exynos-pcie: sanitize init/power_on
 callbacks
Content-Language: en-US
To: Marek Szyprowski <m.szyprowski@samsung.com>, linux-pci@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Jingoo Han <jingoohan1@gmail.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
References: <CGME20220628220437eucas1p2c478751458323f93a71050c4a949f12e@eucas1p2.samsung.com>
 <20220628220409.26545-1-m.szyprowski@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220628220409.26545-1-m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_230453_034673_2CD5F17C 
X-CRM114-Status: GOOD (  10.84  )
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

On 29/06/2022 00:04, Marek Szyprowski wrote:
> The exynos-pcie driver called phy_power_on() and then phy_init() for some
> historical reasons. However the generic PHY framework assumes that the
> proper sequence is to call phy_init() first, then phy_power_on(). The
> operations done by both functions should be considered as one action and
> as such they are called by the exynos-pcie driver (without doing anything
> between them). The initialization is just a sequence of register writes,
> which cannot be altered, without breaking the hardware operation.
> 
> To match the generic PHY framework requirement, simply move all register
> writes to the phy_init()/phy_exit() and drop power_on()/power_off()
> callbacks. This way the driver will also work with the old (incorrect)
> PHY initialization call sequence.
> 
> Reported-by: Bjorn Helgaas <helgaas@kernel.org>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
