Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FA8EC61D97
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 20:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDM8jla0SRHRsz/rudCTtvEuu7auqRVMJTyEpzzMsYk=; b=LJtgDAJkMWR4SJ
	dRwCnY+qpG+Xuw1RQUwe6J5+KTywc9+XBpQWjAdn2YXRSzQ8aXwgdU3ECOrd9XmfZ/wG1E/BhoUIO
	WP4zPG7QdQecpTB+pNmWMXDQNJOtywJWb2zbF6gmkitkc0OhndzgAARVzh/+rDKM8ZkMuXVDPF7Yh
	XgKPQ2RVV1spOnP9SccpTvstMPlTuPlHz1kObFKNVcrzKlhOJotxLiZIXFAQPALomfJ112qHeWNgZ
	9zlnNQYKeBEa6wmvm+Gkxe+vUYQcGdmnlRk+lWFtSGvzyIxnKkyFRue9p3iVeOI69tQD4FO/To6/O
	8ji3c3jYrLZ4iE09aOLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5tS2-002yZB-33;
	Wed, 22 Nov 2023 20:03:58 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5tRz-002yYm-2T
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 20:03:57 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-507bd19eac8so140410e87.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 12:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700683432; x=1701288232; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Io/gjQ08AuDbFAY0fMf9d/V1TR/FZrGyaBoM54Wv8Dg=;
        b=j/0k7K7gE1CwaM2IdGufZmNkeeHmRC1r0V/MbIk7geMFzFcMbvjPgXXKsN30+SwidZ
         fGbuzpMgTulDtfN5Td/q8nSc/RU/yMSthCn7oFBbEaKAFqxDq+hdeXz6fUe+SbwrE/3V
         RFgERoTeABzDdhv8HbnOcIDBCWptndIPjslCFzdXFHUhF0JHjeqY+yOn1LpaLfZ7ky59
         B4u3bcjyVgHQj6jaVHYG2I3jQVfzHie7UWMqIrHYPfv2Z/i8lF9Sdq8JV/QigRochiwS
         edT5XmkWbkgc+968oSKkLTMxW208wtRFjw2bXNH2rjrcjpyGdLcyoSq3pEKKKqNSEteo
         1bEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700683432; x=1701288232;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Io/gjQ08AuDbFAY0fMf9d/V1TR/FZrGyaBoM54Wv8Dg=;
        b=nViFziaEj1JM1CFsf4HRQnv5JT5iBHlQKu4BCt6ufYdbX1tP9TN3D0QXXDAfD3iJJ+
         HAo4wCz0uTvqLiMg3yU0zE5ylfUU/dE4PyOVo/M+AOsMJs5HzGejL6hPYenG+wU1ML2P
         C210QMOKBwSK+OW3eReYnvulncf4q6qBcUvVQpOGO4I1NCiCxWkoV6OEQ9QiwUbbqCGC
         PZxT3ztpxDnl5v6WUvdpvsp3clSiSmWC4GRLcQoYzKA78BUz0OKdxAmtG77aJvLVIYTU
         vLRrmgM4LYYycDWX4QP+0BEH8nSZRBUw/kMOagFtdAXxyFgo7a4AyklT9N0elqT2qM5i
         uUoA==
X-Gm-Message-State: AOJu0Yysk90XJGd6eM610rIPo6wSK6c67AsYswzbuBTR3PRRnAr2x/+U
	H+nfy08CIiBAAuFtIyWmRx+zxw==
X-Google-Smtp-Source: AGHT+IHz/4Br/9+seo/Lrak4kInlCaTk0gNCYlhXMZj9w9gtMMfU7nZufobL54nVG+7FpfSZWSIVJg==
X-Received: by 2002:a19:c511:0:b0:509:e5a4:2af2 with SMTP id w17-20020a19c511000000b00509e5a42af2mr2294279lfe.49.1700683431515;
        Wed, 22 Nov 2023 12:03:51 -0800 (PST)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z15-20020ac2418f000000b005079ff02b36sm1932808lfh.131.2023.11.22.12.03.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 12:03:51 -0800 (PST)
Message-ID: <1bb81371-e829-4e02-a234-02f84433f4bf@linaro.org>
Date: Wed, 22 Nov 2023 21:03:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/8] phy: qcom: qmp-ufs: Add SC7180 support
Content-Language: en-US
To: David Wronek <davidwronek@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Herbert Xu
 <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Joe Mason <buddyjojo06@outlook.com>,
 hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20231117201720.298422-1-davidwronek@gmail.com>
 <20231117201720.298422-6-davidwronek@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231117201720.298422-6-davidwronek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_120355_826529_1D83E0F5 
X-CRM114-Status: UNSURE (   7.58  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 11/17/23 21:08, David Wronek wrote:
> The SC7180 UFS PHY is identical to the one found on SM7150. Add a
> compatible for it.
> 
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
Should it not reuse the 7150 compatible as a fallback then?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
