Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8420CCCA47F
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 11:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JiSss34ULBJefXe1yfhXw61j4MKG4bwWVg77GrENBw8=; b=30VmhPlnxvr+yh
	8MnzHyfrdHw15a/4EZ1lmUXbbm+FoxASmF5zD80BC1hZWmkw6MKPdVpSGB8dVuKc4OtzKEvK3TtX3
	0LY5f/KD2PXXOsSuS+KbYKs7onpgWPQlp0pjKuj5w4BZfuTHt0u2/Lonxkl8hslRFO6nIa2M25lC/
	NemLcDFJDt7VKlfMJIf/JXifSh5YsLylJzXndKpteXgMpTa5y6XbKkEKldDSKtl3DMR8kIjsnRNUF
	+LsPgJFqS1bKMCT4eVv/UUnPJO59ut7Lu93yVx/tKzkIzKJS1eJXW74vCuKyyZkFubwb5jGteNCYH
	lm95qeAO1NPrP+2CfZFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJ3i-006TLQ-VJ; Fri, 15 Jul 2022 11:00:34 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJ3g-006TJw-0F
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 11:00:33 +0000
Received: by mail-lf1-x133.google.com with SMTP id o7so7212117lfq.9
        for <linux-phy@lists.infradead.org>; Fri, 15 Jul 2022 04:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=QCQCmBsf1DA1Wn9Db/rqbLuUpiiA+4ckSDT/a9GkcLg=;
        b=KLG+3UnmIBqTm11CZQOXA3v5XkFnjQ3NnsSIXk+Wbxp3IMj+ntYW/QzFmMexKmI7te
         gAgfNJ3enlvskxm9V/tqzEtAuVRUEmINkLeGnHOPQjTykdPoGNfqWjYOlHWsJKKaJKos
         ACweysGLbgiJr9pAYcdRSj+V6Cshr5G6oBLVBU1FXIiwRGWqmPyr5fLQ1NUihkjqON6M
         DZZbepq07ojP6/3sPvVU35YNZ5urb0g47ARuOONZB+FXDSRRJwgM0gQdiDAipXCz1x84
         un+8cOEheNXU8XUopXTBigTUSznJ5QIuiEqYSKFCD6eeMO9SwA0BBK8kCmJ8jafHEh5r
         2CdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QCQCmBsf1DA1Wn9Db/rqbLuUpiiA+4ckSDT/a9GkcLg=;
        b=s0zBVr8NHGG9CNvtDxU3vMJG6Xs0RwlEw3NK4AhE20PZiL5wXmtidCzthvKYNhrTce
         PcKqtpb7Qf5V01r7UDr1JABDUFrzng+hjrKGALuvxnqf6pxMvNenipIqwj+hw1OsLYZM
         pYmtWmfGCOxnh6WrIRmZT9neZGOXnURuiWLHeJxp8dLxUSiPuQh+KO1PjiuqApbk8kYL
         lANl/Fw6LVzKmsDKcoQpOdSuOksT+fwKB7zogfHcSZzWfjGfgUEXI+63Cwc3h/9T6B7a
         m0cgPIid+E689CD0KOPiZAJD5pqwQh3UOu5f2hXEYgCH03wvPjwN0TuDuDaFz07DjPiQ
         NOTg==
X-Gm-Message-State: AJIora+N8QQIGPxt5ml7w4CQeuW4IOs8v6ZnGXFZNYb8oSasKFr7JV6s
	lWmP1lZ1HDnAVFXI29GPXGP4AaTGIAtCSQ==
X-Google-Smtp-Source: AGRyM1uud0vYpm9BdHaEw4F/cDP+GmNnJZYc1ROR+M3VRHmuHg9rOz6vgMJzDj5ccZj7a0ziUcFdBA==
X-Received: by 2002:ac2:44cf:0:b0:48a:1251:1cf5 with SMTP id d15-20020ac244cf000000b0048a12511cf5mr5145684lfm.680.1657882827338;
        Fri, 15 Jul 2022 04:00:27 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u16-20020ac25190000000b0047f88d15ec0sm842600lfi.251.2022.07.15.04.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 04:00:26 -0700 (PDT)
Message-ID: <937479a6-8ad5-dc38-3c8a-f972993d23e2@linaro.org>
Date: Fri, 15 Jul 2022 14:00:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 30/30] phy: qcom-qmp-usb: drop pipe clock lane suffix
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <20220714124333.27643-31-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220714124333.27643-31-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_040032_071624_57FE70EA 
X-CRM114-Status: GOOD (  12.82  )
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

On 14/07/2022 15:43, Johan Hovold wrote:
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
