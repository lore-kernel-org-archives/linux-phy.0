Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F010C54798
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 11:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZbGfPgchuL84Vrv+1LWvyahWsiztQeUjt/4RThl+t8=; b=Hrd5hUmDtdIIiP
	R5n7aSX1dJ62iBW4P4jmuQqh6Sj+jVCfXoK80WYebvLco51Z3lbkHpAyKEcke6YwDfpkzq2+ebBPQ
	Z2UGCCRfDWeeh/LhMVVXrCqSPJBIi2Lj/LIkh++onMXRGX2END95nxjzmnLuwkK7pB4bwJdCw9569
	F4sTG47ycdqzBWcZF25P8YDQ1gHZCUFfo/Jz1vaVhsQjzKvdKIz1EIXR2OYK2E2UH9ncMZ+uW49it
	9d85POClD4HFf5LqAYwifmfiAwreRJqjrua2g4OBn5dIbTYF3hvAOhaOLhgYaCg4SjL2bPW/Oc7PO
	Fp3P77urbh93Fvc65rrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdTLE-000000093mc-2s2P;
	Fri, 23 Feb 2024 11:03:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdTLA-000000093jn-3Ern
	for linux-phy@bombadil.infradead.org;
	Fri, 23 Feb 2024 11:03:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=bvppDhK0MZnY3jxpyEm3NEhvlxl2cwohWdYTB048HdY=; b=mHMF6wR3z098cT5jVKWw0WxVmj
	/QjnJR9PDbFsPHLU5F/eLKJyxxGGA3SySRey5Lwf9r+noKjf6lB6bYBKzcDTwX5YfOE/IekYA5OYW
	8yhbzrBmDBTlto7v9w4XPrS6UZkULuUoBPy958qnZ9pd3/i8h4Yauquz/MMOlwJy2pvK+3sQKaDZt
	79zlGeYTJbkuoXF7UYa1Y0xVk8OCYkzQ/oEHt8VJ+IhkCbQyyWijGFfz3YNIBzN+5TVvvrrkq3DRO
	qyEVVbPH41MDuzdKQlGfQn8RiU7j4VvVojyqWBhHVWzQVtqYay64ldEXFHF/JI3+Ff9m4eUyGJjIF
	WRTgcqvg==;
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdTL6-00000006m4h-2Mdm
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 11:03:39 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2d275e63590so1134891fa.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Feb 2024 03:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708686140; x=1709290940; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bvppDhK0MZnY3jxpyEm3NEhvlxl2cwohWdYTB048HdY=;
        b=BiSmOLLYPI/UF40j3bfAM2erGIzSJedCnxYBgiHCjkyQ3ZN8QJg9jxXc419+6BeCPx
         f4PxPyOZFOOxFuZwtGji+poPz3WRlwMPa9Kf3D0f+buJnGeIIKZ5ZBnk7isErxPaEkkM
         /k0w6wqVY6SnMROJFsD9la/fAaTwK72e4fKJWImR/VUuIh2qrv4I/gWlK4GufMlcdsYs
         XnE+3sS6MSl4uIBKm9wOL2FL3zbI06lGQ7yLpFjEKMlQztEmSN1eb2WCRVW2GDi/Q8+X
         ifg8gt4Wm0HlGfASWxHMVn4ClRPz82D+NZWIwz30vDuJ505XR1m6d8FX+c6aWZXyWclD
         +rQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708686140; x=1709290940;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bvppDhK0MZnY3jxpyEm3NEhvlxl2cwohWdYTB048HdY=;
        b=B7n8mvZIVYS4H3Q7gk8Bom9DUafeqQJRpHzILymHHPqE5W3vrTQ0mCgHLRtRxpPKdR
         dc1oUbN1jZxvowrWbpBmc94I2zgoWPKwmu4o404cR2+NIZQtzSXw85seB/6yVeX1U1CS
         hgyqTzn7DcDZMzupKttnpeT0Kupp4ZVznpXsNNp0RKgB7hQod9bEfZcbts5CCwUfDN8/
         NlTY5X/TC1nTv5Xd2kgDAHOMkV+6zwm7aXONaXNDIcpwqlDylyPCn1aYxFzYKQo1GKwr
         yDkqZTC+PYfl8hrEovjzuV4Ki0ll2h0CWgjEgADkrvcMfATq4JfgIcQAgHtJ2vFzBKqJ
         xa5w==
X-Forwarded-Encrypted: i=1; AJvYcCVPJA+37GiTSSADhlkmQirT0ejDwzF8lqI3kBaxRtpGxExNPippypNw4fHT1XNVEczwvlDjZq4FTjGcRkwmLRDZYmCUYlh0QT8yfk26gA==
X-Gm-Message-State: AOJu0YxNW5Afepo6QHYKN2HEmMM2h2fYW6Fp2I4SQwmEmUtdO9baaYwU
	lTBz3sa2/oEDZ7TVMxX7EUQvnFIWZG+JG5Naj/LM2GJyQHZyjERmduYfI5/unis=
X-Google-Smtp-Source: AGHT+IHe13buZN2Z7XrUYfFH4yqhm26u3xIH5iaX49WfRIDSgqwB8o5s9c1/EMHFIlWHOBSHytQA6Q==
X-Received: by 2002:a2e:969a:0:b0:2d2:402d:2239 with SMTP id q26-20020a2e969a000000b002d2402d2239mr1063430lji.25.1708686140304;
        Fri, 23 Feb 2024 03:02:20 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r8-20020a05600c35c800b0041214ff06cesm1990363wmq.42.2024.02.23.03.02.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 03:02:19 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>, freedreno@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20240217150228.5788-1-johan+linaro@kernel.org>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
Subject: Re: [PATCH 0/6] soc: qcom: pmic_glink_altmode: fix drm bridge
 use-after-free
Message-Id: <170868613914.4029284.5549880672870201262.b4-ty@linaro.org>
Date: Fri, 23 Feb 2024 12:02:19 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_110336_615027_A1B7801B 
X-CRM114-Status: UNSURE (   8.33  )
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

Hi,

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

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-fixes)

[1/6] drm/bridge: aux-hpd: fix OF node leaks
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=9ee485bdda68d6d3f5728cbe3150eb9013d7d22b
[2/6] drm/bridge: aux-hpd: separate allocation and registration
      (no commit info)
[3/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
      (no commit info)
[4/6] soc: qcom: pmic_glink: Fix boot when QRTR=m
      (no commit info)
[5/6] phy: qcom-qmp-combo: fix drm bridge registration
      (no commit info)
[6/6] phy: qcom-qmp-combo: fix type-c switch registration
      (no commit info)

-- 
Neil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
