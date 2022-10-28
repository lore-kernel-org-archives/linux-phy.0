Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 503BFECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 14:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFHXz8wVSQjRdsc8RyHxSoJk2UxraUdq8zndFdGwlyU=; b=U5dixRkQm6XkrQ
	lSQt/jTeEzIk9+LFeWKCTZ+hImNeUHgIJ9kD9AHaGD/KTigcKgQV6td9WUqVu2ou0KsMYU7fMrvkL
	DgR8koyxwSq22Vug5mFPIk6Ss4JLlCC3YyGd4U2OsQdGTtlV9h8ltvHf5qdKaM9skV5Zu5LqihiRB
	Kd6nugFPEx2r/wOyZtkY5ifYmwWg21tN81+F65AH06nCsmJZmwbgfhvsmJyAj+QzTNdCLVpdzHui9
	s31bwzlw7bc3Jit3YqKv79jwRh/B286P7D7i4W2yPMoFodSsID21bruFU4DKGBP0RWKbisbNJsWFZ
	Z2r7IT3+Qlq0yWXlj+rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQ8w-00Ha4b-Je; Fri, 28 Oct 2022 14:15:30 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQ8u-00Ha35-EZ
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 14:15:29 +0000
Received: by mail-lj1-x229.google.com with SMTP id k19so8188228lji.2
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 07:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1llsZlre5HYEk/5lJAL2HT8KNgEJ2nZJKCRD8edZfTM=;
        b=iBr2iDHVd4dGVM3VVTqOSRWYUfeNYWA7pnY9o3J+X9ZgTbfjd662xAEZxrnJyjY1l9
         jWQo260/mlrZL9n71uXS9gSGp5QEF2pYJwDy+jTtZu2VpOWRo1PfUBKNak0EJvFM3N6Y
         Yz5WJKohBW1kQOSYr0+tn/AB4XGpRq+1pfeWy5XIVTMmFhZvjRooYOUFBFOYPBmosZAJ
         Hdcz+nG2JHne7rX1Qnyd/XEYLXLIBqeqFc9iNiRY+XDz5X95ZUN9xjGWpnX2I7gjbbfL
         9d1yNKRaW0mMTb+CtP62LEIiEw0CB5oyJjbQxPC3N0dmk4S2LzzAEDVz1SdtUCtkgy5v
         SuXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1llsZlre5HYEk/5lJAL2HT8KNgEJ2nZJKCRD8edZfTM=;
        b=zu2PxFPXPG3Oq71o/j/rKmKjDXT85IZGnXLYv+ANacWmmJJB9mpKPGFGBPjVeG7tjG
         0oYUq6EGkHbWM+GqgCohMSR4r78zkIlk2lA9PXH9xQz/MGrOif3qiFnpkzFVOIuHELp0
         v6pWicCcwBHdOIzGT5oQ5e1j1rVIvAI7ozz7eKAOaKrZg3DXfKPHCbb4ubrHXFPjNnhL
         +uy7YL6B6jfkp8sVb1PHHJnth8ah/xr+nTHuBPlvlzdoe24CrUslA2wCXMgcMWiQd/wJ
         Ymynv5VBRM2s7XnilRZI/lFsT04DhkxQ0qX3c8iu2hd6Ik5BWUbIU00nL6UQxiKYiVq1
         Qaag==
X-Gm-Message-State: ACrzQf1rsnG6fKWxNb7s+5MiGwnJqX8aHSQZPTIRYXYDNb8exuueoT3P
	m2NeuHc0VJ2Dl/w0VwzniHcgUA==
X-Google-Smtp-Source: AMsMyM6nJKSVLYCaGHCp7jA8wpaHC7MDQcdwjDvzbKyqdOLXc7VEtwG9jHUNZ3LlR1f9uKF26z9Frg==
X-Received: by 2002:a2e:93ce:0:b0:26d:cdc0:86a4 with SMTP id p14-20020a2e93ce000000b0026dcdc086a4mr20799921ljh.320.1666966526948;
        Fri, 28 Oct 2022 07:15:26 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id o17-20020a056512051100b004acb2adfa21sm576358lfb.297.2022.10.28.07.15.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 07:15:26 -0700 (PDT)
Message-ID: <f0a45e17-15dc-4ceb-bbc6-54b36eadbb94@linaro.org>
Date: Fri, 28 Oct 2022 17:15:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v4 09/16] phy: qcom-qmp-pcie: add register init helper
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221028133603.18470-1-johan+linaro@kernel.org>
 <20221028133603.18470-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221028133603.18470-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_071528_523934_CF37231B 
X-CRM114-Status: GOOD (  11.08  )
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

On 28/10/2022 16:35, Johan Hovold wrote:
> Generalise the serdes initialisation helper so that it can be used to
> initialise all the PHY registers (e.g. serdes, tx, rx, pcs).
> 
> Note that this defers the ungating of the PIPE clock somewhat, which is
> fine as it isn't needed until starting the PHY.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 37 +++++-------------------
>   1 file changed, 8 insertions(+), 29 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
