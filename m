Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D840C5AE5B
	for <linux-phy@archiver.kernel.org>; Sun, 19 Nov 2023 16:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkBGheTSfq4BL/wOwz7OCZdfDrg+ZPxCArYOtphy10I=; b=0tVxWrAEPTvasp
	RbG2C33MtYvogBGUMfzj4+mdmUUqgaRuaqmPY5M4W1BdiN67rGRxMC9aGTzdajC8Ee+1L1mOqeYpS
	wyrsPSWcJMj6xkXies675XOZIFrbxhAuX0q8hmJ0JitBHpQjsm4OwPbk2PKp806wVYyT61wSwe08O
	KSvLfL2YfQ411cOvWAMKd+OWFKdtPn9Cmi0X/fG88+a+NNqq0lNdgnFSXP6oABXKunzCKjnI7/6lU
	8q3zBvzvXv+KByX1XHxonhqaFP7MBANczmutDuIbEQKf1A4kppxCVkHJmxet0IqY3wBCxw8mt6SFR
	iD5sXVb3X5PMFcxH88gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4kP5-00ANRG-03;
	Sun, 19 Nov 2023 16:12:11 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4kP1-00ANQ7-25
	for linux-phy@lists.infradead.org;
	Sun, 19 Nov 2023 16:12:09 +0000
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6d3260385b5so1840374a34.0
        for <linux-phy@lists.infradead.org>; Sun, 19 Nov 2023 08:12:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700410326; x=1701015126;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xEu0nuOXzWy7wH5tn0mHCily9PWBQhKrF+Z00A3ebI8=;
        b=KNFou71AWbn2XxorENXXAhM+qm9WdiZREW0WuGx5vFYTWeogS9OY7XWa6/SL7BLpLA
         fP8vjLabv9SAylzVy390N3BxmVLWApI4RBWxVlvAYS6tKHUPbxNE9EC9FTCOLJLkRNnd
         N0J8olf50ME601oLWPRLuwRMqC/Z3wwxBu/6BZrj8oP+hSzU2BK79SKYokxtwCwB9z+O
         GxdcAinA/08QylAf/E1jgMv8IIsSCGWMGSqytrwm16hr51T0e0yh5AYdvVm9odFeKERe
         9dPTCkZBzHBcrWa9KTM0FvNhA1aGVjDt7yEV/01k0WjUSF+N7Wy4f95ty3E1ysGzlNmA
         a5aQ==
X-Gm-Message-State: AOJu0YxuJLEMMeSoIX1hzt+D9Vejnh6ECvB6jWPFeEwSfuBLEzJb7neu
	Ml+0E0cU1ypZfQpUKyfc/w==
X-Google-Smtp-Source: AGHT+IHGGM8ZAa1lSr23KAzSyTH5dGZQdtx5KG4w1Okx17TDG9eIKkTbs2icl7eKgrEN3ubKijy84A==
X-Received: by 2002:a9d:628b:0:b0:6cd:9f4:e088 with SMTP id x11-20020a9d628b000000b006cd09f4e088mr5199714otk.5.1700410326260;
        Sun, 19 Nov 2023 08:12:06 -0800 (PST)
Received: from herring.priv ([2607:fb90:45e3:889f:15b4:1348:6d64:224b])
        by smtp.gmail.com with ESMTPSA id c3-20020a9d67c3000000b006ce28044207sm893035otn.58.2023.11.19.08.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 08:12:01 -0800 (PST)
Received: (nullmailer pid 276187 invoked by uid 1000);
	Sun, 19 Nov 2023 16:11:56 -0000
Date: Sun, 19 Nov 2023 10:11:56 -0600
From: Rob Herring <robh@kernel.org>
To: David Wronek <davidwronek@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org, Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>, linux-scsi@vger.kernel.org, hexdump0815@googlemail.com, linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org, Avri Altman <avri.altman@wdc.com>, Joe Mason <buddyjojo06@outlook.com>, cros-qcom-dts-watchers@chromium.org, Herbert Xu <herbert@gondor.apana.org.au>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>, Bart Van Assche <bvanassche@acm.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v2 1/8] dt-bindings: crypto: ice: Document SC7180 inline
 crypto engine
Message-ID: <170041031632.276154.11804659126094035319.robh@kernel.org>
References: <20231117201720.298422-1-davidwronek@gmail.com>
 <20231117201720.298422-2-davidwronek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231117201720.298422-2-davidwronek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_081207_903646_DB0BF763 
X-CRM114-Status: GOOD (  10.41  )
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


On Fri, 17 Nov 2023 21:08:33 +0100, David Wronek wrote:
> Document the compatible used for the inline crypto engine found on
> SC7180.
> 
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
>  .../devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml    | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
