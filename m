Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB333FC9EF2
	for <linux-phy@archiver.kernel.org>; Sat,  7 Mar 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iud0gW+Muka6GNaGYdsxKd//OqLtGDN8NhDNfnchkOY=; b=jaY1eCo8whCHZV
	ezyDKcnOFQ3KOjByjBkT2OeDgY7w+U8eI0htMkRoj9/uiuDbKFqVCnC5zOP62KO4CrcTfkQeDRm87
	HJ3gqz5rwgzJEYqCr3RNNQ22t0bu6sEMJpi2vnsnwBcKW6DJ6s6xSebuYbMCbvu4IiZx9LF04pYVM
	VK6siXikaXZveusCxA4BoehxjpwVkFgaX26e96X8Nf8vk2LZvb9ZilGsmytaGWIshGtDJNGPOv8RX
	TZpFhHq68tvHzBfJVvGBz6i3nUfNT4mKfjdIf5d0GV3kvBKZIH6xG3NgWRnz3FXaa7MspgIUr4BeF
	bOlCRvrAAaO3SYfO6d8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyp2L-000000056a0-1NBi;
	Sat, 07 Mar 2026 10:37:33 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyp2H-000000056Z6-3oLD
	for linux-phy@lists.infradead.org;
	Sat, 07 Mar 2026 10:37:31 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-483abed83b6so84015345e9.0
        for <linux-phy@lists.infradead.org>; Sat, 07 Mar 2026 02:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772879848; x=1773484648; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=f5dRvU5hSjZG/d9NEVJAuQDH8Oh+ysj/HM9E+z96h0A=;
        b=FkO+CAXUMNFm0Fcdk57niE69M7ZNv6Chi0RZ8nMBxXK79gWhu9Iu8dk9VbL7pBWpEM
         Lr3+bCX8rQbIIHzb7EhBnA2YvfyMvsnc+NEGYUlyok/XYGP3LqB7jgUKCpYOCrYQgyjg
         H0LOql/bQ//hOtGNob51Y1s899Z4UXKzHxK/lhlLFiBkklyY7ySJPs4AVKe/n3tJUWxd
         8QLfCC6MfsVMtZUKUYsSRc7YXMVBHY+pNdGiXlSb1jf3QAtmLmxF/SJ2DOzoj8zWzR0M
         I45OKbir+mF+ThnVzCk3okeYWIarc7g+zfOHvQXx8cBYZY7xc/uCiVNGpxHauekfpNd3
         PmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772879848; x=1773484648;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f5dRvU5hSjZG/d9NEVJAuQDH8Oh+ysj/HM9E+z96h0A=;
        b=NexYP6xcIs9+zTMbv0YsiGCWqC/SL16JJXJC/HtxM0yYqVZBPMk48Iv0z3E3iaN1cu
         LRjim+8PUxxFk7wuzZtYC0KtGuhqhOjfUshBIrSpIz4hgihSwDzDJZyTYSjafPl/kMWk
         VwBkQNdIyIft/yykoBpcVb8r7OHGLcRMRvsD+4WCLxVJlZcgqWpFCIrQvLAqd8FE/ABl
         WR928NTzKDKjNinJhG7xFgBc1+Rin/YSvgCZsXud+DdG8Szsz1s9zfq1Ms1RPCtPabyE
         Xy6GnyIEYz6xVXf9mpdkrkMxkaVuNR21cJ1B4FNhYjCHVvjJQ9XS58k3XEGQ+70R5q2Q
         zSew==
X-Forwarded-Encrypted: i=1; AJvYcCUS45A1r82gp4Pj5LxX5Mz1aeSJo2E0uznaGpJAEe36ECedUUrTpEnVGS68OOju1iw4WiAg2WuXrnE=@lists.infradead.org
X-Gm-Message-State: AOJu0YydduRl/RE+F0lUPLq9AlruMDSySoEZtHTn7geD+9vRfDezHn0Y
	vJTEcLyIrN8rtvNwI8dkybMhvJFMVw2aqrLGIbQkzswj/4bZKNvDE2ey
X-Gm-Gg: ATEYQzyDKgCFI+ak22SyZTyPGU6rfZVmExqUVsPqwW9/98DZSf8F22UuGdMWC/OiJYY
	tAjyY9NhRHV1WjseaE1tWoOgsbqwrJPrhoaOppZDwKpEFVqgs5+bLmKg4Fr4ysjm8ENi0tO4EFC
	w2kbvQ+iyCvjW1REg0JwNZPXm17z+HtdNSr4o9vaoPLXhQM6msCzd+TxB0v/fahdDu9Av8Idpg6
	PA+DEgvCmJoyuh/jvknz4YWU/Ueu0D+Pabl8FvcXrSGiWFbfBkY/0D8Kr2oLkle/u3StNMvHRx6
	MBuNmceB/8ZdB10EaaLE0DlHY+3HPM/QlmZ4sFSjnzc8WLE+lbCgwpvG50/Ts/sszx2sz9FJtjT
	xplLvwEQgSZlj7Zl+cAzy6ls04SGVJ8MbtUTDJ880hPoNC8BmlKgiOg9tPHAKWY8/M8yrNCxW/P
	OX0BatRy6gGxjn/5wUWUa/UL1PMug928l3rvOlt3x7iba51HFq3hSVQQ==
X-Received: by 2002:a05:600c:1d04:b0:47e:e7e5:ff32 with SMTP id 5b1f17b1804b1-48526983292mr76044105e9.34.1772879847564;
        Sat, 07 Mar 2026 02:37:27 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485246ece8bsm55380715e9.4.2026.03.07.02.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 02:37:26 -0800 (PST)
Message-ID: <69abffe6.050a0220.18164c.58d6@mx.google.com>
X-Google-Original-Message-ID: <aav_47Qtdnpncdll@Ansuel-XPS.>
Date: Sat, 7 Mar 2026 11:37:23 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 4/4] phy: airoha: Add support for Airoha AN7581 USB PHY
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
 <20260306190156.22297-5-ansuelsmth@gmail.com>
 <20260307-otter-of-imminent-merriment-d3475d@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260307-otter-of-imminent-merriment-d3475d@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260307_023730_603720_5EE0C953 
X-CRM114-Status: GOOD (  14.37  )
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

On Sat, Mar 07, 2026 at 11:32:57AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Mar 06, 2026 at 08:01:53PM +0100, Christian Marangi wrote:
> > +	for (index = 0; index < AIROHA_PHY_USB_MAX; index++) {
> > +		enum an7581_usb_phy_instance_type phy_type;
> > +		struct an7581_usb_phy_instance *instance;
> > +
> > +		switch (index) {
> > +		case AIROHA_PHY_USB2:
> > +			phy_type = PHY_TYPE_USB2;
> > +			break;
> > +		case AIROHA_PHY_USB3:
> > +			phy_type = PHY_TYPE_USB3;
> > +			break;
> > +		}
> > +
> > +		if (phy_type == PHY_TYPE_USB3) {
> > +			ret = of_property_read_u32(dev->of_node, "airoha,usb3-serdes",
> > +						   &priv->serdes_port);
> > +			if (ret)
> > +				return dev_err_probe(dev, ret, "missing serdes line for USB 3.0\n");
> > +
> > +			priv->scu = syscon_regmap_lookup_by_compatible("airoha,en7581-scu");
> 
> Nope, you need phandle to express proper device links.
> 
> Don't sprinkle compatible lookups for new code which does not need to
> keep things backwards compatible. How do you manage device links
> without phandle? How do you manage device probe ordering?
>

Hi,

the phandle to SCU was present in old implementation but later dropped as it was
said that it wouldn't describe the HW.

I will readd as airoha,scu. Is it ok for you?

(I actually prefer phandle than hardcoding compatible as it makes things more
descriptive and prevent all kind of problem in the future, so I'm more than
happy than using that)

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
