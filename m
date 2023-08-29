Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A3B7C6FA8F
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGiLT7HQBKAxLRymZ0Bkx1qfQlG1E1TdzRyixTbWBkc=; b=PuYCDQ1gDra6xW
	EallPzaMoqfHuF6iJ0VDTFmTsfdmqcXro95m621NV7IZpg/38yFqEhmBxrIFdyz4WWqc/647gLP3U
	lRtC5pX0UPKsTH4T0uxIZogiCXe8ascoWyxG9LSqhx8Ss6+bf4S8PmxvJkYfrK39hb4YpE6tSoX7I
	DXQNBA1HPla86WrvF/4js4lvVvCzSgH+4M+IIMRoC5JFH/JJggorLjy+SH/gF25iqqq5FT5ha8sc6
	ROF8Yec8+YZESoOp+ZNXn6f+VLYqTm2cqEjDqIntDUFQqqXoSbSeW3ateqlGOVy3fRkGdUmOveCLK
	O6cFaU+8m3Hu1TVCk0Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2hy-00C08k-05;
	Tue, 29 Aug 2023 17:40:54 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2hv-00C07p-1S
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 17:40:52 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99c136ee106so610171066b.1
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 10:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693330850; x=1693935650;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2YNG7LD4K4KMxQp5UZSaL2MeLl8EFjm+UQ/TTjynihU=;
        b=KmEE7T5sialkQHA7uBm2PpWGs/ZGGqTq02s3Yw33ntN7nH7hF0rgTi6bhJcVRe0gUe
         n+7sXgY6R0X4sM3t9RrhSbtnj1wj7FIQhMmE+9XbqiOINprzleLlQnHZZBesnITHn/JB
         pvbJMvr+iOoS1qtKvP5amQio1ol8/VZSIUFHmJha+u/9YBBRjtawNb1iBqmCZTAI9U+6
         /EGo39TLk1NruxXYkr9na91s/mrhZkDa+aQcVrmEyH+0M/gX2m6YCGUWPJwRwuTNSud8
         Bh8WoteBLNLZbk9XMXJiCy0flgPIvNhFeKY9LCrheun1P9+mVwI9w0rCyGS3G9dzmVcQ
         dW+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693330850; x=1693935650;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2YNG7LD4K4KMxQp5UZSaL2MeLl8EFjm+UQ/TTjynihU=;
        b=D+8pblPfFKSirxNOXGHyT9cRSSnqGBbCdb7KgEMKCoUk6KO2mh9dV6i4AB8BukFPLk
         F5lOKDBSHVa9OkSReyeOp8nYFmroMj+TNn7RtsAL+kGUe8Rcbvm/UULELQHxIpa4F8UV
         at1DAGFE8Avh3bX/x9qBrn2cWVaMzIyso9oEtJ475YhjUqOwq0OJ5lOC83pGbo/0j05D
         amQgJYhhE+78YSp5W4Iv6bdBjftdgIQIEyNmQH8VKovT/wLSBwUedhLUTYrjKi/qMCFZ
         ITV8pMeSE1i8ybp3Wf2vuteMyh0RSLsg2yua/D/tOlVmm/+IxP0b78rvNqX4MQ3r483A
         OS6A==
X-Gm-Message-State: AOJu0YwvtTUsnKUfBUI8OqYa8b+cmtp92fGOxRPtQVxtGw1Mf5+6tfRJ
	ODA2vIOIgOXc1s2ClHbdSGYOXA==
X-Google-Smtp-Source: AGHT+IEitwmwVk9+KoKIBEHpiME/Abb3aHzRC9tehqbQ93vUndcYPbpMcUZcdG971B60lRyMIL5+mA==
X-Received: by 2002:a17:906:256:b0:9a1:cccb:5429 with SMTP id 22-20020a170906025600b009a1cccb5429mr17132480ejl.15.1693330849791;
        Tue, 29 Aug 2023 10:40:49 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id f17-20020a17090624d100b0099cb0a7098dsm6285502ejb.19.2023.08.29.10.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:40:49 -0700 (PDT)
Message-ID: <dc2f32d3-001c-746f-6dc5-58a2a6a4a8e6@linaro.org>
Date: Tue, 29 Aug 2023 19:40:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 05/31] clk: rockchip: rk3128: Fix aclk_peri_src parent
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker
 <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org, Finley Xiao <finley.xiao@rock-chips.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <20230829171647.187787-6-knaerzche@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829171647.187787-6-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_104051_509105_A913102B 
X-CRM114-Status: GOOD (  13.60  )
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

On 29/08/2023 19:16, Alex Bee wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> According to the TRM there are no specific cpll_peri, gpll_div2_peri or
> gpll_div3_peri gates, but a single clk_peri_src gate and the peri mux
> directly connects to the plls respectivly the pll divider clocks.
> Fix this by creating a single gated composite.
> 
> Also rename all occurrences of "aclk_peri_src*" to clk_peri_src, since it
> is the parent for both peri aclks and hclks and that also matches the
> naming in the TRM.
> 
> Fixes: f6022e88faca ("clk: rockchip: add clock controller for rk3128")
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> [renamed aclk_peri_src -> clk_peri_src and added commit message]
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Please send fixes as separate patchset. Don't mix it with other work and
definitely it should not be in the middle of the patchset.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
