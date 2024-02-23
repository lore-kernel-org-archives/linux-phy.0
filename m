Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE495C5478C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 15:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOb7QfG/eyh516MHIA8XGN9Owib3Cu9XxTD/aot6dlQ=; b=C4o6cE8CqkYyCK
	F5MrBhvslsc6zPAlwKz32SrBM7pXGY0UCgswVi2YhfUb7sj1Cb6NX9lb+phz/zsRWiSIa9f/X2TKu
	P7aSVCdUyq6IknihuiAehGGFT2xnFZ9g0WeisI1KTGqmxU/B6rrXsmJ6VRPAKBduwfXtvjRCEGsmI
	66PKZRND1FqvPyk3v7z6uOlTfq/yexgusfTN1tbmmL0Dbcy75OoZeZgFH8J9fSA/LJt9oOaDKECID
	V8/Syd9qPW0TZFdF28eWGXvILbvE76mwGs1Ixv0/7AXOytD5MZ81AKJC/JxDjgps/SJm12DN4vdCU
	buLXx40Kj3494zUeW/Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdX8F-00000009uYU-1NK7;
	Fri, 23 Feb 2024 15:06:35 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdX80-00000009uWD-248S
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 15:06:32 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2d2533089f6so9639571fa.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Feb 2024 07:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708700778; x=1709305578; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4sJGs1NYZ5QUnzqdBB1Q8b+bNbJNb63ZLKIOCTbd53c=;
        b=hvXO2cRmIp5FlRb5N0EhKsjyZAli6MKd76BbrBw7WnHIRPoi1zEWaTkGYYZN3eSI72
         k9MVZsv8r4Cmi17U/471zkw1s7miBfWSsKxUMbf1CKhpmSqUu4HsO201Xxuqi8wO1Z7Z
         IIP8Ibcg76pOc6y9eo6emi/bBjDK6rFhwXS8xy2+hiotnMQbcQyM5eKJphlovB/FZ8mI
         4okVAQ6zl/8O/bmVLiZj5zW6ES9T/TaV3qf4j8Qk/FFnT1mUaEIeNqU3QR+KXkJjTUM8
         W43204WgEsJfiaEYDfxFS4vpt3SEzn66OWqRb9Ty1F6lrtM9aC+33ur5QDPZMteZOpXz
         kraA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708700778; x=1709305578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4sJGs1NYZ5QUnzqdBB1Q8b+bNbJNb63ZLKIOCTbd53c=;
        b=K8N+PDOLqqSk60lEpjdE8S+7/KanDe1DdcCtBEAIsjlO0W7E+y3Mqy+z9Qbc5zubHY
         fwjMl5j6qknvGFIGYsvqMyQr1e+1GIBGkaY8TBE4a+E3cYDsrgK/7DLny2EpMfAkosve
         /2A4mNHRqKK4RSES6va+lWXcprKwosxwuyUxdsOM+0ebjYnsrDAcu9bMHMeQ4oVZTg8+
         ySrfNIL8Hj8/0zAb3lCpNl/aEkQ4jx7HGkG2zrqM477ExR/N7tbKaoF7px7T+cUM6gEY
         YVHGeoOrdgjPs+U7YCIS4mor1bh4E7JqkFbzJ1WJMhAhUrXdiA6tLAxr5CiYZ73bb/qz
         rx6w==
X-Forwarded-Encrypted: i=1; AJvYcCVJPIGq4BovrZVg8ahopbq9haQzZ8DeplU+Pui0NtHTLwLFdU/P8EttjRft1aoJ5SsnRwZn6O1ffyUpSUl0g+Ob+TjO6Pfz+6a6RwdWRA==
X-Gm-Message-State: AOJu0YwTapHaxXhGFekXmrvfkub4tHDpZTrv/rCCkLSE7OoS8m9k7kAx
	LhKlfCRnK1u3ow1NZpQsZCbWEFi11tFV3vlAqF+onbqM1OItfPuRuoD8CjoR97c=
X-Google-Smtp-Source: AGHT+IGfCIE307IqSzsAUBlWRNDb7b8z9zOXY/2OH+3bNQA44KSVllJBbJFnbX+Qnh3P7Q37qv1Exw==
X-Received: by 2002:a2e:a488:0:b0:2d2:61fd:7c2d with SMTP id h8-20020a2ea488000000b002d261fd7c2dmr63698lji.17.1708700778286;
        Fri, 23 Feb 2024 07:06:18 -0800 (PST)
Received: from eriador.lan (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id u24-20020a2e91d8000000b002d0c8fa072asm2681353ljg.20.2024.02.23.07.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 07:06:17 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Vinod Koul <vkoul@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: Jonas Karlman <jonas@kwiboo.se>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	freedreno@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH 0/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
Date: Fri, 23 Feb 2024 17:06:15 +0200
Message-ID: <170870071756.13438.16980480346490993922.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240217150228.5788-1-johan+linaro@kernel.org>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_070630_281992_A8E19175 
X-CRM114-Status: GOOD (  10.18  )
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

On Sat, 17 Feb 2024 16:02:22 +0100, Johan Hovold wrote:
> Starting with 6.8-rc1 the internal display sometimes fails to come up on
> machines like the Lenovo ThinkPad X13s and the logs indicate that this
> is due to a regression in the DRM subsystem [1].
> 
> This series fixes a race in the pmic_glink_altmode driver which was
> exposed / triggered by the transparent DRM bridges rework that went into
> 6.8-rc1 and that manifested itself as a bridge failing to attach and
> sometimes triggering a NULL-pointer dereference.
> 
> [...]

Applied to drm-misc-fixes, thanks!

[2/6] drm/bridge: aux-hpd: separate allocation and registration
      commit: e5ca263508f7e9d2cf711edf3258d11ca087885c
[3/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
      commit: b979f2d50a099f3402418d7ff5f26c3952fb08bb
[4/6] soc: qcom: pmic_glink: Fix boot when QRTR=m
      commit: f79ee78767ca60e7a2c89eacd2dbdf237d97e838

Note, PHY patches (5,6) do not have dependency on the drm patch, so they can go
through the phy/fixes tree.

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
