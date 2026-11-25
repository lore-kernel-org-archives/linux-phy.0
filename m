Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2787606A336
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 15:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=abPfisoE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=BkpkKwkO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CcmrgVN1n4vqPFIRlbKK1Vv54S1h+Z+PK3WDKvR29YU=; b=abPfisoEoxenJZIDrY7swhtwgo
	Ra6UKKCKG+sYViFbE2HKPTUIEEvx6cF6tp1XlR1B0jtXb6sqZuhIuj3RMf9vw0UQn9Xw49FhghrN5
	ydsaZtzIXL5XEQtJ/byPY5F2vKAdZ5hN7MLLJJFLeSTxdu+CSBbA6Q9MIrtXRzIKk3oj1EQmHFzng
	5mild+1c3A+94QaEpsmr3M5iPH7UncNdzo4Prvrs2sxfn77k7bWjNVXowOZBT8AY4iVkXKEi1dggA
	Hpo3ZndlIwi+74sUCMr8dwNd8Ed+APqug0KmQh6s1X3vkwol6sU8/FAR7avNubHT//1fKnxFwnZCi
	O0SKbBbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEvJ-0000000AM3f-2zcv;
	Wed, 25 Nov 2026 15:28:41 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEvE-0000000AM2T-45CI
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 15:28:38 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4a56e05568aso13401385e9.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 07:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795620515; x=1796225315; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=4tA4R3M1tGeqFN2000iz5S9/N8qTO7Ro+JjVYjnPFCI=;
        b=BkpkKwkOFZ3rsqkjqBJqpd2fv9Su09D3K8PNU5D/q1zKqeLZwLEILCb0TvWdbIC+I+
         ABMrtHkvGUmtGxI9/L3MF58W9lZgsByi7JUAsWErLfdgfv8PI4BI4Nbb9hfj1MjZ+fQG
         npPVEoQ8iff9Xoi4bCm0D8XOtydErfwCJlk6KIv00jMR3ia/YPJNQbMjyq4PLLBJYiLL
         My4joyoGWo9zXKHkD3ag7c7Lg4mIBgtybZ3Vf78fq1gXppeH8W8eQ1nLinyPIIgyIVFt
         p9iK3L8us4XXSbliHRAhk16+UT8uygXPih+3vOSXZ0XWEKS8ManOWCQ4SmMhexc54qAk
         pyeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795620515; x=1796225315;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4tA4R3M1tGeqFN2000iz5S9/N8qTO7Ro+JjVYjnPFCI=;
        b=Qck90+lCzFsPSv/d3lMzDeL7cO13zgbL8Spbb/Lylewy9Z/o8M4NVxy36dvLlfRpPm
         Ht1tlLuomQ3i15HempsqbWhtgPze0UcPBMzVfgFe/F+8sJdk1sax1ELyhrCNT90YKGMU
         mbhRu1xfkHSXd0YFB6lDxVKvPPvJEFEi0I27hLE7fYxM9Um3ACnMQYqqmf/PiLdDvud2
         /5aZ0EwqtDqPsIMGxdiX6o2J2TMAvraplDMFtfFXWKIgo+DUnojxTgfbRU8taUUyJxfW
         truC/xPYyLHWRU0IeaXBBldy62UYkjgoi1urCzGHNAkJUp7nuJpXl8nWQfOQ6F9gAEYx
         ah1A==
X-Forwarded-Encrypted: i=1; AL+hErGYkIvlxddDKyeV1/dXIAnhib0tEXl2VrCiYkKThxltvE6M00clo4TJLYOd+dsJhsPpvSj9Hv6pYC0=@lists.infradead.org
X-Gm-Message-State: APuU4Z8nXrTHAzqCKRrrj1SoRyb7n/uQm2KQcZoJL3tpCpHNQ7N7kZry
	0WlECy9qOnnbBXwTfy/ksN50PCAzBSDrRxPT7g4lct7w1sJcBlLwAaae
X-Gm-Gg: AZFdTZe6Qcuyu8C+ZNRPSTSEteEQ1LwX3C4jZH5jY/QTdtT189XXmSh21JQYHAtSjIS
	SfSsO6KG1ESIpszAhtaVJGEsffzJ5m8LI1fWBvKYY8QrEPOltCTIY5LXH8Gh2hZ8Fu+ftjqEqxl
	UgWyR2nTqrEnjfRj6hGh+8KZ/OGlG0y3eVbZz8jiM3m1QP5t/kvdjm6QED2y8qkmX7j6c02axp+
	w3YDyLnGLgs57xoXdo6J2wBesOle2NnAUY0BpDfO/RBcAaA8Ev5KU/Y8PcKmwvFEhIX6udn39kX
	tfW1a0MGptY5ci8ESyr0whYHt3kCK6Z/3Fpk6So6CshF9G55yvMkljxRWUd81VE8H8cb8Wy/OoK
	6k7AehG+TlQyIITBq5OkmPB3/2mfxXI2KtotOfXezGjLHfnvxW0F9I5lzLCeLDhbtxrqlXH5QOU
	rGUd2DvW6s1V/j7VDZs5AS0LZGLzsYqV8Rf+brlg4Q1hqm3m9gQ8gFubg9z0PS5tSnnGqyTdz0F
	nE7oZsJMYiQTeokSCanRbAHgPyUeFrSozfycK1Mf7xuVpPrXCcA8xZ5dkWMjOfTBgSwoayrf6cc
	pJxRTRAU0tGwZvGFAPKB
X-Received: by 2002:a5d:5e01:0:b0:4a8:eed3:770 with SMTP id ffacd0b85a97d-4abb47b25eemr37771369f8f.4.1795620514919;
        Wed, 25 Nov 2026 07:28:34 -0800 (PST)
Received: from skbuf ([2a02:2f04:d401:2601:d3cc:6bc:a861:f9da])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab69bf6804sm34443459f8f.10.2026.11.25.07.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 07:28:34 -0800 (PST)
Date: Wed, 25 Nov 2026 17:28:30 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Damien Le Moal <dlemoal@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Aksh Garg <a-garg7@ti.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rhys Tumelty <rhys@tumelty.co.uk>, 
	Manikandan K Pillai <mpillai@cadence.com>, "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>, 
	Qiang Yu <qiang.yu@oss.qualcomm.com>, Hans Zhang <18255117159@163.com>, Yao Zi <me@ziyao.cc>, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-ide@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v5 6/8] doc: phy: Document some bulk helper functions
Message-ID: <awb-MUCgZJn94Lbx@skbuf>
References: <20261125043639.249525-1-inochiama@gmail.com>
 <20261125043639.249525-7-inochiama@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261125043639.249525-7-inochiama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_072837_385172_3C9176BB 
X-CRM114-Status: GOOD (  34.26  )
X-Spam-Score: -1.1 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, Nov 25, 2026 at 12:36:37PM +0800, Inochi Amaoto wrote:
> Document all newly added bulk helper function, it can be used to manage
> a set of PHYs automatically. This is useful when the driver want to
> simplify the management of multiple PHYs.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  Documentation/driver-api/phy/phy.rst | 40 ++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/Documentation/driver-api/phy/phy.rst b/Documentation/driver-api/phy/phy.rst
> index 0865c2e94eec..cae3d4700814 100644
> --- a/Documentation/driver-api/phy/phy.rst
> +++ b/Documentation/driver-api/phy/phy.rst
> @@ -114,6 +114,12 @@ it. This framework provides the following APIs to get a reference to the PHY.
>  	struct phy *devm_of_phy_get_by_index(struct device *dev,
>  					     struct device_node *np,
>  					     int index);
> +	int devm_phy_bulk_get(struct device *dev, int num_phys,
> +			      struct phy_bulk_data *phys);
> +	int devm_phy_bulk_get_all(struct device *dev,
> +				  struct phy_bulk_data **phys);
> +	int devm_of_phy_bulk_get_all(struct device *dev, struct device_node *np,
> +				     struct phy_bulk_data **phys);
>  
>  phy_get, devm_phy_get and devm_phy_optional_get can be used to get the PHY.
>  In the case of dt boot, the string arguments
> @@ -129,6 +135,21 @@ Some generic drivers, such as ehci, may use multiple phys. In this case,
>  devm_of_phy_get or devm_of_phy_get_by_index can be used to get a phy
>  reference based on name or index.
>  
> +The bulk helpers are useful when a controller operates several PHYs together,
> +for example the lanes of a single PCIe port. To get a set of PHYs by name,
> +the driver supplies an array of ``struct phy_bulk_data`` with the ``id`` of
> +each entry set to the corresponding PHY name. devm_phy_bulk_get() returns
> +zero if it obtains all the requested PHYs or a negative error code on failure.
> +The driver owns the array and keeps it valid until driver detach, when the
> +PHY references are released.
> +
> +When a controller needs every PHY listed in a device node's ``phys`` property,
> +devm_phy_bulk_get_all() obtains them from the controller's device node.
> +devm_of_phy_bulk_get_all() does the same for an explicitly supplied device
> +node. These functions return the number of PHYs listed in the node, which may
> +be zero, or a negative error code on failure. They store the allocated array
> +in ``*phys`` only when the return value is positive.
> +
>  It should be noted that NULL is a valid phy reference. All phy
>  consumer calls on the NULL phy become NOPs. That is the release calls,
>  the phy_init() and phy_exit() calls, and phy_power_on() and
> @@ -149,6 +170,14 @@ The general order of calls should be::
>      phy_exit()
>      [[of_]phy_put()]
>  
> +After acquiring a set of PHYs with a bulk helper, the order is::
> +
> +    phy_bulk_init()
> +    phy_bulk_power_on()
> +    ...
> +    phy_bulk_power_off()
> +    phy_bulk_exit()
> +
>  Some PHY drivers may not implement :c:func:`phy_init` or :c:func:`phy_power_on`,
>  but controllers should always call these functions to be compatible with other
>  PHYs. Some PHYs may require :c:func:`phy_set_mode <phy_set_mode_ext>`, while
> @@ -172,6 +201,12 @@ PHY framework provides 2 APIs to release a reference to the PHY.
>  Both these APIs are used to release a reference to the PHY and devm_phy_put
>  destroys the devres associated with this PHY.
>  
> +For devm_phy_bulk_get_all() and devm_of_phy_bulk_get_all(), driver detach
> +releases both the PHY references and the allocated array. To release them
> +earlier, use::
> +
> +	void devm_phy_bulk_put_all(struct device *dev, struct phy_bulk_data *phy);
> +
>  Destroying the PHY
>  ==================
>  
> @@ -221,3 +256,8 @@ DeviceTree Binding
>  
>  The documentation for PHY dt binding can be found @
>  Documentation/devicetree/bindings/phy/phy-bindings.txt
> +
> +Missing Bulk Helpers
> +====================
> +Currently, only a few bulk helper functions are added as they have users.
> +Function not upstreamed can be found at https://lore.kernel.org/linux-phy/20260904083709.425893-1-inochiama@gmail.com/

s/Function/Functions/

Other than that:
Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

Thanks for updating the documentation, this is appreciated.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
