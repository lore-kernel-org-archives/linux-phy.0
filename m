Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D9ABC47258
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kENJQPVTB4Kb8m2v7apnKycIOGUpufm+vvix3ia91oo=; b=WFDXH+v1kpzfiF
	70I45zOg9uuDCK968+zfDGcWcIZwHV0Fxq/6fDH4K245qOmJmBYwVQKTWGVGRCbzXXc2yn+9kFija
	MqBki7fdDZIGMgKUALEOGESvmD5fY6Y4LgOjSef66RV+Eg1cI/Xd7kISdsStoADfRz6XSI3Hwp751
	P4l2Pxm3Hm7SCVNOcqSsDAjyOHodrbCIzXi7pk+NgwXRf1BL2M9eZEBosPjceblfWj3fFXSaGUvQq
	G4i9GTebMaL0Wsj4ImBdPHnJTVauzgssBvbLFlE1HodDjHySjZGwVPgwTYNcszpjYX0/NAtI/7qjc
	5Bv3YfpJzc1obo5qG4OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4qQ-00000001ldB-0a7o;
	Wed, 31 Jan 2024 07:17:14 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4qK-00000001la7-2A0g
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:17:12 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-dc6b5d0e015so718726276.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706685427; x=1707290227; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i++Ghkf0yxbfp+SFq64kOAC5DCFdLn2FGQfA07BzBKg=;
        b=W2AXHUW+VFphxigQsfGa5g4L/1PbVqrGRYGdxRMqOG+72ZqAF83wDcl0UNIgMibHjX
         Fd/CezHp+rKfdHKGCOFr86V2zGUfsFOL1v+rscARjXvdo4qLyMlgwyjZS/UDBHfz+mqP
         ybFeDbp6zmDbCuMHvkk+1NXhWmKwTaNTmFCSdJo2One9GhtbvD2JcL8bfddg+SrO62pD
         qTrDUN87hLEdrBPpCs4JEGX5rhJ/pb1RaN9WFiD2xfJLUkiv2/xAfUizmXL4wAxxXqZr
         CcmGgejmMPDDFbo6VIt6nEix90HsvoLSGY7MYNS+K7gCk67YD76UVQrEC2inHcyfKQ1K
         SKLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706685427; x=1707290227;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i++Ghkf0yxbfp+SFq64kOAC5DCFdLn2FGQfA07BzBKg=;
        b=kMGamO2WlyVpNu+oml7MHJ5iqgtdo3L0gQMfLEW5FFvO8sSIF4iLBgl6C/0d9+ubzA
         yyltQDD9HWpOuvnrsFUgGcr1NMK7/m1KoH2oSdkq255t9QoOLC8uCuszNY+FYiTKw7kw
         5+y1amDaC6anAehGfNgU3sseEe54XLMivShboaNognJSpSDR+7ooU75n9zMfot9pWQTb
         ot08xq2s5H7ee8g/DJ01ag9IHbt01oBX6Ki142o19+aorh9tLpiQP1JksEY8pF7PJWxb
         otz/DzNGmIvjNZk+wi6qGqKuuIiGXlZSfGHFULXs0vYS9DmjCw2/sKzyvV3Ff8MIjfmh
         D75w==
X-Gm-Message-State: AOJu0Yx6uXhuVWG2I+ACpW1RJ/GbnLM6Dxal9+zJgOYD0L1TWtunuXGx
	QaS09xCffKdwk6wu4FdOxt3HvEaKjJFOBJRG2vEOl7nIYg8/AUUJY1EATsHLUAZ+HaKju1dL5oo
	lFBzO2+24aELgFQM6TN+nCghx1AfrO/+dOaAp1r94mMfH2TAgU/g=
X-Google-Smtp-Source: AGHT+IFTNzxcPE7P1aDSv5JKuBB1enENzJJokT41i2jNc0I+1qhMXhMXCe1ePN6biXsX0bf+Ecr83unT7phgH6+21hA=
X-Received: by 2002:a25:6b44:0:b0:dc2:2e50:dc4b with SMTP id
 o4-20020a256b44000000b00dc22e50dc4bmr894449ybm.52.1706685427161; Tue, 30 Jan
 2024 23:17:07 -0800 (PST)
MIME-Version: 1.0
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org> <20240131-ufs-phy-clock-v3-2-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-2-58a49d2f4605@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 31 Jan 2024 09:16:56 +0200
Message-ID: <CAA8EJpqGhUiF6is9K0OeB+DW5BmTTEEvk1sEDkxV+cN5BWpNnw@mail.gmail.com>
Subject: Re: [PATCH v3 02/17] phy: qcom-qmp-ufs: Switch to devm_clk_bulk_get_all()
 API
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, quic_cang@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_231708_710267_F32B36F5 
X-CRM114-Status: GOOD (  11.50  )
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

On Wed, 31 Jan 2024 at 09:08, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Device drivers should just rely on the clocks provided by the devicetree
> and enable/disable them based on the requirement. There is no need to
> validate the clocks provided by devicetree in the driver. That's the job
> of DT schema.
>
> So let's switch to devm_clk_bulk_get_all() API that just gets the clocks
> provided by devicetree and remove hardcoded clocks info.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 63 ++++-----------------------------
>  1 file changed, 7 insertions(+), 56 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
