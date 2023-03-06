Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 278D0C61DA4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuoANYJrV97DTaT5Kwzza/9b/OlabwcflJnH3zVDPHQ=; b=1R2drFfTkEv68n
	lZdwOz+ls9i8t1YaJgaM675GeUxrgRj6aNte/DlD0aYTkZOWNvbXIych1JeZDlk3+zo2Aq//CHTh+
	+ktY1IhwBAsTdjAeaGJ/sa0xViCROj6T2eFu00eLzm9srA86SjOqKzDL4mYlnP9oFo8iK49k6ZAtD
	rtRVR13+F+CdFH9+52M6ndNY9rh755DNe2z5jwtzK58kP7a11QDze34xjxb4UM783SHm7i4PIlzOF
	o8aWhBUFo5qsb8FROHmWjcYSaQYUB50SI85ao3dEHwo4fEUo6IpgdIVPMUvLlmY8vMBmAhnoNxjTs
	4Tsj0pXR2N0+zXBVqvAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ9Gu-00CWKI-4s; Mon, 06 Mar 2023 11:44:52 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ9Bh-00CV3R-Ky
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 11:39:30 +0000
Received: by mail-ed1-x52a.google.com with SMTP id da10so37283528edb.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Mar 2023 03:39:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678102766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UBm+LmDf7JpRpW0pbr+OMw7xDIF/iYcLmWDF8FxyxO0=;
        b=GJVkRcRVFuVw5MD5Efoncf6o7vTfmRPLCakX4v+i5vjiN17Ft9D0yPaa2IpKOMyR1/
         juIrjwqNf98Vx0tGf4RjhFNmMtpogZO/uo5hfBm8dUqojl69f2fF2Xvw99qeEHrkb5Jj
         Ooxzpoj8PIyeYhknWvm01h+gzVJ6dUliw6L5VwYS2FY4SNOxRxKUemnMXq02NTXmXiw+
         p2kiEiF8oIdwgH9J5/Ppwvx6GOy7gUWp3XDUz9aLtWx4se9fGyM3VJww4h+IBXzlkDaY
         lfCJTCwoMUI50cHEE7yU4gW9j3YnSkv7c0qP9dLMqYmjfz+0vyxlqWEhgRt6UKiHJyxE
         PWDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678102766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UBm+LmDf7JpRpW0pbr+OMw7xDIF/iYcLmWDF8FxyxO0=;
        b=Pgkeza12FPBUgIG0CYG4gqtzzp51F/l9Yd0ycy/b2qlooyuoXw8i//JhO7yx4yYCjB
         3aMo/DcOb+octw7SZk304LRipiVGD9VmNKry42HGCAoKebGs/U4gQ+RO3LGH2Xtfis/F
         f3WILbz1rDCm6tRjwpELhZ4WMkFY8cVSIyu2T4s9KOIQuIzHsZ/jSSfkm8XUK1CFFpqh
         mU1l96Uho893GYmNQ0R+rb9mFshzyhaZZQ0HTtJEv0LEVVVMycw0l3GEv2i/Nn7sc9DX
         +bn9rZd9zbXlz/VbDJC7lm3cIDQvNGjzQ/8Nyf8NDJDsc3H2PnLBwq7KRYvZ7XOyZo0Y
         mavQ==
X-Gm-Message-State: AO0yUKXJo+u5O0f4tPhvglGxL818xN8Ix6yv5WUqcyQi4LivnnDWsLMQ
	iyEKFydDTQ9p24Op/vupxhuUvA==
X-Google-Smtp-Source: AK7set+3LJI+hqfpj9jjbS9NQiNFrIaeLnk+h9q8tvMSttpZOJ/9DU0LtZClQcEUdXH3HAVW+7D4LA==
X-Received: by 2002:a17:906:c001:b0:8b2:d70c:34ae with SMTP id e1-20020a170906c00100b008b2d70c34aemr10877241ejz.71.1678102765790;
        Mon, 06 Mar 2023 03:39:25 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id ch10-20020a170906c2ca00b008cf8c6f5c43sm4411936ejb.83.2023.03.06.03.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 03:39:25 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-arm-kernel@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Henrik Grimler <henrik@grimler.se>,
	phone-devel@vger.kernel.org,
	replicant@osuosl.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Chanwoo Choi <cw00.choi@samsung.com>,
	=?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>
Subject: Re: (subset) [PATCH 8/8] arm64: dts: exynos: move MIPI phy to PMU node in Exynos5433
Date: Mon,  6 Mar 2023 12:39:12 +0100
Message-Id: <167810274096.82312.3611753501270461912.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-9-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-9-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_033929_692309_9B25E139 
X-CRM114-Status: UNSURE (   7.53  )
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

On Fri, 27 Jan 2023 20:40:57 +0100, Krzysztof Kozlowski wrote:
> The MIPI phy is actually part of the Power Management Unit system
> controller.  It does not have own address space, thus keeping the node
> under soc causes warnings:
> 
>   exynos5433-tm2e.dtb: soc@0: video-phy: {'compatible': ['samsung,exynos5433-mipi-video-phy'], ...
>     should not be valid under {'type': 'object'}
> 
> [...]

Applied, thanks!

[8/8] arm64: dts: exynos: move MIPI phy to PMU node in Exynos5433
      https://git.kernel.org/krzk/linux/c/2a9c708411834661e5b0ffb817a8f82f1a2f108e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
