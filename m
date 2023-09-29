Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BAD1E71D2D
	for <linux-phy@archiver.kernel.org>; Fri, 29 Sep 2023 13:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoiG5uW//sxyXvNuRVTOBXRwpkDiqGwIQOmMVrIaU6E=; b=z5OOxRKR0EB3hy
	8cZSI8CxaX/WBzIzdB3bqH5RvkpGUcm6/bcreWTqKs/05Kr0Bao1PZVnF+pE9QUwx/V92eo1HEwGw
	vVAkga8slTUuxbcqYg5WjAj528cxMIXlbKDj+wtnSAsmUE6BaEHrAO57PKWXgl/247tXtiQluGa7B
	AEeZNnopTyrLfFYx2a+ciUuTCUmHcULUYpJqIxNgd3y+eO76U2XtE2KQ3SK1hOaGeIEfMmO7Jv4GE
	Fy+GbPojcOLxp9oH4Ve7gI66cGs2YdbOVh4dT3NooCK4869HQTpcUFTcYi7KWB2+YMuKYR2a9R0Cf
	9hgB73XYFS3PxGOA1/IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmDKN-007wYi-2e;
	Fri, 29 Sep 2023 13:14:43 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmDKL-007wXx-10
	for linux-phy@lists.infradead.org;
	Fri, 29 Sep 2023 13:14:42 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-98377c5d53eso1813796866b.0
        for <linux-phy@lists.infradead.org>; Fri, 29 Sep 2023 06:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695993280; x=1696598080; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6hm8M8P0E044zsXKxzjnzQHb9jlx7F15tmg44YiTQE4=;
        b=Jyt7nAlhsPIX8r8WQsE6iw2TAGBi3pwDE+h4P08nztUUZCAUrllDz+HCPL3K0yHzkZ
         ci9gxcIPUaEjZ/4b3IT59U6sdl/O72migERXo3RB+Xkw0CSyHs9dtroAf1erOX+zrRmR
         BYDLR1rdg8QPooU1ufSx82RB60d3w3SIcDcFzWJ88NbD6qX/zlJePdJzdQixl8vgC+zy
         KESXFG8Tn2ttjZoLOvHAjESL/po+Zpu+hr4Zm/LPXBfLrMsYJuQarVWexrgqwV73pFAS
         EPURAOac5Zx7jqeEaMMpBubwsPvisIo5UinmZmLAQkEg0EBuCFla5/G6BwGg2zzbiq0O
         i04w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695993280; x=1696598080;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6hm8M8P0E044zsXKxzjnzQHb9jlx7F15tmg44YiTQE4=;
        b=OSw2a7G9qZLzeDnRRFocU1sztoP3EqsgjMbUKJu0jW5G8AbC26w3o6CO+UBy2/IElO
         FEXnzGhFMi2UU2WEzoH89Ge1olR/KQf5iiASTyDvO9FUWDIFEeX0xU3OD1Bb4mnRf7Gl
         EAvO7MwvodekSZt9jWzp7Y1Weu85Pnk9FFTZHGAycPrbSkZ8pzZnTx/ZPPM26eWLVb1Z
         rPG1tiijtlPWe/fZcNH1TUzs+u2w7uq6XAe2ucwIYuQ2iR3HrPX7yfr4qOi2TwukCmIn
         QOcEXq3P93vVQQPRGnOngkd/RChcULPnwEE/PcZjjeRJU4GBQJkDx4GWJt9Ia7eXPvsf
         /78Q==
X-Gm-Message-State: AOJu0Yz/UxSH9uLFP3YzFammDVvGYERdMEo7nYNvu/s00DBgRuNoc2wO
	6R/m4Msq1mucN+AgjH4zIY6miw==
X-Google-Smtp-Source: AGHT+IFaIr967H1qvXJ1+Ob/sEixHAE4zeLZGWkN/0aZsxP/QyOHMrbD2cXfX4HadkUjPIshupFt/w==
X-Received: by 2002:a17:906:101a:b0:9b2:babb:5fe9 with SMTP id 26-20020a170906101a00b009b2babb5fe9mr3831539ejm.23.1695993279692;
        Fri, 29 Sep 2023 06:14:39 -0700 (PDT)
Received: from [192.168.33.189] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id k22-20020a170906129600b009aa292a2df2sm12352258ejb.217.2023.09.29.06.14.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 06:14:39 -0700 (PDT)
Message-ID: <618992fe-4c76-42ef-af47-ee66f74c5bb6@linaro.org>
Date: Fri, 29 Sep 2023 15:14:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] arm64: dts: qcom: ipq5332: Add Super-Speed UNIPHY in
 USB node
Content-Language: en-US
To: Praveenkumar I <quic_ipkumar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, geert+renesas@glider.be, arnd@arndb.de,
 neil.armstrong@linaro.org, nfraprado@collabora.com, u-kumar1@ti.com,
 peng.fan@nxp.com, quic_wcheng@quicinc.com, quic_varada@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: quic_kathirav@quicinc.com, quic_nsekar@quicinc.com,
 quic_srichara@quicinc.com
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-7-quic_ipkumar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230929084209.3033093-7-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_061441_401662_5D7CDF07 
X-CRM114-Status: UNSURE (   6.12  )
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

On 29.09.2023 10:42, Praveenkumar I wrote:
> Add UNIPHY node in USB to support Super-speed. As the SS PHY has
> pipe clock, removed "qcom,select-utmi-as-pipe-clk" flag.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
Patches 6 and 7 should be swapped, otherwise you may get no
USB with this commit. Incremental patches must not break
functionality, unless it is truly inevitable.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
