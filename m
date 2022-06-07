Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B8A5C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 06:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOcWOVECYc/TJA/bbK1Bi5yC9WkAarJ4HD0sYDTAB/E=; b=MFsVxtWyTI3YMh
	hGeYIeyGLp7DV9BB+nhg6Kj/HUtfRbkf4QPFm5tEGImm+X6Z7/0TwMQkS+oJxB9cj20B+cByQUx+M
	goOZg38OP2u7t4m7qmSRJFr2iGJXSBdiJcuNnfU+7PDPwO66L/hjOfYkaMnEtaFzGPx/UHw/XYNwJ
	uO1DCUnc0FZNqDOfckgBNFF+h5yB1bdliZAcRj5e+brkQmzcr7uEnM9uQyxiFmkeamekJYdT4DmmD
	oWWWDyQLYmRhTSiWowexT4ydzw4xYqru6YyknSOBBstlfmTWdLTcS8JqMNVB5F97amtcwcwW4LZJ9
	f9ViDMK9xNS62mVssiCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nySll-0052aX-RH; Tue, 07 Jun 2022 06:32:49 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nySli-0052ZN-TS
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 06:32:48 +0000
Received: by mail-ed1-x52e.google.com with SMTP id er5so21591792edb.12
        for <linux-phy@lists.infradead.org>; Mon, 06 Jun 2022 23:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r44uCLGTf2LvxMbhUjT0r8kVMt7PzM2/3o50HhQ87Dc=;
        b=DYgIDzEySTNnHycxV5mkc5AiVuIxlldng1NWt7C6YzROec9/9R9+LJZpzoWO1M/WXW
         tgtUma0xRb5/u5pBofDPr7R8mroRCfSiyy4FfEgiq/pFu7Io34PkDw0yRBMlSo/ZUB4X
         1CWOUdSqjGOjKrFvwaBURkBzn1t24uTwLGA0X+h4y6+qBS/OLCvADK6RcRDlhxPkxHNg
         KR9TD0220JHIP8EKuIFQhrcZMSuhI0XfLHlR3+uvzQSTQJOMw7VzMF8IsrUkcmuKPl+F
         iXwZ7Y4lu7H9hdBy8cv26w/mpD7x3tIAGvdNrDkuZGoyy8O923Ooa4VMYWHvkrO53Xrf
         +gNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r44uCLGTf2LvxMbhUjT0r8kVMt7PzM2/3o50HhQ87Dc=;
        b=fvUS3PrDulsXdBvnA8FaH23KA09YN/BXSX3cKYZp1zsSugo9HwV3oiEgX8zYJkU81c
         e7WJsV20ek8afAqLSjdrgsakGaIrXyI0zcUZV7R998OlLba+jiYDte4qFfd8P/uKMMkz
         zAax4aMG/mZyJrqHSoWVw7MdVp2daZINrFAgYZ0pukW+uSmvsZONaa3Mp0y7+pWd4lvr
         D2Fi90u3Kir/2CVSoFGkRvTDbYwKYNkUcDMy6L7TIGFmuxubdxbmZvj2DdumPTS6gBhg
         9gwefY0V+GhktTecdLT2J++ahO2OBz5bG5oV/4jO3ZA9Xp3GkgaNLGnEEpi5KQoo+x8R
         QxXQ==
X-Gm-Message-State: AOAM532EPSw6ojVtJAfLUDD3lKUGzwE0zelianxKhp8IvSt2NlIhuG20
	7Ca1A3oSmjN0g2ORm1Mj4XLB4g==
X-Google-Smtp-Source: ABdhPJzNhIE+5I4UaEiNC2q5wJvd0rpfdEvI+zG7vUgbHITfC+hVp3AB8y+be9aU1+TaJE4vA091qw==
X-Received: by 2002:a05:6402:4388:b0:431:52b2:9337 with SMTP id o8-20020a056402438800b0043152b29337mr12213583edc.45.1654583564449;
        Mon, 06 Jun 2022 23:32:44 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id eg13-20020a056402288d00b0042dce73168csm9796349edb.13.2022.06.06.23.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 23:32:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Chanho Park <chanho61.park@samsung.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH v2 4/6] arm64: dts: exynosautov9: adjust DT style of ufs nodes
Date: Tue,  7 Jun 2022 08:32:38 +0200
Message-Id: <165458355453.6489.16621129077408311325.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220602053250.62593-5-chanho61.park@samsung.com>
References: <20220602053250.62593-1-chanho61.park@samsung.com> <CGME20220602053329epcas2p407039a6087b6c460d6687b1cc1f3872a@epcas2p4.samsung.com> <20220602053250.62593-5-chanho61.park@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_233247_055300_C4AEFF1A 
X-CRM114-Status: UNSURE (   8.28  )
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

On Thu, 2 Jun 2022 14:32:48 +0900, Chanho Park wrote:
> Drop "ufs0-" label name usage of ufs phy and hci nodes.
> Regarding the comments of reg properties, we don't need to illustrate here
> because we can find the description from the dt-binding doc.
> 
> 

Applied, thanks!

[4/6] arm64: dts: exynosautov9: adjust DT style of ufs nodes
      https://git.kernel.org/krzk/linux/c/283d046406c22409d45b3ab31a4c93fe94b66349

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
