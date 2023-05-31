Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF4FCC77B7A
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 02:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZ8sgYLVTYv4TZCrvTTZRcQOJqef0W+0+5zQRUVqxv0=; b=2Y6bg6FwLXzCq/
	L8kAJ71zf+kc3hoq9tbgVCDcZjKe+J01IHPvXNnLcWZyoBJEGbuyrMLphHolz9lJUITgGzz4g360P
	bc8xza2Y3OglIAwWf5QohCx53n6ipH+QLkr5eSQ+IfXFnvhdB/nwvWHVMoEQjf7K96o121B9In6QJ
	fijl1LPW5EF7VyfCPknJTe8LORXA4A+nmVL9/dC/fDZB1jGqA81wXsvDr6argK21INUb+PrJo8Yc0
	Mj09e5CBCtJENL69cZQR1WwMqjRj5tZMoPOQmB4a9lR6doSPP7eDfgmjd6owYqnmMkyUlR8BnlErd
	sZDVVZLldv6QVjvu8eIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4C10-00Fqoi-18;
	Wed, 31 May 2023 02:56:46 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4C0x-00Fqnb-21
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 02:56:44 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-565c3aa9e82so59280987b3.2
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 19:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685501800; x=1688093800;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=l63BPFHG/8A+DlS6bj6aZarLbZJd7JSZfr8s+sxk1kU=;
        b=wzQLoolkF4+jrat6q+ubEjQngrEqfsaw/HCc1Ve9bqpxoiPtgOtB/OBpBsBE7v6tsy
         PmNAc6Sp58LnySwGc5c/HtBhKvJsTIWXL5TsmFF0L4qAJl1N2bS+y2H9WxAA7MoiahaG
         IQZgLkNBjqiFe+PzxALHR1TbsYXjtzKfOHF3UpvfJ89zoXDSFGsCqehX+rUE2RvvdT3R
         r1VbD0ZZhCjmGpNw6hVHGabrdUDLKyunklcpm/pNN4zvIdwtTSC4QJEAwX0U627+rs9/
         4LxGwcw+5HX+wpChEHfAOLMS6V1A9w1wenuB0+oSrprkYNvIuG2bldmCztyk7C+IHHjC
         9u9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685501800; x=1688093800;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l63BPFHG/8A+DlS6bj6aZarLbZJd7JSZfr8s+sxk1kU=;
        b=QCFl/JAFdkcrVuQWbePITwONrUEJsTU74BUJ8YQZprV0AwGoQuzCc7o/hNzvPBJQ6n
         5EXMmAonHnlePTLHH0hR/ey+VZvMQS2frvfqtl9zrxhqhQUdlLwMycsg2wNRNKHnGu8S
         3AqmZAnwttJc+mobncyC+v1umKhuHev4wSgqfzyCXPwshXI42mGCIfYHVcHlgVlYEoVr
         3pi1A7HBB/HyfdC4pet9c83CIlKyx/MzcOGMhB2BcU9wXkaep4vYaqITQe0GWXna5U+8
         rdXKwfhk4KplM6DTLm30d03HtyGtYDspCFqzmxN/RdBO630MHFfhQQGeigJz1+8z4p2u
         YsWg==
X-Gm-Message-State: AC+VfDzRl1zCOlff2PQMgzNuSw9FC2I++3lo2U6/JGEvrI9YsqLOcyVc
	KPUyEQn5tkF6EWDHXYiuzQvs8bKiFJOT6k515SgaJA==
X-Google-Smtp-Source: ACHHUZ7nxozK+OzM2cHrCcQBYx9QECrpocSGlUndYud5X7WsYdFzxQhxBFPWubzuzPJkE/PoszYCKS5y+jQXk6Fg0Uw=
X-Received: by 2002:a81:6c94:0:b0:565:c21d:8ec6 with SMTP id
 h142-20020a816c94000000b00565c21d8ec6mr4823798ywc.6.1685501800664; Tue, 30
 May 2023 19:56:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230527040905.stmnoshkdqgiaex6@ripper> <20230528001010.47868-3-guptarud@gmail.com>
 <fb65244e-ab3b-c473-57b9-2da80e67be4a@linaro.org> <CT04D1K5GOBT.29Y5DO5HHS57V@Latitude-E6420>
In-Reply-To: <CT04D1K5GOBT.29Y5DO5HHS57V@Latitude-E6420>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 31 May 2023 05:56:29 +0300
Message-ID: <CAA8EJppVHW845p-JJ-9qP6x8pJz64nEN2t2Da+u=yHc6+4pyBA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: Add qcom,usb-hs-phy-msm8960
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Olof Johansson <olof@lixom.net>, soc@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_195643_681747_3BE6661C 
X-CRM114-Status: GOOD (  13.63  )
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

On Wed, 31 May 2023 at 05:49, Rudraksha Gupta <guptarud@gmail.com> wrote:
>
> On Tue May 30, 2023 at 9:22 AM EDT, Krzysztof Kozlowski wrote:
> > On 28/05/2023 02:10, Rudraksha Gupta wrote:
> > > Adds qcom,usb-hs-phy-msm8960 compatible
> > >
> >
> > Please use subject prefixes matching the subsystem. You can get them for
> > example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> > your patch is touching.
> >
> > Best regards,
> > Krzysztof
>
> It seems like "dt-bindings:" is the subject prefix for this file. Would
> you like me to use another prefix instead?

At least it should be "dt-bindings: phy: ". However as this change
covers existing file, it probably should be "dt-bindings: phy:
qcom,usb-hs-phy: "

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
