Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFFBDE63F3F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 09:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5A1TZxFURGaweiy5RnoQr3g8AKAwF8GIa99U1bwwF4E=; b=NaeBqM5Sw6seHv
	gk3SG/eYm9dX8zONSh60eOZUF/WEYM6sAIgy9YjsDQA4UAf6NdptOHet9lO1CWDQYPFM0ulYuJIgq
	smsId7He+ikYNw1DBhYOP9wrSNTHX8ylWxjeMvK+yYstEQRFigN00bKud2EZ0ayvUI9sd//xNsipm
	Z9vTL/bgBfUGd7B+DeOtixHZR34LGnTjG49bnW4OGHYKYId2TgWLU3GjWGVeRVqQFy30D7Y8+/6lp
	Vy9hTBxDO++SMeptBsJl2PphpJOxrgCwjWNZPNoCDnljlL+FS5GioVaeOIncoP7KvjRF2a/Lp3keB
	t+L1nAVMTxalOETPlgvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruXR-00000006DbE-2hn4;
	Mon, 16 Feb 2026 09:05:05 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruXN-00000006DZJ-0S0C
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 09:05:04 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-437696cc5a5so219137f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 01:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771232699; x=1771837499; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=em6VPs2GZRn54p6b2nYQwPaDQws0EFVjZBMU1Ysa5Vc=;
        b=icZg+t/fx2yso7qfWAxKn/ySdytgjFNirqpII4fmXrQgZKsXKMotbCueGqbHpCNV/v
         TyZBEqSU9i0bCvZZTvk0Hp872GmA1NE7ETYtzWnQ1savduD7tMPe6j9qf0XKiHQgimU0
         WfjIrjefgh/jXKz/pzbqhmP2sGpGngBONgNtMFsNDlE4lRnQim7Ds8/ybW/cArteOtH5
         ESS/d2cE25XVqtQNwb73VeBPOijDCFiZKF/AqoaN/0NkEHtvSrIbCPldsv6LZoV/0QFc
         rBRvVuMuZ39xDaIdoX2IFBf+IZLbS4g0pu9V67qJMIFzB7+KPdErsyY4UkcvXfLmrleM
         rNmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771232699; x=1771837499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=em6VPs2GZRn54p6b2nYQwPaDQws0EFVjZBMU1Ysa5Vc=;
        b=U9LwgB9tQvY1jG9NjL5vZ3R8faOZkh/X6kztFNv07u8pVE2BcMCnXn94HWH4lM+Toz
         a6PxK1hkzZ7ZmEmPgHsV1HpFwlAYir4+BATZh4VZPpZK/mUfOFbn6E5EHkvAgKBZ3h28
         IdTL0kUHJHT1n75veNnjkjcu0iUa2/I+B1lWUTl7hRB86zo3XrwbgBe26zqkJukBCKtN
         1suZYjU1ex8yk0pEPc0q2yNzkeLIee6Iabv4vZuPxNpIbz0I1JEtR01HOWbmWj0FM6nn
         7XWbWJkMP0XQt8t0M/pu7HrPxdlNbzLy38GKdH8T978fcIxe+OfzuFyMkLuJ8MB+IzuB
         erOw==
X-Forwarded-Encrypted: i=1; AJvYcCUWV6NVLWbrkDpoziBMPtUEabibkWzqR/QQI9hX3z0wk+Yck9CszLY20lIAXMRTN42mniEspybMScU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz719g4TYeLBETipzlrEtyUCZIQH6a6VXk5ltNFOmCNKb7e5tNS
	/Yc/2PuwURWwtFiFJkbsl6JU+WSGI7i0W2uiUYQotZRw1+9A97D+flTJ
X-Gm-Gg: AZuq6aIRltPwS22Alqy8fLwyVSrWAOefnQf6OCAxJA5cyKRsSvNafY3C9p4rOW6jolu
	OVhIQMII7OEUHeF9r+2z2dHhUoWBZo31D/oYKZXBFttTwAQlaxramwYYEe34eDmWliDoogmXK06
	bPrmVTBj5Z/TB3mhWGpJmTKZ62qiFzxyLXo4fJCf58cgiRrrvwjEefdQs5nG6e/Ch4PkG4pMjBM
	Cim1EZMm+nWjHnoTX2j4zA2h/AeRf7u6bCNKkqsxGQdepetXLDDCtst1tPsgcbInAmqYBg0SdUT
	hAzxbOYtwTLUGxUkLi/d8/Aysf+nrSVXxuxiKJh8+NuLCQ5JW2lS4KhIUrya/EzpzBJEeamN/U8
	V13j3upuRIyiRmQiz8AjrZ3X7iOx7NhKM07WVn9OkGgALetlwbrmRotEX/EMxgINsC7BF5xIN9Z
	IrWbZo/KI5RDNXSA==
X-Received: by 2002:a05:6000:2508:b0:437:72ce:8954 with SMTP id ffacd0b85a97d-43796af4d32mr10923244f8f.6.1771232698983;
        Mon, 16 Feb 2026 01:04:58 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:68e2:cc27:74c:c083])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac8075sm24922456f8f.29.2026.02.16.01.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 01:04:58 -0800 (PST)
Date: Mon, 16 Feb 2026 11:04:56 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Janne Grunau <j@jannau.net>
Cc: Sven Peter <sven@kernel.org>, Neal Gompa <neal@gompa.dev>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, asahi@lists.linux.dev,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [PATCH phy-next v2] phy: apple: apple: Use local variable for
 ioremap return value
Message-ID: <20260216090456.23oko4jx5bcahq3p@skbuf>
References: <20260215-phy-apple-resource-err-ptr-v2-1-e43c22453682@jannau.net>
 <20260215-phy-apple-resource-err-ptr-v2-1-e43c22453682@jannau.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260215-phy-apple-resource-err-ptr-v2-1-e43c22453682@jannau.net>
 <20260215-phy-apple-resource-err-ptr-v2-1-e43c22453682@jannau.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_010502_073185_EA5ABA1F 
X-CRM114-Status: GOOD (  12.49  )
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

On Sun, Feb 15, 2026 at 09:02:51AM +0100, Janne Grunau wrote:
> The indirection through the resources array is unnecessarily complicated
> and resuling in using IS_ERR() and PTR_ERR() on a valid address. A local
> variable for the devm_ioremap_resource() return value is both easier to
> read and matches expectations when reading code.
> 
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/asahi/aYXvX1bYOXtYCgfC@stanley.mountain/
> Suggested-by: Vladimir Oltean <olteanv@gmail.com>
> Fixes: 8e98ca1e74db ("phy: apple: Add Apple Type-C PHY")
> Signed-off-by: Janne Grunau <j@jannau.net>
> ---
> Changes in v2:
> - Use a local variable instead of the complex indirection with the
>   resources array
> - Link to v1: https://lore.kernel.org/r/20260207-phy-apple-resource-err-ptr-v1-1-78735b07ed2d@jannau.net
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

I hope this can be picked up for the linux-phy PR.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
