Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D5E4C25B6E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 19:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jw4J/xsm5QVWEBNghRPPXv7S5HrShDxy8npDjOax61c=; b=lsM6iO5yy1trhS
	m3FZrWdOkfq7F+6FXEtIo6Ot/wY2mSlvsDCXhcTC6tE3bH26x4bPf5J9gdIPlvtp4PEWSEM0Ptozy
	F6WtPyXNQXUEHHmunlnB3SR6Zi7Y9y5LwFXozm+BriueXkS9l8XkFhE+ghhrwpxbp7UuJbRoxJTZa
	I4G7nymRv0poYFswC2zWvB4cWvcAxRZwoFnknbQkK0LSGWd2+f3W3iMcIFcIDa2i/ge9QdInMflkY
	d9J4afJEl4zoJeEfEs6dxtlKnG3JJDadn8+6LzyJrOHQkNiA2cqojMP16mRuLy+UuUO7veRIoY+Dx
	4XSy3qk9bTzXOkx3uHug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw6Lx-00F4gW-2o;
	Thu, 26 Oct 2023 19:49:13 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw6Lu-00F4g6-2z
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 19:49:12 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c50cf61f6dso19170741fa.2
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 12:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698349748; x=1698954548; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yQo5Ygp/VQo91WmeIUySmja/g+dCMkIYU04Du3vd0v8=;
        b=gN6TXvQjh2fDKbqiSFNDznjactZMFVi9UkYuUtT1ZgS0tqT9rvbUyfUqbJ/fFkeWkt
         AQdq6KzCuxzJAJc++GpRnZZVEmbshOHgH2/3xddPc/BIf9yOHpE5w/Zv8rgawcEIN84w
         C+29tTWPcB0AOhLi4dCbfb2JKDACzIdvrrwoxXs9jQFuRtisJ126n70PKOZcrXoRKi0D
         rVUOT4dHHCZUaUrF/AtX/h66p6Gc3sxcq3I+Oi40xkpci0I2RaOqKr5XkCAPGslgMy90
         sJO24BDj52NshpCdXytUOmmTqio6c5ZXkOCj5uQRdpGMH1NMVvB/lQTlUuAAEUNKsSVx
         +8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698349748; x=1698954548;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yQo5Ygp/VQo91WmeIUySmja/g+dCMkIYU04Du3vd0v8=;
        b=hJhZidZCq3b8KVOQ/vS3M2CY3Fv8Hrp/ajA3GTBlBDuE2cDVCj/ZQCJYm6TJ4LLsTs
         tu4Sru47k8kzu4aoWtlflVf8JfnG0SI2gl96EeoYuh2XhR4mmhtKpq0eBYyYfYkdE7fL
         wX8sPHFBgVW4sjQ5IsdpIRODo/WdUJ6jCI6KEAzMobR9X5v2g1+QW5bwFbrxjKOag0G6
         hyzf3Bi+WxWZrZYELHXpGbWkpHGZ8yuycryqUh5UEIgJPodRIaFpq8r2D29tBQsolNHg
         LDMOlrPJOutbZpHi/4R45FsZdsRfFyr/v/ttVQxS6yqNbrsKupQ7Dt6yl7cI1n/fxzPc
         5TTw==
X-Gm-Message-State: AOJu0Yy9pnirUArDKCgWeBpxtuyvH56b5/44ylZ4JvdepR+qa+/KUSZl
	0em3KCII/GP63s/wldITBwmRGw==
X-Google-Smtp-Source: AGHT+IGgTfzLPhO1//xaSTpCa7fs+zQz0fBWXc3bke1iz6X06ZDQRa5OfdLN69OUvgixhEZ8/69lYA==
X-Received: by 2002:a2e:a228:0:b0:2c5:462:3048 with SMTP id i8-20020a2ea228000000b002c504623048mr498548ljm.1.1698349747935;
        Thu, 26 Oct 2023 12:49:07 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id g17-20020a2ea4b1000000b002bcdbfe36a1sm3014040ljm.84.2023.10.26.12.49.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 12:49:07 -0700 (PDT)
Message-ID: <858f06a4-fe18-477d-8366-6100bfb24702@linaro.org>
Date: Thu, 26 Oct 2023 21:49:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/15] drm/msm/hdmi: correct indentation of HDMI bridge
 functions
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Stephen Boyd
 <swboyd@chromium.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
 <20230928111630.1217419-11-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230928111630.1217419-11-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_124910_964165_6099C789 
X-CRM114-Status: UNSURE (   4.57  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 9/28/23 13:16, Dmitry Baryshkov wrote:
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
