Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DE44C05027
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 15:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIYA+T3Q/tqDsq7sC5/PbUeNyhBY3NcXU1ZIDs2gyhY=; b=eBXkMGPcliteqA
	CuiMJAE13SM4UpBhVPJTWv/R3G38mvCWmHVtimm1fUEN/tICvL2EoeqIIkTWCeNv2V76bDMBl8vVr
	3hYnMcfoedU8I0V5CY7Zr88qdhnYp+DedC/CZUeOwtmjbpsNFEHQMx8duG9i7NJc3QY5FgLVJN8h0
	CJAgUAUluF+pEnzFw6Kh0onufwIo9NDZgUf84i8Ll/o1LqyDEvqzweOSxwKIUUQBkiRBHSd+48nUs
	cpkGrneLNWkxVs8JhRZE+AAgFfpSexGxinP3a1NwQbeU/MNCYyrKiytFJqm3UMI65B43rqu+nctpR
	ZEgOvDz7pO/WYLw2NENg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNxi0-002dBz-MJ; Fri, 03 Feb 2023 15:10:36 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNxhx-002d8l-RN
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 15:10:35 +0000
Received: by mail-wr1-x436.google.com with SMTP id bk16so4905642wrb.11
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 07:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z00QFSg5fVcrySrHGuabqZsbM/ZJ+bdAmvNEl/IlbFE=;
        b=Kxrz9ZoDTD1ayWdVNyzujaJqvvx35vMnc5j0E0tdBlkp7LipJ3Xz+ERyGdS3ffAg56
         mOzKC7vcLq/sexz4/2Kq4b2ty70+lwdtS03f7e5xI2/tegdkX6k9e0yBPm5Ai3v1WLC3
         K++3vIptEJLNGzpDh75ILFwf64cv4E2W3nlocB8CCXE79Ghe+K6ucbargnWAqdPhTjke
         WF7KUhAlEx27n+SIoYE65ngEgjxQd0YmBCs0zZKawtZUv+DlSOy41/CMvdefOZOkODqK
         8xbU1OPKwtqLpppCPfZYv4JEKVwNC8lnljCeoXBvo8dtvzLe+a95j643B7IoL5ZdoJLm
         7Knw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z00QFSg5fVcrySrHGuabqZsbM/ZJ+bdAmvNEl/IlbFE=;
        b=rb7wqcVx/l6hli5Xqr9/MWvY5D7r69mPS8FJdITbEBxZBSI712PoSmFR7nfg9vKKsW
         gGx3SwllwBv4UGtbNue+LEe9HY9h78bT4p7liCHwBnsivmdGXN0Agzx47jp3KTc+LsCZ
         0+dP5kupY1pozF8TO2xKofh5nX7y5Ah84067FmFGvdtsc8XVYeYlvTJmtOdJQyDr5Mlf
         dcpxddhQ5iKN5oZPyBBAd3U+/Ye2kInCK1SHejtZhmgWevtsEU1D4KDc1+tYBQr7LnO7
         gSNXnQ5hAYOw9U6wWFZbQMe9UhVhQ3ZyWYY4DT1Yo8gDLVuGallU5smkiC2P2e9YoK3i
         ciPQ==
X-Gm-Message-State: AO0yUKUVWnyaOdXETi0BhWIK3PAe2ouLfhxAzIMHT0s9DFSL+heQe5Fe
	aXICPwRZtc9AS2pBTjSi+dPNIA==
X-Google-Smtp-Source: AK7set/nBo6gEk5xmjiB5XAsO7w9bdeq4Pg/vVtdVLcygItzNfhM73dKYxtfcLWILvzxHGBxdUmQmg==
X-Received: by 2002:a05:6000:1005:b0:2bf:b35d:2797 with SMTP id a5-20020a056000100500b002bfb35d2797mr8865341wrx.11.1675437031675;
        Fri, 03 Feb 2023 07:10:31 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h4-20020a5d5044000000b002bdf3809f59sm2202419wrt.38.2023.02.03.07.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 07:10:31 -0800 (PST)
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
Subject: Re: (subset) [PATCH 2/8] dt-bindings: phy: samsung,dp-video-phy: deprecate syscon phandle
Date: Fri,  3 Feb 2023 16:10:25 +0100
Message-Id: <167543702106.62628.8149272469590302211.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-3-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_071033_936073_C696F62D 
X-CRM114-Status: UNSURE (   7.09  )
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

On Fri, 27 Jan 2023 20:40:51 +0100, Krzysztof Kozlowski wrote:
> The DisplayPort phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.
> 
> 

Applied, thanks!

[2/8] dt-bindings: phy: samsung,dp-video-phy: deprecate syscon phandle
      https://git.kernel.org/krzk/linux/c/0092b7ab96e77e6e315d0f5d3965608da32b3843

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
