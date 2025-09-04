Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F5A8CA1012
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 09:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lO8Fvkx83JBAkgvJ8jXkprtMwE/+tSkVDM2HVZueU5Q=; b=x1magzHNF84ZVc
	6pylLM6pWTB4HO2x9Dssjgwo/OaLkXU+J61nsnUMU9EpAD3qIGCNMoxada0gadCkT/sx2audsUcmJ
	A7D7FbHGpGsM96DiWp1fUesSLqG/QhHbxrtd+ro3n5OJw10D2/gSVfw+ipnDra3S3wOK/lOlz6Khr
	Dy4udx22UjKxLr0Go/9Nsgbs+e/pUeOlmmuZ6MdwCk8mPjWJ9V4pwdg5GfpY2xruGPJwaCOnursnK
	6KKh5Qnv58snY+xr89B0h+1cqD74rDRut/iUvZj5sWwbwe4A6I0JGcnbe/i3tsjFdyvVcsgHRyaNE
	AoHoW7gExsb8zhb9PtSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu675-0000000AVsS-07nw;
	Thu, 04 Sep 2025 09:18:39 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5Rb-0000000AGll-2LnR
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 08:35:48 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3df15fdf0caso629273f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 01:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756974946; x=1757579746; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fvYi+R5i77yXA26UvQlFEfyxfCLO5Nh7bbNkyAiJE6Y=;
        b=Occd/kBKAeIKhDLZXQ/dkOOAehnaOCe6l2HaXZDodFEjA0aXUkiioXCHaVhQbaRfyh
         SOsprLG39qaf3KUlJvZJLymvGjA9/SPDjmMi5r/NlckOQStFh3xr2byhqdEVIowfKzvl
         E74CGlDup9neXzwXGYOQcHCMpzmQGL38VNfJ9OadNODFjRVdbSQLbFcTf5Y3+jN0T+/r
         nGrhfeOsmpek45hJz8+0N9cU173OJq9wwVGpbVKeSpZ8TPxti6P9oPrvF3CeFtTnj51l
         TzLfN0sxwYRER2OrlZ1f2TYVqN5Fz5aVl4Y4QxIKC9gEnq5+uBmdivDzWW3Fn1BTtKBq
         C37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756974946; x=1757579746;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fvYi+R5i77yXA26UvQlFEfyxfCLO5Nh7bbNkyAiJE6Y=;
        b=EuelzgvVHPujZVgJ0HH5QNG6I2lnq83wsOPJrQpZx+tSvlkLdq6q73ari3CSwI9U9L
         d7C2xCNsZCRh4cXi9uyZhKDcIV+596ejEZ6t5Uth8ZgbLqVM6eKhHVaq6rtfHuQonH98
         ynH8c/yZAs0Unr8K2BZ1gsBte2J/tsCKaqfCRf35lGfbf6xDwCuSmv7asjHAk9ByzTTV
         ESgHzIDmvXZIF5MAF2Fc6D4oALKKErhKLFzPk26681gJzAkfkBvGOezxj4fV2A85F8Gl
         7S88aL3OBrS4qlSt6Jeb8tB7X0VlhQcS3xprbQkSzj16RQ9NIpOS4l80K/rE8rqotwoZ
         UgfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZzmk4nsSd+GvVyWzApXrZsEky9M4c+7vWv5aIk1OekOcLNhDj7V1LWNzlpOX2L9eIcfcCG2IYKJU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVV9w9o4viOXfTfZ6TaMLyTG+h0AfR1o9zG4Fz4QqWnIhq0aeo
	Gu0H1CR7pey5VVL+IhxPoQyAp89PCm7dtdMI1iBgYMhQvZsjxkaLFKvUzvUrPgJamdA7Euv9bv/
	Gwbqr
X-Gm-Gg: ASbGnctV1t0OmXnlXjAh7zcOF7mqRKnlZfA4NXBmKSel4/1MYvUdezmEDFbfeHlgNE1
	wSybAZSK4fsMIp3xwrNI8FqB6Di+2dnWdVV5S7g4vtdQHykCJqMp3Bg5D+prqUQv37o59jpbGIo
	8w2yNGRVDllaUQPrXUc9HX26b7rAbv7ohOHVDadGvRV1pDt3DYbAaec+XDcu7jRU3CpQMa72VZa
	h3NAWUsPXIUcNq9xIKAD+pFLOB4QKaflqr6BJ/AqV7oz8ZcRjZinQXgRMtfiCPs88YdicwUKtaI
	jL8u2PvoFE6xA1nlFq29DIq72aZ8Gz8LwFIBfxi31pFaUCJfm4csfNMrP7HWv8ldTF3cr9CXqCM
	7Uo6vh7aepRBq0xlcIntoXUkqu34nw5cY
X-Google-Smtp-Source: AGHT+IH6tluwSmCG7lH+rafRzjnl/FD5MXJunjJ8MX7ouc4VDFS8i7jTuo2LLXbEBzN3/cqZwlGBAA==
X-Received: by 2002:a5d:5887:0:b0:3db:f9f7:df86 with SMTP id ffacd0b85a97d-3dbf9f7e8d7mr4806530f8f.61.1756974945927;
        Thu, 04 Sep 2025 01:35:45 -0700 (PDT)
Received: from linaro.org ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e68c83asm297479605e9.20.2025.09.04.01.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 01:35:44 -0700 (PDT)
Date: Thu, 4 Sep 2025 11:35:42 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
Message-ID: <nmennvrestyn6pf54wb7bwvblrtwdczqeokjdd7srj5eljyyfv@gqobw5rexdy6>
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
 <04437373-c5a2-43e4-b591-921ce450f3d8@linaro.org>
 <49a1ed5b-2afd-46b5-b5b1-74dd82dae95b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49a1ed5b-2afd-46b5-b5b1-74dd82dae95b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_013547_602576_A10DA9A2 
X-CRM114-Status: GOOD (  10.50  )
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

On 25-09-04 08:51:49, Krzysztof Kozlowski wrote:
> On 04/09/2025 08:50, Krzysztof Kozlowski wrote:
> >> +allOf:
> >> +  - if:
> >> +      properties:
> >> +        compatible:
> >> +          enum:
> >> +            - qcom,x1e80100-dp-phy
> >> +    then:
> >> +      properties:
> >> +        clocks:
> >> +          minItems: 3
> > 
> > That's an ABI break, so you need to explain it and mention the impact.
> > Reason that there is one more clock, but everything was working fine, is
> > not usually enough.
> Heh, I already asked for that at v1 and nothing improved.

I missed that comment. Sorry about that.

Will address in v3.

Thanks for reviewing.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
