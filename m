Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0160EDF159
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 12:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GsMCqwkkCog6+3FYc0rrLwypomvnEdaHu21x5t8B+A=; b=4QzqG9Rdw8Dcuq
	PwuUHWUIvDreasJNJu73P8Y9RopOrLBQCXLEv1+N8pjEfSC22ZblBlWUQOLQjnXoSw/8CqJziYO5Z
	/HECdO2BQptT+xC0Pxp6iDVHiECuMZm9lTDOeP/JhtwMadA6Mm1MDgZOAiigxKG8ecxkuJ1mijq3J
	r7Fmnhg3DxJ/OPUr+sZQlLjqNUdS5pgN4hBnUUs/zxyZm2e8BvIuxC/zBAKXNU4czRKe/CqXliGy1
	Ag5nL4vJA7/VP8G9MwCQcFHumTpx0JGwGrOiI5UCmxbkUf7Oj06qWJaQKrU51QP2/K04eYVXpjJbP
	9lk3wcF3lmRoucQ5/D6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqsJY-00000003RlJ-3zTo;
	Fri, 13 Feb 2026 12:30:28 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqsJV-00000003RkZ-1pkJ
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 12:30:26 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-59e5cf5109aso97211e87.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 04:30:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770985823; x=1771590623; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ioLb8XY4lm+HDRaTUyW1eqWIZWMXPzLIWciFwGfc+MA=;
        b=KHp+Trd1xbLujnETxA6U1fVbtU5jXYrRsnRhtX8v8Esy9CRr2WOjfrdGVxo8CZPbkI
         zvbuC9T1xj6pleRMBDcJM5rpkzbJhaV7/aREZMKDTJpWPDJRdNdAFgIKSvESdf6SpjQE
         u0i2aIb4p1yjO0O2m0y04hwiLibbrD8ZI/jKOyR3G21jS7URk+G0OOZ6MpcNVeF1cNFq
         +yVt75kD4jzPdiHn7NoOGyxwLkZNWz9PoojtrAIxQVTjOjM2YokOAm0Ak9tQUlJnUbhc
         jfyuv1g+4rjStNu060d2XJOyGaFeh+Zf/ydQV6cWdEtjQFATL/z7q0FxaIcnLKZivJUI
         OpQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770985823; x=1771590623;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ioLb8XY4lm+HDRaTUyW1eqWIZWMXPzLIWciFwGfc+MA=;
        b=stVlwOt27AvP/2N5T1eMSeQppXvBhsPueH3wXFkIc1igsINpRFzrb0okOnWBo1dySr
         8JgdexeRB/EBuh3x/nbPRwFrgK+jWgYM6AsqBb2nvfI2nCouc6avKxscjy1cboDGUJ7C
         E4uffJgAdyl3PjtVtWzOfyc6g86EdDAIgKt+jrk8CwsE5wjTiQfYtCpQiTuQ9PZrr6WN
         NQl2rq2TKbI8D6bj8uV/bFvdYeL6fSeoCYztpDDTs/Iv9XRoyLhvhH71c14cUFPy2l/t
         uF/WbEnUrOJXkMTUbHa0NnvloWuIqvXCZQ8RCMvuOfmFb1kOnNYolzapUg9T0cWFiY/o
         NuoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXq1HmVqMoZGTdG5UfPPjrVV2CxWWiXVvNATUpFHsxojd7ZfLzvSFoMQ6XoVzn5Vi8lMmmH4ayT4Es=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcBQ6lS27k9uScdHJUCrsJdGUPNMOpc2CHcT1tIRR2hGlwHGoW
	zVN2DtaJDKKEZrDbw6UYt3WtLNxDzzpg+ndVTMUZPo8YLX3Dtb3wt1MYe8V+TQ==
X-Gm-Gg: AZuq6aLVOWl1rLlUfA3arNgvMqzgdmEMtoa8W/knulcCsGFzujP7vz6ca/rf5ds4Fud
	LYrRUaJEfmpO7GbV+ogv+ob5Ggwfh0YtSJ3DxMPD21hWRFCGc5l9EL07VR8snZqHIu6Jbz1NpWW
	0nEBEZ5rpLSSF3dOSiWdjgl3/KZJAVt2hHOourELz+JGE4LY1uq1Jx7CqbsmP3DUwNucxw7IpXa
	l5hp67ejyeXuSMo8j8nApWZSTRZOWDW7dEYHB5BZ+xh0lHgkIMIgO4+s7BGnGIswC6XLlVzrLjZ
	Qh1axaE/A67rSY1TgrJVCBXhFlVjzsNMalvBLUk6C/f54KqgGZASuTCYHvIMNjQ8nuYJHo0bu32
	XgZRmFzTiG08nGk7inCst+YqVaJHOvriM4oj9YOQDz54H0fEKoF+pXbDCcCdf1Ka5cRH7PU+I/R
	NvRjT5ptn5T75zfpU=
X-Received: by 2002:a05:6000:184a:b0:435:f96f:3517 with SMTP id ffacd0b85a97d-43796ad9062mr2306714f8f.3.1770979632393;
        Fri, 13 Feb 2026 02:47:12 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:419a:75c9:94a4:7ac3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a5b4cdsm5075131f8f.8.2026.02.13.02.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 02:47:11 -0800 (PST)
Date: Fri, 13 Feb 2026 12:47:09 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Felix Gu <ustc.gu@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jyri Sarha <jsarha@ti.com>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH v2] phy: ti: j721e-wiz: Fix device node reference leak in
 wiz_get_lane_phy_types()
Message-ID: <20260213104709.yim7a67uuzioj7n2@skbuf>
References: <20260212-wiz-v2-1-6e8bd4cc7a4a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260212-wiz-v2-1-6e8bd4cc7a4a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_043025_508553_9D2B3E77 
X-CRM114-Status: GOOD (  10.08  )
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

On Thu, Feb 12, 2026 at 06:39:19PM +0800, Felix Gu wrote:
> The serdes device_node is obtained using of_get_child_by_name(),
> which increments the reference count. However, it is never put,
> leading to a reference leak.
> 
> Add the missing of_node_put() calls to ensure the reference count is
> properly balanced.
> 
> Fixes: 7ae14cf581f2 ("phy: ti: j721e-wiz: Implement DisplayPort mode to the wiz driver")
> Suggested-by: Vladimir Oltean <olteanv@gmail.com>
> Signed-off-by: Felix Gu <ustc.gu@gmail.com>
> ---
> Changes in v2:
> - Use of_node_put() suggested by Vladimir Oltean.
> - Link to v1: https://lore.kernel.org/r/20260211-wiz-v1-1-fdd018d02f33@gmail.com

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
