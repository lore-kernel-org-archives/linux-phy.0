Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFE73C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 15 Dec 2022 01:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QrHpOybczlcKT3XS9V6HJzo7jM6yB72WPa5QdyjaIPI=; b=mpcBm8AvKGkrYc
	cOyCksrn3xt9viOWSjFnOYaz8Ttgctvr+A4LRlR8AvlCK19fOv5CJvh2JT9xzLFTbqFQRD5ODhAI1
	ljAIqs8orPb1kY+QgqW3Zhe58c33Vomr/Ju70VKg8DFc6QOIUeG+7/ru07pieVgi3ZqSOZK9ws0e6
	KpKk12CDOBbjO0oQ6d4ek9mVUptH2wZdjq6wwfPmrbK/gn6cEwR77FwH5GiC97fnnGwD8UV/UIBBs
	OTq3RA9NGuCtLXnBSgskJ35b1YtbViaWsieUCy+KsHVY99MsuNZ3AS5lFyV7Eygi/G+Jb66Y3kwrL
	mdHuF2dpv1LOlUcsyNrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5dPe-005YKZ-2y; Thu, 15 Dec 2022 01:51:54 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5dPb-005YIV-Bi
	for linux-phy@lists.infradead.org; Thu, 15 Dec 2022 01:51:53 +0000
Received: by mail-wm1-x32a.google.com with SMTP id k22-20020a05600c1c9600b003d1ee3a6289so785598wms.2
        for <linux-phy@lists.infradead.org>; Wed, 14 Dec 2022 17:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gbi9GcVTR8H1eERdxlESG9eGZCWPeMSzsHRp3Ru8N/Y=;
        b=s2T6rUV1NT5tztd5iDeqbcSF59HI8MBxAlzZjMjDZWRh0qQu1DzSAeLz+MrvOONcli
         aQRBFfYLT5s2oPTM3BY+lKBQPtT+zAMqvjKKwFyoIz+Dt9X1FV4j0THowlXAkXUDw20i
         ThaRDX69udI+7ntFGCR0+iMmFxnjcXfbJ03cu2puYTZI7yJxfdsxVI4NE7WxzX6jC/c/
         ZqnTelH1rgLEtyoHZiuAzHXheYG31w4o+8lIIfbqUyovGPe0Cqi1qK6nQDdSYIjFhmEp
         KyOtLPRj4Mdi5vJ3OYkJ9SHfYFyEk9P7FB3nUqqKd3EIfxSdqDokGyWqLVZy3bHz/lvH
         evaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gbi9GcVTR8H1eERdxlESG9eGZCWPeMSzsHRp3Ru8N/Y=;
        b=UcjpRJxMQTww0Vu4g3dzPPWwjNdcDS6pbMHCpmlTUT2F8x11Fh/tKqRiaNeHPHfC37
         1bBYsspYQ4DDBGE+YMtqc6aor85E+YmUUrrIx0rrRsF7GA1g+NjRybIi3PxXGe03LXIO
         FV5mmNejbQm6Uh2YfSXZzze9ZHJbn6pZwuadzsktCqcPi8zIEmmDV/LGGMwVHngoNyvy
         ZOnRW7M1ZIvrId7S7+aexfFqMPRorClYoT9YhUEhMG3RgmqaD8uUESgztik3gKrHIBzQ
         Uv0TneP1bx5UoIoOvHYjqLdxvgwXm6CJp6WxKGgGBj15T2RiDGTKhJa5OddHt3/jJECz
         zpXw==
X-Gm-Message-State: ANoB5pnhvyx488KmNAgK6xXED9rCkHjqAqcW10NJQagXHpBwHZnedwv9
	sPR/OxZAxB47qRm2ja5C3hobiAbgt9ph5zUS
X-Google-Smtp-Source: AA0mqf6MoXMgp7n/Tp7ypFp6MziLZuNaWno27mQuQRWPuhajhiYlDmCMsEGE3acTymqr5gE7XArthg==
X-Received: by 2002:a05:600c:3511:b0:3cf:7b8b:6521 with SMTP id h17-20020a05600c351100b003cf7b8b6521mr21107643wmq.32.1671069107594;
        Wed, 14 Dec 2022 17:51:47 -0800 (PST)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id j41-20020a05600c1c2900b003b4ff30e566sm13776425wms.3.2022.12.14.17.51.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 17:51:47 -0800 (PST)
Message-ID: <c3934708-8554-7b70-9a1d-68734df35247@linaro.org>
Date: Thu, 15 Dec 2022 01:51:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] Revert "phy: qualcomm: usb28nm: Add MDM9607 init
 sequence"
Content-Language: en-US
To: Marijn Suijten <marijn.suijten@somainline.org>,
 phone-devel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Martin Botka <martin.botka@somainline.org>,
 Jami Kettunen <jami.kettunen@somainline.org>,
 Michael Srba <Michael.Srba@seznam.cz>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20221214223733.648167-1-marijn.suijten@somainline.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20221214223733.648167-1-marijn.suijten@somainline.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_175151_454270_964F8BD5 
X-CRM114-Status: GOOD (  19.00  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 14/12/2022 22:37, Marijn Suijten wrote:
> This reverts commit 557a28811c7e0286d3816842032db5eb7bb5f156.
> 
> This commit introduced an init sequence from downstream DT [1] in the
> driver.  As mentioned by the comment above the HSPHY_INIT_CFG macro for
> this sequence:
> 
>      /*
>       * The macro is used to define an initialization sequence.  Each tuple
>       * is meant to program 'value' into phy register at 'offset' with 'delay'
>       * in us followed.
>       */
> 
> Instead of corresponding to offsets into the phy register, the sequence
> read by the downstream driver [2] is passed into ulpi_write [3] which
> crafts the address-value pair into a new value and writes it into the
> same register at USB_ULPI_VIEWPORT [4].  In other words, this init
> sequence is programmed into the hardware in a totally different way than
> downstream and is unlikely to achieve the desired result, if the hsphy
> is working at all.
> 
> An alternative method needs to be found to write these init values at
> the desired location.  Fortunately mdm9607 did not land upstream yet [5]
> and should have its compatible revised to use the generic one, instead
> of a compatible that writes wrong data to the wrong registers.
> 
> [1]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/mdm9607.dtsi#585
> [2]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#4183
> [3]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#468
> [4]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#418
> [5]: https://lore.kernel.org/linux-arm-msm/20210805222812.40731-1-konrad.dybcio@somainline.org/
> 
> Reported-by: Michael Srba <Michael.Srba@seznam.cz>
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>

Hmm.

I got a bit concerned qcs405 was broken too, which would be worrying 
since I remember testing this code, though not specifically turning off 
the PHY init, then again, there's a near zero chance the USB PHY would 
work after reset without the specified init seq.

The original upstreamed code for qcs404/405

https://android.googlesource.com/kernel/msm/+/refs/heads/android-msm-coral-4.14-android10/arch/arm64/boot/dts/qcom/qcs405-usb.dtsi

https://android.googlesource.com/kernel/msm/+/refs/heads/android-msm-coral-4.14-android10/drivers/usb/phy/phy-qcom-snps-28nm-hs.c

Does a relative write to an offset of the PHY CSR

CSR base is 0x7a000
https://android.googlesource.com/kernel/msm/+/refs/heads/android-msm-coral-4.14-android10/arch/arm64/boot/dts/qcom/qcs405-usb.dtsi#74

https://android.googlesource.com/kernel/msm/+/refs/heads/android-msm-coral-4.14-android10/drivers/usb/phy/phy-qcom-snps-28nm-hs.c#285

which will result in 0x7a000 + 0xc0 = 0x01, etc

which for us upstream then is

https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/qcom/qcs404.dtsi#L336

and

https://github.com/torvalds/linux/blob/master/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c#L388

Writing 0x7a000 + 0xc0 = 0x01, etc - a writel() in this case

so that bit is fine.

mdm9607

https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/mdm9607.dtsi#569 
- compat string is

CSR is @ 0x6c000

https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#664

downstream PHY init seq

https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/mdm9607.dtsi#585

and downstream driver PHY init write

https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#664

Which does

writel_relaxed(ULPI_RUN | ULPI_WRITE |
	       ULPI_ADDR(reg) | ULPI_DATA(val),
	       USB_ULPI_VIEWPORT);

Yep, you're right, we can't do a simple writeb(csr + reg, val); for 
mdm9607 but, also the qcs404 => compat = "qcom,usb-hs-28nm-femtophy" is 
doing the right thing.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
