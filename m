Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60367C5AC67
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 18:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ck5fuV3WLLCkWshDJBGfVCGBwq+3unP7dRRwl9Pqs/w=; b=yxGdGvhblT1a9h0NdzJufteLkA
	PrG3R9gy05j8Udeb714ZeobbBpHLZ1u5WcAyjtn+845cBO0OzyaZmjzlN2ISHZNj25oo1vL2tNr7Y
	eMFVkhMP2Q/XGr8JtfExO9woHZrXBVZi2WqQp+6HKFuMEW8NtaHNhWWqpju01fq9/QuBQ2V8APYib
	YWBpgoj5SvlxAPo/O2PjqhQnZDRj8YIS3Nqyy6TGnBJFDtVvYFYaa6gXReLjo9YYkA5uxr7jR59LJ
	djAza/HbM5JuTr6ge3Bi8M7Ser/wLNWKbH4GD0XI8IFCCYRBgi5StJ39tjeC3MzeoYCYATVnEo8sW
	1eb66idA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws2v4-00000006UsK-3xZi;
	Thu, 06 Aug 2026 18:34:18 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws2v2-00000006UrV-1eXj
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 18:34:17 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-47fe89fb333so1566875f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 11:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786041254; x=1786646054; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=guNARlXxkuof9kUROgwrVcSK0CxwVUDL/WVDz9p8+W8=;
        b=Rv77kdopGzpl/5SU3tFL21vmJcrn0Nw+XLPglOEAOy04Aen1dLf3bAuoVdZo7srZZM
         kGuGtkiSXyvh/qp4gXdCXfrOiMpLS1K9J+siYp4DDg826D8fq+pkcFetwV3iVFzUxLRC
         jsjQJbDsaTpjCldsmEniD1fxyPyvd5luub3jpe/Fzcoc7KgTvlt+y2u7fRGSI+Khp4Rh
         UfIWslCKE1XL1AigzM6zyDwz6WXgPw+Ys+I0eAiEIMj/VtvdhSA4jO86gW7B92FQLcHr
         ZX+pVOH529g5weLy1nZI1vLk38IUNLsFNdddn4S/MDHbMxgd99D3gvCuRdtR7W97tdKX
         RrpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786041254; x=1786646054;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=guNARlXxkuof9kUROgwrVcSK0CxwVUDL/WVDz9p8+W8=;
        b=RlNgUnJnyAlSXl46BI/XsSBbtvbg4IF8sJZ6YhToXe8aezod8oOifMGMqBVs5LJzDE
         5sDKjCQI+xyXzXjjxTekhEay8UvCpqbIX4CEwRiWxlnb6eShvoFbPf1y0KtD9SJLh//y
         DIH7efRNTbtSm9X3kj8/iXuFOPuWNqE3r4fFLI01NdrBozA16cccbfrOH5wBfYKjRLln
         v8x/0tUntwBPudh0NENJKvfVdk/Zh89d3vLY2PWt1hGfW4WPVS3IdRSx1OdLDwNmgIN/
         6wzUMk7c/8cgWwG8zfECK7qCz5fjiQQ7cLWJ6Ec+Nv4iPffmPK9Qb+wcj99OuhWHydFu
         WmsQ==
X-Forwarded-Encrypted: i=1; AHgh+Rpj+Tm1BNcfU9ej3NCV3+TwxXTIms3PwIUNHczTkPCcuH+kVhjdn6m1Ho/S0pAKn3sNqmMQH54MyBc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPeMbC8gs5W+L52/Nbh/OFqs1IA3XnlZeaKG6yJ0W5vOI9Mpvs
	F0b0+jLCkEaZt28JQn7fXWZuJ1dGn5RFO1fuJYOmvTpzYeNbv3tyqD2E
X-Gm-Gg: AR+sD13iwNA5d+9uPIr0pV82EWjNW9SLlxwX5T1r7iAMeAP6uDJdNcRz0Na9KEVXNis
	XvRN7oMtAaZrcDfNxrRfo9Xlyz6nmXQUjVqsjwKE2oAyfKAox2YIfeTnaD7HZAP/k+Pnz52M7eu
	sB1M20pjT4uB9MDa+99gV6KMRgI1eB4PKb/uvo5LtpMmzZSWWg1GRA9OduypFPJQBcW4MmtEKt1
	cXK+llm5m2IV5R5RgPEzsmsN93FejtLankZKDYfQqGAOeBy2eva22EOTJK79xCDultZW81BIrRU
	xMIkIqj5rZPQJx73i3NWd0oswtK/RsIdFxN/bQ2fvkWQ8ta8l4szxMt22qEwa29WXb+A2IrK1aj
	SQoG+Tq4DI7l4N+V+sn1qkVgL3dBy8Y7XJtIWwKyoZrrl4sJVVzhHzrwAikdv3U4wY/bFGtpjAq
	VAE/+GhT4KloXl8kEubvqfu5PZbNsb5AExoEwn0UqOlSc38LLp5USUb5r/g9yC2uN1EZLAHRkRw
	KE=
X-Received: by 2002:a05:600c:8b17:b0:498:14d3:562f with SMTP id 5b1f17b1804b1-4994e7cb3efmr202318785e9.15.1786041254074;
        Thu, 06 Aug 2026 11:34:14 -0700 (PDT)
Received: from silicon.doe.home ([197.250.226.68])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4995c7a3d1dsm14165e9.3.2026.08.06.11.34.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 11:34:13 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: sashiko-reviews@lists.linux.dev, Lee Jones <lee@kernel.org>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev,
 olteanv@gmail.com, conor+dt@kernel.org, neil.armstrong@linaro.org,
 linux-phy@lists.infradead.org, robh@kernel.org
Subject: Re: [PATCH v8 04/12] mfd: zx297520v3: Add a clock and reset MFD driver
Date: Thu, 06 Aug 2026 21:33:54 +0300
Message-ID: <MiZ40QjqRtKW-pfFo_ZCYQ@gmail.com>
In-Reply-To: <20260806143103.GN2869284@google.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727184155.2F0A61F000E9@smtp.kernel.org>
 <20260806143103.GN2869284@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_113416_454231_903D7EAC 
X-CRM114-Status: UNSURE (   9.86  )
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
Content-Type: multipart/mixed; boundary="===============3884523529705061780=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============3884523529705061780==
Content-Type: multipart/signed; boundary="nextPartbZ2Luvy9Smq4ikTWC0Dxgg";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartbZ2Luvy9Smq4ikTWC0Dxgg
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: sashiko-reviews@lists.linux.dev, Lee Jones <lee@kernel.org>
Subject:  Re: [PATCH v8 04/12] mfd: zx297520v3: Add a clock and reset MFD driver
Date: Thu, 06 Aug 2026 21:33:54 +0300
Message-ID: <MiZ40QjqRtKW-pfFo_ZCYQ@gmail.com>
In-Reply-To: <20260806143103.GN2869284@google.com>
MIME-Version: 1.0

Hi Lee,

Am Donnerstag, 6. August 2026, 17:31:03 Ostafrikanische Zeit schrieb Lee 
Jones:
> This is correct.  You must not pass one device registration's (MFD) data
> through another (OF).  Use a defined integer instead and match in a
> switch() statement.  There are lots of examples of this.

That's what I did in Version 9 of the patchset here: https://lore.kernel.org/
linux-arm-kernel/20260802-zx29clk-v9-4-d05530d85d28@gmail.com/

Though I did run afoul of the naming rule (my enum has "MFD" in it, which 
kinda has the implementation detail that the driver is an MFD driver baked 
into it), so I'll address that in v10.

Cheers,
Stefan
--nextPartbZ2Luvy9Smq4ikTWC0Dxgg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmp005IbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMywyAAoJED0TvMhUTxoi2E4QAKy9v/glfkTD822DgZKq
qPzYOORWeaxqfAwwJsjuLkZsEMRDinOZMU6NjOgjam5gH6xFW24xOdsdphnttZCS
PuzRThxDv3kudLgQFG9NA5k2dZ3DVolJBolbNDCrNSCby86zJB/PQo2i0rQe5Y5I
KjnY1/NfOu9eZsQjIYdUSGibnKLebz3FdY/KrwrobpWranqBBXTG2PYZPxtOaTsL
NvpHuzg5X9VdwBMStJGMqowPrGawDzbtS4/P3AWfVrLA9hcLsleni9Dopendlpnk
AyEniQSQ7SnicAeFnutaZfD4q/E+RpaFJejoCmeOnOdDcnJ7SbH0mEoHQqjlz5TJ
hJDo5PBAjLZ3DmD/qOiXFN7UhvMHtDxUEm6jA/UKmOuu/yFQ1zVIO6z8Y3mqYwBY
qDNXuOZ8UN8eZvC9kWDZ8phcVejRJt/YdRG9WNEkZO9pGH0kIxjBWvRcYYgTBWhY
2U0CBCr3lyEtcfsbOL56eJwLbHZinU9zj+B0S60UGEK7frgR//3mGufSaT/szW9H
e1aZAdEiLN677Bmm1DkW+NE16K+QcB6/U1pLyoj+HHhXdOvigOLTZk5wLHBIMBqA
GmEvS+6BcwK/7xy3hGobS4ZMCUbjgyUi8QJaUaTi5k0P6NtQzaxyzmDalcrKWIIq
sCzkCfPHIvDsbbnLIO8Xd2SP
=1FP0
-----END PGP SIGNATURE-----

--nextPartbZ2Luvy9Smq4ikTWC0Dxgg--





--===============3884523529705061780==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3884523529705061780==--




