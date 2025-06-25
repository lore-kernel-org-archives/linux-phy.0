Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF608C7EE2A
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 16:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDlH63TKX6JrzwogxK8sD6E8W2sTM8c8AxUuyTX09wM=; b=KbXr+8/LmNDv90
	AiUX7nqTPARb3szeXKYjjfIG1iGHckcPxleht91UjvFmvQhWMcC6etalBG3s9+0M+pA0FvZ19LRH1
	x9v95QYLwpYfqi60HnjlTmla9hD6H87M+V+jqgthUVIAEeJmpiYdXzT8cgbPRQsVVETXcfJ/7S3vb
	sIyFEtXZJAJYZK2RaNFGEKfqucICNfIx5vTQb0+LgcHSAR52qHxQxmjpKaTPaKyPuaL+0YzkUS9cH
	j40xKmk/duRml7zyXNXGOvR0/9DIRYC8jURNpz8f72QjR0DlcdjXGQqArcTD3K+4jixB52FLyNLzb
	aTyPMv/9zdlTGhyeSQrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUT0d-00000009HpC-29zz;
	Wed, 25 Jun 2025 16:30:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUOV0-00000008W2x-06uv
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Jun 2025 11:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=dG7kxxjRLtrO7B9/s+bXTu7SCYb/AqhokTFr9duMWFo=; b=ISpyzAIHKJNusksK45uBthKwBK
	fRNL6hliIOIW7/Rwke5VB9vVAruQqQcnHeUf72FAiMdc+dG3Aiz5sPnun/Yg8ab+0WKG+8qI4HjW0
	pR+HFUlIJyE0t6pYWNG3nKcXdxLa1e0O0Qoeuhmrk7s8yNkgrlTKFRDHGWAQgyOUOFGaj4cTzgzVd
	Zr11xqtvCbinZByDZ7shXddVg7ReQbG5ot2ivnAt5EbUYYiakpICmfRQeDimk8mDD+WNKn/gOBOU+
	N5kjvRdNHg7X2i2coQCt6GOwrkva5518gDZ/1o53TtHrk4P5Z2zv5POUNjFmv3YAzHdEa77HVo+Qw
	zQsZ0dRQ==;
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUOUw-00000005psW-3NZG
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 11:41:04 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-ae0b2ead33cso159051966b.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 04:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750851660; x=1751456460; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dG7kxxjRLtrO7B9/s+bXTu7SCYb/AqhokTFr9duMWFo=;
        b=hPWxqettuaa2MmHEzGj8qLkUc0nHuqh5buIi+YrjNeZaeOcTN8IzW8ndNIDPweXOkT
         tBi0ARYeODJmSQJWmuY4hsWI+s7m3CjQCOxI1aYDCczXl9hPOA57kyusNsBf4YOz7Lyz
         NW7wWqJ4/GX6/S5kD7f1ntNqFZlyWv/jqlOSg5DpxbWj0zUov/tln2ZgAXwMLY9qm9IJ
         yOeDEpR9zAW3sN9Qiogeq046e3mEDGlRmMjdVwUAXsouY5v6VnL+RXYJQC15rSXHvTvp
         yOSUI5+r/lu2Qoovwgwh6MH1hRa0YqSbzJv6bBXX3BWF3E/twC6AzEvyLmknRfh9RoG7
         C+HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750851660; x=1751456460;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dG7kxxjRLtrO7B9/s+bXTu7SCYb/AqhokTFr9duMWFo=;
        b=M9FQziyI+43lqvef7U56Lm5GIKvm4hkasPAr4QUHU8mIc5H8Z4UAXpvhDgTXJWjzYu
         InGg+hyPXh55NrTBrcks3HXONUJ6p382KQgd2BBIipT0xcT1oGCIP82LdPk1NZ+rG/uy
         7kzf6FnCw/+4o4c6thmy1kQqcuPNqH/+A4/VvixgFQxXKkN+W4iR2PMcGhmaAuXJQJ3I
         hK7pPA/FZ8xdui7kutV4kyVt4GU5gVc663/NVZf8pi2o07RvrgbGPK1Gz54R/JnGHbIu
         xHyhwv7n6SB00S/Ha1vPQ9ZOZHOmXvaMqjB9coxdUZHSMf+0vhE8IPxKfv65LaEhd4S+
         gFnA==
X-Forwarded-Encrypted: i=1; AJvYcCUsBPMpMZSmanvjMQYRB9/HB7iGePamxPeqYA4KYyY+m3W/IM52kG1mjMF3aJJ7ogZdQzvN/U2CQHs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyxs0zHcBqzQKjtcaZZ41OLfoGUCIbN5ypf+Q2n29wahiLYsKES
	SGg3DAVcgEgK8PubmF0T2fsPg0zTuwrENYPaVa4A1AXiZ+4+ZrOebindrnh7gxTWrYQ=
X-Gm-Gg: ASbGncvfQ1bZQX3g0gVKlXf5/sOEx73xEAVu0WVhlRZePoIkW4vVLS4DsYeXIdT2XCn
	XUihgYmMoJ/TLzZ/jLejkHNLnySHuQzOu/W14xKBFpWGCzL+Dg4kTcdZln//8M+ESLoMuptL8Xl
	pfdA+Huq/gEt1F4g0ClBLxxJs1l3iVwUtjF9xXb25MgiCsJxWato4BTwYLsn9DLt+JYDtr30zTx
	0Fg+mJSeoGqEeUzTn1PYBn3wthUEiZYKfHBQsx+kC0gkd/yI2Yy3ZA8DJCINB8qN8gzRccEH5LT
	BNg2GuBoIFrRg/CwWJsrDNRREP6oXM3zd4KWQ59hNNGJgllJ0uPRlk3Sk/g=
X-Google-Smtp-Source: AGHT+IFpDm4RRxvmymupPNfGTqlfEfo8Mbg7duMyL1/t+lekqFEkI+Q3G0VP+nEz3h7kTBtla3r67g==
X-Received: by 2002:a17:906:6a0e:b0:ad8:942b:1d53 with SMTP id a640c23a62f3a-ae0a7473535mr648229366b.27.1750851660394;
        Wed, 25 Jun 2025 04:41:00 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0b618251bsm197805866b.55.2025.06.25.04.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 04:40:59 -0700 (PDT)
Date: Wed, 25 Jun 2025 14:40:58 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] phy: qualcomm: phy-qcom-eusb2-repeater: Support
 tune-res-fsdif prop
Message-ID: <aFvgSjkCNueASD7D@linaro.org>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-2-19d85541eb4c@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-2-19d85541eb4c@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_124102_927646_ABFE141D 
X-CRM114-Status: UNSURE (   5.76  )
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

On 25-06-25 11:14:57, Luca Weiss wrote:
> Support reading the FS Differential TX Output Resistance Tuning from
> devicetree and writing the register, as required on some boards.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
