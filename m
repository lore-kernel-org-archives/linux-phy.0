Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7B4BC44536
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 23:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ef1Xil3BBcNkbfsV2oFqpRbC7d7SNqJ3CnZ6nsw1As=; b=FQolX1PZSBIbRi
	Z71/IoE9vwU30glW5WGOVlGUtfR74t8uXd47ckKTuGhIR6C2JqtEzmU+uDMqCIKuumO7OEVLKaTMU
	EkNa7h8JeC223VxzlC2V8kwJykACJ6LDasxkd2LpBcmoyTiGs6K3D+sFTWHFawrds173YTueitSzP
	SC2yMChY5vUxun8vVvk0v4mM1erY0bSRG7d3DhtmEib2GMwWx0AgPs+W+mIZ++zVLSMd5fqED4r0F
	+AbIg8wZVh1SggU1KQSyO/kHqhK2QRcC2Fl0LTQn/k4+oZfMFwgDh1c6SQ/pGtr+iy8Nem+d1rF8U
	0rv9/6YA+oTJDHhRvTiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vihHI-0000000695p-2IUR;
	Wed, 21 Jan 2026 23:06:20 +0000
Received: from mail-ua1-x92b.google.com ([2607:f8b0:4864:20::92b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vihHE-0000000694K-4666
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 23:06:19 +0000
Received: by mail-ua1-x92b.google.com with SMTP id a1e0cc1a2514c-94124140e02so212293241.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 15:06:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769036775; cv=none;
        d=google.com; s=arc-20240605;
        b=XJ3cJICDSDubnasWC9bWsepzdcJXy4MZzU0eou2dUH1Nsm1hQhA2aaLOc5n8yNmIsY
         +wjN5kSxw6/f1K59Mbs1INczd7Rpo7NI//gUDSdGv0oU1C5OJdWy9YDGC1iHG3mb5rxq
         3lQJPNOItsZUTOyVqp+fAb5DwGXBBPUamNPmEm9i+9IUPjjTMajXGehlIk46/8HRZeSW
         wlRRhrD4kv2SLe5DdBnGunB1HLomMnbsPd5CxGB9uwRMg83BD1r/gqAbNhITvdLAl35C
         ccRfmrLCZgcUD4OsE4KwUbp/5nKVL1JH340AE9w52fRqXW5bE48u7pUiyW7lU4y394+K
         xz3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tCZIOzDe3Q3k/SrYrYvkP+nvqTXceKLMx7SE81CvD3A=;
        fh=KgtsGddjgWreK7wqt/tOqeczQvg7yBIah/BdupeD0EA=;
        b=fq5J5C2wMpegzXlgMvm0e70mWr0tCOlmdcilwoCmk3I2/trg6hbJULbtGo4qcgH1Lq
         gJo+8CzWFE/0FuA0ILnU1zrSuVA0Iv+pf/NIWNd0oizc/zSxptIkq1zG/PQUkPIcXKJW
         P+10X3/XJyylZQBa3TkaFM5dS5egLLSYdZsScEZ4AiiiTL70bZYRQUZLJS8zSU62oYY3
         6ryXHdtKZKVRQoF+8+MYyYSowGgc4QXE1AUoZqpaESY/vLGLXAc6u4HF3uWcI0P2WUyO
         ouYBkg3ygU4Phw3uLcNLdJymv9ORKCYY/43KC/SaNS8pimMHbYIwOS+bNCRb/P9giEAQ
         n69w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769036775; x=1769641575; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tCZIOzDe3Q3k/SrYrYvkP+nvqTXceKLMx7SE81CvD3A=;
        b=Dx4S+xCThGmdXjb30QwAxPjEgFVWNJ3wAqTLcnIj9p4Sk6oFpslR+2MtTSo7JvJm8O
         4QnnYl1qJ5TIKc0ertIykyWQjMH/i9GFG/V88E+H7ublPXWYTiQgod4ckIIgSYTrQ2b5
         UZBinSSpy2gl2oNIwDClbrmvEOkHTWoH0qt/PtDLDovhZJe/aaHjbP8y38MuVxHHuQNL
         HVsjxxehJ3DZxXeOVnynxozK0GOOJqprwJ/2LBWXarxlOrbms5Z57nUTmHpkrOQxZsVM
         ZzIqm/109wwtm656K6eZlaLa24FtFB9fTHMxJBNICm8AUmR2TG2sUo21tmQC5EYWmVc2
         B25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769036775; x=1769641575;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tCZIOzDe3Q3k/SrYrYvkP+nvqTXceKLMx7SE81CvD3A=;
        b=g94CrodXdbPlXzcLC/35gB9QpZda5DxyURUOm1Z8qEkJF5w3x54WBy23GHkTXNUcjs
         F5fwcrrpmbq9pElDuPL6k74sB2GmT4Qfttnr3XYXlRxup5+rd8Kgca/anF1tPstHqTGp
         4oIusWZqfZPMpNaGFngxeA+mat++02R216wupD4/dtQpq5z2Ar0Wv4hCH14PuPxKREci
         JoYMHk+rrhWxSPC7hmj3FVCEAELql+J2GE5GMnC3INnanwzDlFAWkKpW87D06maR8w0S
         ELLDukXk1kbDetpdguUyn0/j1vJdd7kWCXAi03tVrfu9c929ohzQ7zXs59yBWFTCx1r1
         W8sw==
X-Forwarded-Encrypted: i=1; AJvYcCU5HjMTMbOJPe3HUQ/DtnSQny5LGOXU9Fp3nSUwtZZ1t9NPns/34B4ezEXDhxlEwBbqEPlnai24yXo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5j1/QN0piV6KsX2X5Kt7ZwSbemfJ/UDn5sQdaBNOrVQe8PGN+
	5CllXB8iKpe+YvSwSa9oi/o6gKJir+vZntnCpX9dbR9rWuSIragwBpoU3eJm7TwQqs7+PO/w21l
	sqsjAfp4Rd0mEh5haOeR57NNeOYj5XBy4S+OowETcAw==
X-Gm-Gg: AZuq6aJhPPlb+GqyIr7HsVhi7HPe9z/2GBxM4fREp2SNuLcPohl2SydyUuSDbhnfR5J
	Dl3JglNRvNNqLoQwdC7nrTKnhlBgTwIW0Soh4ANyaMvefYQ3iIbc0zEzZufC3DTsa7kHR6vdHlx
	hal370IGP0Qj4c8VcT+7Spew3+A7BTnBP6cLXcdCwKx8b3mK/H8FVtObLB00laPg2aIUtlVzAjV
	pLDtFGSy94hRJSvXE0Wd36dY8/Cj7fH5PRn2kI7fkFrqR67i98Abu/+gzY7d8B9PBRq1FZ65Eu5
	BdgxglHJ6pc6NwKCQt/aAnX/tV3MIg==
X-Received: by 2002:a05:6102:5094:b0:5df:c33d:6e3f with SMTP id
 ada2fe7eead31-5f50a859a68mr2453508137.13.1769036775040; Wed, 21 Jan 2026
 15:06:15 -0800 (PST)
MIME-Version: 1.0
References: <20260121-next-v1-1-c18068b091b9@google.com>
In-Reply-To: <20260121-next-v1-1-c18068b091b9@google.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 21 Jan 2026 23:06:02 +0000
X-Gm-Features: AZwV_Qg1KISvM-ClVEpBsc4G9GUZQ6ApbOpoJthKvEVHb234AdgfKajgJQDM_Oo
Message-ID: <CADrjBPqj=j84PHf3HYR8dtxDkAVRC=2tBdTQvZaq4wHY05_M6A@mail.gmail.com>
Subject: Re: [PATCH next] phy: google: fix build dependency for Google Tensor
 USB PHY
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_150617_015403_6DF48C8B 
X-CRM114-Status: GOOD (  17.89  )
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

On Wed, 21 Jan 2026 at 22:21, Roy Luo <royluo@google.com> wrote:
>
> The Google Tensor USB PHY driver uses the Type-C switch framework to
> handle orientation changes. However, the Kconfig did not specify a
> dependency on the TYPEC framework, leading to undefined reference
> errors when building for architectures or configurations where
> CONFIG_TYPEC is disabled or configured as a module.
>
> Add 'depends on TYPEC' to the PHY_GOOGLE_USB entry to ensure all
> required symbols are available during linking.
>
> Fixes: cbce66669c82 ("phy: Add Google Tensor SoC USB PHY driver")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202601210825.ELrpQeED-lkp@intel.com/
> Signed-off-by: Roy Luo <royluo@google.com>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>


>  drivers/phy/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 142e7b0ef2efb9209781800ee47b820a91b115ae..5531ff31d8156cb164c32e3e52d4a57b26a62d8d 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -49,6 +49,7 @@ config GENERIC_PHY_MIPI_DPHY
>
>  config PHY_GOOGLE_USB
>         tristate "Google Tensor SoC USB PHY driver"
> +       depends on TYPEC
>         select GENERIC_PHY
>         help
>           Enable support for the USB PHY on Google Tensor SoCs, starting with
>
> ---
> base-commit: 8bb92fd7a04077925c8330f46a6ab44c80ca59f4
> change-id: 20260121-next-b949189cacf4
>
> Best regards,
> --
> Roy Luo <royluo@google.com>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
