Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D377C54E60
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XHgupRG6pV2ZsnSre+7jDlPe9khUInjwy8uSbMPv1o=; b=PvIsQAm36e/MuS
	z5w1O5cXxB92B2ea63sWHrFyHQFhTaWJTbJK6cUaMJS7ZQTQ2gza1hVwFV39J8q+O2K/GcKS77bH2
	l3s26NLZnID3xlfQZjVo5eKjptJ4OhVkSFKCa8FekL2mG8meGEdYqU18REDgkQQzhPr2xuW11aFqp
	VWv7gWdKZyFweO57dPxoiUS1hrAc6BCyhELLXI4GCjP2RJA689iOhXDv/s8vRmyxOalRETppw85z6
	vs15UnMMKlmhqReiR6GBMUheaAef53uFbALo6jhkxvEwE3SKydChJfIZKpnFCVP6mG5q2X9cIRvI3
	zxKnUNVVtYHuXl08tdwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX96-0000000CO6p-132N;
	Tue, 19 Mar 2024 10:56:40 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX93-0000000CO4m-28Oe
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:56:38 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-60a104601dcso56866917b3.2
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845794; x=1711450594; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zjyRBDM4rca1Hn1dUAPckcwaeF45z8MIXNEItXXFgrI=;
        b=tFGjyeLHHM+tXCHqHoFFJN596mG+3yv5kJZ+wg3mm41/fZWX1oExBGmthUEOzQzP0C
         P6VWiEHQJkkLh0NAb0nz2GH/KHFxxEyyK1YYd9OAq5NbZEL/aRfgRStlrQZI74sauDMv
         vAKSiApEUecXM8/EmjBXEbFl3rHDKap/6PucE66+vxTbnmYub7bIsh5Je8OzQoSs+MjU
         b4xP6/gH23v/BAHPoa9UyEl+scB4vus2WhbVt/Y55oGobow/Qphaj7OjJ4ek8JkQWwf1
         d5w1JzIPITUqBTusEW6047M6nfrcp/PRsVgpiUUDmMgDHQgxSyH0ACS1ekyq3foK5veB
         9p4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845794; x=1711450594;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zjyRBDM4rca1Hn1dUAPckcwaeF45z8MIXNEItXXFgrI=;
        b=QTZR79tIRaWSuYRkryWFFaQ8QKFWKpAxnI2W44qScgR48i3rbYpZHqFMgz+ERjoRIi
         17InkJGF5PFw2VrsL35h3TDX18RJmOi0n43NvD8cfp5K3vJ4bGweW2uzXK1dl1hIHoOg
         7reETiA+A/V5WtVgm9Q2x3xj/Z999Mi10bHTWiPU2lqwmAhhz+I3B+UgaeiFMajqvxY+
         kQxoJCPtMdKbEhXMaQ2zD926nhsrJiVFkJFJEnAeupOjQ4GeVJY2JQtW4u7GT3zo18vj
         J+VLg9Y7lZPihT3TqAWDmjo0PWZwJdh0q/KAeyz2XAbf9WU/FZgUbj86jnigFl6kEBAx
         DqUg==
X-Forwarded-Encrypted: i=1; AJvYcCUUT/kQqhc3+7L4wKustP8Y4mi5Axah7U17hAiyVeBrzkZMAnfju1FW6726m7o675MkJnQ4ebW1ytOly1zJItWm89DN03YZPEkDsJsBEA==
X-Gm-Message-State: AOJu0Yxuc/9DUUP/wd6Os0QNuArsyh6GNfvlzvXBjX4nAEUi5IGWQneZ
	cy4AGqPVzuhml24+ZW/oLkQZ1d6pVUXUvq3tNMAICyVM4AaOewdUttOjuO4wQ75RRH5vlsvSr+J
	cO7mkUbKGNbEFY42xjY3D2YigyhJzdEFRidi17Q==
X-Google-Smtp-Source: AGHT+IGLAi/wNKvsr+sWkLaHawQcUlFEisvPkSzOVYcmxJ5wQ1Tc0+84fuygPF+bFom0zO8GoP0F6i9rRzr+wibkNF8=
X-Received: by 2002:a5b:bc4:0:b0:dcb:fe58:a08b with SMTP id
 c4-20020a5b0bc4000000b00dcbfe58a08bmr12096526ybr.15.1710845793910; Tue, 19
 Mar 2024 03:56:33 -0700 (PDT)
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-6-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-6-926d7a4ccd80@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 12:56:22 +0200
Message-ID: <CAA8EJproDAz92=4=c3r+8kJbEVXesZCbrtLsr8ZJWh6axzF9TA@mail.gmail.com>
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_035637_568007_CD261285 
X-CRM114-Status: UNSURE (   9.66  )
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
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts |  8 --------
>  arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
>  4 files changed, 4 insertions(+), 25 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
