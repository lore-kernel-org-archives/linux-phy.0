Return-Path: <SRS0=lbOJ=IP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9D04C433E0
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 19:34:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7CB9F64EED
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 19:34:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7CB9F64EED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JFnEMG8zDJktOMGYI415L25NUTEil4Q32dqnkNsQo3c=; b=gCok+fdjbTaNfQM4Pdeu2JCRa
	yCxSOWOqZOh7EjyUiMqJiWxTiEdwv+sOWhqR0wI5QQvo7uj8TTCMd8p41bmbWp2brlN7FG0e3NXeQ
	4zXMTU5u+n/TPgWwlLuv3WPPrp+bxBn6WJKhJRiYimA2WXUJaQlAylt8xTJDwvTNvNQKaCdtMClAw
	abPCOVoslKhyaFnJWpNgKoi/apA8PTClSf8g6tkA1O8R9zCrQEzym+nvas3n4qbNWIvQelZ4SgS++
	g28S/yanttH1kp1hS2hzOoyCIiYTQB9aPFSA6WwDjP/hCfZn7h/a2JjzYvDHRcqHwKPQpxHEQd8v9
	cXMI4rwmw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMbwL-003p2S-0D; Wed, 17 Mar 2021 19:34:45 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMbwH-003p1p-Sn
 for linux-phy@lists.infradead.org; Wed, 17 Mar 2021 19:34:43 +0000
Received: by mail-pl1-x635.google.com with SMTP id f17so73312plr.0
 for <linux-phy@lists.infradead.org>; Wed, 17 Mar 2021 12:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=aC9XfsPEhWKeOkyFve3gS/y0ZK6Rzz537p4VTrc/pes=;
 b=J7R0WNva4AWUE8efmdEYqtl6XZlVUBn+CBlU6HWx77oRXvMjetKAsiD/YUYQchl7iR
 2dUWIMmTGRS552IhNuMHn1MRe2X8gDQzUE6Lt7q3D1P1kUmDH9CicIblf5m/yUbpIH7+
 9RvzBuZs+pQx9RJHQGgaGMxoUQJYjDIi9qVR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aC9XfsPEhWKeOkyFve3gS/y0ZK6Rzz537p4VTrc/pes=;
 b=nZVrYG7f7fFXcWzwh1FHnWrnrL3qMMfJ5kPuzBxH45vN0p5fwwxI9reV/BnUHbZfE0
 aAwSARlchkJmrDUFXlvLzK61HRAIBsoikB1+GCS99xpjEG5uODO5kqDQRCujVAJ4MFbI
 BC01bZwep7hqZn6I80D984d2CBd36EQOsF1+cBBt5k3QGAgnDUzY5czNE5N5FTS+tqNa
 Uhzx6ZtVpaYi/4/n7h3ZYGVD/ErhXJFWHOxdwjpcAoGhlKLZRpALq/xiE5naLMvJwBbW
 NkYLfeFBWIV/rj7Ah4vw6rgBBJycFykFlzi8wafmagrAINfR5IykV61i7/cCD4baOl+v
 PYRg==
X-Gm-Message-State: AOAM53188ugExj/bJ4d8/7Emisoes6PEc1Go8nwV9OWwdQvZk6E0KPow
 /VXI8dkCEDOub20q5YdRd04Vgw==
X-Google-Smtp-Source: ABdhPJzvuzh0GDbQL02R1z72e58lYtYzY2DOXtCGDAWJ1P7tMT0SK4OSOelL6P3kE8/PqHxea2fa1w==
X-Received: by 2002:a17:902:ee06:b029:e4:ba18:3726 with SMTP id
 z6-20020a170902ee06b02900e4ba183726mr5991813plb.17.1616009679874; 
 Wed, 17 Mar 2021 12:34:39 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:3cf8:6a09:780b:f65d])
 by smtp.gmail.com with UTF8SMTPSA id v134sm20517485pfc.182.2021.03.17.12.34.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Mar 2021 12:34:39 -0700 (PDT)
Date: Wed, 17 Mar 2021 12:34:36 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Sandeep Maheswaram <sanm@codeaurora.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, Manu Gautam <mgautam@codeaurora.org>
Subject: Re: [PATCH 1/3] dt-bindings: usb: qcom,dwc3: Add bindings for SC7280
Message-ID: <YFJZzAPo4Rh8I5lX@google.com>
References: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
 <1615978901-4202-2-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1615978901-4202-2-git-send-email-sanm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_193442_011610_5475F500 
X-CRM114-Status: GOOD (  12.02  )
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

On Wed, Mar 17, 2021 at 04:31:39PM +0530, Sandeep Maheswaram wrote:
> Add the compatible string for sc7280 SoC from Qualcomm.
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index c3cbd1f..413299b 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -16,6 +16,7 @@ properties:
>            - qcom,msm8996-dwc3
>            - qcom,msm8998-dwc3
>            - qcom,sc7180-dwc3
> +          - qcom,sc7280-dwc3
>            - qcom,sdm845-dwc3
>            - qcom,sdx55-dwc3
>            - qcom,sm8150-dwc3

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
