Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E083C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 18 Apr 2022 15:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuer5d8k6hOEMFJ189S7XWfoqpQVRsam5rfKpUfAAWE=; b=aGWw9V/69XLVJx
	6gC9NIQBZkjc695iMJykO49ior9FpIZWMJBDK5utwqpgYK4klDQC9ekQH4MqmWSZzlQ1atv7d+XYL
	ixbbiUXThfhePr/ZrDEC0thCC/WJdv4E9nIdYXMwwSXOK1yp1fPoDc7s3jrufNsDSVB2hAM9Do22J
	HG319bdgjM9Jtn6xy/kS+e9lrQL3Navtc94BikwbpoZ4mkuqhQCoEHyV6KrLKEEj1W9k72FaLoC7G
	2ihU2WnBM+qaQAPtEYPSy/Uu2Qx9uyb4+fgN+FbSorQJYp3hh5dMcoGBE00ua8qf5ahgCinMPZBJX
	vPp7eQaJj8k9grNRlkbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngTlV-00HZTz-Mz; Mon, 18 Apr 2022 15:58:13 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngTlI-00HZOB-7g
 for linux-phy@lists.infradead.org; Mon, 18 Apr 2022 15:58:01 +0000
Received: by mail-ej1-x630.google.com with SMTP id r13so27612437ejd.5
 for <linux-phy@lists.infradead.org>; Mon, 18 Apr 2022 08:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=JSWOMZN2s2Uc0MEkuAEzkTwIlDrpbxDUKksft1URO94=;
 b=YaonER1hHD5j2WB24Y1TDR5agDK/8GipcH6XQtLpJvLQUYyNs/yzLom/3nWNxnUo6q
 YqoyLmh7HQhRyrMnXAi48T0lw0hyJ92orPa7RZ+4tKjzhdsxzZLw7tbWAUyiNRmIRdCk
 Kw6xbsaLrC1/cYPgAYj2xML93L6Pgg4nis5VkTFvSbh72lVU9wNKBK1ew1k6WfvBdIm3
 vzy0138x4ewlUmiH8I+HFmylHN0q/nshWvsx6vVHZ9ahWWj/8jsZ5ye36orkaELgOqDL
 gAw7BGV6QVkY9ZszGIFam5A1qUQ0fBKv15tMF+8zuIMV1a6DjZcdd8Xl2j78WE+qtpAU
 BSAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=JSWOMZN2s2Uc0MEkuAEzkTwIlDrpbxDUKksft1URO94=;
 b=Xivd2PG6gexCofJDs4ljm/0+tK6/xaHj2KsQ8SWUvLdXwSuX8LKYUMFihQmp9GVFwF
 MSfyWp2Q+vpVHnwK4m8q5U/2Y3Klp2NQ4sSu2tVhp/YjWgwPeZzbNamKIguXhj06zCf1
 tf9m+ae2w0NaMmVdgwCjtkszqlz6tZGtnGcmjaTNq75ZMRpP9SdT3ymlsC6En311t2Sp
 58vGUtIKUz4S9/CR9N83P+9M4hhPytwKk9sUJ/vgpfpjQaOZlLrhnx13U8Ywnn3u1GdU
 CL+Iqf0Uqfjk6PNwH+wDfIc4dyYLn+XTSPNJE9vGu9xcnAx2E1O+OZY0N4HBoSEy79oP
 nprg==
X-Gm-Message-State: AOAM533TWWS0QJzvSmzxd4SPXYkzMdgvQNN1CDVZZXY4GnpdLuPcQ1GR
 S/j4l5DU7ozeCHOKgGjHuvzD4Q==
X-Google-Smtp-Source: ABdhPJzbfk8QTJK5jVB6BLByUTxvMVPAib1GsPEBJahAxLMAbDnMR0ih2p6z1HqOoX7v85bcyO5p2Q==
X-Received: by 2002:a17:907:1b06:b0:6e7:f58a:9b91 with SMTP id
 mp6-20020a1709071b0600b006e7f58a9b91mr10073346ejc.291.1650297477805; 
 Mon, 18 Apr 2022 08:57:57 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 gq5-20020a170906e24500b006e87644f2f7sm4661020ejb.38.2022.04.18.08.57.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Apr 2022 08:57:57 -0700 (PDT)
Message-ID: <195bc220-05c1-d216-6596-0a54c177c5a6@linaro.org>
Date: Mon, 18 Apr 2022 17:57:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC/RFT 6/6] arm64: dts: rockchip: Add PCIe v3 nodes to
 BPI-R2-Pro
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <20220416135458.104048-1-linux@fw-web.de>
 <20220416135458.104048-7-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220416135458.104048-7-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_085800_356594_9DBD05B5 
X-CRM114-Status: UNSURE (   6.72  )
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

On 16/04/2022 15:54, Frank Wunderlich wrote:

(...)

> +	pcie30_avdd1v8: pcie30-avdd1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "pcie30_avdd1v8";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	/* pi6c pcie clock generator feeds both ports */
> +	vcc3v3_pi6c_05: vcc3v3_pi6c_05-regulator {

No underscores in node names. Same in other places.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
