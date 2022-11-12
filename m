Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EFC8C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UZtIiK1fSd06N1/1RWc6E8JFW3XGtR7QzbUluOPRXg=; b=RMeG/Kk7yZnVGw
	k875oODAys8R5aO8HF52r1Ba4Im13qHrYvmu6eoRb1dPWKTBDcLrnZWwh1v/oBTOmgX8F9MozoQ1z
	D+AXAQeZtcs96qrbj4bTsra7vwDcq/5U3VApKboalCxTMPh+3/TCxwdPd1SqQIdP7iCnlGdVchYbn
	KZr41x4xDtmNw3UWdtIP4E3FGLjOdgyJLUl68dKDuYi8NqdcRoMQEeVg6SHUHjLrsspixl7B8QCzH
	yaB9uTPweTvvHSg91XkwQWtEq6+ODyWZ/Xdgh9DfarLAGiYzH6T108PQOvCv1QrUAXoipWoFmhCyn
	dd5WnoC9DYsoo7yg0odg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjqW-003eER-N8; Sat, 12 Nov 2022 06:18:28 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjqU-003eBP-W3
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:18:28 +0000
Received: by mail-lf1-x136.google.com with SMTP id f37so11265908lfv.8
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:18:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RnfzUAs88i86Mx8MvJyKETPrtvIl8xH62MVXOdfgEDM=;
        b=ujRLphb6doSkzYlyhU70mBqozOQZeYOOlnmKT5EOraFSNRDeC3e8fuUPt9BpYL120U
         Jxy5bxDLN7BsU02vEsECIEwpWTCmGtWUf6r8LV0D16j/SsWf4so9TkHkdkd/t+A9nwln
         Y4Jp6pqtC+IBmt+4Dtc3JoOhYnksYnFXW1SjRohvccg0qxXexw92WEbwxpEZ+x7KegD0
         oWKevOcvXuck5PF/kp8Tbcq0QwQNITrfIMNcA0gkcYre2bWPkYcSqNuT1scFTV3vk0ip
         d0v2bUMp/h4NMjHMUWuetAsn6wg2ZW3zMCOgPcQXVyuehk63jtzYXsmqLjk1aTjtYxco
         37/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RnfzUAs88i86Mx8MvJyKETPrtvIl8xH62MVXOdfgEDM=;
        b=G6hukkPUK9umrh6hcFaN3nGstQZw/XU0Vek3AKxMM0IGNk8EChuslmKjiLWcI9DL3s
         8x2hLtb5N5wjcSxe2BhgBEeWcR9S0dZvJDM56FWG3ePk7jy3Zt1giWe+xCzBkS6vchJ7
         hqr78g2icn64w5AgWHCBm/th0Q87aGS4FAKpzRhnvAfzInujOmS6IiGLvSZ2NgaC9/fS
         6zXR9dlMmJTcfAVMYVNISr+SwcQ/DOntSimX6noA14JFt6JbOYiGosfQa6TYyD6CGscW
         YyD8nbU/4bhBle+KA5R02Uq1+XMcFN8U2cfiJBBQ9b0Dno26/eHCN0E2W940fu4sN2Ig
         B1MQ==
X-Gm-Message-State: ANoB5pnONCnlBF2TUbTTk7St25lQANKZ5Wp1iSI9dCSWAXMHg+orVWx2
	kjXH4qwyUkcfF90412eHNUacVX7UfrCMTpzB
X-Google-Smtp-Source: AA0mqf4J66Bf8He+wVlLo2Ko+2upfofJLXmBCfkAoj1i3U3m6pu7Uiz8J5oRrbIzGfA36scUM2WMZg==
X-Received: by 2002:a05:6512:201c:b0:4a4:6991:71c4 with SMTP id a28-20020a056512201c00b004a4699171c4mr1839436lfb.355.1668233903190;
        Fri, 11 Nov 2022 22:18:23 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s17-20020a056512203100b0048a921664e8sm714498lfs.37.2022.11.11.22.18.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:18:22 -0800 (PST)
Message-ID: <1e8f27c7-3848-38d7-e658-5f2578a28137@linaro.org>
Date: Sat, 12 Nov 2022 09:18:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 6/6] phy: qcom-qmp-combo: clean up common initialisation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111084255.8963-1-johan+linaro@kernel.org>
 <20221111084255.8963-7-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111084255.8963-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_221827_060128_AF4755DE 
X-CRM114-Status: GOOD (  11.43  )
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

On 11/11/2022 11:42, Johan Hovold wrote:
> Commit 52e013d0bffa ("phy: qcom-qmp: Add support for DP in USB3+DP combo
> phy") added support for the DisplayPort part of QMP PHYs but
> unfortunately did so by duplicating parts of the shared configuration,
> something which has lead to subtle bugs depending on probe order.
> 
> As the resources have always been requested based on the USB
> configuration, make sure to not rely on fields from the DP configuration
> when using them (e.g. in case they get out of sync) and remove the now
> unused fields from the DP configurations.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 47 ++---------------------
>   1 file changed, 4 insertions(+), 43 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
