Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 059D6C61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 15:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FR+/6rB6hjOpKhlsCH3UJhL7E54bS/O2mdvZ5bI3Wx8=; b=IOr7BaxXn4sBmy
	PENVx3ADShjgOQtPeSs55YyIjWOnf8/sqBbQa9b4TKZQXUf6yLChDoszRHbKV7IpKi8KJaR6ZtZqv
	YdQBRGBM+6zi2I8MUYYVf/vjtqREykEMk+k7YiafPLGrC4NlHotf6GRd9heKOaYFmko9Hxa1KwAw1
	ZpQDdkFGpcDbCye6QA4QZDRzMCVSsOB7esrqsHwAnPUa68IFUG1ALkbCu0MWnltt/A2iQAn5KXTCA
	jmAZsTR0AvlUzBPer8gs96h+kMl1W9/4aKTznOjZpSH5q6Blnt6b+E6Dw/5jQvOw6JuwNimln0V5e
	HGEe/fLEPBucSPi9/f5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNxiS-002dNy-DQ; Fri, 03 Feb 2023 15:11:04 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNxi1-002dBk-4l
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 15:10:38 +0000
Received: by mail-wr1-x434.google.com with SMTP id q5so4972297wrv.0
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 07:10:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87My+JeR7sqZ1pfnH2W1D2Nc/Mdh2BzT+5B0uXWCyug=;
        b=nZGpKqoQoCssVtc2Q840o1b00JIsIYqWwhSsoghl3dnRl8oxQElnedMQMFGuYj/wuX
         OBB/9jdchX8JG8xa89f37J+fUta0Id3Z5kzSFwp/ozZ+lcfRP+iwB8xnAn2T7v5gbBl5
         +rgFjFHOkTuNB+oIzEo/c24rU3V0Mwx+BtJK0b4WykL1j00O51abOCuvd3MM/phybBzI
         Lo4ISfDL4e2BTU3AJXDBb/4tH62hvhh1rn0geCDQlCa9grKo4I1/hQDGtrQGfMF4eKo2
         Czvrj9ZI5bRlkuhv/FSoWLvcwTUukm2U/DGB46I0PgitItY9FladO5+t5nXvjn5dYC/u
         w5sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=87My+JeR7sqZ1pfnH2W1D2Nc/Mdh2BzT+5B0uXWCyug=;
        b=YzLGeSJpnjcoIyJn+OyfVHx+zd7Iw+B9Yn2vVQvcxh3G06D8GhunlbHRRy1AzVGg26
         D2kVe2qbtuzoFKuRiwUhT3JupYx0vp/QduegQcyZwiBXokWzMi+2zK+I2TuEPu4gXRPh
         iP2OSGg9PXgui+faUPF+h03lvtYqriQ1/ig/yMyh1CN+C9YP7rH/K5Wlo7h8TSXvRd7q
         F1gFhQfCt0HHUwgP4B1skQ76wJngRB/9PiUqw7tObHU5xRqhg2bdeVijVDFzunw8Lxkg
         rGPyDO3rjQHQJ0uAAD7frLb8ukdem5p1XIoJ3BJ5WuCwCgqJMNG4PAmhTXynWmTUxvRz
         H4iA==
X-Gm-Message-State: AO0yUKVkBb9NkIhPdgbyFKrAb/RzJDmLpKArjw8bepiae2F/c4OUux13
	fEuak3IA76RotqQ8FhTSVbqucw==
X-Google-Smtp-Source: AK7set9bMWKMQIGVOq16PvxwMRExF7f4Ud9MDmGkSiRQs545t5i/Ztb1oCgu3jSplEY+NdrcRo+nPg==
X-Received: by 2002:adf:c754:0:b0:2bf:be8b:32e with SMTP id b20-20020adfc754000000b002bfbe8b032emr9171799wrh.17.1675437035151;
        Fri, 03 Feb 2023 07:10:35 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h4-20020a5d5044000000b002bdf3809f59sm2202419wrt.38.2023.02.03.07.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 07:10:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-kernel@vger.kernel.org,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	linux-samsung-soc@vger.kernel.org
Cc: =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	phone-devel@vger.kernel.org,
	replicant@osuosl.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Henrik Grimler <henrik@grimler.se>
Subject: Re: (subset) [PATCH 4/8] phy: samsung,dp-video-phy: deprecate syscon phandle
Date: Fri,  3 Feb 2023 16:10:27 +0100
Message-Id: <167543702106.62628.16413307774564578316.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-5-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-5-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_071037_214275_F5B2C4C7 
X-CRM114-Status: UNSURE (   6.99  )
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

On Fri, 27 Jan 2023 20:40:53 +0100, Krzysztof Kozlowski wrote:
> The DisplayPort phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.
> 
> 

Applied, thanks!

[4/8] phy: samsung,dp-video-phy: deprecate syscon phandle
      https://git.kernel.org/krzk/linux/c/f765360d291e5f44d454eceb250008fc2e07badf

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
