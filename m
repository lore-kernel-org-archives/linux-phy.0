Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B673C3DA6E
	for <linux-phy@archiver.kernel.org>; Mon, 25 Dec 2023 18:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myMYYqAx56WeiY0WtUm996UHGtrqURYu+CANgEf479k=; b=N+90SwpL5cIgbw
	lF8DQLjXnq/Sa/iFFSZR/n7L2RMklsaBebuGjPHASXbj6d5cfpMg99Jwe+dx78FvbRTM4IEeASD6m
	TqIbKtyTsNYg4Zi337C3Q7uVz4JFzCYjnNAA3GE9XDLtxf+OZF2mCPz9AB1wwRd+YHn4wLVSGDoHb
	1U7gx+C+U3dtXXFPc1B0tyazVIhWs0wwUap0lo/87hCTokS9+vPErL4+avmOhBVB9Wo9tKkAWgBaC
	/L812ml9ZiCjrZDudCvcXi75dWdeGH3fh5TUseml0zr09HNgd+KdXXXWswBziR830jIAPlinMdntY
	YDdjw9aNalBzxUL0Ig4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHpoy-00BBWT-0R;
	Mon, 25 Dec 2023 18:37:00 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHpov-00BBW5-1d
	for linux-phy@lists.infradead.org;
	Mon, 25 Dec 2023 18:36:58 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-781161d18ecso315028885a.3
        for <linux-phy@lists.infradead.org>; Mon, 25 Dec 2023 10:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703529416; x=1704134216; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rhuoQDM0PcQ1Hf0mmTK6WXCkbN9R/6E9/xIlxdvn19s=;
        b=ckkrWl8JnIGLFrjKfsq6Lhr0M64+TKfGW3CSwmHbmrW8wABBUvXCliq0fok/Biz9oi
         QN5wR9MXUMZ+OTvXMM8jlGtpvNXb/yd8p52DvNaN+qYQmC0EDKOsQB745xz2no173z+q
         +b831ZxkOnRuiD8N1QOrv+WbH2ROis1UEy9sIq657+9LkIrNcw5RuZawMocq0h+1mza9
         YOEMHEvM6wLVRoWjrpgLBapwuP3ZI7lr57YH+/mAse2xM+QethohfwNO4xdy5AyEQ7e1
         Gl16owjkd7NgznJiq2ll7lnvEsgB2n0pL377OPj2m/kmXkR7R0auxeZsHv2062vn7txQ
         ArUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703529416; x=1704134216;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rhuoQDM0PcQ1Hf0mmTK6WXCkbN9R/6E9/xIlxdvn19s=;
        b=ElY8CPNNZciJfFiqET7ySnP3DizfIT1jaRSfO0FklbmYRbj5O/Bqiwjn8uxzwlDWi5
         wPA85g6bJbKpIJO0TfZpTCNxVjfe40aJBvIuFfVUMcGciqDs7xNSjaXP7kBYpZ4jb+su
         5aICpbu2QqdPgOGfEf6sTg2NilVLaJ+Tt22ilNyvIKrvbm0QlXFM65lhMT1/M2E0P6GU
         kw0o8aEpjxcZTa1TIwmHDLbwky3BDjSt9aKpT0CkSDZi7FCrf74I0HSZkrVVlfB8Nauv
         S31XADRGC/R8CxHks+Ud4smceexaNt0n3E7ATjQigbkwj8zMVBk70AxgRzcGX5optyxh
         TFfg==
X-Gm-Message-State: AOJu0YwkJ8xiYiVlW2kCYKdl51cr9FREQ/iH+vwI7JgzwNA5OLapEWw6
	0Ns4mwkObkrBsLAHodkTS72mW/sVrqWbgJicrkkbaweIz1pDdw==
X-Google-Smtp-Source: AGHT+IE8CS08JUcDq3WI+3+8WI11iUmJs6u/1qSNRmsQnNIvWnx6Y9KlEVMPs7h/FyiJgfivx9Js3Ldg5moOhBHrYkY=
X-Received: by 2002:ae9:c012:0:b0:77f:b722:50c4 with SMTP id
 u18-20020ae9c012000000b0077fb72250c4mr7269847qkk.83.1703529415782; Mon, 25
 Dec 2023 10:36:55 -0800 (PST)
MIME-Version: 1.0
References: <20231225120327.166160-1-davidwronek@gmail.com> <20231225120327.166160-6-davidwronek@gmail.com>
In-Reply-To: <20231225120327.166160-6-davidwronek@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 25 Dec 2023 20:36:44 +0200
Message-ID: <CAA8EJpq1QiWwJ1dk9xtaY=0pXr0y-QfoibXyX4SZR=YbxjRBVg@mail.gmail.com>
Subject: Re: [PATCH v3 5/8] phy: qcom: qmp-ufs: Add SC7180 support
To: David Wronek <davidwronek@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Joe Mason <buddyjojo06@outlook.com>, hexdump0815@googlemail.com, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-crypto@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-scsi@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_103657_595065_08A093A6 
X-CRM114-Status: GOOD (  10.03  )
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

On Mon, 25 Dec 2023 at 14:05, David Wronek <davidwronek@gmail.com> wrote:
>
> The SC7180 UFS PHY is identical to the one found on SM7150. Add a
> compatible for it.
>
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
