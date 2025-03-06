Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72621C282D1
	for <linux-phy@archiver.kernel.org>; Thu,  6 Mar 2025 13:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/YAPwiIZxbFsuYpySjQpR1vAdxSH8ZFC92DUQaKiD0=; b=BcMYnR7HPTuVbd
	sk5cugJkzux9QNW4ejPwn3MwEBB8PicIv1Vq4Y3hYak7m//+DtvTxih7C3GLASlh/qP4v6OEKNNy7
	pMWvsmlvBMxpjChbqtWH0TyQoIgQpwAMd1EMYYkvbhjgMw+rfwNaP+azRPLjULr9UjuNIXZdkt5F7
	Xf6o/n1aFkSaIBtcFfCJ7THntowqYPpMg86TI9NS5H1D+qLFAxGO/R1zIXDQcJ5nqeSKQT3RUttTs
	owfcYbXjDEM2T7LaQZsu4yoaMeLT4fd0qnX06a3PRa61KVNjYXnijzQrW+c8iWy7amSCDhmoYX6iw
	B4sohT4Pf0BNND1fr9SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBA1-0000000B2R3-2eZD;
	Thu, 06 Mar 2025 13:21:13 +0000
Received: from mail-pl1-f176.google.com ([209.85.214.176])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqApE-0000000Az3u-2vNN
	for linux-phy@lists.infradead.org;
	Thu, 06 Mar 2025 12:59:45 +0000
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-223cc017ef5so9974355ad.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Mar 2025 04:59:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741265984; x=1741870784;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dXr7uDsRH7CN7dqPEAo/8hwLOM1h86DbnHP38hRdbbI=;
        b=E5Jj6MEtwK7IiBTGIE8/OfaVBJj1jKZsyXManlYRDIIb+ysGM18LZZjyni7fWRa8K9
         UKxeumzCNJ/g6VcIPo86Hp/XB6UyKkn23a2M6/RUvWFAnVjuotJeEc8+Eyv8H7IxOncN
         NUJdNp8Qcn1Bde80E9hVtJ8e32F/YkeBq9RnMo+psd4wtL3s5yX5S8R3O4VWJfFcJ46E
         /iEeIDavf4eSbfJN8f6Xbb8uyJMXY4kaJslLLE77BVZvK2oLimkoFXETwIBjC9TqRtEH
         ad41LovypqYk9qlzjj8UKQKC/jcgpRnzgm3lNRYT2z3eD03ejhfzpi6yYAX9MQrppJZq
         Qtig==
X-Forwarded-Encrypted: i=1; AJvYcCVrb6H9Nj6X+xQjWaomUkqqg9DYXpn0y3UD2FbqCWKya/tZjpt7Q39+jPcC8wnapaalWUTz6HdmQA8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6fyxEIdmcBtkkXO5AC9psASNQAp/C1yuW1QENEVARtPSo8u8+
	MSez2osEhOlxBuWF7TpnIWabjg6BV5zNpWxo7jRUmkZb/CQS9uyP
X-Gm-Gg: ASbGnctzqTgYxyOfDel6UZy36jrURiAgLI2coVO/Ju7MIrAQEurIeepEcFHU3nEgauG
	B7TNVIBCaZ+e1IGOsTO/pcYFE3Q9EZgkceXBPp0lkUS7QUk5Ndq+R5ch1hXIDuc58xErsGkW28l
	i4ZLxgerzz0HOIuNEpH64dBgt/i/sYM/t0RQ0XiduglbMCXKIfIoFBqnoeMeCJVLVhuQZVT5c2/
	zKc55G9YDjIETvkqiwZAEpja+mwGVy+Z+CJVWBjwOhvohXxWkphrPoV9n6J+/nMuNzTuQ5VQZz0
	Bvdv+8jtSPo6FCfxlkfmC77dfnUQR+CnHMl/dm+1g2/5wwGe3e07+U/wjIXIKOKFfO/68qf4vKh
	6E1I=
X-Google-Smtp-Source: AGHT+IHHCa1Mc9CIwvi5u0s8WOcN8dtXSdGTpXdZKm7WGs3OoKGtYXz/T4gD/S03NyAlHNoX9UMNIA==
X-Received: by 2002:a05:6a00:2e20:b0:736:3954:d78c with SMTP id d2e1a72fcca58-73682b737c4mr9780918b3a.6.1741265983562;
        Thu, 06 Mar 2025 04:59:43 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with UTF8SMTPSA id 41be03b00d2f7-af2855c63besm894935a12.12.2025.03.06.04.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 04:59:43 -0800 (PST)
Date: Thu, 6 Mar 2025 21:59:40 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, bhelgaas@google.com,
	lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v11 0/7] Add PCIe support for Qualcomm IPQ5332
Message-ID: <20250306125940.GC478887@rocinante>
References: <20250220094251.230936-1-quic_varada@quicinc.com>
 <20250220144551.GB1777078@rocinante>
 <d399a2be-3010-43fc-9531-e4f3560ea6df@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d399a2be-3010-43fc-9531-e4f3560ea6df@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_045944_736518_0DEF7A4B 
X-CRM114-Status: GOOD (  10.28  )
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

> >> Patch series adds support for enabling the PCIe controller and
> >> UNIPHY found on Qualcomm IPQ5332 platform. PCIe0 is Gen3 X1 and
> >> PCIe1 is Gen3 X2 are added.
> > 
> > Applied to dt-bindings, thank you!
> I will send reverts for these. This patchset affects users without
> mentioning it and without providing any rationale.
> 
> What's more, it introduces known to author warnings just to fix them
> later...

The following commit:

  829aa3693f8d ("dt-bindings: PCI: qcom: Use SDX55 'reg' definition for IPQ9574")

Should no longer be present.  However, we still carry the following commit:

  f67d04b18337 ("dt-bindings: PCI: qcom: Document the IPQ5332 PCIe controller")

Let me know if you want it to be removed, too.

Thank you!

	Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
