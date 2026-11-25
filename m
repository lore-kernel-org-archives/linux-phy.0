Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED25606A321
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 15:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IaGe4g2G;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=kdoRAZrK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zPjKgi4IEtqlhKgwY8iang1Fil9QEJqN8Fkr3ealp+4=; b=IaGe4g2GsPOjY6sDr1MQo70+Kn
	n+/Gqnfmos60Zi3fAnmmWQZyeO709s5ufW5d8N8cF6y8I2V7fytZ89aLqWxlhK4ZBb3KZEbfGAk6v
	EwvLWMAUBUO+kHNWFup7uQWfDJ1VJUmBbTc4ObyULV7gpqg/p7KyZk236eSQpXsswVAXqEcYie3fi
	Sse+hDY0Tvo7UbG/kLWjYmzedGE17+EjqMtbV41Z2g70MbUxr/V3635m+kijFsFlDGwGsjXkXQQ/P
	tAD+lfM7BeyrPFaG+TJC1lAxlE58yE1Q0P802PbAKGd4cW//amwjOi4jnx0gp4tTonBGW0FV543HS
	83mBgcjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEqt-0000000AKpW-3F8D;
	Wed, 25 Nov 2026 15:24:07 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEqi-0000000AKl9-0hMd
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 15:24:00 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4bb995ade6cso3771455e9.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 07:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795620234; x=1796225034; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6EawhG+KLo0QFi1RDOt/xFrv1BkUvSlbwXPxTKgA5RU=;
        b=kdoRAZrK27M7JaFzccmu3sUdGGzXOf6/mq9MnzqPbWcciKX1BOPunsqN0FCvy1YyR4
         SoUN0Xy1j6Um9Ik6XpB9CY2MT6FGZtFaqIWym81sUVCDFCX6Lalzo1rsAGAGTOOq8eGE
         srMOBhy7F2Rpxxho7Ek7h9s3ogF7WXBoPj4wS3PB9tTiNlsuSguDf5tCqEMMX0AKamoE
         qvzKDXLT0O93jKU+CdLt3YDO2sTL9fYT7V57MXPvCeKnmqLlOAy9mlo41rn4jWmifPIP
         RdmfMkLgwrpGJFEqtoUAYxsN029+TlmquggdzxATNZRFYn8jaSXdkQftWQql6VpSpmxl
         ap1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795620234; x=1796225034;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6EawhG+KLo0QFi1RDOt/xFrv1BkUvSlbwXPxTKgA5RU=;
        b=PUtwdFP3wotu3+ZVBwSJZl4TdT6sk3B7i3/0F0KVTz+UNXS7+B7ZG82WbMtzcsl2mL
         1TlGPY0jAr65ZhgROCWfYKGPIrURuMSSL/wiDd6GhMZzc0ScATBmWQspKLaRHolCEQXd
         GpqGWoscnMHEHuIn3pZcpgUadnhs4Yr3L9eo573iRGL1+U3xnZjG9EZe9Z7Bh7Q/9P5c
         C8+iFUuGBix2H1/3Ml1S+YMvgmx8UcPAWyF+qip67d8vnzEp6bMI9IvUYrlJVWm8ZxX1
         hwkYhUK3DZz0Hv1WQT50NNVbOEYE9+6wUl3UbsVE/6p5OWXbJl541fFW2lCjQ4CkdNbq
         rz6g==
X-Forwarded-Encrypted: i=1; AL+hErGq4tE98YicbWcot4tQ/WZ2SUcXw9AnqE/NamTHJHKnxjyZOIH9BGaMO1oKoz5id9WAvl5ju1DzJPg=@lists.infradead.org
X-Gm-Message-State: APuU4Z/aQlj9PAmXArfy0ISRpRiPFVx6enHXQfKWSGwhs/HDqC9Cjnnr
	Szn9JDNkXRSy55o58opS0g2ssKZbzhVxXKlgmvO7AlVJlzkFbw8h3Ng3
X-Gm-Gg: AZFdTZdEkxaKXszftG8525iIddHHF30bD1zL71nKFOMrCYQyZBMoBhQPht9w83y38T6
	5FlZNMVFUyNp9TGcOQ9jDoNAi+kYU3Qe/952TnVsdymv+tYnSMgKI6dV8vm4GQSLptGu0QKp7II
	j8CfLlmqabqy5dPvoQhW5S37/Ofja5SkwzuPkO8PWL7Dly0eJO+MnUhBQqpt+H6vIC3uPpK0VjV
	yfhaSzb99BFppILGYyDjLwLs6OY+6jXoCnktu9HQ/A0jgX8xHDckH2yPePnnQygJ+Wvi7bcZpRW
	hAdrVF4AyCbT8KRPtkuhjCZFVdkZs1lZSSrIh0PLaqAcAFh7Rgmq9H99wQPGtLiCPZt6zqAL1wp
	A9HGLmW0TanbyzzMLRJ6TXda0XbIZbvMZDvlhh5jSm+NBhey4IjRAN4yS0SAbDaBclnzbKxG7vr
	beypfYnFvOHE+Sx9pOOCtcu4TFj/n8GN54GTtEiPW9cMw9R4QiUUver+1jXDlvdPC/GKf9oUokF
	NqJudwss3feyWXYZQdGfUq/i2rka+5H7uE0jZYeyvW//KCESpftNJ1DQNK30GNEGHaEduLWbThU
	B0VR9zAMu7FKzuxicgHF
X-Received: by 2002:a05:600c:8210:b0:4bb:7ad8:99f2 with SMTP id 5b1f17b1804b1-4bb88785da4mr344398855e9.0.1795620233772;
        Wed, 25 Nov 2026 07:23:53 -0800 (PST)
Received: from skbuf ([2a02:2f04:d401:2601:d3cc:6bc:a861:f9da])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb906635c7sm316515815e9.2.2026.11.25.07.23.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 07:23:53 -0800 (PST)
Date: Wed, 25 Nov 2026 17:23:50 +0200
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
Subject: Re: [PATCH v5 7/8] PCI: cadence: Use phy bulk data api to simplifiy
 the logic
Message-ID: <awb9XRze_e8xt9tA@skbuf>
References: <20261125043639.249525-1-inochiama@gmail.com>
 <20261125043639.249525-1-inochiama@gmail.com>
 <20261125043639.249525-8-inochiama@gmail.com>
 <20261125043639.249525-8-inochiama@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261125043639.249525-8-inochiama@gmail.com>
 <20261125043639.249525-8-inochiama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_072356_303783_5CFEACE3 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
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

On Wed, Nov 25, 2026 at 12:36:38PM +0800, Inochi Amaoto wrote:
> According the document of cadence PCI controller, it use multiple
> phys for multi-lane setup, so replace the loop of phy operation
> with phy bulk apis.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---

Minor nitpick in commit title: s/simplifiy/simplify/

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
