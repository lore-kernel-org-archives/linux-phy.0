Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EC7BD132DB
	for <linux-phy@archiver.kernel.org>; Mon,  4 Nov 2024 15:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sg6QECMbhdDAVyRk9Pm5KXmdpqe4tHC36ZA7VolLoA=; b=L3GnUl8IHALF5k
	jBcDvJ/5Mlh2rDXCYSQ/eevyJ4hQCMsy64dODYw7H/uFBvTT6UqkGK0c6KeI8sty48OWu6qkz7qUI
	WEWUL5I6MWTkEvuU5MtSKj9hr8hd4ezkzSpUpxqtOCGVM//UQqxlxWIm5guPASBYJB6VUIz+0podd
	je7p0j/WbdVsQ/xtn47gX9EHYbj/W09lzaXhN+On9g8R1QC84OkNrB9bStHPhi8t6D/vxD9PewAdp
	Ar6ZgrCixMUVv2bRLIZRH9iPGdmY/l4oxjMJZTP840kWwBemmOCsH8Uc82NST0wqE2bo9iIudlJop
	4VYa2nE7Bb+fIJ3/uhIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7yd7-0000000E9A0-41mD;
	Mon, 04 Nov 2024 15:04:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7yW0-0000000E89H-1yUJ
	for linux-phy@bombadil.infradead.org;
	Mon, 04 Nov 2024 14:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=I82zg0d+bkgUiX2hBjnFGtZo3rhclu02If6kmZ3e1WY=; b=POhdqN1ryPewAnj6ahDqo82e0u
	FR0Rw3vxxC0FAeOqUGl+9TWO1K+ufIJ5waIoHyfEnUo7K4NyYzrSYACdLqhr69fZVU7khVLlKCQvY
	iQKTz72wIGoAZa8bMubw4AQF78/dqYt2TWqHxEjpqWtkhVk4mRPyUQ8Yq64Qk7+HFkTEU0onfZtcA
	lfABEMRRwUarn4quDFQHe1dCr3Io9nXq9+abNFwAOndoICEQRcHlyoKzUkZCZ98u8ckXQ3SN5706H
	TftOs5FFBACbZN8TCtKHD6WNsHwh0kMs8HuQP4YST2o4mD6XGZ5EkI56aPpnofEMzS6biA7ZeVWnI
	1HEgDrUg==;
Received: from mail-pf1-f173.google.com ([209.85.210.173])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7yVw-0000000BMST-3UoQ
	for linux-phy@lists.infradead.org;
	Mon, 04 Nov 2024 14:57:11 +0000
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-723db2798caso863796b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 04 Nov 2024 06:57:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730732225; x=1731337025;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I82zg0d+bkgUiX2hBjnFGtZo3rhclu02If6kmZ3e1WY=;
        b=fbuaO06KHOfWPZspzkvKKoMikcLvlHz/+8DeANHGj7oBu1MhVpSlwewH4WtIZoQHK7
         y+6sGbz+GejjoGvF7LerTULwUV9ajEcn0PdRxOvrU5P9OpRWx6x+yQgypmgu3JILzsEV
         O2CnN96Pn3kvB1yhlqQbPDXeC+8/X+5lEBHwKeRzaVxo+n45yNV8gJaAjmeQjFd7BMZo
         Bu3den4bnzOD26a/A6tj3UGLmVU8BP5VaigvEztpixwhn8S8mKDuV/hrR4nAFFKvjwZx
         Fm0lknE8Ew6VhBnHZbucdEQCUSmQw1QEAs20Bc6++4NeSGyowz3oGgv3k5YXWgqrlT/h
         cY6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWB0p2dtQkjWvbifllSjdhHI9gSfmflg/a7p38o7LbeiO1lWe8tUjXRbFvXAD0bMnA4uqeW7ZHpSfk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2uDeYOfi+lpaFzP0Gwazzhd+rwaRMhpcAuivaMoyY3mf8s5Hr
	Tzg/DzQ02H01jfY2TfePJNWasRSIeEqK4XjsDuJtce2mgHcM2QWA
X-Google-Smtp-Source: AGHT+IG3+xbG1bGzU9fXWzq5gkcZkhfNYx/bQR3aEaPasmlEwVSOmKYE5BbIW0BlHnhDq7GVCfPmTg==
X-Received: by 2002:a05:6a20:6a21:b0:1db:db2f:f3a5 with SMTP id adf61e73a8af0-1dbdb3025c0mr5103280637.21.1730732225497;
        Mon, 04 Nov 2024 06:57:05 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-720bc2c3996sm7532967b3a.106.2024.11.04.06.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 06:57:05 -0800 (PST)
Date: Mon, 4 Nov 2024 23:57:03 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Johan Hovold <johan@kernel.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, manivannan.sadhasivam@linaro.org,
	vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org
Subject: Re: [PATCH v8 3/5] PCI: qcom: Remove BDF2SID mapping config for
 SC8280X family SoC
Message-ID: <20241104145703.GA3230448@rocinante>
References: <20241101030902.579789-1-quic_qianyu@quicinc.com>
 <20241101030902.579789-4-quic_qianyu@quicinc.com>
 <ZyjZE-U_7YZhScfG@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZyjZE-U_7YZhScfG@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_145709_003163_2343BDC7 
X-CRM114-Status: GOOD (  14.88  )
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

[...]
> Would have been good to say something about why there are no 'iommu-map'
> properties on sc8280xp (e.g. since it uses an SMMUv3) as Bjorn
> suggested.

Happy to update the commit log directly if there is a consensus about how
the final wording should look like.

> > struct, namely ops_1_21_0 which is same as ops_1_9_0 except that it
> > doesn't have config_sid() callback to clean it up.
> > 
> > Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> I see that this patch has been picked up now. The above is already much
> better and I guess this is good enough for now:
> 
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Added.  Thank you!

	Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
