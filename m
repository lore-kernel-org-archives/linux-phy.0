Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11F0FC07E9B
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 23:26:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D608161CB3
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 23:26:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D608161CB3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPqEgVnblJ1oNhlImn5iJK8yAlQlEiCo4U5cKzcLEk4=; b=cDMYhiJ6WI32FO
	sGLNexynKIcMBhlcNysP78FsvkK48NjHpvBUEKH3fwDMhJy7NKUPiBrXJ5SQ8Wz2DhIZcnTwLfCqV
	ak2vuWogvDJAF2YBy9tKe0yZ9j59Xn3a2khcejc6XMOKFsJQvA8QWnVqBSVzDX8vCtw+eoc+y6tNO
	l8zMUIrxCkbbrfD1pHib55bWkCZAE2AIvWpvgucORdpGgxgXNkWwBhV8DX4n3wCXGZth0s48h1no3
	pLKiUYWs5slbdtUwI3/nmxbW6hnnzrlT6EHlWgr/4bOu4EZMT4AwIlP6Own3WV7wlcK3X4JoX5iQv
	F3z3G8DfJLNydKyB5aGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0uSN-00D1EM-D3; Tue, 06 Jul 2021 23:26:23 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0uSK-00D1Dq-Pa
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 23:26:22 +0000
Received: by mail-qt1-x835.google.com with SMTP id d1so732460qto.4
 for <linux-phy@lists.infradead.org>; Tue, 06 Jul 2021 16:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b9NAwsJ8xPNo6tBHGAy9B/tfdHedu+gEEwjXYjTIV5A=;
 b=fx9iG8nNUE/oGeq2ZZ0JrijeZdj7Bq5xLgfN0id4IHt3JEenbFhNscalBbWugnKqL2
 OedqLjinMRrzHfMbgSeec0aewcR2OCA25zc0dgVatB5BVnlmCDZSjWBKjhOVG7WGA6PE
 MNVIaPfBhsguodyetnF79nlPWMpKdizqKyPyV5AFAzz+TbUeJO6UZYwA8s/4PEIW+01c
 2jPNz2rnlaaVHouWF3fNRjh7+33350FpyhxBzwWdfjBmh6bn2HjHVGCtbaKH4LOB58du
 mf8BraZGzj8GtGxX4ARnxzTGysgrr/Ntykd5hf8+VchEdRo6Sv5WMVwk3a3VZIxSItB+
 3byg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b9NAwsJ8xPNo6tBHGAy9B/tfdHedu+gEEwjXYjTIV5A=;
 b=jCYNscN4VeAx+1cNKtNEUJs6ooa1+lzdpQ7ftl/Qpbuk6hP6NeZ0oP4/25p9sPuu1B
 X8bXhJMSKR3gImzI1JhWwDEheTT4wTpsmj3InQJC4H/aTHRObuHWRVAMnHX3P4qBcxma
 kOrWN+YT2FtLf4Y7crCoODUK3QT8DiMcnotQ99AaIIhj+T17RqPZmNKLZlAg4dEMnu5v
 tB/X48qUCNMhd08hgeMsnkXSwFudFDuUB33Jqzo3n+egnxamwC5qSgd+j87GCUkN7iVb
 U8zUOdHcrGruXpbxWYz9AaHnvaf1N8qWYi47lgoMwALD3Aa9qt04J09k9wMMTrQon0ng
 qqoA==
X-Gm-Message-State: AOAM533Na0ia3IMJH9vVNdo4Y+QSQU0nARU3zQ4TsT5DWjR2PQOp+aq6
 TH4OFqjwOqyHHJ9YAYSDam5qTLlH2gPzgSnfEuxbXQ==
X-Google-Smtp-Source: ABdhPJx5Dmnxv/z5BA2XO1srzzahRumLPcJvkaT4DmcM/8mfzGx0KXUC+7xiDGhICgbxmmjcXDyJsc5M1y5ERg9uuts=
X-Received: by 2002:ac8:5b0d:: with SMTP id m13mr19600145qtw.364.1625613978231; 
 Tue, 06 Jul 2021 16:26:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
 <20210706230702.299047-2-bryan.odonoghue@linaro.org>
In-Reply-To: <20210706230702.299047-2-bryan.odonoghue@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 7 Jul 2021 02:26:07 +0300
Message-ID: <CAA8EJpooqgScxnitvBjgofBk3cqEqOsO-sWU8VP07KpB10XT6A@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8250: fix usb2 qmp phy node
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 linux-phy@lists.infradead.org, 
 Rob Herring <robh+dt@kernel.org>, Jonathan Marek <jonathan@marek.ca>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_162620_910228_504FB98A 
X-CRM114-Status: GOOD (  16.84  )
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

Him

On Wed, 7 Jul 2021 at 02:05, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Use 'lanes' as SuperSpeed lanes device node instead of just 'lane' to
> fix issues with TypeC support.

I think this should not be required anymore, it is a leftover from the
previous series which used strcmp("lanes") to create phys.

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
>                                  <&gcc GCC_USB3_PHY_SEC_BCR>;
>                         reset-names = "phy", "common";
>
> -                       usb_2_ssphy: lane@88eb200 {
> +                       usb_2_ssphy: lanes@88eb200 {
>                                 reg = <0 0x088eb200 0 0x200>,
>                                       <0 0x088eb400 0 0x200>,
>                                       <0 0x088eb800 0 0x800>;
> --
> 2.30.1
>


--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
