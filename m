Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9421EC00A5A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 02:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6plQI+lOg4g+3nK/APs4ub+lw7g9MX07yOeCcw/yWZc=; b=BRy0KleVOhieRz
	17975UWR/bqIoE+MoCMv1e9RmODw0CuQJjrnwRlZF8y4Cnf1Tk5Q+A1t7u0q7NoxMHd9P7Csa+jL0
	X8cNAog1hZ/WGOsWVvwk/xrPDtTYLeEovElDho+QpvfTja+9gekkHjqawaFoL5cPG4SrGBxBhtIpA
	+5oMUxq/HUZqNYi9G6sZpm8z5y1TEKazSin1WPgDJnHdnzGI8eKDKUOWcCX4XfFYFKTQY59BGHo2E
	S+KUkThW6AsIAORnvcyamDcpGoa1VefOOnOCyUBGHbJ3kMmbjCUM94lUm659Ujs2l2WrbcFuBn8UX
	Kn81r8RvaMKtN5b7zZWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHxvO-00GYRA-Vr; Wed, 18 Jan 2023 02:11:38 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHxvN-00GYPj-4f
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 02:11:38 +0000
Received: by mail-ed1-x532.google.com with SMTP id s3so9555631edd.4
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 18:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+GW7I0VrYyXDQaLR5GtSXiM2WBJ7x/cZaIN3Wwv9s2M=;
        b=TWLLN7E0rk58pAw58fgr9ZG/R++20o0Ja/Tb2x7RuRPFTEOnMn25Yp2cP+MsJrOu4h
         e5/D12SpFyzR/HPnwll6Vpd8Cr3id9qcZRzbr0l7JVlLikHMSJ884NiXPvXa02CPTTLe
         0bqoW3JI7cocGc13cUPDJzXzL4HYedJJWYAHKADBYsA1fwQ3n32uH54zPwyUAdpCOA6Y
         bbKP33LOlfnUUkT1NnH1akb1FE6xNVEFIVbLybMXw+zBDzJxXzHQiSHjm2CdjED6wHrR
         4eOJwLeD7V0bVgiPA6YRra2+CKdvkZyYW2g0nAhjGr2EIx0qD2V5vqwlRt/KdlDxcYj+
         oR4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+GW7I0VrYyXDQaLR5GtSXiM2WBJ7x/cZaIN3Wwv9s2M=;
        b=0GElLmxjyJnjXAVk2jGvpQ90pi/J0C2LC+nzL7uYgSfonsmV/l95MYkt+bLh4NWw5s
         cB47Pq7QZVJaYLcBCqxn5eIUSMmnXTZ0+GM60Fy6unYWcz6/8iXY2+bpqo9QhA+u94NT
         zDAyLLoHNOwPLha3acGaQotuSZT+0ftzuFcoZI9KqvWnWlLwV3iL2yvKrYeoUqebmXiL
         mKi6x6RkwTqKWePpQdhmt4s7cOUfOSYB8X9W1CgJeLhlHVYMgrj444WUg/dkVjHEMnwI
         bVnz6Q+6kdGBMTcQy/IGRZTQutO85MrnfIaUlY+f6Z0WaWznDWdmtLPAHrBPitieNRnL
         5b1A==
X-Gm-Message-State: AFqh2krudKbC7conDb6WXTKEgMnbpdS5JsQnfjvhkZywn0cjCzpMTfaE
	mYHe8xmUA4dZSays8MpbYyA0/Q==
X-Google-Smtp-Source: AMrXdXuERO0vlwGdXJUCd4MNMJSTzLzLEcBV4NIgIv0IXpiTvF8dU4K2xy8Yqe2PPsl+Kdoyg6s4sg==
X-Received: by 2002:a05:6402:3894:b0:49e:45a8:1ac9 with SMTP id fd20-20020a056402389400b0049e45a81ac9mr1391644edb.24.1674007888516;
        Tue, 17 Jan 2023 18:11:28 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id ec49-20020a0564020d7100b0049e249c0e56sm2579123edb.56.2023.01.17.18.11.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 18:11:28 -0800 (PST)
Message-ID: <5ceeaf13-8073-efe2-7a56-370071ff8b3d@linaro.org>
Date: Wed, 18 Jan 2023 04:11:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v5 4/6] phy: qcom-qmp: qserdes-txrx-ufs: Add v6 register
 offsets
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>
References: <20230117224148.1914627-1-abel.vesa@linaro.org>
 <20230117224148.1914627-5-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230117224148.1914627-5-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_181137_213224_544A60F2 
X-CRM114-Status: UNSURE (   9.82  )
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

On 18/01/2023 00:41, Abel Vesa wrote:
> The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
> UFS and PCIE g3x2. Add the new qserdes TX RX but UFS specific offsets
> in a dedicated header file.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   .../phy-qcom-qmp-qserdes-txrx-ufs-v6.h        | 30 +++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  2 ++
>   2 files changed, 32 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
