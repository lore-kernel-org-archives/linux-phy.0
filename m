Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1180C71157
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 09:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Z3kTbCAuMl25jr94WTpVINeT2tIq1DNZiV3rsN7DV0=; b=ODTqXpPaRdlces
	VKN+VPjfqQjtyNEgA0+bgP/gcIsRMx6DT59u6LuJYcuIUiZLXkXiVvxM0CXvcVkF4mG5r3FbKHDhz
	AiCbZZ+MS/bksNxOhT3t8OBsQr0MXMF8CQ8n1bhBojs30LM0ii9B+FwRicH+1v4T06SMV25Khyc4Q
	jbx6nw0SBqtvUQQB/1n5xibKbKZhipgKNHpzP8SSVhfEq5hlrWDaAJiO1yan+6ZC6zK4gernlBw0M
	yuJeERpGC3b5vK2pgmjXMB4778mcsF/dYTrhqZF4MeIerIG5i7LZlnGlPyOhnQ+HoRgHMIF2ksS3+
	XaQ43jtKpQqjHM6QnmKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSgy-00000006le5-1ylJ;
	Tue, 17 Jun 2025 09:33:20 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSY6-00000006jbk-2aLW
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 09:24:26 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-6097d144923so1386565a12.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 02:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750152249; x=1750757049; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5qmCi5AjNmyApPkeggD1UBIutb08W79XxmIwYywNdyI=;
        b=KPp4EaU0TFdWtgLCq7G12gjLBJYwvUjRdmaNT4rmGLm3qqIk1Qpz5jAYeZQk1P/apM
         ZhTbO6mwAwsrCz9MyxjKvDXK8P4QGCEkdmSxDTz4zZ5X4r2KAs9GVjzTP/EZ7GOd6AdY
         UWTdRMY1yHi6CCiBnJe7ZnnfYoa9Dt5acDbmH9I0bCTiJOvjq4aQxaam9LevToPxHUCY
         vOTAr1NQc7ulaScmthwkXStIbnGMa7Qa7N9sCV3HQPyhb+aaHJ2Ldk6cUZqRc3+IfIlW
         e7PNdZjb5Se2FKFKrsbV7+oQek61swsmYApZQmHEVI7NQOPuzfsZOH4NDzlyz1m7TOP6
         D4sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750152249; x=1750757049;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5qmCi5AjNmyApPkeggD1UBIutb08W79XxmIwYywNdyI=;
        b=Ip4IKuQvo/iAjZGazIncnzD5SxmBSKOPzT1D0FCzkctsM2N8SmeN23KR0lARNB0MP9
         TO4JLAe+ITYbcb8JzlV57ot+SzmTUvOUafdNTMnPelYSI3AX/Z23JmRrob9qAVOMYLic
         oqdXo/uIn8sR39H87jVoHsKFzttm1cMzw0etSnpr+UqHu3oNGXa7e93nctrtyRiHNnEF
         ZjH60uPcwzPqyvpaJUjOGNpx0/IDWlXft1TSSgzI/CVo04UTFlqKz/POMwF4P4oijClD
         85vhQmcK9v9T/lvlmf16f1EPFaCK2dFaY384u6afglE4P0NqXL1GAh3OSq+rJcgE9oGF
         804w==
X-Forwarded-Encrypted: i=1; AJvYcCV79cGqxUCD1gq3b1FAdR1JiPuJBLy30Ub30WEY9fwEDoabKsolxxbsaMjmYTlYeF90M0dDt8L546A=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNNSwmewvO7aECRl1EU726J5tXcPb9zmWhAeObsZeOVABGtRWS
	GyKACYvSs7xDUy/jqqd/QCzlvGsDpRtDvxdYiK6n/u+6e3942ZdLElC2uMB/LUrDOCU=
X-Gm-Gg: ASbGncvCIsovNc1GZeyN2LquBlZGHJqSz6cyppqa4U+G1TPvjrAixKwo5ihts5aVWgA
	+ZlWfCHsqX0TLiRAJGCFyBCjeL42X6CKK0A1M7HKPwiw5usDaPAot9NdPE/KfGeo6HCdP7dO5GR
	RwrNCduA7OzUfVbESy8BLD0CH7C7bGL10p8r0L/d5rmiBiCx3EmnGVNoLf3EpLRceEnPSfH0VfJ
	6QlGb6c2B5xyyq6cJemJiPzbTGlhb47nYXCBeohDPAQRu5B+laoKS/Z6ucxtQtnp6RAX5FHdE02
	x1yMDDOL2mfXnU/jCS7it7rXloo8S8U858QhPuofb8ppKEbNOGPNZVI7Plo=
X-Google-Smtp-Source: AGHT+IEnQHxM84ovHQi50egnS9UEgVOz9GmXYcPlKnLN4jCfbnYv7EbdDH2huGe6x+oNGIph9jx7kw==
X-Received: by 2002:a05:6402:34ce:b0:600:129:444e with SMTP id 4fb4d7f45d1cf-608ce49deb8mr11863903a12.4.1750152248723;
        Tue, 17 Jun 2025 02:24:08 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-608b4a5b6a5sm7931639a12.40.2025.06.17.02.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 02:24:08 -0700 (PDT)
Date: Tue, 17 Jun 2025 12:24:06 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
Message-ID: <aFE0Nu8CKFBlCCrd@linaro.org>
References: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
 <20250617-eusb2-repeater-tuning-v2-2-ed6c484f18ee@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250617-eusb2-repeater-tuning-v2-2-ed6c484f18ee@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_022410_682848_854C0ABE 
X-CRM114-Status: UNSURE (   9.73  )
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

On 25-06-17 10:26:36, Luca Weiss wrote:
> Zeroing out registers does not happen in the downstream kernel, and will
> "tune" the repeater in surely unexpected ways since most registers don't
> have a reset value of 0x0.
> 
> Stop doing that and instead just set the registers that are in the init
> sequence (though long term I don't think there's actually PMIC-specific
> init sequences, there's board specific tuning, but that's a story for
> another day).
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
