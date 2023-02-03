Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76D32C61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 15:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrOoHY8kmuUWKinVC4FXN+Wqb9EbFucBZYeiKRiWFT4=; b=YZuD1d5DBYFZKM
	UW+1kWV5eV91rZ/BV677p5DRePIYiicEOboKFGOpwLliLHZ+w40nj56rwdbbCkZOVzraDmj7+Wl9Q
	hV7QdhiKrwTUBK/WOZB3uckJhaNBtYzUFszLh8hW7WxoDUPN+ysjPqEE3OkW1LRpd90DjggdEHDZ5
	LAnZ9asffgTVaTnN3c6XoUWtDxk526XolU6j4jbMeeYC0CDeEvvgoqSknaryiiTyVDHkNMJd1b75+
	/vd5C6niYn6tZYBD/to82BUOpbf9DQuKx6js/jOlyU+77K6/2J2bSiOy3TPWN/pySwYsn08K9Leuc
	AbVNcudCyxGM37FO+MAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNxiA-002dJJ-Tq; Fri, 03 Feb 2023 15:10:46 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNxhz-002dAH-7p
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 15:10:36 +0000
Received: by mail-wr1-x429.google.com with SMTP id y1so4941438wru.2
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 07:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kGmKrLVAinuf+Yd12cozByuxIVGNNesLNwLCgObEIhQ=;
        b=bQZOosridMitZ85XsgNASWSpQbIYYoe6OaCkcZsZrIoOgpcKlBglkK6Qade9fgx/5v
         GDvMJr9l+4KgLMHQ5XrNClvSRIzqC5KgVO0xxuDZyK01TQUJtSjIhZmGZUhj/qFmVOvL
         qtxnIiKrqKDgABE94zs+vBa81Ep9bhaTQ3gqUjBhhmekeAseaZS5LHDtx/ShyIs3NiJI
         YAA4rCFd7EwVKSegcClHu/eEIMQtX8XsYuGQ1FQj/aBTIUx4HUp0Gv3ueunTHpa6HAoY
         T+RDAQi8slgRqGO81NTBCIA82nxDzoOnFgm8MhNoBcPRPMBw9FyCO4Ushv+goxc2yF/N
         iOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kGmKrLVAinuf+Yd12cozByuxIVGNNesLNwLCgObEIhQ=;
        b=4nTuQeZBCU7R8ugFEQ6tdCIhcPmo8o8WluRXP4Uri8e4W4SpKA7WQrXw2XT9b2OYkO
         nRtVhUqxF2yTEdMTP77Ea36AdjJgoi6QuETh9gnOwb1PgRxMlKIcQBA0M5ElFhzRCz0R
         9rEgH9JPrXuogG5KbNQfyj7u/D2VuAqSFDxLuhmARfJz7cUyeNcADnEjy8V3dML0FNLx
         39vSfjCokpsuQPEr8XhfH2GjX8AVZUB4GlvijEdBaJBITMdmYi65BUdnMsHZiSlXB8BK
         hdKRowaR/rMoc8TElCrUuNOjC59Ykeh11tjGpf+5h2LGsViOiTntFHGFxPxV9PJWrzKu
         ZEfw==
X-Gm-Message-State: AO0yUKWL9kQFoeWkn07mSSos6dqSXR+0dBujckV96D/9wEynCk0N9010
	cOPK8TUxVWj5gLkk83gXtsNjemYvZo/U9Gwa
X-Google-Smtp-Source: AK7set9gQ5JH74bSBe4RleWOEM98URh1eZ02Rn1u6lvKIWMrueK9oJ7Gcfw/lDY1mRKdSvkvzqGRRA==
X-Received: by 2002:a05:6000:1e07:b0:2bf:f7e9:2a18 with SMTP id bj7-20020a0560001e0700b002bff7e92a18mr4243608wrb.45.1675437033335;
        Fri, 03 Feb 2023 07:10:33 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h4-20020a5d5044000000b002bdf3809f59sm2202419wrt.38.2023.02.03.07.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 07:10:33 -0800 (PST)
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
Subject: Re: (subset) [PATCH 3/8] dt-bindings: phy: samsung,mipi-video-phy: deprecate syscon phandle
Date: Fri,  3 Feb 2023 16:10:26 +0100
Message-Id: <167543702106.62628.547907360569271270.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-4-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-4-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_071035_297544_98670C6E 
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

On Fri, 27 Jan 2023 20:40:52 +0100, Krzysztof Kozlowski wrote:
> The MIPI phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.
> 
> 

Applied, thanks!

[3/8] dt-bindings: phy: samsung,mipi-video-phy: deprecate syscon phandle
      https://git.kernel.org/krzk/linux/c/4694dd1b9d43f5b8af710b8e4efc25d3cf388a00

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
