Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EC00C54E5D
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymSwiq1l4WA0ZMjRUDU3nVID2BUI9cdKZCuQSibMAUQ=; b=byjCOTHbE9NXAC
	k0wOU5sJuNRSqlvOb3RhDzfknSzMN49w3pnqx4k06EiMRNtprbN7wWahS1XwjXk99YU8zGYlx5hVu
	Wv3wNl/kfhk/OfLJ0KPiWslSjV/bjpM9ZClJldMpKln7AXNQoO5fKGnFvt9eoBZViYeaxCc0puD76
	z8ipzH38bZpHYSKUfftzKveeHjUwhPnKkWoBvvYoROR856B5xaDSeGv7/8QJxgFtnWVNeYD4z9+zn
	Z+p8e0ChL55JuCAziPOpoLylMQ2nh+eQNF7qfxaSDwIlHg6kcdb5iNHf0TP6RfOTgzSiIn5Jb5CP8
	Gn8N7X6OZeF4XnSB11iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX8i-0000000CNxy-0zNV;
	Tue, 19 Mar 2024 10:56:16 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX8f-0000000CNw1-0WkF
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:56:15 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-609f359b7b1so63617787b3.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845770; x=1711450570; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WHVb8syaGtNBn+LKrTDraLMPvcXg2wUKJP4+OyMiNcQ=;
        b=MFp29gjIA8MijzthaQOJ85pQInFCwh1gbRdF0PgqmIdl30LtN4Fm/o70Kf6law+sce
         o6Udl3hB0L1Fo8DPfTdPfFJLWPoCu7IXeoLYkri8TQM3XUcXQwWb0pDytaAXNIM5p667
         s1RnAbi4FPc/vh6OePggQcA+R/ns9aXp3lJ3wZbzjyAtkSI4S+Uw3X9muKKVx4LIDKa0
         /SBNSiXNTVP6W3+rjncnOF/CGCE53ZwMgjke/7qOJFXElbq0lhkQtxfgeLgbDN12ijOr
         c7azRRQzzDtslLP4OCfjvzZwm6c+r/9sauTksNUXqczmCCFSM9+RdNyQKQXoyO3ikLMz
         rrfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845770; x=1711450570;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WHVb8syaGtNBn+LKrTDraLMPvcXg2wUKJP4+OyMiNcQ=;
        b=eST+HGx5pR4vTWMcjJbZxJFRHCxOu3ty3Vqsf9f+xGKdhlStD1/TCaJb1hlRHFmwih
         M387vBKxOofJKDQEZysSOKUMncGDSXhs7Fb/u/MvG3OjTz++Ixyv7IhljvshQvYZ9Iff
         UI0xmSeDETObbJC0wgd0+/ssim7QxegOgb3FXvsh9/s8skl47phAJoZmL0WfIuzWnlja
         U15dmT454FRISBTHNV/nunLNgstKkOoKlX8HFqJ9snZepEPHf6xxZfZyQAlT2657dYkW
         yX0aImrXPhtI3uyIMgoPMDl8zY0LcLwVdDXzSH4C0xcasaPwXwk1d9Xs1x7FEj0z4fl6
         /hdg==
X-Forwarded-Encrypted: i=1; AJvYcCUPlYg+Yi5XzbmIHGDW60KzuVMjNOVHBA3H3AuSqojajWTbyDb+hWC/LHKSqcP6XGWcfMfCGu6glEZkf3e9y8VZiaOdqDF0V0mD3smQow==
X-Gm-Message-State: AOJu0Yxz+J1CZ/xFREl12DSXICwAI1bfTIjnDHKgWE8ID7kej3Wfza9/
	6KdqBZuu68tIMpBIeBs8WHlz2u9iG0bOBYjC5fHXTbFR9t4AfrOqlw8nNZkgut69ecvvUlkzXm0
	TdpEUCZTqwXJIxyiWcg/uRb/Ldvst+hSUMCnfCQ==
X-Google-Smtp-Source: AGHT+IGEpAdekNoCA0IOiJWhAboleUYp0ur74P3WOj1ZFPMOtJEw3FcSNRu7tO+3SXdvsuHb5u48wzuwf2gWrLakSNM=
X-Received: by 2002:a0d:fb87:0:b0:609:fdf7:b443 with SMTP id
 l129-20020a0dfb87000000b00609fdf7b443mr2105842ywf.52.1710845770674; Tue, 19
 Mar 2024 03:56:10 -0700 (PDT)
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-5-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-5-926d7a4ccd80@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 12:55:59 +0200
Message-ID: <CAA8EJpqra0q+iBD+AbM-EZcyT6w0uco0w-cYtUL40f=udwRUPw@mail.gmail.com>
Subject: Re: [PATCH 5/7] arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_035613_181749_510F9E5F 
X-CRM114-Status: UNSURE (   8.98  )
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
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
