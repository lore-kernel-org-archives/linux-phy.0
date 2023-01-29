Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 129E1C61D97
	for <linux-phy@archiver.kernel.org>; Sun, 29 Jan 2023 10:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXqNnzOXkm5fxJq1znLuPiDUcBftXcgB096rfnW+Jyk=; b=R254VbYS8B2ckj
	hktyy6D742iXCJ8H8YWhzkI1//5QCxBHBPV2x9BaQLO7tWmAT6u+ERyWgq6mvWqK/20RgatAqLX00
	VVejo+b9LLVLPxoxCsNLgAPIwU2mA32OYH3x2craPz7TpyUjsRq7AtZxd2sDgRXlf4bqaK+XEnv+q
	tb+afCv+wg9Snyx2ly8hu/uEcQl9bjXfAcxsO+I5IaKF2toGhMPBwe39XMB+GzNC33gT4dcAdhLXn
	1OrFmnPVR/XmAZcasUDYm6ttygptGbXZfswSHQIL5f2BPuklGhgFxV4P4Wk0mWZ/mJgY3pFqa0wqW
	uWqtQ0AAYbHVbNKnYANg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM57A-001JQR-Gd; Sun, 29 Jan 2023 10:40:48 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM578-001JPp-5y
	for linux-phy@lists.infradead.org; Sun, 29 Jan 2023 10:40:47 +0000
Received: by mail-wr1-x42d.google.com with SMTP id m14so8170616wrg.13
        for <linux-phy@lists.infradead.org>; Sun, 29 Jan 2023 02:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AKh+XybqNbJwTS+RVODYj3gQs42RNsq1kxtqGoR4Kjk=;
        b=TDnhKPPsYH68DdPdxnsqSr8n2hNmvFXcfEVfz3DRssMOaF1ISTuReRrEw0vxsvr2JS
         QXA48RrhxZuBSBI1o3SchuI6LsmRZVnke1HqdIn0Z7En2J+FBoPKeF4JcZquIZGUzLEC
         lIlMIBv+hVLzyDeEJdUGeuzzxma3mPSJuzWm+PJw9Db2V7nYarrCQeIzyGVIqt/PzVrv
         cenwFGpTCk9C9+uuZq/emINhDuabB9r4zNvOzSYQUzLxMbNAInKLVhaKVSlDirmYE1KQ
         ENtjpbASmu2zAK//iJ9i2Xjgfv5JtiFMAilSyWVqySPuTz1O+/U92/s3ceH4yKziOaOg
         muiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AKh+XybqNbJwTS+RVODYj3gQs42RNsq1kxtqGoR4Kjk=;
        b=t+GeFlvvWqSThKfhPW1bkcoQ5GkJ7xjkW/MeLbDCbLEpXkZgWjG+t5p55jydUR1DTQ
         Ix7rTZZrWQqDoPmPEkGui7qzIxL1QOvW91ZAQOGJNlv/GUzwOPAeW7Cvv+64aG7nmXqF
         phSsy3uPVeP6wmWEOvEsu23wa2JB9kroub9sLnn+GaCBvsc1k8sir+tCe0tCRc3IW47g
         GXGwSQgs6N0lzbLAZ2vGpAzV+Rj0iPZa9FkDpBMiTQe+0hZEXz6UuOzAV+C58+2iuS7c
         PE3Xq06753Q4qZVKwktDNzI+u0XQxfy/eo2PfrzxRGd1DKwGRpR/lBtFflyM/k+3P7C6
         Dwmg==
X-Gm-Message-State: AO0yUKXrsbYQmx1LzKeTptxaHYzIlljFoFJfNmyOMqpviwPR8snxSPq1
	GcCJNdbDv89+Kfp5c3K2d15XQQ==
X-Google-Smtp-Source: AK7set8aaEjSgjREY25nSXIG/U6o5JXvwCrhED8l4ohr7GN6TUNZeYgiRV5y6JEEVt4naNnwzQSrZg==
X-Received: by 2002:adf:eb04:0:b0:2bf:bc75:1730 with SMTP id s4-20020adfeb04000000b002bfbc751730mr12200577wrn.70.1674988844225;
        Sun, 29 Jan 2023 02:40:44 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m2-20020a056000180200b002bfb5618ee7sm8803443wrh.91.2023.01.29.02.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jan 2023 02:40:43 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: replicant@osuosl.org,
	~postmarketos/upstreaming@lists.sr.ht,
	=?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	phone-devel@vger.kernel.org,
	Henrik Grimler <henrik@grimler.se>
Subject: Re: (subset) [PATCH 1/8] dt-bindings: soc: samsung: exynos-pmu: allow phys as child
Date: Sun, 29 Jan 2023 11:40:39 +0100
Message-Id: <167498882911.7239.17446486264996020803.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-2-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_024046_259212_9A4AF207 
X-CRM114-Status: UNSURE (   6.32  )
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

On Fri, 27 Jan 2023 20:40:50 +0100, Krzysztof Kozlowski wrote:
> The MIPI and DisplayPort phys are actually part of the Power Management
> Unit system controller, thus allow them as its children, instead of
> specifying as separate device nodes with syscon phandle.
> 
> 

Applied, thanks!

[1/8] dt-bindings: soc: samsung: exynos-pmu: allow phys as child
      https://git.kernel.org/krzk/linux/c/fe6a952b567f6a771d087d2e969914f31574d6ab

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
