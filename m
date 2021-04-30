Return-Path: <SRS0=80zw=J3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E5BC433B4
	for <linux-phy@archiver.kernel.org>; Fri, 30 Apr 2021 15:05:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5EFD161409
	for <linux-phy@archiver.kernel.org>; Fri, 30 Apr 2021 15:05:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5EFD161409
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iX13npTWEC5lpsCD2J0UJCOvzyWXHlwGpXSEzzCtkg4=; b=Wv05YDe0vnzV8h8D3l24+hih0
	/DMsThv/pSV0uAvoHkF6yOsK5JXhJh486hkS3iJM3EVdgCcvvKJUvl3FGMD9SRpFMlmbyWOfSi68m
	UEs/oGj/pvlTt0QKXDwNyk6TSoSkH5BgMO6pMnMNBc6gQSifkyQ897snm7/amBkdbTfsO7a6mNp5j
	KV8b7knCTZaG2OdseXciVmSSA6+TRkmX/EJrG2z3tDZoVZ7fX/omkY/hsiNMFkxMrABb+9XiPsM12
	eaXQTZ4lgKF+ho8PbUiwnq7DepOnVk2E78AFwcIWc4DLDTX9+cNPaTGAzzBtbjzyO2ojaBm4freeu
	7pmcz+8cQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcUi8-0080q5-Qf; Fri, 30 Apr 2021 15:05:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcUhw-0080oI-20; Fri, 30 Apr 2021 15:05:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=UtTHHLQsplee9C29Cg59LYjLb0qT4MBNWWXqLYYCrMk=; b=V0a3Cd5swXKek6dzylzcwm84as
 0OJXNvPAo3mA0AhpqctE1ns8/4JJaI7qtQOSXz73qkru43Jq+t5tRXDppevVFFLee8Qg0RRKId4Q0
 NwuaU9oIR8p9x9mo8bIO7IYmewwjR3HEF61MALuFMzGqHsDXmiNmp7WXKm1cV8LhZcOx0iGs4zvIU
 rCcLM9NjulMXaEQr5opqCmjuP0dVrEYL2nmPxy2exUAR9gTSy5nTWb8Sc2E2F7ZRfmv4f0Nwfu1+p
 Fc/iuS5bF98NXFdtg48QCrLgs2ZqEiB3xNxk5Y9XQ8OJ/zsqI4IVYNURD/xLouc9Z8v4Ho42aV+bv
 elzLkezQ==;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcUhs-001TD4-SO; Fri, 30 Apr 2021 15:05:30 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 c8-20020a9d78480000b0290289e9d1b7bcso50598592otm.4; 
 Fri, 30 Apr 2021 08:05:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UtTHHLQsplee9C29Cg59LYjLb0qT4MBNWWXqLYYCrMk=;
 b=OfXIo/C6e7doHOXoYcrINEn3pooIfmmu5Ztc08uiZITPoFUrcqq9iIRggty87ITBRo
 R/9IPumNab66kZz+DF4gHNmby7N68sFxIBbfFSvbF5NN3eBrX3u+LIhXd6bw7FWYfcur
 lApYZ5xSf1n0/8ZgwxID5PDAi6PnAPh2fG/HWKwWVKNWfCA1CG8P1Ht3HLxv0dt5DevW
 rhPEaNshrwG2o1MlQ85bOehZbgm9ercKdac8qp5ufl14QbLuHh/s99zIRp8NQRwqXYQO
 uBolpWClnl3tvlSiZ6mqBBjgoQ+u2tdMnK3D9ONiyp2lkkd8ro1/FgQyEA3GW2/Ri44C
 2pBg==
X-Gm-Message-State: AOAM5331PqQAl8MXZDzr+f3HHMFJJW7qq+P5F1/NwiwNTAaexTzRbstq
 I4gwYzIwJQ5V7G+kHlfWKw==
X-Google-Smtp-Source: ABdhPJx1O2/+nZKt9VsdxpJqX6nGHemCbL49ftbKVxAnrCeSzCa7c/mPWvFZ64aU1ZwqfgyTwX8BnA==
X-Received: by 2002:a05:6830:1db9:: with SMTP id
 z25mr1490915oti.220.1619795127585; 
 Fri, 30 Apr 2021 08:05:27 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w13sm798615oop.0.2021.04.30.08.05.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 08:05:26 -0700 (PDT)
Received: (nullmailer pid 3323131 invoked by uid 1000);
 Fri, 30 Apr 2021 15:05:25 -0000
Date: Fri, 30 Apr 2021 10:05:25 -0500
From: Rob Herring <robh@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: linux-pci@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-phy@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>, Andy Gross <agross@kernel.org>
Subject: Re: [PATCH 5/5] dt-bindings: pci: qcom: Document PCIe bindings for
 IPQ6018 SoC
Message-ID: <20210430150525.GA3323075@robh.at.kernel.org>
References: <cover.1618916235.git.baruch@tkos.co.il>
 <e285d5041b8c19d4a7fab4d1a3ce9dd2b487cbad.1618916235.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e285d5041b8c19d4a7fab4d1a3ce9dd2b487cbad.1618916235.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_080529_714965_2C66FA14 
X-CRM114-Status: UNSURE (   9.47  )
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

On Tue, 20 Apr 2021 14:21:40 +0300, Baruch Siach wrote:
> Document qcom,pcie-ipq6018. This is similar to the ipq8074 with a few
> different clock sources, and one additional reset.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.txt     | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
