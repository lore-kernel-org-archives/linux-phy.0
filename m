Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B32FC02185
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jan 2025 11:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtIBV9/n0XikRlRL+kkf6xhFOG73B+d2F5MV1UYYv9o=; b=iWSIqDystREjp9
	Gt4qVucfVUUoYgB7fHj5wQ/hy2eFSCdlcE0NSobvYmHgl23iBWN9eagsE9tkIWWzO1IseNc4cYZUo
	BX6FOxJUqvo1Gfr8xSLU0Q6YIw++npVHSnXJhUTTFQip3iOgyBPgNZVeWYnqejR7XQcYliXCWCE5+
	B/u4h4zyTc6HV55ynR4WRAbc4oBb2jFiMDh6oTf0neTKmoYr7WPSmaTwaNL7rze2Yf6NfsWpaka6F
	TAK+y21gI1QjFnN9x5WnrLsb49jXeDS4RXbKbi+Z0YBsuZV6pUrbp3woIMa+vT+hnSppROlKFL0XB
	pVbA2WxT2ID6s1iVsxjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY1nF-0000000Bj8f-0Zl8;
	Wed, 15 Jan 2025 11:42:41 +0000
Received: from mail-pl1-f177.google.com ([209.85.214.177])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY1j3-0000000BiNe-1bip
	for linux-phy@lists.infradead.org;
	Wed, 15 Jan 2025 11:38:22 +0000
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-21654fdd5daso112121315ad.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Jan 2025 03:38:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736941100; x=1737545900;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yObtCYTyS+eH2VsWOaS8ygoiRNvMh6x4WMqXu7RO7qs=;
        b=pFfoYO3UbIUegCTtEE6Q1LLt/QYSUpwVPIlS4y5xe2sOww47xI9BncvaaWMof6TsFV
         tLGmfokHqj//DBNTDQ26GUCf9xx5GM6MKcn9nSCwq4LtXw82pe1/PiQgczIGz+/0vnLn
         3egPWhUyDjueQuaDk1zSKQmy7pvGUVZxZKUAbQU8iSkSGYazwR5XH6aLjDxFL8/bX6Nb
         KCrzlEXkt2wbkL9fn0XPDfwlEY9vIZBlwP3jkKExfMiclKW0l0LboV9pt6ygDyND1wGY
         fI/yhVApDIEPrWHp0hXn+FtlXaqrAeYF9JaIJnjmV6kRwm0kSnWtCzK/6AGoUgKpNqSb
         3yzQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7w6ZCgvwEjgcXhZFp0Q/NiVPv9OliXIMTNAmtMLoSu0BHrdGgVJFIGsy5+HNtiG7Q7AOqNlnkssM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvmpIR8pTEzkgU9jirDFFl5Zgf0wpBv0IosKFXNGErkYn93LiF
	XD3Bt6fRe/JLYs+J22kDWPVCTFbhIOo+snCP6hPW1UeGCMqyvH25
X-Gm-Gg: ASbGncs9OQGUoIsXoNwR1fLWDmAhNdfYSg9HlKu6YlPTVskudV0BaUq8WyJU4drqjOl
	EMi8hxs4qLmur1Ht9gg7hI9W24pZcIa7WqlkdsVBMaeCq7U7lWV0w7v38vUegzqLe2omJxRk10y
	q8JrA494qbtGmB4TysDtovtMposyCE4OmBivAn+1oscs6n6YaFgH818k3HoFLPLQ6SYk6LH5VIN
	fkmWJyu3zj4go5w/aRIH58rrcq5eHTs5ajBhTj67EdjZ8oZM2eYz9qdkM+/CVW4w1xcNc2FQ1XM
	Nh0Fy4DFTUEdy5w=
X-Google-Smtp-Source: AGHT+IEcdFb5dU4BMohRNVDTKw9QFYRtiS+kD1Qk8n+hawpZuIlHV5YgyxsF/gZsw+0wIwlq6EXHaQ==
X-Received: by 2002:a05:6a20:c887:b0:1e0:dc7b:4ee9 with SMTP id adf61e73a8af0-1e88cf7ba69mr46271498637.8.1736941100514;
        Wed, 15 Jan 2025 03:38:20 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72d405484bbsm8980275b3a.31.2025.01.15.03.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 03:38:20 -0800 (PST)
Date: Wed, 15 Jan 2025 20:38:17 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, quic_srichara@quicinc.com,
	quic_varada@quicinc.com
Subject: Re: [PATCH 1/4] dt-bindings: PCI: qcom: Document the IPQ5424 PCIe
 controller
Message-ID: <20250115113817.GO4176564@rocinante>
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
 <20241213134950.234946-2-quic_mmanikan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241213134950.234946-2-quic_mmanikan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_033821_415736_FFD46973 
X-CRM114-Status: UNSURE (   6.83  )
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

Hello,

> Document the PCIe controller on the IPQ5424 platform using the
> IPQ9574 bindings as a fallback, since the PCIe on the IPQ5424
> is similar to IPQ9574.

Applied to dt-bindings for v6.14, thank you!

	Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
