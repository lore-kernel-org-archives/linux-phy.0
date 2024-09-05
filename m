Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AE0ACD4F4F
	for <linux-phy@archiver.kernel.org>; Thu,  5 Sep 2024 03:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmbyWz3NcCKB9r+YnXXq1Q2s/9geCMTP/Q2q+Dx1fBA=; b=lIdegpYgs0a+73
	gY5hQFSpgMQ6p9FKDCEO6xmbJpl8BIQGWw+EwNnOdoR7J+YDllyn3ZWWfoMdrUgq+LP9EX6GNhcfi
	DZMyOF/WVlWm2OJ8msOHVml549qSfXAhc1n2qv0tm64EM9bjfs0jstLVu3etDcU5gO+QQ/MRtmQxT
	hzDZNtcOpqBCUyPCD5JWkCnaVLX4xjs717lgSuIT6f/smH9059dmevwnpSaG3ERQ2Ro9ex6tEYCxG
	yCtJAzGon/7IGHoUtGOFzwSPdQInuZ7vnnB5QqdHQaS+Ta3jXWMt6GsfNnZG7ODalvuZeInOyRYaW
	2BbEOpmtf0tZu+yml9mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm3Gc-00000006pNl-3sVu;
	Thu, 05 Sep 2024 03:34:42 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm3Fg-00000006p8i-2rym
	for linux-phy@lists.infradead.org;
	Thu, 05 Sep 2024 03:33:46 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-53567b4c3f4so211604e87.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Sep 2024 20:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725507223; x=1726112023; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dGI49nIoainLFaa1TPUEgnROODaXfiT1w+95Y7KXH0A=;
        b=D+2vGRGzrVLAs0sGrJJIlKLqJS5rb9OcL1cuSsWjFrrvZkQOVWqLDxWBH8cTriabHY
         CMye6KUB5b+bjfiqRlisGMMup+F3WWXrJDfL7E/6PLk1GoCK0bWqjxtIAGMKgnS2b0W0
         irIaKW/+7Cgycy2S6lX8mwjfDWRlTgMS4jCNi4oGwLa/8Zo9QxjBweYCCq3yxdyJB4DM
         lWmwMBAq5MOvPd2m/q27pdV3D8Rrb7HQ4UYgu4ichJcUNUXohge7Y/KY/+0yjQ6mLXk8
         9qxyqGUs+1/aQvuiAE12+hSnVztPewJqdsXtYopM1eg3eVOppIeDPwhcDS86+ubMFoJj
         wYsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725507223; x=1726112023;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dGI49nIoainLFaa1TPUEgnROODaXfiT1w+95Y7KXH0A=;
        b=NHLrapod3MMIGaz6ll6fR3syIYw3f9O+Y1YzGL0McOU0NT9oGbI4/5Mq/+HaXzyq/s
         YQmcxvoDdX8qwzzVDChpJSMWFLrKb8ok8PsYbL/aNK4aGxrS0CxrhSilePZ/bobSyueu
         X3ZeDV3xokykV5Ov0h391viuICQZiH9t2Z2LNOhsnl4zbzZDGNoVniEgkYujeifcVzX6
         L9WSBA8kVbHKAFGeVvDdn+Aru5c1mw3L14AtwUQWkkNq+GN6PqaWF43aSbAMchozcLKK
         uN606VFe0ze0oMW28BSyFmWgg7mgGtOJRjior2nyjuVN4R+5H5HEqHvy3rbfdK+7PZMN
         szKw==
X-Forwarded-Encrypted: i=1; AJvYcCWmrnQHNny9NnSKcc7wBBk7/vXzW4l3+dNvcueqorJ4IyWrPT0LgyG6c9HIwCwqnbh3ZlN4QSehBEc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzoj8W1zwDz7OTaW5JgEn7RwRSFQvSBKE20oj3HLUQX1NpQQ61H
	nyTvnFPnvS4MHRGnV3B6MNQnHupw1q+3W/NiiuYbZ06fDWsMX9pa3lfK/VpoPuU=
X-Google-Smtp-Source: AGHT+IGI1ThGNwiYzgjZpB38Gzh3Kii8Shn3E44t5s6JycEWNTDgK8ZwOGUE8abD1/FHADwkhMcSXg==
X-Received: by 2002:a05:6512:6d2:b0:533:44c6:1ef1 with SMTP id 2adb3069b0e04-53546baacc4mr12832555e87.56.1725507222640;
        Wed, 04 Sep 2024 20:33:42 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53565f6d409sm389165e87.35.2024.09.04.20.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 20:33:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Marc Gonzalez <mgonzalez@freebox.fr>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Arnaud Vrac <avrac@freebox.fr>,
	Pierre-Hugues Husson <phhusson@freebox.fr>,
	Jeffrey Hugo <quic_jhugo@quicinc.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v7 0/6] HDMI TX support in msm8998
Date: Thu,  5 Sep 2024 06:33:36 +0300
Message-Id: <172550712143.3299484.1580127137460046609.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
References: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_203344_753731_D944791D 
X-CRM114-Status: UNSURE (   6.00  )
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


On Wed, 24 Jul 2024 17:01:33 +0200, Marc Gonzalez wrote:
> DT bits required for HDMI TX support in qcom APQ8098 (MSM8998 cousin)
> 

Applied, thanks!

[1/6] dt-bindings: phy: add qcom,hdmi-phy-8998
      https://gitlab.freedesktop.org/lumag/msm/-/commit/8886def25eef
[2/6] dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
      https://gitlab.freedesktop.org/lumag/msm/-/commit/656810411b1d
[3/6] drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
      https://gitlab.freedesktop.org/lumag/msm/-/commit/a61eb17f40e8
[4/6] drm/msm: add msm8998 hdmi phy/pll support
      https://gitlab.freedesktop.org/lumag/msm/-/commit/caedbf17c48d

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
