Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30B8AC433F5
	for <linux-phy@archiver.kernel.org>; Fri,  3 Dec 2021 03:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNBhNdsaVbiqdUGvZTgFJM8OjDdWaSuCHVDLchQ7+Po=; b=otqLLiEzJjxt+g
	Cfki0z3e12xgHGnmKlYcwIntAbLVIUNLCnTGMQx9RCnfiSWv7uhlqeCDSqI531rv7il4mXZ3d8cuu
	WQYEWUN89hBL/txWPkKPO1Zrr2+7k5cwy9HdrV/6NQdbhtba9aVir/BGbOioMcF+M21rGMnf7nMUO
	Kv3rkqmCYyzuxR/RSgCXlO2dGij4jysyU4U6NWz9coLwlxO36IUWJB/ct6bv+zGxAP4+3lmyujTBz
	DHZJhWD/zDLKNC4bjv4gDtZuCiqzVbiiSi0+pUhmKQY22boKouUl63Kb85auJBrzacfkiV5S+RYJq
	Qrb0108rwSSwCjTuQEhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msz7s-00EAmh-JI; Fri, 03 Dec 2021 03:20:44 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msz7q-00EAli-14
 for linux-phy@lists.infradead.org; Fri, 03 Dec 2021 03:20:43 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id
 d1-20020a4a3c01000000b002c2612c8e1eso637792ooa.6
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 19:20:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=p1KqMTIDK34u/s7OHluEijECIwpyXBcpEptp4/UAdcE=;
 b=rgegV1K3bKauCiyWSyVRzkUcZIeckduinQHC8OZI+oIzETuCpApTDXZm5dL2MEdZQw
 OUpR0uiaUuBPtjXPtI9obIqnMSJ2n8TlXy3FMMNH8nh0ZfoT9+R4J1UxTIcAPUdBXrgQ
 3t7/aaqcgUnEKhNvxhyazOrhSSnycaLhVM4TOvblw1vTlC59nZTDFDNsvm3d+vZKdnsY
 nPxuvqEo0ox6CeChIyNBnDvFSSPOfo0vpRKjLm+GDkQ38Z/mb+EH63465uA5VxBywUHG
 Bvs9+Z1sp6+DYO8XmKXmkq46XFpkz9Uhnq0aTaz+vnuRcgZS0DFuPJWQzyt0MGX0R5n3
 YeaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=p1KqMTIDK34u/s7OHluEijECIwpyXBcpEptp4/UAdcE=;
 b=qXx3HIKjSwLqabs4hAlCAQrwXHfeiSXY6mB4NK11EsvHlme20Q79KJtailpkxxzRok
 Pd8pU12Bxh7F291yrFYzP2g9ryHpVpW62z2zAI/UF5RFqNExYDo4HOEB76upbAn4A/CD
 JmCBgGTlzCDuSPyaReYEEOn3sgFxa2DGFeG/RNiyUx7zrstfpyis7X/lf3SMCoxZQ3eR
 TnosiDqjQTHc4FqtRD8LeH2pTSQuwb7ahU4tL2QCk78bvsnFu61VjVwLtVKFqpXfBBMv
 Piex/hDE015xvEHtjWZ6GCJk7IZN5k/oTzIUXEwH+ZDXCUYhQAPvddXGWLL96c1BwTGq
 uChw==
X-Gm-Message-State: AOAM53118icbGkehhvKDCzuBG0eaFLcXoli4Ubv8dTHtQdLxbq+VU/Br
 VRDEx1oo0weOJ5h+HhTU5+G5zw==
X-Google-Smtp-Source: ABdhPJxrvjChCy+lAG1t0/VU6ZajZW+6BESeDdkQHOzsLwKOYhFlZLknk0dsq38rb9jVYfi3fsPZoQ==
X-Received: by 2002:a05:6830:2693:: with SMTP id
 l19mr14745277otu.338.1638501641452; 
 Thu, 02 Dec 2021 19:20:41 -0800 (PST)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id r37sm434687otv.54.2021.12.02.19.20.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 19:20:41 -0800 (PST)
Date: Thu, 2 Dec 2021 21:20:36 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] scsi: ufs: dt-bindings: Add SM8450 compatible strings
Message-ID: <YamNBFRsLFCxRQ1P@yoga>
References: <20211201074456.3969849-1-vkoul@kernel.org>
 <20211201074456.3969849-2-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211201074456.3969849-2-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_192042_097670_02021DB9 
X-CRM114-Status: GOOD (  11.84  )
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

On Wed 01 Dec 01:44 CST 2021, Vinod Koul wrote:

> Document "qcom,sm8450-ufshc" compatible string. "qcom,sm8450-ufshc" is
> for UFS HC found in SM8450 SoC.
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt b/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> index d8fd4df81743..d0fee78e6203 100644
> --- a/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> +++ b/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> @@ -16,6 +16,7 @@ Required properties:
>  			    "qcom,sm8150-ufshc", "qcom,ufshc", "jedec,ufs-2.0"
>  			    "qcom,sm8250-ufshc", "qcom,ufshc", "jedec,ufs-2.0"
>  			    "qcom,sm8350-ufshc", "qcom,ufshc", "jedec,ufs-2.0"
> +			    "qcom,sm8450-ufshc", "qcom,ufshc", "jedec,ufs-2.0"
>  - interrupts        : <interrupt mapping for UFS host controller IRQ>
>  - reg               : <registers mapping>
>  
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
