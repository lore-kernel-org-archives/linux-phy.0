Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5174FC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 13:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8lxcw9Kw55Gtm5wG27rqt555efGu5bBKZ0vVrZch6g=; b=rMnJuXSP51Uib7
	aVKHQCbNWc3PSTGcARgZ6cWddGiWiboh8RxfbjbyR95rS451DLvmiv0R2NG8LMk6SjV8RQXiQYfrh
	invBo4Om+mdbmaG3RnLBtocWLHFclNQPA0M79bZb7CqRXc22aNh/wStRk69PGGcryfTRue5OuDdmY
	nwTB92G/YWv/7AYgM1zZ1QuIFzEIVcaEPRoRDS7ft/Da/rcFRMczESvkCzWOHXs+p+Uyetws8HV0C
	/ji3LC0/5PQV2JbM1DErL7hCgIDqt9q1k553e0RpGpeySEMZqbeBhqEeN3W3ItBUNRqbQdAV9EJRd
	SGfOKzRiEuscXXv5KE9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8jk-001ucz-PX; Wed, 19 Oct 2022 13:03:56 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8jh-001ubB-Hl
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 13:03:54 +0000
Received: by mail-lf1-x12d.google.com with SMTP id d6so27970073lfs.10
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 06:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=trRuZwbzwwgfaDxQNftJWu7yrakA+P2WKAUWrovyoeo=;
        b=Bfo53kTNEt0XbI0M3luIjTRBz/3MzmRltGSZcGFRyqjXYMXGzuhMDYe52WEK6xc24W
         4Q3tzb1pzv6Kc8OJRFid4GPTYGF2MWVW4+UvVefpW7mDq+EWgDecUpaHTLnlTp6fnAhw
         TyQAHM6JJqiL2mECi5/5j48N3h3X13g8NSkKwqwtVJbterjivANCaQXQKhHrkD23jEXj
         zWUbA5i6XA5CALqhJxKIoEvm8H14qxTlV4xhL/PHTi2NfUpSICQojfh/IKEudd5BL8VD
         omICFQfKeEGgu6ocXRMcHP7sas4yoYwRfdjCgxFeL750SLwWh9Cz2PSw0UBG4V0j8gNs
         z2pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=trRuZwbzwwgfaDxQNftJWu7yrakA+P2WKAUWrovyoeo=;
        b=WHIqlaHbSeJdDHl2n7U2MaktQxUsTc0iSb31QTebYOk690VLvC9RLqynVDSdQRCMdy
         hK695vummxlTYqpzCV9jLJc0Br5Oz5shPj2dFQE3AWA1zjHysAK7oTp+oQyUztoMyR9S
         mwTnYqkLR3zKzcxZTpM9vnrOzxrYVNF7qo24YI0u56gEjxRib+v2+7KWkpOsn6A+4c9U
         lcmn+27HzqxZe9sRoVay3EQiF9HikuihnGJT5LNnCW4NCGGaXS7nB5vhUg5GvoMgJFKJ
         g3SGskjEqu+C7USvgsuSyyGkPZF6LBpkXl9UyOvyQquCDbbeTge54H+2RCa2nj/Qzqr5
         akOA==
X-Gm-Message-State: ACrzQf38O3gUYps+d4EWG1RaRW8MR0Yj/KWTZnlwprGi+ewTFpU3YOAM
	3/zq0RAntyliai62uZRUsnJfEg==
X-Google-Smtp-Source: AMsMyM4ir1SUmUHoJm1zjH/EsA2r446ImLIvSZ6/d1S6xp+8X2KCZOjZ770p0lTYxHPEyLvTwkXo/A==
X-Received: by 2002:a05:6512:31c4:b0:4a2:696e:4302 with SMTP id j4-20020a05651231c400b004a2696e4302mr3075176lfe.478.1666184631895;
        Wed, 19 Oct 2022 06:03:51 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b12-20020a056512024c00b004946c99e78asm2272601lfo.277.2022.10.19.06.03.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:03:51 -0700 (PDT)
Message-ID: <6f27f4a8-1777-89f4-253c-bcd012a9ea5a@linaro.org>
Date: Wed, 19 Oct 2022 16:03:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 03/15] phy: qcom-qmp-pcie: merge driver data
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_060353_623750_4C857F43 
X-CRM114-Status: UNSURE (   9.67  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 19/10/2022 14:35, Johan Hovold wrote:
> The PCIe QMP PHY driver only manages a single PHY so merge the old
> qcom_qmp and qmp_phy structures and drop the PHY array.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 218 +++++++++--------------
>   1 file changed, 88 insertions(+), 130 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
