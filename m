Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B099C54E5D
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QN7Z1BuNCJPVljeZCZhTH8a3rF9ISIqqeXGOn7fqREI=; b=rZIr9cUaCQx2bs
	ke63dQAuSLXIV3MBENucB/zNTgnB0BAX22ZRN5juIn5z7isilN1/O4rAZsRFBJhq+BZitxWMwUU8R
	4Jkm/XXy11ja39ESuj/CQyy9d/PVJppw/Kr+mzU5FYx7daK5XqUp/8k3yzlkwl2qPzij/nV4hFsEY
	cty3hn16b0Yg59GihSLjyUyZnlL/hWOYixaCMGjVY34IFkECe5aLAWPSn62rmUIiesouzeKX0MYxc
	wNOVaBiRJWaHBY/+i+taiXJDzTrtRIO3VuTqDmkpwF0CZ4E8v9I9KBWe27F+iUypJL9DjB4ZO48Jg
	6OkIS2R3XEqd9bF9u69g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX9n-0000000COKF-3TKj;
	Tue, 19 Mar 2024 10:57:23 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX9h-0000000COGK-19VL
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:57:22 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-dcc71031680so4731511276.2
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845831; x=1711450631; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lrvF/ITWTLZMt7k1zbPxhpoK+Pg/DG+kvR7sAP9yq+c=;
        b=nf9uJGTRzGzhrLBq7gOmCCscTGUx/V6cXefGcztfXDvj6OA2lBM9DSCUe02K9IEOqQ
         H6Kbw0uJkMTXUdGnSo5OBKVVK/0C27obYzAvN91zp9M4CF3Pjtbkv3VeBKWr424q1uOL
         j0lV+dCayvmBEpvV15cMDq6BNbmNsLqdOEnwQmfYvMbZIIHB69FBJlDSNs+dfRUKhbsA
         bef44ofFl7YIU3FB64SOR3DRQf1ziDFylvG3S1zJ6DmaIbjRh5xuJp6gpyBSM4OmWVjk
         9MsP/4Cga2w27H+nWYiBki7gGssnPwFO+rlRtqxVJ7gMbhntn1oUUXlhQ9+BPci4Furw
         Xyzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845831; x=1711450631;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lrvF/ITWTLZMt7k1zbPxhpoK+Pg/DG+kvR7sAP9yq+c=;
        b=J5mkLu5HV6se27RTzCt77sf+/UsQxq+0eM8gX2Bd9JxW36nU6vRRDj7HpFkWKAGTD5
         EV0FOl4mUhXKAV0GuOmFXAZoXD4ArSf+DV5R9cSBveXyfXT3p6UBmmi8qeuJt9VgTouA
         S5TnX3dYW8TVYKAQd/gQ+gi0MkdVOzf2l6NUG8pJJ3PdAAeo5WOd/oXaMLMdKhQ1gg9s
         ++0ABvQqRlMfq+5KbGRne0xLDr4FNyndhmljlj2L2LFc0ldWT5wggVWzIeu8kbDK+9YZ
         nu35K+Cb+8UJ0wHor5bep78hX+NhfQ+32URKV8fOJH/FQHBTDi5E8KrjOb+bQO8Mun0H
         UuGA==
X-Forwarded-Encrypted: i=1; AJvYcCXIc0NKYAyUWDF0frWCv3j9rHciRH/DDt/fqfN1jT4i9oQJSzEGDGZ4X0XyyArIZUCEhKPHUMsMtfLvO2ysweM+ilfs5aBR0RA1Uh2Vqg==
X-Gm-Message-State: AOJu0YyO6Mn5xn0vYKh5euhow9Fs09JGOvAnP53UUh+rLYgV2q//R2w5
	2BTK9r50B7DuLfBbjojNpU4Nhuu9VGu0o5SuD6GyejUSBeDD7AEiLbKtcM+jGOVCCi03EszaYuC
	XwBtMe3/gIJv2Aw5sDj8nhOxewGuiBZ4S0O5UNw==
X-Google-Smtp-Source: AGHT+IFWahUbPbZ0gt9IIGvtcCSEaFVaaIjj/JI8BQjE3K74Qn0khAsyE4Dy379EPMpN+d6EFyJ04gOY3GwCbnEfYU0=
X-Received: by 2002:a25:b21d:0:b0:dcc:58ed:6ecc with SMTP id
 i29-20020a25b21d000000b00dcc58ed6eccmr9940482ybj.41.1710845831327; Tue, 19
 Mar 2024 03:57:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-7-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-7-926d7a4ccd80@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 12:57:00 +0200
Message-ID: <CAA8EJpqTvkb3bea4RxeG4zSMe0Yae209Z_xxLn7DXQi0RZhaiA@mail.gmail.com>
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_035720_965306_3125F35F 
X-CRM114-Status: UNSURE (   9.07  )
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

On Tue, 19 Mar 2024 at 12:46, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
> provided QMP_PCIE_PHY_AUX_CLK.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
>  3 files changed, 4 insertions(+), 17 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
