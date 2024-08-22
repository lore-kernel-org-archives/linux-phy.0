Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83239C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 07:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7DfmbxHYSAWRtrGx7n8aA/JJ4hDX5cz+H9PG7kG5rk=; b=yWkVLM+4A/4DYA
	M+6nAU1hzIrXiEX224cYOPdqh5P0f6P/iH4NFEQ0RwF8B/ua8ek68hZTz0zj3XHF3OtMUniQGeZkA
	Riqe4oanU/8oDrFwj3Iw96QaK92ORTFB1Luvzs8CH+7lz2OAJ1DwEkMm0SJo14cWnd2zrL8wotiml
	BRCIX6kJR4BcYBPh2/lceLiBLAH/wt3aJS3kTUzhCVXnaG8Eqn9RLGFZ6kRDj7HftbZAxb7/rmTzB
	vmCQ806xVa91+a9NWaxznKU0jmzSpr2JydSBrSVOtf4Fh+MfvntS040BzjUV6SARAyW+mvYovyTqn
	dig/ohELFsqvYauYbziQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh1y1-0000000Blsd-0xw2;
	Thu, 22 Aug 2024 07:10:45 +0000
Received: from mail-wm1-f50.google.com ([209.85.128.50])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh1xy-0000000Blrr-3Wqf
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 07:10:44 +0000
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4281faefea9so2561565e9.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 00:10:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724310641; x=1724915441;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WJLS+VMzjQh/qW23wkGqqs7vCL2z1TRLs+avsxI9g9U=;
        b=d0tO5AYzcXaB7wRLYHoTiN/X/DXPdKbDpfNmGvpWQHzQCbRcRGEzBId2WVRVMh1/wx
         TiNToXXf9cLqv6jd9l2zG5IMEKc11iEE0YbBl9OuX2N79nJpFu8F+FrpG6WNbu+rlSGr
         F4y6EufaXyo4/cMhyUmpilIIgQmprixInkRWPLxR3QI1O41rnSkNDe5yaJPMLC7K4K11
         MESzcn5Su8NpRg6YLGAl+Z9+CmiCZMLFbCtDNeK28N+82jPuucJbB+7yp/8Jv+9097/C
         GRfKvGO+CkB09MLZv1rxJlwxEwro6GLRm5kHL41ef3Uof7faAjDB9XbcoLDRI9455tbk
         cyRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzz0bk+3ZjVrD/zFpcbtbfgR0BaiKazcZ6ISTWY0QWkbaf/L+S1WoWDN2Hh62/d15o01liufmM2Zg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOdrJI/LWT7yXQ1ojt6IvK/r9SvE5FmL+p9XwIQ6URKwu/Vj+n
	cU+ng0cyLnP2KidQY9bByiNIaNG8krurZ+R6zmkN3XxKFeeOlq9f
X-Google-Smtp-Source: AGHT+IGhVPATLSo8mqmfADnE2rN+0EPjvp3o+g8b3YIlLtzolWkMDw+jE12kniXWaVfmPiUENvKPmw==
X-Received: by 2002:a05:600c:a0e:b0:427:ac40:d4b1 with SMTP id 5b1f17b1804b1-42abd244b8bmr27855965e9.27.1724310640800;
        Thu, 22 Aug 2024 00:10:40 -0700 (PDT)
Received: from krzk-bin ([178.197.222.82])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-42abef81a5esm50053995e9.28.2024.08.22.00.10.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 00:10:40 -0700 (PDT)
Date: Thu, 22 Aug 2024 09:10:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ilya Orazov <ilordash02@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aswath Govindraju <a-govindraju@ti.com>, linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/1] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
Message-ID: <txb77x3lkk6gnhzavx5j7ahqg6wjdm2zjpk2fe3z7vopit5kvg@pxom5ang6izt>
References: <20240821215357.20224-1-ilordash02@gmail.com>
 <20240821215357.20224-2-ilordash02@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240821215357.20224-2-ilordash02@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_001042_909496_A0C8831A 
X-CRM114-Status: GOOD (  13.53  )
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

On Thu, Aug 22, 2024 at 12:53:57AM +0300, Ilya Orazov wrote:
> Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> It is pin-compatible with TI TCAN1042 and has a compatible programming
> model, therefore use ti,tcan1042 as fallback compatible.
> 
> Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> ---

Where is the changelog?

Where is the tag you received?

Why sending it again without any of the above?

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation: Please add
Acked-by/Reviewed-by/Tested-by tags when posting new versions, under
or above your Signed-off-by tag. Tag is "received", when provided
in a message replied to you on the mailing list. Tools like b4 can help
here. However, there's no need to repost patches *only* to add the tags.
The upstream maintainer will do that for tags received on the version
they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
