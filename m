Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D2DAC43334
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jun 2022 09:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PaBzx4p9vHjCkj7oiwawDvsPFVhcOSfzvOjTMX7a4bw=; b=yVbW8qVQmG5Gz7
	DsBD0bw9/W5vsRNzwc7dN4r+pAmI9ODg66ImzpRByMeW0ugIHqx10fqDyw2Ay6OMUlZ1zcRO6HbP3
	6exCRCFwdo+Zo22elseuDTHZFuYHYdvQa17foFZk1/1FNEsmK8S/tT44BTYs5zSLNPm9Vjov5SfpH
	oFExb1zQH8S+uQNnRhciNYGwZZYyAfIqkYnEWQMRZkRkc6quf3zJYafE41wj+t13jqtV58X2feq4m
	0DLh8W1ApSx3D8gYtAf4AhxnRqeBVVCoEdb3mhRTHOSw2xqgdq3N3um6NK7W092DV8Hf2v9npY+Wu
	EIJ219uKaVyHemE/Z9ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny8xp-000NcU-Kf; Mon, 06 Jun 2022 09:23:57 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny8wg-000N0B-8U
	for linux-phy@lists.infradead.org; Mon, 06 Jun 2022 09:22:47 +0000
Received: by mail-ed1-x52b.google.com with SMTP id v25so17952461eda.6
        for <linux-phy@lists.infradead.org>; Mon, 06 Jun 2022 02:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Lvxt3CeLbwjKXq4eA+1C9knCeSlV2LBjt2r6eE0mGP8=;
        b=xc1GlpZB1Dc3R5wAersdmWqfqehTEzQ6LgjQjefxqsiPYyp5uYV/NuHIT+PJKkRtTV
         sTbhtELUczK8DCmncPlMgXPo8wCf5CzG8aokPKOB8QlZk6rVo3pqcYNAxqZ2CcYJSeho
         KaYnqR4oof3zkKYFizSnSpaQi163NrYVsFPXbXBwsEzE4AzSI8vKsUEUT1gj5ZE/PFba
         rU+z3uTMeCThvCiR/6PBQ1EAr+Dd5M9ZsOKdEqL9FRTpua9aWRPMvDOobJUEOY9aZB+S
         D7C/bN7/Z9bGkfmBGQVnGoB5W/oolFo/juvUI6zymuuWEEiu2F7DxOw5JvBKPG5ILBGc
         WxHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Lvxt3CeLbwjKXq4eA+1C9knCeSlV2LBjt2r6eE0mGP8=;
        b=77QLveP/A+xNL/0w6rkmkehO+ukPXoA2Fcu9cEIwchdkyHaECbNJj8DGCJfqaezxOo
         tdj1WNX4q4TCiD0IE7Ta1q9DLifmZELKcvTNwHjxa3VPIjZ7pTzOq1Hcym1g4wZN8ziL
         9FzWTaZEksNdADYtaW2iPQvzDfL8mO16ox42VgyDSP25UIkqY2cw0kfSz5Js/sUAMH95
         se3SCk+3SHE3H1s7SU1OtqVM0NrMNc7UQhYFWBqi8m9b8xwcAWRo42MaqDZOOs4IrIFQ
         LI40zSsU7FgL00xkhPO74e37fccoh4QmeNWRpwayORLDBNzpMHxpS3KUP02vHy+uupZz
         uxLw==
X-Gm-Message-State: AOAM530F1B/EoCQFortKM0YoA6h39NuvlXA59m9pKaFHOeU7coGSjoCJ
	X4wYoL+Qj8h8+U6hYG/44CHwsFjkB7DdNA==
X-Google-Smtp-Source: ABdhPJyZUTzWvyPC/I8lpqer8nndNB9z7nWaxlzgO7IQeEBsfo2ITzKEz5SnseCK3NQq7UX0JQrYkw==
X-Received: by 2002:a05:6402:27cc:b0:42d:de37:7e42 with SMTP id c12-20020a05640227cc00b0042dde377e42mr25773491ede.200.1654507365897;
        Mon, 06 Jun 2022 02:22:45 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s23-20020aa7d797000000b0042bc54296a1sm8141292edq.91.2022.06.06.02.22.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 02:22:45 -0700 (PDT)
Message-ID: <c86cb9c3-5fac-a990-f4cf-5aa8e4fe8a75@linaro.org>
Date: Mon, 6 Jun 2022 11:22:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 4/6] arm64: dts: exynosautov9: adjust DT style of ufs
 nodes
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220602053250.62593-1-chanho61.park@samsung.com>
 <CGME20220602053329epcas2p407039a6087b6c460d6687b1cc1f3872a@epcas2p4.samsung.com>
 <20220602053250.62593-5-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220602053250.62593-5-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_022246_378850_71AC6C3B 
X-CRM114-Status: UNSURE (   8.04  )
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

On 02/06/2022 07:32, Chanho Park wrote:
> Drop "ufs0-" label name usage of ufs phy and hci nodes.
> Regarding the comments of reg properties, we don't need to illustrate here
> because we can find the description from the dt-binding doc.
> 
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>

This does not apply. Can you rebase and send the DTS patches as separate
patchset?


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
