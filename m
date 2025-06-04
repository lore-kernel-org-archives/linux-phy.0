Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77538C5B549
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 12:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpN58TpNUGX1b7EofLlp8nOCCRw2Q0ZsxtL5J0Ah8xs=; b=UC5Y/yYdU3YX11
	Z7mDPtNRnuIkYy7u22NQ86OuvnNlwSKXyvbmyZpBwwQdQQjX3mkSdgorm7ySvATNeMBQvZX0PxaZ7
	/lxwRfW23w4jBvncLJRAvq8zSskTjviT1Z61D2i419Md/awqcKJuVRf1em7wS+AEO+Z/JHm4ArUTT
	BP5oXnYMgOWm7LPF57ZYxDqZX6CYNPFt3oj620paqVrQScPWPou6DOnfMyMNwp4GystpR78il95+H
	mLj2k/D3FxXIAovrabQsGzu+FGX85qZcD2TWolDJz4g/lTClvBxMo3miUBBLEH8sHOUNS4EaOcPcW
	qdh/Sgkx6zPui+pQ/zkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMnW3-0000000DNM9-0jIw;
	Wed, 04 Jun 2025 12:46:47 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMnW1-0000000DNLk-0aQ8
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 12:46:46 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-addda47ebeaso595369166b.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 05:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749041203; x=1749646003; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F6qdJO3p1x1A/ngwXZAm0UCO5G7hC2bDfKwNoG0neIM=;
        b=drtscMTMqbMqD9gc5WDjAMgnURLOrmGe6L0XPaObco+RRJLuU6IKBFdGNC+6A8e/Py
         ptVemz8XBb2quZwaZ5nm2RKJ2lFfm/qFPlKMiaKjx4dstCZoXHd2EazvS5eK2+6IGUbg
         FvPI+e4ljizABPD/jX3EUoHl/CSs8j3SMoviUVPVoN/g/CVsdyTNoFdbMVozoDVklIeN
         5J2brUp7JmG9CXWtN6IQFu4XsXDaWigr8n1226ow2fG3Vwow3JNqzNLPDRR/+t89NFWl
         WM8Kl7i+6yw26pfFotIp70fS7T7JAmdV+FfDId6pILnwlnIRwYLMSAePumHwEiZFyhTD
         MmEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749041203; x=1749646003;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F6qdJO3p1x1A/ngwXZAm0UCO5G7hC2bDfKwNoG0neIM=;
        b=VDBAAws0fq+AWAEQ/CuWD7lBm61+3BP1PsyuvjOWHdpxQgq+1D1fxGBtA5scxDLl3I
         JeHqyrCgJWtuH7aej0RqQdGl/dB0Kr/9NlnWnrckkuUN90JWJr59AfaV8OZd7d98n5qh
         tFtAdSAWgww1Nb2IjPYbNmIi+ETKo0zqP4nB+ZzR4uU6cH+FWcgstII5q0tYYp3JpgMH
         wKHdaw5Sb3/0YOu05LpjTXdUKFeUp4ZUDLrBwvVTkF9wxMnNcrteMDUfexJsMOSzLEhW
         lB4luEBkAR8GDgQUlq7qoUetI942uVeAfxwRM+59vmrqnFhVfbqbgLI84MEmfKfKl7Xv
         OdsA==
X-Forwarded-Encrypted: i=1; AJvYcCV9wJ8v1zbFRybVH7ZpxiPIRV/9137+bN4uQ7mOYJjFR3luI2cPn2KDpZ6UprUq2GF9O7wghtiOz0A=@lists.infradead.org
X-Gm-Message-State: AOJu0YykuNBgKQwIdhtyfaLs7NPORMoyS/QWHfHQtn/8L3k+7fWpCXib
	CHzZFXvLz5C6+l23O5Uw7h3wFc6bMF5RgJSLfs/DfYmAKQyMRZQjp/SDALZI2Ev/N+M=
X-Gm-Gg: ASbGncuQfRO452RDZp+cwCuQotfzwvHKy7z6jUUu2bAABF1N8xT20Qc+xxi/962n2Cv
	gBYlZJY0TTXm8dhbJLhA/3lxti2vP5Q4mFNQQCaYgNiFUp05r4ZQIQ6Wtbtj01+RlzS2pLFJrov
	fKA0zRpfY55FlF4IIv94bHSC6AGIaljYQ57sOVm6v7mTu1+rLivdSnWzl6AM07ujbp0qr8RYEPk
	5GEOEfvcnrJYKOAVfnXFSOuZw7Hjl6WdktCNGQXmwJyB7EVNlXeO75wHl0waSW/2RifymHeIALk
	EcMyVBA8KKvfl2uu9xuYHvEGVd+Kf3+M2wPYx8MykXtrIL++VwSPQ43dQGs=
X-Google-Smtp-Source: AGHT+IH3hjyMtS7nUHzS5hLiFEDH6xWffHB5UpuCedgbYbZsl9L/r1OhGo56kbxkn7IVvP66st9SWg==
X-Received: by 2002:a17:907:1ca1:b0:ad2:2dc9:e3d3 with SMTP id a640c23a62f3a-addf8ffa8d4mr256307466b.57.1749041203137;
        Wed, 04 Jun 2025 05:46:43 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5dd04551sm1102106966b.93.2025.06.04.05.46.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 05:46:42 -0700 (PDT)
Date: Wed, 4 Jun 2025 15:46:41 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: use per-PHY lockdep keys
Message-ID: <aEBAMUdAVPB+cN78@linaro.org>
References: <20250530-phy-subinit-v2-1-09dfe80e82a8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250530-phy-subinit-v2-1-09dfe80e82a8@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_054645_187325_2C9BA52D 
X-CRM114-Status: GOOD (  12.45  )
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

On 25-05-30 19:08:28, Dmitry Baryshkov wrote:
> If the PHY driver uses another PHY internally (e.g. in case of eUSB2,
> repeaters are represented as PHYs), then it would trigger the following
> lockdep splat because all PHYs use a single static lockdep key and thus
> lockdep can not identify whether there is a dependency or not and
> reports a false positive.
> 
> Make PHY subsystem use dynamic lockdep keys, assigning each driver a
> separate key. This way lockdep can correctly identify dependency graph
> between mutexes.
> 

[...]

> 
> Fixes: 3584f6392f09 ("phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

I'm OK with this as a temporary workaround, at least until we figure out
a way to have chained PHYs in the generic framework. I think long-term,
the PHY framework should be the one to call the ops of the child PHY on
behalf of the parent.

For now, this LGTM:
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
