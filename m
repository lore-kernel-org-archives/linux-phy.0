Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11D84C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epWQqYhiRdZPIHCgOjoIFGY/3NCMK/NdnhonRZi6MkU=; b=1NN2N1Kn4HgQ8u
	2byZUf6S5+B0PmqFAd0an3fdQH2ZR4R+7UGNTe2uCxH0XcBZOvtEolkX0iXgNQ9/SoFkSFhFIyVf7
	uEmgiW/Fyiu29B4sLgy390WIBKKbmOUuJEN7PeAdreUZHsYSCBCF4CaPKBM7SNqgtRKRVS3p4lUaA
	33SdbUwSVDTlJOEEyQhUZwknPp+j/RMjudPLZ3egve3pzynfB5xHkY60yteE3aILCqGZvOB6DXuFf
	CoXKwV+wVFY5Jz2RDWiQKyVMHx++nduAAc0yiuuwjQKIgtbhxKgkWAGBrM1aUWj8/QUp/8IC/iql9
	oTs/0iq55mnHAwn59xZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjrZ-003eau-EM; Sat, 12 Nov 2022 06:19:33 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjrW-003eZI-Vo
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:19:32 +0000
Received: by mail-lf1-x12e.google.com with SMTP id f37so11267811lfv.8
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iJ6LdJsOhTJRCW93h81snVRkQ+sO3833vOdvbhT9QHM=;
        b=GuJElm0VAFQY0SzvVEwn/uTjWnku5CHQm4KnlaGH2kGCdHaHWPq4xJBqCwJmQrFzEF
         G197+oQBr3byIknwx5OiDUVC+VyVWtg3FIhz+Xk54v9iKTVxl2bF7JhSBelxxxkrxPxH
         HR8olsV209Rk/Bw7Tj6nANLxU6RTzeJFu9aE5hCSyxVRMtWjQaiCW5eyDEiPKe+fJ6je
         6fulbQBm+uyq6czENEHvobE1bMRXMOkni8Uoh/0yr7rbmyrDTXJyEAQTXm/IZW/gIEjQ
         vCzUlOoaU0ZNS9FiaU2Goc9eyvkUHq+yqVB1jcB7c79Rp0EXR2lXICkvcjk7U6Soq1Z5
         7XBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iJ6LdJsOhTJRCW93h81snVRkQ+sO3833vOdvbhT9QHM=;
        b=o+Sq6PJjjJT3KBGKUTVR5OeAui8mPboErI5lVnKOi0pMPHAgWVUqJfWHpE2+nA8PBS
         aP9inGXu5ldpWHKEjdNUXnyUcgOqfw1tjIUS5jq/nd4Q+JXM2Q4buvT6JpX3BAq9QnfB
         0JUgS4hLspmIqom84SVSvS1LrQf7ZOw1nGzTDddepAtLkmfbxwaY0//5T7svxftkWLZj
         e/IJ9xTVvLdcUOAdmK4/Gt4ySDLzOr6+IEdeIIH57gkEy1laqrVabOk+BnwLILta/eyr
         AH2HUNdBOfww1+VHxOdPMtaqVMJV2yYJEYcTbu5Dp4bsOS7tRGE3IAku0ZekhzzlhZTL
         mnxA==
X-Gm-Message-State: ANoB5pkZkf/IwmMx+7ekaGH+uMWQVCg8Yp35VH5gJQ/9Pauol5cSNerM
	UPpXP2cXdnNafKV4G692OAPFHg==
X-Google-Smtp-Source: AA0mqf7HSP+kh6Fn8FOnbPeKTWNtxiy/N8Ew1wBVjyShFBfmdSrV6sUoKs6+c3coQJ2ZU0zM4b0mBQ==
X-Received: by 2002:a05:6512:79a:b0:4b0:efed:e3a7 with SMTP id x26-20020a056512079a00b004b0efede3a7mr1739026lfr.323.1668233967179;
        Fri, 11 Nov 2022 22:19:27 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f21-20020ac25cd5000000b004a01105eea2sm706319lfq.150.2022.11.11.22.19.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:19:26 -0800 (PST)
Message-ID: <64e17d18-9681-59a9-bfc7-a32544f4ac4d@linaro.org>
Date: Sat, 12 Nov 2022 09:19:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 04/22] phy: qcom-qmp-combo: rename PHY ops structures
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-5-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_221931_051583_C1AED047 
X-CRM114-Status: UNSURE (   7.61  )
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

On 11/11/2022 11:56, Johan Hovold wrote:
> Rename the PHY operation structures so that they have a "phy_ops" suffix
> and move them next to the implementation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 40 +++++++++++------------
>   1 file changed, 20 insertions(+), 20 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
