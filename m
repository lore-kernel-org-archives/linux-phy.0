Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1B02C43219
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 12:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WG1SKOnWyQQ8jeUleP09cNqxED6vidaxM5GlqAR+Wvo=; b=p2pqgbPpihA698
	WGFdlRwV2TvZt/Qyhn/jYBOQP26nf5MlTYuiCdr/07SIUAtotbJLqtbfngp7ZzpxpuNeUGO5uRgZ2
	Lh0B92sLmmWxHxtANILZD6hxlIvRTYlhC+skyUzaFehfpTZRNs1JZRpVNFmnt/2yQ97dbyPyERJPy
	7JZ2y4pRUMGq52lzSF8NhsN7Ev2tc59Z0i3YGaqt+Jf7DKPcZLBHb4yRNvbpCbvHYHHADOWjfwZTp
	LB8zEULTvgZ0imiY0hXb1bvrvwJSZ6Y6dAEwp4C4901rsorsTAZKwDEhSghv4ClDKIJRkqbc9BWI3
	dLAal0/08Dy8IWKfGYsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox5bH-00DH4R-52; Mon, 21 Nov 2022 12:08:35 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox5bF-00DGyQ-5f
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 12:08:34 +0000
Received: by mail-lj1-x22a.google.com with SMTP id h12so14235231ljg.9
        for <linux-phy@lists.infradead.org>; Mon, 21 Nov 2022 04:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mp/Wf7Ihyn7IRm224a6elGwJlmdiu5nLebRBT6EL2QY=;
        b=YtArTj74J8IWD8ozryoyr8jgBtCtYTisL83R4ZTuWeI4lKKYPZWjpNHRgmVCqmHEU8
         p/S6DnN82lh6h9zMitXTzE6sz7RqV9bREiwkZ/AjGuyseg1VyPDdf6s0vnri41vWzwU+
         6A9shmNbl00ggyoXbkvzTVcgESEmHFSvzWc1c8/j7FdJqvoK+qwNKPa0xUBgObbJT8mI
         YzndDbvMZGWpeuGtPUnptnefQgoJc2iyMwCc49WAjKDtUTdtbK5JgwHX8I8kWVXN16VU
         hCsWQ1NPfKmjjUyVN585BSWARIbiHJBJbuypt7k2RJZDS6TNB7x6z1/SYOasdF7aaogu
         To1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mp/Wf7Ihyn7IRm224a6elGwJlmdiu5nLebRBT6EL2QY=;
        b=T9M5dXmVHHJjNz3w9qFPj+QixhNqBTEKHBghregN8jDkUOxy7gcgeE63INzUuPZrD9
         K6fQ1vbC+jEDxETfHN1URCd3ufuRA2iJjx2bsQCzUr6zRUwllWwQsFHV33hhdCKQehPo
         LlfytYCw0Xgp/OKhbCaI20jjGt/MEtgh0/feiy+aMQdGhC+1ljfM+LRrRqbtjv8r7xSU
         JeItYrSMO+9kuX13hNcKbbnORNrCo6Zgup+6fHW7DHo8a9ymHkeythuBIdC2lE8MCPeM
         23fdPTIsZDgN5sPh5b2p+h72KSBm97UrUTRRwpS5wNutZXAJ+fzcf+G6J8S/bZZQiZ8o
         m2qQ==
X-Gm-Message-State: ANoB5pkfEMizCpAMdDrpqqe7xDhfWV/55R5wzOaMdzVc3Vg+k9agEI7h
	uMmH+294wvVv/tTQiEiICc4Qeg==
X-Google-Smtp-Source: AA0mqf7nzlJ13PlkibFVu8sbGpZadx0YW7VJA9cwKVJLyjBcjoYZRkY5LsNsaHcWs6OROfJdyXkxKw==
X-Received: by 2002:a2e:a911:0:b0:277:44b2:6b9c with SMTP id j17-20020a2ea911000000b0027744b26b9cmr5272068ljq.26.1669032509403;
        Mon, 21 Nov 2022 04:08:29 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id h7-20020a056512220700b0049ae3ed42e8sm1992278lfu.180.2022.11.21.04.08.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:08:28 -0800 (PST)
Message-ID: <dd6acba0-fa3a-1dae-b383-d70cc08dd114@linaro.org>
Date: Mon, 21 Nov 2022 13:08:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 4/6] phy: tesla-pcie: Add PCIe PHY driver support for FSD
Content-Language: en-US
To: Shradha Todi <shradha.t@samsung.com>, bhelgaas@google.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, lpieralisi@kernel.org, kw@linux.com, mani@kernel.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, alim.akhtar@samsung.com,
 ajaykumar.rs@samsung.com, rcsekar@samsung.com, sriranjani.p@samsung.com,
 bharat.uppal@samsung.com, s.prashar@samsung.com, aswani.reddy@samsung.com,
 pankaj.dubey@samsung.com, p.rajanbabu@samsung.com, niyas.ahmed@samsung.com,
 chanho61.park@samsung.com
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20221121105210.68596-1-shradha.t@samsung.com>
 <CGME20221121104736epcas5p36c12ff0b575af77f8cf99811b055b339@epcas5p3.samsung.com>
 <20221121105210.68596-5-shradha.t@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121105210.68596-5-shradha.t@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_040833_247564_B57A5241 
X-CRM114-Status: GOOD (  10.61  )
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

On 21/11/2022 11:52, Shradha Todi wrote:
> This patch adds PHY driver support for PCIe controller
> found in Tesla FSD SoC.
> 
> Signed-off-by: Niyas Ahmed S T <niyas.ahmed@samsung.com>
> Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
> Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> Signed-off-by: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
> ---
>  drivers/phy/samsung/Kconfig          |  10 +
>  drivers/phy/samsung/Makefile         |   1 +
>  drivers/phy/samsung/phy-tesla-pcie.c | 397 +++++++++++++++++++++++++++
>  3 files changed, 408 insertions(+)
>  create mode 100644 drivers/phy/samsung/phy-tesla-pcie.c
> 

Same comment as for PCI. It's the third driver for Samsung Exynos PCIe
PHY and every time you will say "but it is different".

No, work on unified approach not 3 different drivers.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
