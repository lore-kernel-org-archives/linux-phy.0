Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0036ECD13CF
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 12:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lp0M+aehTsn2patftOZJdA3RjSQO0DIuSZT6OMhDtgE=; b=1Inonoik7q4JC5
	Ieix06rqlvEzF2H5E8rts/ihxv6+b0s1sTORjw+oGCnxMY0t95+7N8/iUDcRLjFmAoPPAaWCPFwtJ
	m7H+rYtMjTIssSx6RED3uK0fS1lVUgoaZasFq8y558+9vd2ql+Rnko4AgLwt1JvxjOWmcurEmuq6e
	v5DCCUg54MBxDG2uR5mfi5YrxDjvbqbM3RkyxVVlvfB9WxAr0ga/DIBmM9XcDNxBhdZpuoFEnzEeB
	e3vMGWCL0bb4Qy9j+gCcbR+k6Nnr4/SBcu6u1A4WTYOTszq7pNVpoNbBO/h9J7FYkP1XtDE/ZImQz
	VXo17YXLByRJrM8u2xfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSFn-000000003sc-2Ea5;
	Tue, 03 Sep 2024 12:03:23 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSFk-000000003rh-0pLh
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 12:03:21 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-68518bc1407so54193607b3.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 05:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725364999; x=1725969799; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uT/aD2fYaRoviJnEdnc8G+3b8uWSX+p8TECg/DCp5mo=;
        b=kQTVTAHr3AogY9SW3CXS4vELU6OsTClRsnK3hapAMyZ1ORYjStnsIQntXm9L+h7lJD
         XKEg8oHJSzlyZ+S731yo+qkWaHxzs+B+rpibKKj5hcefe7TCdu+LUaKiMqWujliunObZ
         CrZZTUAdCwYpbboN5+sBEmRPnQFNF2A8O3LLnn9oZXIhC2wka6Ki+S8MxvhuWco568KT
         kpRtOLA+Kt5ivHU0RS8gRvZ6yNcEP83A9WddnRA18IBYX4UxReEiDFYF8v78HwAOImKX
         R1uJqLGiLZArAaobaKXhZDWiw3tO1cBYUNQw7tTv8kuXiCWgJAo5jXdeAnZSOl+5FK/j
         2FRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725364999; x=1725969799;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uT/aD2fYaRoviJnEdnc8G+3b8uWSX+p8TECg/DCp5mo=;
        b=Kpt53eVKQn7gy9kRF8YPThen+qwjyX0S6yFVHGu91cmtypljHY4Ii3Bba6cfPNTAFC
         p/VyumSlLdInwKLqnjSIJYxCa8M7ylyyoHBb4IgfV9KnmUHcPaICPS/mHIjt3HVgrbNl
         b6o5hhdb7icLZ4rTzQ3EOQJ8+waUuJdFLuFwE9oO+BAP/KhYONKjxsyz36vHdSK4j5N6
         fN2O5EGKXpqHUcaOJYtWGPejp1n680faZVojI82j1x4I8LRkvJ1GdC5IH8sgMye1tpzw
         rOTf/1kfjnmUcOTEq0EGd4VTx4bjaP9us+GVOmOcug2j+n7A96OVrzLuHQM5ZUsArErJ
         qFfw==
X-Forwarded-Encrypted: i=1; AJvYcCU8Md9PPgB8Hy7Ue19HPDbOXEtDbL5Ugz/9E5Rdus5OEAaotfzNq8wPz0bQGTtp8O1/SPRAztwfHdM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRVvKl6f0zY1P3YUGKJXTeBbM2iqytrX8Ub9Gn3CfGivBaOuiq
	ke25kKOi2SXPe/72438QTmpI5YObN7OJuu7r1vL7oW756DNYS4eizHK04p8zO7u/lD8bGEfKgVl
	VkIx1IeFCt5Z/6FfIA9xx3a6Lke/x9a3Sy1Huxg==
X-Google-Smtp-Source: AGHT+IGjLf7ldseShYpxexhc7HH680FQerWRfT+m5UtLRaHJVdDS5HYSjtVrk09unMIBtJDDtIBsKWubTRG962bdoF0=
X-Received: by 2002:a05:690c:2a83:b0:6d4:d6de:3de4 with SMTP id
 00721157ae682-6d4d6de4266mr91396297b3.34.1725364998931; Tue, 03 Sep 2024
 05:03:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240903-topic-qmp_typo-v1-1-781e81799992@quicinc.com>
In-Reply-To: <20240903-topic-qmp_typo-v1-1-781e81799992@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 3 Sep 2024 15:03:07 +0300
Message-ID: <CAA8EJpp_O4B+eciQ9h8nPdiVxy4CTD8nE+WiYbDmUUSuhvwvMg@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom: qmp: Fix lecacy-legacy typo
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Johan Hovold <johan+linaro@kernel.org>, Konrad Dybcio <quic_kdybcio@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_050320_424737_B961980D 
X-CRM114-Status: UNSURE (   8.53  )
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

On Tue, 3 Sept 2024 at 14:13, Konrad Dybcio <konradybcio@kernel.org> wrote:
>
> From: Konrad Dybcio <quic_kdybcio@quicinc.com>
>
> Introduced in Commit b3982f2144e1 ("phy: qcom-qmp-combo: restructure
> PHY creation"). No functional changes.
>
> Signed-off-by: Konrad Dybcio <quic_kdybcio@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
