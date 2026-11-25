Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161F1606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 15:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=J6due3bF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=D6l0tCJ3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QyYfBQ9XnFwBH0dc5DLZROJYFFuKiAhNNam4nujDmeQ=; b=J6due3bFHRrwkGOEolX943Mc9t
	/n+xL6wIYokJYkVg27la78UqNdBo3IxORf2wFs0B0eQxjQq4aGZzfQ2vF20EfVZhBdMXKGo1CKEAP
	1LOzi0NHzY4swJMVitHHXyYVnQRLQGEfHEe6BWLqkIeFf4ngSUu43XZtDkr/wz/2vkDPA0cyvRG6B
	xED7oZCwe8dgZ6tJu9HiYu4Nxw5lSYUnc9rN/+QbljQpz99Pib+JwcHfrM+HrkLV9qTeXEyCxgbFa
	mcb5yF/J4/+Dw0plkVAG+8p4AzJbQb0uUTGsTRvNXqQzA8K5Bk55CgFFHdDwUM3+3cehT25CT/ep4
	D/QkPA0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEnf-0000000AK70-2e2O;
	Wed, 25 Nov 2026 15:20:47 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEnb-0000000AK53-1jUo
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 15:20:45 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-6ba863fc3e7so390502a12.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 07:20:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795620041; x=1796224841; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=U7BBvICMuzzfnr5B7tFxaU0ZRbyofyJaoqar4LTl4jM=;
        b=D6l0tCJ3PxHNKU6NMYbaFWiLeFGXzNIWPD/unV0wEeZEv9/xTXWBiTpfh+600RWm0m
         WTomGTmxmudMP0gN0JPQ0ue1TRH5U8ivZBMUXp3uul0qOoxCM/+DS+xt4Yn9ZjKFbz5w
         C8jWbtIMR68PLbZiTcYUACmXWfLtB509N4o6FdKB8+l8KS8IYInicHFlpqPhqL+spUXt
         qK4ih1tbul0jF6m5vSX9rNh0HE15m0Zd7j4J0AgCX9Ip63Y4l2aS28rz/VSuktZhf5Fz
         rSntoUoBF+hDNnNhaRye/E//R8mNqEl47GiqyWq0A/oGKjStCQZf8cbA5yRdsW/05cXk
         SBGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795620041; x=1796224841;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=U7BBvICMuzzfnr5B7tFxaU0ZRbyofyJaoqar4LTl4jM=;
        b=cwEvcdBHhK1xlg9J3fW9cRQp+rI8QosSMtVqUnqNG91tOhqXOYEgnKVb/x3o2DnQW/
         MIkaxQDQlj/4yh5RKhcs6ELIlHCDkWgo9fFfbK3pOwqj4q6s7xBSar9RSiZLyXRcYJhI
         T0ZyiDrFiTMHrd6I6P3saIFptm7bUHImliDK96ONIcMG3vg2QanvSCHtR5pBno97iIoh
         kCmVQbiAXiHHdiXuklNHFz6Ira8Z/CPdKnVeZf28eKGXjU1goRy76PEAI4Yh4QpOe3rr
         j2p/WXFJm2bhk/axHolcs9fg3Ow6j/G3bm2yZMNl5SOh5ePSWpnsyhFNRBNPIz9wPHH4
         OTQQ==
X-Forwarded-Encrypted: i=1; AL+hErF0CPbNeZV5tRj/YCp+Rchh0a+H61hJBy1WDU7V4L9YMlLtQFpvviAUmZ8K2ev8NKdCUulTXIu5YIQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z+5/qF+PlIyfDU/88UL/N9EguAGKWggP12TY3735RNHFNnc2/Ng
	zI9qzojtNsai35CkvuhULnVtcelh7e7xQXDR+C7DCit/PxqKz9D8wInz
X-Gm-Gg: AZFdTZeP+VpQFWgipQygjNxyRvEIr6muLLUIjJWmmLhaoQOdFglCZRV0zrw7IsBJtTQ
	tIZUBtxOx6ulO2nWSh+6qMP4kF2Dev7LyrNzAb/TBRewzKQFKaDQfCttqcZCxsIAsSXAGtgsm+z
	cAVqXsBRBzju/h6I7Thjm4jdHEnUeLdfJqT9iGNdR0lk/69QKe0yz0vzSIw7Og/VvO54/sd5/MZ
	t4+aglpijSdDHgB4xVmA9Ml6Gfv6ceon00nuSgkZERG4djOavY4rqRY21gk3OBEg8ZQF8Isx5Jv
	Ez7UYbNVPtR2udY4j4fX0qQEYG1xex7gEod7eP1GpYOplXUE01nKWOJRntUla8WhTDkHrJ2Cajx
	he5XhJ7aNSdoRyJSW3NkcfdGfXpaHddj41T6T9FQdEwsQaRYbiNgX8DLitx2zRm8ldu2OUzruhN
	03uQXbPj4ljDdwNk4nYzzNZARjxmyyHQZp0wtzIboTdO+u9pXjgzC09uxV5sBHXB87r3QbbjTaW
	UIHMOz3sdoZd+bfuB2sIHEYjeV6jq+Yn0WcvJ8vwZu9+ZjpzLTvcNSY1RlsdWn7HsaXtCE/Kmpk
	Ostj7QTTMVqFk4X1jyAE
X-Received: by 2002:a05:6402:90d:b0:6b7:dace:635d with SMTP id 4fb4d7f45d1cf-6ba37ac9214mr15694051a12.0.1795620041130;
        Wed, 25 Nov 2026 07:20:41 -0800 (PST)
Received: from skbuf ([2a02:2f04:d401:2601:d3cc:6bc:a861:f9da])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ba370e78a7sm8131962a12.16.2026.11.25.07.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 07:20:39 -0800 (PST)
Date: Wed, 25 Nov 2026 17:20:36 +0200
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
Subject: Re: [PATCH v5 4/8] phy: core: Add phy bulk data helper functions
Message-ID: <awb8ZycWk2PJzTUD@skbuf>
References: <20261125043639.249525-1-inochiama@gmail.com>
 <20261125043639.249525-1-inochiama@gmail.com>
 <20261125043639.249525-5-inochiama@gmail.com>
 <20261125043639.249525-5-inochiama@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261125043639.249525-5-inochiama@gmail.com>
 <20261125043639.249525-5-inochiama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_072043_533816_BBE5A2B2 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, Nov 25, 2026 at 12:36:35PM +0800, Inochi Amaoto wrote:
> Add several helper functions that allow drivers to get several phy
> consumers in one operation. If any of the phy cannot be acquired then
> any phys that were got will be put before returning to the caller.
> 
> This can relieve the driver owners' life who needs to handle many phys,
> as well as each phy error reporting.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---

Transient build warning due to improper patch splitting, please fix.

Documentation/.renames.txt: warning: ignored by one of the .gitignore files
../drivers/phy/phy-core.c:1202:12: warning: unused function 'phy_bulk_get' [-Wunused-function]
 1202 | static int phy_bulk_get(struct device *dev, int num_phys,
      |            ^~~~~~~~~~~~
../drivers/phy/phy-core.c:1242:12: warning: unused function 'of_phy_bulk_get_all' [-Wunused-function]
 1242 | static int of_phy_bulk_get_all(struct device_node *np,
      |            ^~~~~~~~~~~~~~~~~~~
../drivers/phy/phy-core.c:1274:13: warning: unused function 'phy_bulk_put_all' [-Wunused-function]
 1274 | static void phy_bulk_put_all(struct device *dev, int num_phys,
      |             ^~~~~~~~~~~~~~~~
3 warnings generated.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
