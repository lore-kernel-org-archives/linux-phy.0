Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B32ABC87FCA
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 08:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1L6nUATCinzveD1ika+FTeq+7gDlKQUel0AP1s1TM6M=; b=zQj+RNxidqJtnUh16o0CMXWcKE
	4Yjl/BRMKD8bJPqdniMzDzUCyqRPfnwxVYpnq8BilFxgBOrQn9CGPrp2bM4LTJ8kHaC1rXFroXbWj
	4NH+B3R/1RZ7TMQk3+Ooi8o55KvTuHZINQOddY5SJR2R8FNdqF4IocF8D6OFIw9Bi2MuCCin+1N4M
	VqOxYhdgdQw0UiW2ybOicQjNr8sAnwBe9df42wQfIzVnzwTiA/7RgOy1MK5JrsspXeSngdDOrHcd/
	tRx0NLWL/Wxk8XzqtopU6NJN2P15yN+96fcNbzgr7TO4FHHWi4di5JM1TVbtcPLpbHv7gCpu1b5Fi
	lMUpRAbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvni-0000000HZbR-26yr;
	Thu, 07 Aug 2025 08:16:38 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvng-0000000HZaK-2GCB
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 08:16:37 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-45994a72356so5613045e9.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 01:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754554595; x=1755159395; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:autocrypt:in-reply-to
         :content-language:references:cc:to:reply-to:subject:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0VW7sNoEVN9Oek4Y6iCLkY+7OPvY5tDfJvOxUwPm/i8=;
        b=j1gYq93XZiUzZw2i6xw3hE7KK5OdMZlivofCUtPke96tyuGUY+r+TRuZqYSXfUei5+
         rZFLpWf+Lohuyer/NQoG/KLLZ7id8LwKBa2NbMmeqpR50BT3VZI2AfhNOXj3JmCxLBb5
         4XYsycMsr9xtbrgSTofoV5kcgRN9ScR7sqOTEyGXMTZABpGZhyNV5tP89eyzhsYl7A/R
         SRhmlfSJH2oIAzWxuY4vrUO1dRzADvlaCUY7P2vRfXbLtJLCM3mxMiUpzfdOpVMI8kM9
         XYoE47MG0Y4znOXwCLe5+tpsGOv+8Y/u/qKPP3u+MrP/T29C1N36mnbPLtljduEBERzT
         OYOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754554595; x=1755159395;
        h=content-transfer-encoding:organization:autocrypt:in-reply-to
         :content-language:references:cc:to:reply-to:subject:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0VW7sNoEVN9Oek4Y6iCLkY+7OPvY5tDfJvOxUwPm/i8=;
        b=uaeQ4NPdvSo+AqefWF5wqySJtBTn+ErJKQtjCOw8vq5A5s8lpAP+NdphrfOqQhj4/I
         zJtCJP1mS93pvQfrFCV/YuBGy5AN8KxWroonDz9rZTOzu2r/DrXZppfnkWb0L8yZ+5VG
         hr7xk59kuK7QuFW2PBCFieAeAchborE5e6FVS6qoyhP0N2MBP0MuloFLoSc3j9N8bTmJ
         3HX+wpWOl02Gh2FJkRCfbDFz0XA6iFVByW2joGW+qK2Hd+PN6yr0/6hLo1C54romYSxs
         2WREm57zmLdK+LD1L6v3kpkl3E+Cow4EShJdlXYmdqSOeGjm5Gqa/S21cPHhx87Qksky
         0ZOg==
X-Forwarded-Encrypted: i=1; AJvYcCUNiXkXeI4bqz7ygfkWkcAiMloLKNhaYxl4ouQwCGeYfd62mpbHNeKiCWYQYlV6EBtR1fXIW/65+vg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxxCcqrJpJoDBbRC6Z+jIRDO02tk8DOlIGQeFYBmM34xYUi3xIG
	Zzl+5dz/rCHOc2p/X4tGIBigQsZziIS+9sqmfDir1fdoPHKt/owfzLk54lCSCv0NCAI=
X-Gm-Gg: ASbGncuEsXzz5y3a+QLoYptMKV3wb9H8DXO23WbbqgktirejTybGdNU9xJ2fBp/x74d
	ObMIPveWy9CIUcSXEOoyD9BqzXXe7OIqSLDCiB3UhVLNOEyIa/iTEW4hWHR33VOPMeF8I+XhpNP
	xIwIonohBOdUFA3HkI6AENpdlX+aXuDT6u+K2xQoGqLqDvsZqjksbh1EJrj5NjC0JLn/Cr9+uCE
	31duwyG+7Zl55Ind0/h0y+WVjP91OeDn48Kz+U2HpD/87GAUc2eSgzJgspCgwKqOdw/RvbN3AC4
	KLvx/G5I77cz7qTSc6hOxC4gCq23Ke5Q41J44XAGta2Q6sp/RQYwrPe88vH6U5satiqjzR8g0L/
	LooH9aG+PrUu7ZSGS1ZUFFb98EojhNjsnAjZkzZKrun65emgvRRa5+PqSJmcUcVY6naeAJNxCpZ
	0NeZX2Ylz8qQ==
X-Google-Smtp-Source: AGHT+IHf76mdyLCfSs/m6kb0Yuf0hOwdsPWIFudkvQQwFH25PcMEQes2ysVoYmJDxQgMxeQSTlqZ2Q==
X-Received: by 2002:a05:600c:3f1a:b0:453:6c45:ce14 with SMTP id 5b1f17b1804b1-459ede93ea5mr23251335e9.4.1754554594862;
        Thu, 07 Aug 2025 01:16:34 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5bf9:b40c:d741:ea95? ([2a01:e0a:3d9:2080:5bf9:b40c:d741:ea95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e587e154sm89875075e9.27.2025.08.07.01.16.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Aug 2025 01:16:34 -0700 (PDT)
Message-ID: <7c3d9e84-d14f-4cf0-b376-6fdde6f586f5@linaro.org>
Date: Thu, 7 Aug 2025 10:16:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 0/7] SPMI: Implement sub-devices and migrate drivers
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 sboyd@kernel.org
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org,
 krzysztof.kozlowski@linaro.org, u.kleine-koenig@baylibre.com,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org,
 casey.connolly@linaro.org
References: <20250730112645.542179-1-angelogioacchino.delregno@collabora.com>
Content-Language: en-US, fr
In-Reply-To: <20250730112645.542179-1-angelogioacchino.delregno@collabora.com>
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_011636_586875_0EDAD0C2 
X-CRM114-Status: GOOD (  29.51  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 30/07/2025 13:26, AngeloGioacchino Del Regno wrote:
> Changes in v3:
>   - Fixed importing "SPMI" namespace in spmi-devres.c
>   - Removed all instances of defensive programming, as pointed out by
>     jic23 and Sebastian
>   - Removed explicit casting as pointed out by jic23
>   - Moved ida_free call to spmi_subdev_release() and simplified error
>     handling in spmi_subdevice_alloc_and_add() as pointed out by jic23
> 
> Changes in v2:
>   - Fixed missing `sparent` initialization in phy-qcom-eusb2-repeater
>   - Changed val_bits to 8 in all Qualcomm drivers to ensure
>     compatibility as suggested by Casey
>   - Added struct device pointer in all conversion commits as suggested
>     by Andy
>   - Exported newly introduced functions with a new "SPMI" namespace
>     and imported the same in all converted drivers as suggested by Andy
>   - Added missing error checking for dev_set_name() call in spmi.c
>     as suggested by Andy
>   - Added comma to last entry of regmap_config as suggested by Andy
> 
> While adding support for newer MediaTek platforms, featuring complex
> SPMI PMICs, I've seen that those SPMI-connected chips are internally
> divided in various IP blocks, reachable in specific contiguous address
> ranges... more or less like a MMIO, but over a slow SPMI bus instead.
> 
> I recalled that Qualcomm had something similar... and upon checking a
> couple of devicetrees, yeah - indeed it's the same over there.
> 
> What I've seen then is a common pattern of reading the "reg" property
> from devicetree in a struct member and then either
>   A. Wrapping regmap_{read/write/etc}() calls in a function that adds
>      the register base with "base + ..register", like it's done with
>      writel()/readl() calls; or
>   B. Doing the same as A. but without wrapper functions.
> 
> Even though that works just fine, in my opinion it's wrong.
> 
> The regmap API is way more complex than MMIO-only readl()/writel()
> functions for multiple reasons (including supporting multiple busses
> like SPMI, of course) - but everyone seemed to forget that regmap
> can manage register base offsets transparently and automatically in
> its API functions by simply adding a `reg_base` to the regmap_config
> structure, which is used for initializing a `struct regmap`.
> 
> So, here we go: this series implements the software concept of an SPMI
> Sub-Device (which, well, also reflects how Qualcomm and MediaTek's
> actual hardware is laid out anyway).
> 
>                 SPMI Controller
>                       |                ______
>                       |               /       Sub-Device 1
>                       V              /
>                SPMI Device (PMIC) ----------- Sub-Device 2
>                                      \
>                                       \______ Sub-Device 3
> 
> As per this implementation, an SPMI Sub-Device can be allocated/created
> and added in any driver that implements a... well.. subdevice (!) with
> an SPMI "main" device as its parent: this allows to create and finally
> to correctly configure a regmap that is specific to the sub-device,
> operating on its specific address range and reading, and writing, to
> its registers with the regmap API taking care of adding the base address
> of a sub-device's registers as per regmap API design.
> 
> All of the SPMI Sub-Devices are therefore added as children of the SPMI
> Device (usually a PMIC), as communication depends on the PMIC's SPMI bus
> to be available (and the PMIC to be up and running, of course).
> 
> Summarizing the dependency chain (which is obvious to whoever knows what
> is going on with Qualcomm and/or MediaTek SPMI PMICs):
>      "SPMI Sub-Device x...N" are children "SPMI Device"
>      "SPMI Device" is a child of "SPMI Controller"
> 
> (that was just another way to say the same thing as the graph above anyway).
> 
> Along with the new SPMI Sub-Device registration functions, I have also
> performed a conversion of some Qualcomm SPMI drivers and only where the
> actual conversion was trivial.
> 
> I haven't included any conversion of more complex Qualcomm SPMI drivers
> because I don't have the required bandwidth to do so (and besides, I think,
> but haven't exactly verified, that some of those require SoCs that I don't
> have for testing anyway).
> 
> AngeloGioacchino Del Regno (7):
>    spmi: Implement spmi_subdevice_alloc_and_add() and devm variant
>    nvmem: qcom-spmi-sdam: Migrate to devm_spmi_subdevice_alloc_and_add()
>    power: reset: qcom-pon: Migrate to devm_spmi_subdevice_alloc_and_add()
>    phy: qualcomm: eusb2-repeater: Migrate to
>      devm_spmi_subdevice_alloc_and_add()
>    misc: qcom-coincell: Migrate to devm_spmi_subdevice_alloc_and_add()
>    iio: adc: qcom-spmi-iadc: Migrate to
>      devm_spmi_subdevice_alloc_and_add()
>    iio: adc: qcom-spmi-iadc: Remove regmap R/W wrapper functions
> 
>   drivers/iio/adc/qcom-spmi-iadc.c              | 109 ++++++++----------
>   drivers/misc/qcom-coincell.c                  |  38 ++++--
>   drivers/nvmem/qcom-spmi-sdam.c                |  37 ++++--
>   .../phy/qualcomm/phy-qcom-eusb2-repeater.c    |  51 +++++---
>   drivers/power/reset/qcom-pon.c                |  34 ++++--
>   drivers/spmi/spmi-devres.c                    |  24 ++++
>   drivers/spmi/spmi.c                           |  79 +++++++++++++
>   include/linux/spmi.h                          |  16 +++
>   8 files changed, 278 insertions(+), 110 deletions(-)
> 

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD

Tested patch 1, 2, 3 & 4, I can see the :
/sys/kernel/debug/regmap/0-00.0.auto
/sys/kernel/debug/regmap/0-00.1.auto
/sys/kernel/debug/regmap/0-07.2.auto

And it still functional.

Neil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
