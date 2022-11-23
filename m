Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6B57C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 11:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1tphIpHHJfYuKWKZB30bmIR7X9DLiEFxcOGhJ3+dUg=; b=CiXkaYZ1ULxnbD
	CzbIrs+HhyFYgMMA5TQilNN/kE62pIieuoUDsAhQT6/XfERYGQcVeim1pvADSTTpkTVhv9u50T03/
	rU/C/g9aHiX0VLRmlEairCr+8/zNhoKZYmA5iYxKgHrPcHWfAEbSAYt7X1bHsEKJKXU3LGrWJr6RU
	EkiPvYWHF5+JcqmvzSv/BBPqmjxrVj8zcewizZIDNStDpIDjhFFhulItEwu6E4TP8UpK1kk+3y8P8
	2jymtKO2CdNeupZuRA5BoeC5wIvSuSSwYe7f2VsgLJaY+1/5hXVOUHvei/Zdj8fpx+JKYCMRr8US9
	zzpGn56GUCRL7R9rHxhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxoCR-00Glf0-US; Wed, 23 Nov 2022 11:45:55 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnEL-00GQJH-D3
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 10:43:50 +0000
Received: by mail-lf1-x134.google.com with SMTP id p8so27530894lfu.11
        for <linux-phy@lists.infradead.org>; Wed, 23 Nov 2022 02:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rT3zcQTdiqIKVUqVpCnTTdj/c8j+Nk1Lz6ur5IXMJOA=;
        b=EMg9kUC1+ELdZg4dG/mu5U5HWqIDh2zj38EIiGc6PXb/Tty6+0y+tysqOb/UfVwY5V
         x+jqoABT4qC7m+d2D+qZIuJGDBvjwhIaki6eJzLfUwG9UPwBezsZC+HHNrtLOhAPsi9G
         n+oMu50QndXYVCXfr1tDzmvtdQ/IN29K0FVG5FYtUED/0g/8utJpV1zn7xcTCYMgGR4J
         l10oL16UVwKsVpgczL+gjXjSw+ZYXMtOb0ixi1qk8ayBVOo931PfdomB9ADSW1LF3pWf
         9aYRiIeKAAao8GdC7AA84m8EOfzTsjpSc9fTW4gFHYo+/ifquaDVtOKCeK+NQtAqyJwS
         yi8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rT3zcQTdiqIKVUqVpCnTTdj/c8j+Nk1Lz6ur5IXMJOA=;
        b=am51f0OHKoRyFUtVlQdaI2MSqhU04ZMGnkOPNYxU7xY0s7d+Bcr+7Q9/MOiZnqDAhL
         sKCzt/yy25xH6kI1Lwdsx4ze88dMU5xPbVSmvjdhTIpRkW+k+EAqpZOebHjaWXUzNMj6
         n+dvh/HFglIrKBsTLSI7Y1P/I0hHDrxUYuDeYSmMVg7LC1RTEw5+JZmAYfSF86vMuo86
         ex13IcNIBPeiUmHndcQBupZKPfcTn8wnFAHNKVdgEyQ9zjXjYgJ/aizbEoTUhSklaXRm
         ThZflp/OE921yVkoA9AB3A03uiAQed4DmkPF4AoXezH6PXfzwA8cE9VgLLX+IHCV/jrv
         oOiA==
X-Gm-Message-State: ANoB5pmfM/wF9ZDHAfhWL+Tdq7rC5htdW78sMkm3wrDI8dtVc3nuNOON
	z1Tv9RT2tP8HpKhzeMoz3jYx5g==
X-Google-Smtp-Source: AA0mqf6VYlXsQaHR4cbFjaN5eV+7fCtvNBbhQ7J0rfydPqrSvO6VpNFGGC42MRUUxP2ujuSxtVP06g==
X-Received: by 2002:ac2:4558:0:b0:494:6bb2:485f with SMTP id j24-20020ac24558000000b004946bb2485fmr3581244lfm.451.1669200226234;
        Wed, 23 Nov 2022 02:43:46 -0800 (PST)
Received: from ?IPV6:2001:14ba:a302:5f12::1? (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id g4-20020a056512118400b0049e9122bd0esm2037454lfr.114.2022.11.23.02.43.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 02:43:45 -0800 (PST)
Message-ID: <e7635cc4-a436-11f0-1ea6-46f0056e403c@linaro.org>
Date: Wed, 23 Nov 2022 12:43:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v8 0/4] phy: qcom-qmp-ufs: add symbol clocks support
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20221123104215.3414528-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20221123104215.3414528-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_024349_487054_69784D63 
X-CRM114-Status: UNSURE (   8.00  )
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

On 23/11/2022 12:42, Dmitry Baryshkov wrote:
> Register UFS symbol clocks in the Qualcomm QMP PHY driver. Some of the
> platforms (msm8996, sc7280, sm8350/sm8450) expect them to be defined (to
> be used as GCC clock parents).
> 
> Changes since v7:
> - Rebased on top of phy/next
> - Renamed the clock registration function (Johan)
> - Dropped rogue qcom_qmp_ufs_ops (Johan)
> - Fixed the comment following Johan's suggestion.
Ugh, this went total crazy with me sending the patches from the wrong 
commit. Please excuse me, I'll send v9 instead.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
