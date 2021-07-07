Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40188C07E96
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:04:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 08BCC61CAD
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:04:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 08BCC61CAD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X113W7y7kljVySLJeKWEV1t7Ej44RA9T3FlSDx0jq84=; b=iqVuPAGkis/oHT
	Gc14NIsxEwfqXLpgjK4cKND3h5Tujx1j4hHg2TC4OZTZe6lox4aZzat/fBLfVZJWqgR0GuHgsBfLF
	PxoeibJiLwWORl+6uFUfl0iA0uo6xjMDAJbhUw+X1CnPVcCLwbIjBF2Fie6RzwLbNW6TOdq5Dg2hF
	M/8zqdlFnhrNT5Soo4/34fdCK8tRc7vR/owOrZfvz32iiSTQo4Oh513IejbVhWlU0JokradTnZZfy
	CMXeIaQdYbbIwhuIOxcrroqiDIe1bFsy19Kxc9q2ejlafU/Ud/gMmOU4/1K0Rkjg2YSVflzlRN/nA
	h02svXyeOGZ0XKfkXgEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0v2u-00D4Fo-Hi; Wed, 07 Jul 2021 00:04:08 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0v2s-00D4FM-0P
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 00:04:07 +0000
Received: by mail-oi1-x22e.google.com with SMTP id b2so1344419oiy.6
 for <linux-phy@lists.infradead.org>; Tue, 06 Jul 2021 17:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1QTMHZDG9z+9+a8d5/AfP7uPs1EiMiVpp8sGhsHTNoY=;
 b=m1pcqVwB/6zxB35/St9BKzT/p8IRKleGxIAPt6tceii537fbNK0DndNrcKAK0HqHge
 /UbpBwExHiQ4Ly+Nma++Dc4agFiIw8s13awncdLFTf9ZSQs3Ilh+HDL0N4e1syHN9g+A
 TBqbojRFBqNNmYYgtx/UEiOtTev36GG6ytX/ZuehLMOybuD3XyO7KPbfDaKOHxvWGcYF
 YnZFMe3lgb6Dq+nAP1dfXhdSUC1eQxHQ0j0wBFbFiupxfSlJL6ftRCv6jvVk7i0IofbV
 nJ8ioftdZenOZTE0odKmBIJsvH0JJhts5j+o/wz43Inbrwu57pT6n/+oroP7BYJKcnjY
 QD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1QTMHZDG9z+9+a8d5/AfP7uPs1EiMiVpp8sGhsHTNoY=;
 b=r2r0WUu3OwY8zD/lBgnYxBgstBiKUb5TK6x3SMl/+ZdKFmKM74cw5f8ghnk/M9t6fG
 0nMUhpkBYeFcVzZIG0Za/tp1WdmK9ynE+SBPZoYMbbc8sxG9vt/MIjRIUWKCpj8Oynpg
 Tz1rGwuWaQdC1lsYdlf/7X1nZOpXfcU7Sm2KAa7/271fz9b6ejWOH/sV7rw10U81eKl8
 wwHzNNOG1InKTPNvg8fAb5KTzejMmG6ANXnBOUYqog+LtLBIwpKOZxEvJ3fnXJ+c9pf1
 4aghxiCsDi8f7zuUk9uLTLKZaIFIKT/qjgw+WRJvBBIRBa68DXZEQhC7V6fPrTNqPMXv
 4GZQ==
X-Gm-Message-State: AOAM530auhQlff1mB/XQhE487lKg1mgd9G1sC5obuDpOgBY03d7SLI6Q
 hbidykmkzK1aIi5p1IMUHD+KnQ==
X-Google-Smtp-Source: ABdhPJz5BCFxlQfyRd5TUhJNKqRc1UObZwT13vLp0PKy1hkPOwACX8uJmd6kqFepUGFgm5pYH7UQWg==
X-Received: by 2002:aca:b906:: with SMTP id j6mr2635239oif.40.1625616244024;
 Tue, 06 Jul 2021 17:04:04 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id v203sm3809295oib.37.2021.07.06.17.04.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 17:04:03 -0700 (PDT)
Date: Tue, 6 Jul 2021 19:04:01 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: vkoul@kernel.org, kishon@ti.com, agross@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, jonathan@marek.ca,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8250: fix usb2 qmp phy node
Message-ID: <YOTvcWnHFkbMHg6K@yoga>
References: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
 <20210706230702.299047-2-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210706230702.299047-2-bryan.odonoghue@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_170406_338693_40439D20 
X-CRM114-Status: GOOD (  18.28  )
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

On Tue 06 Jul 18:07 CDT 2021, Bryan O'Donoghue wrote:

> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Use 'lanes' as SuperSpeed lanes device node instead of just 'lane' to
> fix issues with TypeC support.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Fixes: be0624b99042 ("arm64: dts: qcom: sm8250: Add USB and PHY device nodes")
> Cc: robh+dt@kernel.org
> Cc: devicetree@vger.kernel.org
> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 4c0de12aaba6..270d7ff59ec1 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2123,7 +2123,7 @@ usb_2_qmpphy: phy@88eb000 {
>  				 <&gcc GCC_USB3_PHY_SEC_BCR>;
>  			reset-names = "phy", "common";
>  
> -			usb_2_ssphy: lane@88eb200 {
> +			usb_2_ssphy: lanes@88eb200 {

The uni-phy binding says that this should be named "^phy@[0-9a-f]+$"

So while Dmitry is right about the logic in the driver, it would be nice
if you would spin this patch to make us pass the dt-binding check -
which can be sent independently from the driver patch.

Regards,
Bjorn

>  				reg = <0 0x088eb200 0 0x200>,
>  				      <0 0x088eb400 0 0x200>,
>  				      <0 0x088eb800 0 0x800>;
> -- 
> 2.30.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
