Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E385BC49EA6
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 03:33:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B419061375
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 03:33:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B419061375
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xi5nvF5wrrlTXbrxtLcOaeiVSFfphbGd5deFQEAacy8=; b=iD6PPg+EPkm1yx
	r2+P4j5rAdQ3K+V+5k0FoCvmTHTsNnYru2m+vPZCZDJZPaHQ5wwWzNJ79YYoxqzIuDRDPqs05CDzB
	ttAOL2J9EJANgjGJdqbJlfbMg4LoHkLa68UYYzoqlm4n9IqafD3/0fcaaI66ZSUGNQGyNYdMa+fhC
	a39MhdX5XGiIQ4MeNoiRhvSRc3U0dloFd/rlGA/hiy1UHa4noUlnHCG5vTbRte3A4uXZzj9x1g6xw
	Ne5TA1qhmYMe8WkcqWdYJSr1F7FgrdLU7EoxaSY8PQAZ1K2ZU8O39luI9KQ9TWGRg9y84lVnPd967
	o4cj2RA9RM8iVQHkV4pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvtdW-009ARm-8Z; Wed, 23 Jun 2021 03:33:10 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvtdT-009AQ8-UN
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 03:33:09 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 i12-20020a05683033ecb02903346fa0f74dso561981otu.10
 for <linux-phy@lists.infradead.org>; Tue, 22 Jun 2021 20:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LUc/CMzwyAMmIfBZUm64TD1gM42DNa6BTHTCy82+BB4=;
 b=tFPFCIwzK9k5OT6bjBwGn4U/IGsIEyokHOPXQHFUffgdiAMlMbaueq/64zZKYFavWk
 oU1UGiE00REnZdfrxutQma2JlV+eAvVtvSFlXGjuk0ZFhp47NVSyzUM+oDj3yqEvUuN+
 bSjN1FbCS8t6dqqhtkiXdgd0zJ+0J5Gszi7i3mnzhoAAvvN63ArKuMIKWqZfuOFyAYoe
 YJqxQg1HSJXwwJ/lx9BE6HfJG5AoEo5FUVQvv101Jaxe97BqlfUWO7TrGzEJbicYPxOG
 HrC1iAxgAmc9wWwGQwr7nWHTkpHxJIm8hXNaKKc72fQuD8efAxIb9l9KFh+TgWRhx15P
 jX6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LUc/CMzwyAMmIfBZUm64TD1gM42DNa6BTHTCy82+BB4=;
 b=RT44wHeN+GdOZYgDbylgvyZvwHFzbMJqsyVZHQHDEnPrT7UMm/0WmXGfsEci9ydMHt
 cpwKtG8TJYUHJwOoGZxN1P/pI1KJCgmn/msEmaYz5E+ej0+/a/pk3ByL7h+7cEMP+DgU
 NLbArb9GGa9rycuNhBEKj1l3AuME++Ax5O7dAlg4uTb90Ucyg4P1aiv4tfFiDHG5kd4D
 FLayCsPsyRaaYyGpENEsSPUQjQ1tdFUJtqV6NOEoekIbnU5lYZa2xBk9XqvLZWnRM8hI
 Z5QLKR6ctQd8m6aH3MB+Sr+w6VB29XNfNHIgZB5Xq4pqGu4WYxgDLw2+I0vRB2inqV3y
 UXWQ==
X-Gm-Message-State: AOAM530DJHxOYj9TL9gIWXg/fkowIdb6GH6LqD98Ur/Y3ONA62CCMTVM
 cdmBdZlsxERyWXOMkD3cQXGfeA==
X-Google-Smtp-Source: ABdhPJx1m0AwnV2HEPSrpLkiEUal21OY6y3ubUm4VHFMNPSoK67PWwBu8/tbipA+psRLFC/HzCaIuw==
X-Received: by 2002:a05:6830:270b:: with SMTP id
 j11mr5807089otu.161.1624419186186; 
 Tue, 22 Jun 2021 20:33:06 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id b198sm4735924oii.19.2021.06.22.20.33.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 20:33:05 -0700 (PDT)
Date: Tue, 22 Jun 2021 22:33:03 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Iskren Chernev <iskren.chernev@gmail.com>
Cc: Andy Gross <agross@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v1 1/3] dt-bindings: usb: qcom,dwc3: Add bindings for
 sm6115/4250
Message-ID: <YNKrb4/X/1EIgnsI@yoga>
References: <20210622203240.559979-1-iskren.chernev@gmail.com>
 <20210622203240.559979-2-iskren.chernev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210622203240.559979-2-iskren.chernev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_203308_066039_C124A9F3 
X-CRM114-Status: GOOD (  12.29  )
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

On Tue 22 Jun 15:32 CDT 2021, Iskren Chernev wrote:

> Add the compatible string for SM6115/4250 SoC from Qualcomm.
> 
> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index 413299b5fe2b..4e6451789806 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -19,6 +19,8 @@ properties:
>            - qcom,sc7280-dwc3
>            - qcom,sdm845-dwc3
>            - qcom,sdx55-dwc3
> +          - qcom,sm4250-dwc3
> +          - qcom,sm6115-dwc3
>            - qcom,sm8150-dwc3
>            - qcom,sm8250-dwc3
>            - qcom,sm8350-dwc3
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
