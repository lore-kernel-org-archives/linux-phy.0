Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0D54C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 07:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZ4l5wl0EP+HjckYu6CQDw9lnjiOdMBvvpXPnC/4nxo=; b=nuVALU/3TRCnbQ
	2qElpE+FrgTiN1miw3/PGZpjEAN+eSjtBs04VFwjT12hHChjxEhf4EkDmFEEW2O938wHaB4uwCSKd
	v0g0vZ8QquJQKcSFqANVMEDRs+8cwjxbyirh95kzGJyi8m5aMrzC3ERVY4Q5iN8kB2Q8HuZmaJ7ad
	1Z4KUaj6T8miC8pbpnVJOOlpFkwun1VI20CKk7O//PqJWiG+1MtnKmmK9zuNnhei64LRT+fo0liWG
	WPUFHZnQ0dbye/97EsVUXPXnKs0Ep8/UQrsY+AfZ4YcQyr/QLuL5Akmq5gvfMANFYFisByqpoXiA/
	4Uqb7yqlY+vOEWk/iUuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8crF-00FUus-Aa; Tue, 05 Jul 2022 07:20:29 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cr2-00FUYy-KH
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 07:20:19 +0000
Received: by mail-wr1-x42e.google.com with SMTP id a5so1489052wrx.12
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 00:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=WOCsSx7lXxV2zIAe6a5ICZiPw9+Fban/swGG8Q3QNlo=;
        b=eAZgWcaQ3Ym+dDujbSrzG9GD8fhXJPblJIPHUgdlDVU5gt1MOyltWjoBDsZLz0lmhr
         C9LvfK7ud2vLUv8G+uJUGAOq+/1nLQPCQAcHdfam0Sdn3oGjfJzYbtvh/sgYITI+7N5W
         zh79llYUWLoEye5pvlacy0vqfGVgVYfTv/DLQCuE8q96hJk5778exqRRirsZA7KTZfav
         4E0xMbceM/c4vUw+/tPyU2LUaojDuOLHMW1S9q/XomuVpPZzm5jnuNRZHvjQR2aifVXN
         JTy3OrBj6wSyfE4/LhZasYeKrYVgH23heAWwUDX36X6zBuoYRpkW0afQSWrheHsMaB3a
         9D+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=WOCsSx7lXxV2zIAe6a5ICZiPw9+Fban/swGG8Q3QNlo=;
        b=h85/BhokY+iNhSmX02RdKVER/1FElYpcBdhVoVWo5X1zzp4pvSWFNfh2PFPX0bNjLb
         f0bhiIuy7DcgErsQ2sgJpwchdD0OBaS5HtzIuvskcqwuFPphEQdrO/MK9TTDKzNCQ4TQ
         0G8SiTJWavS6LMBENzPTz9W/hVL8TQhyLmA72MWppJjvoppbKSyn8q1RWFtt2cY79O9Z
         E2DY9ROkp3TnfKS0BGBncD/JvceKVjeUZasPlp8TMFFU7kyEzCSOUkfF+LFVqaTTjR39
         BgRN9xPa+jWPM9aVNrjKtb5ggclJnhIxFbQUaaSf54CJjK+OBQq1gfcu7RQ80wPlEAcp
         f/8w==
X-Gm-Message-State: AJIora/81hqNB+XzmPNbtnJWBxcZrDRaRVwWwasK/H2bicGvjnD3gioS
	q2p/JQcPUW1bJisBNmvT7XzLnw==
X-Google-Smtp-Source: AGRyM1v0iE9uSUwOdct/LvoIWesjgrfOMAhlaLrsxS5mOVCu8GaB2/jMPXa+Znr80FYF3PS3amNKnQ==
X-Received: by 2002:a05:6000:1f81:b0:21b:a1b5:776 with SMTP id bw1-20020a0560001f8100b0021ba1b50776mr29171942wrb.201.1657005612799;
        Tue, 05 Jul 2022 00:20:12 -0700 (PDT)
Received: from ?IPV6:2001:861:44c0:66c0:3c4f:78be:dc90:14f9? ([2001:861:44c0:66c0:3c4f:78be:dc90:14f9])
        by smtp.gmail.com with ESMTPSA id b4-20020a5d6344000000b0021d68a504cbsm5847353wrw.94.2022.07.05.00.20.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 00:20:12 -0700 (PDT)
Message-ID: <58efe130-921d-3794-6399-eaf534002069@baylibre.com>
Date: Tue, 5 Jul 2022 09:20:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 2/2] phy: amlogic: Add G12A Analog MIPI D-PHY driver
Content-Language: en-US
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: kishon@ti.com, vkoul@kernel.org, linux-phy@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220616133811.1674777-1-narmstrong@baylibre.com>
 <20220616133811.1674777-3-narmstrong@baylibre.com>
 <CAFBinCCcx_pG7rsMMGsoOOZC6E0-+qiWY3HPQTizMsDWm9wBnw@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <CAFBinCCcx_pG7rsMMGsoOOZC6E0-+qiWY3HPQTizMsDWm9wBnw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_002016_781993_8A9954FD 
X-CRM114-Status: GOOD (  23.79  )
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

On 27/06/2022 00:21, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Thu, Jun 16, 2022 at 3:39 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> The Amlogic G12A SoCs embeds an Analog MIPI D-PHY used to communicate with DSI
>> panels.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>   drivers/phy/amlogic/Kconfig                   |  12 ++
>>   drivers/phy/amlogic/Makefile                  |   1 +
>>   .../amlogic/phy-meson-g12a-mipi-dphy-analog.c | 177 ++++++++++++++++++
>>   3 files changed, 190 insertions(+)
>>   create mode 100644 drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c
>>
>> diff --git a/drivers/phy/amlogic/Kconfig b/drivers/phy/amlogic/Kconfig
>> index 486ca23aba32..e4d1170efd54 100644
>> --- a/drivers/phy/amlogic/Kconfig
>> +++ b/drivers/phy/amlogic/Kconfig
>> @@ -59,6 +59,18 @@ config PHY_MESON_G12A_USB3_PCIE
>>            in Meson G12A SoCs.
>>            If unsure, say N.
>>
>> +config PHY_MESON_G12A_MIPI_DPHY_ANALOG
>> +       tristate "Meson G12A MIPI Analog DPHY driver"
>> +       default ARCH_MESON
>> +       depends on OF && (ARCH_MESON || COMPILE_TEST)
>> +       select GENERIC_PHY
>> +       select REGMAP_MMIO
> I think this should be "select MFD_SYSCON" as we're not using
> REGMAP_MMIO directly
> 
> [...]
>> +       /* Get the hhi system controller node */
>> +       map = syscon_node_to_regmap(of_get_parent(dev->of_node));
> I just reviewed a patch that adds of_node_put() for the node returned
> by of_get_parent() (after (syscon_node_to_regmap() has been used).
> I think we need the same here
> 
>> +       if (IS_ERR(map)) {
>> +               dev_err(dev,
>> +                       "failed to get HHI regmap\n");
>> +               return PTR_ERR(map);
> to simplify we can use:
>      return dev_err_probe(dev, PTR_ERR(map), "failed to get HHI regmap\n");
> doesn't make much difference for this one though, but...
> 
> [...]
>> +       priv->phy = devm_phy_create(dev, np, &phy_g12a_mipi_dphy_analog_ops);
>> +       if (IS_ERR(priv->phy)) {
>> +               ret = PTR_ERR(priv->phy);
>> +               if (ret != -EPROBE_DEFER)
>> +                       dev_err(dev, "failed to create PHY\n");
>> +               return ret;
> here dev_err_probe() would simplify the code a lot
> 
> [...]
>> +static const struct of_device_id phy_g12a_mipi_dphy_analog_of_match[] = {
>> +       {
>> +               .compatible = "amlogic,g12a-mipi-dphy-analog",
>> +       },
>> +       { /* sentinel */ },
> super nit-pick: no comma here
> 
> 
> Best regards,
> Martin

Thanks,
will fix all that.

Neil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
