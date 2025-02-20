Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CDE1C021B1
	for <linux-phy@archiver.kernel.org>; Thu, 20 Feb 2025 14:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WikK3UYWnrKxLQ7c/M4rfYWEe0ZAwQxifP2lsuq4ZA8=; b=b5GZ+t/hqAEOhd
	SgLAiAdSVFrdoe7qe+nevHRn87FvCfvX+eY8cUtw2pH/8qq7sE/Zd2K/W9DbmnZ70k7/ny3tK6Ym3
	ubeRZ9FR7UMK5+0631+ZFlYi6MM2b4Quw/6JU0EQC1g8NljtMun3G+rkptXS+rNGXT7/Gvxx5PPW0
	yUIC//xS4ecepl/omekv171IgGqFN8WR5CV4+CVfuB3uy44LmlR8Uiz632Xg2PrY1ZkfSdttq+WCL
	0sw2DETBDV8E4Br8A8QVfwj7vqqHTCfAB5UwGy9kYKmUKK4nsdKftC6jiOUsfGa5QfvoFUGlA9OcD
	eH9/Mla/ZMhHO58GEweg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl7sY-00000001PK8-1u0c;
	Thu, 20 Feb 2025 14:50:18 +0000
Received: from mail-pl1-f171.google.com ([209.85.214.171])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl7oI-00000001OIa-2HTk
	for linux-phy@lists.infradead.org;
	Thu, 20 Feb 2025 14:45:55 +0000
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-220bfdfb3f4so22235985ad.2
        for <linux-phy@lists.infradead.org>; Thu, 20 Feb 2025 06:45:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740062753; x=1740667553;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AyO23lYkNvoQQUlbolJXF4K3o41Wq4pRTt+X6bZAIV0=;
        b=OlUymPsxLMp0tyvRWTsVSzFQjBHg5VC4VbyEUtP1vpdtNKO2rUDdNvPfxijBrMZSHS
         DHNRCHUrkn65uuvl5k7YUROFIjscjHOTOoDeZZ0uhFsr+Xfr/nelBHC90FQPi6cdPP2L
         n63CJpDQqMFUgbFLG5/8dJUH5p7rBc2XWUmxKM53Tk3LRLanjuvNjyOV7m72rKXy0n3t
         CVnYR5hP9ez8a7WAOL0BIUhJoKYBMD8BTjIdPc5sRFvxAXsR9oc5eVn0vC7vtscx8EMM
         whSBFWWNeHOw6p9FKFa8tUP6Do3MX8Q6EF0ugbRPgCDCBcgb96BAyHd35Cy4jPl3aNjP
         BqIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpXS6BVAPwgwQndWJopeiKMR8oZhuM3ld5KRwq8rzENyZ64Suf8kVq4GkaEcdZ2ENk9ldF/gn1n6I=@lists.infradead.org
X-Gm-Message-State: AOJu0YxnIlwjOrsitppexF5LkKncFhUSd9kiUHeD4eC8MjeUpn18L332
	9hM1qJ3/n73taVJyjymYdifMXcI7SvuJ3thsPjfe/I+1ekBjavGi
X-Gm-Gg: ASbGncu192wYbbWS0p+y0PM6KdEHBTP5KZmm9cejNP81HODkji6or+sl5EcNKyFgHEs
	ZvbSsyPvpl9Xh1I93Sz4Ct6dvTbLIV6hc2jZilIs+V+h+Iw8DZ68a5AW+P4pFBrJCRO1kMLWZNr
	J7IDyAWggyDXfHe88My7QJzLl18yjUfZIQ9RLtsxd2ZvtxTi4TjP0BQCKnbmEIZTlDxua90JQ2H
	d3Ch9/S9jA9rM7sCDRlaLwQaKuPSiGr9KCKTMOcU/0ZTsjjbsXqtjTpzBHGUDjD9MYQKuFcZZX5
	ICIg+idwjWdF52y8ORbhn3kBPSnd1bjOSLjQWl8xiZq22h5o8A==
X-Google-Smtp-Source: AGHT+IEBKbHBfq3DOu9Wgjnn57HwJpQn3LwWmH/iOR4vVbY0PS1ZRcs7M2GQp8hnxm1C2wpw09bftw==
X-Received: by 2002:a17:902:d48a:b0:220:d1c3:24d1 with SMTP id d9443c01a7336-221711b7524mr131278365ad.46.1740062753298;
        Thu, 20 Feb 2025 06:45:53 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-220d545d448sm122367545ad.150.2025.02.20.06.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 06:45:52 -0800 (PST)
Date: Thu, 20 Feb 2025 23:45:51 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com,
	dmitry.baryshkov@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v11 0/7] Add PCIe support for Qualcomm IPQ5332
Message-ID: <20250220144551.GB1777078@rocinante>
References: <20250220094251.230936-1-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250220094251.230936-1-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_064554_579923_F12738F2 
X-CRM114-Status: UNSURE (   7.84  )
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

> Patch series adds support for enabling the PCIe controller and
> UNIPHY found on Qualcomm IPQ5332 platform. PCIe0 is Gen3 X1 and
> PCIe1 is Gen3 X2 are added.

Applied to dt-bindings, thank you!

	Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
