Return-Path: <SRS0=FSiF=NE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C777C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 18:38:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2864360E97
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 18:38:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2864360E97
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4y9MzlgWehfjBRHOfrXwGQXBxTPyPUx4pPKa+rLyA4=; b=RjvLdyp6wcS7W8
	2qQfJd4oDIrd+UxIKPHjTZlLC1PcLqE/NMxRHuOwJxjm2SR1ldGLycMwgUH34Y1vbbEi1BPOraOpm
	0rPitibjj4kzI7MkRtv2WWYT4f3+BjUnr9AH5HdhNtqo5ncHpwqCt5KNt5lI1Ek06I/xUhWCdIJFG
	DvRVT8VEQR5K1kScZR8MO9L+ErDhw80JRFWHU5pwxJGw4ZjJALy6DFq1OoPkSPJFx9icq1v+ScpLc
	vieCiwswSh5a6ASvpCC3I2j/aMartmDstESJUKYp2VS5g4ayUQ94se0e3FIHAWf60kg0cNtYTseoL
	TcqLQssHEYm5skzfV/CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEc4j-00DNAK-Lx; Fri, 13 Aug 2021 18:38:37 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEc4h-00DN99-Cj
 for linux-phy@lists.infradead.org; Fri, 13 Aug 2021 18:38:36 +0000
Received: by mail-oi1-f182.google.com with SMTP id o185so17153869oih.13
 for <linux-phy@lists.infradead.org>; Fri, 13 Aug 2021 11:38:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=T56HoVc5Lj/B99cTGd+Cuo/dhzLwcPEymz3u7dJaCE0=;
 b=YNhhYttlKd5wP2vxIDaxklhVavSAQcgfDXT8JKpbpjqz+urXPkemiHfc/wtwnoRpXK
 qZsgaoIejcPGxzG/HMVeYpTbboPzxAvasg29doXQynphJ/iGFVM/W9x0Uj4xAJshzY+r
 duOSdIizw9vLoEnFuno2GlrZD/BgjV5UjM1bsafWjnTwLwJRCR95JkUq5e1Jr5rHwJvN
 yfHmgH9idL6EdSR/pXNN8ZbkNBHI6Hz2yIrZoAXYWRaivpSgzEpRJC6CQDAm07m8mR5R
 IP8fPxM4betFSMgqMmVyqMaRMdNeTUeEMKWiBfkwpyztCjWuLOkacdjbqKTKv/pHuYhl
 BI1Q==
X-Gm-Message-State: AOAM530eRXK2K8kn/Et8iwPSKZ92WrVCidKWTzH+rxmj+16un+5VU0Pi
 KvYQ6K43gp5INDI8MpycNA==
X-Google-Smtp-Source: ABdhPJxhc7kvlDm0J0LfFE0gYnR8SuSYA7USyLq8H6egEjHcBSEof+weM72q/1XuXequ5NTqhmUTig==
X-Received: by 2002:aca:34c4:: with SMTP id b187mr3190588oia.139.1628879914709; 
 Fri, 13 Aug 2021 11:38:34 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j19sm510043oih.34.2021.08.13.11.38.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 11:38:34 -0700 (PDT)
Received: (nullmailer pid 3830548 invoked by uid 1000);
 Fri, 13 Aug 2021 18:38:33 -0000
Date: Fri, 13 Aug 2021 13:38:33 -0500
From: Rob Herring <robh@kernel.org>
To: Iskren Chernev <iskren.chernev@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Manu Gautam <mgautam@codeaurora.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v1 1/2] dt-bindings: phy: qcom,qmp: Add SM6115 UFS PHY
 bindings
Message-ID: <YRa8KfZ6kbMlp3ff@robh.at.kernel.org>
References: <20210805091727.942471-1-iskren.chernev@gmail.com>
 <20210805091727.942471-2-iskren.chernev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210805091727.942471-2-iskren.chernev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_113835_469241_51993C2A 
X-CRM114-Status: UNSURE (   8.95  )
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

On Thu, 05 Aug 2021 12:17:26 +0300, Iskren Chernev wrote:
> Add the compatible strings for the UFS PHY found on SM4250/6115 SoC.
> 
> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
