Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57208C47DD9
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 10:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpO7TQODd0XCsq0XBtFIpuvqeqtIFcGq1XYPRZGngYQ=; b=Hb99aBZyiu7nD1
	U/cWmcYFB1BsKreYwoRSzyzTjoACekD8duFj1PSgYy+SbvnIxhIPBubLWyML5GXDBYX6MQuCEOQRb
	+iZNMeUkit5mIvnneAnvJq8tUvsdtqPJG12OzS5I1+J1TdKlaEX0DSGvVWPe8YAw4k/VW2yDhfVO4
	ud9aaGRvWZ/PSiwbO8V3bFtGdkPb5xgGS3CmmYdCwSK59srWpcsS9Z16U0xwEllXApggc7qKhx4Gi
	+FAW9+uWjDiFwb0PSC/gbhBihR6Qqf3yIgYusXf3EY3itgKvNQEElfl+LMoHojU/r3Pn5ndsm65y9
	Uheb3ASeHx3EJjQ5uciQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rncIV-00000006pLL-08Na;
	Fri, 22 Mar 2024 10:38:51 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rncIR-00000006pJT-3v2o
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 10:38:49 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-dc6d8bd618eso1874137276.3
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 03:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711103925; x=1711708725; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EW5QX/PBiLajaatZ/82NErGaCFABadkL02aA8JURVjA=;
        b=fOYCYrY7F9LH7lfA1I0/BxAdiN6H+jCPDvnTwTv+uazpMn57zWGfXlZbBlv/+2btpk
         Sf8qigDAFxYyGfCJICZkyWZyMJposHv1mUDLJbezl44sLLKIZUlVhxVcY77lInHkD6ul
         0cIzS6hsH0YD/PP04TY8wbg/WD2+I05jk9fhlJkvWJIjxCllOs4kXYvwLKWf/lRJK2RZ
         uQyQQ8DlJfd672dlD6AekSI70cpvu678QjgWe9UqHYKEs51CEWmdPv1MCquVnmk+X1aC
         LOCrflNCOSDzRVeF/0MzEzmS2tgB3YZiTUK/GNl4FYybWivelVYlKbCU/50TWrhXXeg3
         7/1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711103925; x=1711708725;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EW5QX/PBiLajaatZ/82NErGaCFABadkL02aA8JURVjA=;
        b=vipQONAFBwEyZjR2MSXkzUXHsIhOnCbeh2nM45/HEeGHfar8KsyRyjKlb2iAqTgdbt
         4LiZ4w/IVaHQIurEc5SRT01MHGfrE559cxtCloB7kdh7qijsbtPOMT2cBDH+7bwe8PXo
         uUQ+rJydPmFOvMGOc1S63kgmSnuce9MFH3IhFpg7lNOthJLo8tCvcCC5BW6/dqo7kK7l
         xMKOxy/5qfV2yQbLqpxUPednTs6PIr/edZyn/+YpA93JTZjOeiPLJnKbtQvswCfV8N2T
         fCjzb6LkIV4odOc8ebsQ10IJ6yi+/ilt5m02BbZw95HVIkMSoppnjGmakLEPhiqIJAO/
         3Olg==
X-Forwarded-Encrypted: i=1; AJvYcCU3qU+wPqON46BP6NbGB1VPK4l6QFhqOJGqtn2O27AlS1dh2TKVHQpH51yMLIIxNeLwcqlMuHUK6MdF9D1rTV5XNlkbhSlITozy4PFbEQ==
X-Gm-Message-State: AOJu0YychxXqOGj180P41WCIEJIDxDZ9ttcGGAXnPLNgzxGyiyPfOSWK
	vk5sCKqpxD+j7eAWjErFmuY5W6wATrgul5Li+WpBnYNeyR9NzTDC7SvHGubmupqBhJd6I1gCPIb
	gylTMqTKW86vLPy9lQB70QXwoso2m+N2l1gML0A==
X-Google-Smtp-Source: AGHT+IHSKsoTSx1uARV4yY9pfYF30+iJm9yZmLK1Rm0y026834WCXCVGtwW6NoGV0aiUmgbWwwTt9TMD1a0SiQcBybI=
X-Received: by 2002:a5b:651:0:b0:dc6:2e29:4262 with SMTP id
 o17-20020a5b0651000000b00dc62e294262mr1579006ybq.58.1711103925350; Fri, 22
 Mar 2024 03:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
 <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-2-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-2-3ec0a966d52f@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Mar 2024 12:38:34 +0200
Message-ID: <CAA8EJpq1JSLdzpkbjSPjfFWvMEKgFBifjkOjAMQJUO40-bFnSw@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] phy: qcom: qmp-pcie: refactor clock register code
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_033848_007305_BDBFC0A2 
X-CRM114-Status: GOOD (  11.12  )
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

On Fri, 22 Mar 2024 at 11:43, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> in order to expose it, split the current clock registering in two parts:
> - CCF clock registering
> - DT clock registering
>
> Keep the of_clk_add_hw_provider/devm_add_action_or_reset to keep
> compatibility with the legacy subnode bindings.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
