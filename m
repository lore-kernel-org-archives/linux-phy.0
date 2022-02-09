Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC431C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffAybvZIfxSMJHJDE07lRLZsCw3laA0nGFK1/RAEXs4=; b=I0ON0m8gvaQjtT
	ogMSByVlVpEnlJudV/oAokR4Patt9RdvdIJKwxEpgK0gK+mR9c/W/YL/nSherI5feam4DQ8taerq4
	m25fuYF8xfaTBZBuNYztDOzlg2K+kEl1q2yj/VM7NJs0KgWVvZ/xdKILoCLOU9C1v0MhPNlEhnq0r
	3iQrZXz3rginKiM8ezIfOGm8J5h0rdynYVd7IgqR2Qv81cgSGqH8hXbKBUjc5xGi5P3a1QDg9giki
	PPeKhycsRUywjHykmTTR03H3G7YsqKMBaSHHFGg9ezIHc9qIj3ci/9n4UlWkKG+LXGyBu8Qdu38bK
	unMMrUTONISB+fliVUIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvUg-001rui-6M; Wed, 09 Feb 2022 22:31:22 +0000
Received: from mail-oo1-f49.google.com ([209.85.161.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvUe-001rtV-7y; Wed, 09 Feb 2022 22:31:21 +0000
Received: by mail-oo1-f49.google.com with SMTP id
 u25-20020a4ad0d9000000b002e8d4370689so4156139oor.12; 
 Wed, 09 Feb 2022 14:31:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2H8hHKbSak4dAt/WhHv3nOZEy8FegniKIozqHwrxQUg=;
 b=zTKotnA6fB/Xa9J7qV9o1E5yWM6+zGN0wRXhp6TSJWBNPiLDyfPXpJXbpHCySFMp9R
 i3vsxpSWVHvZR2tu0ooxspcxN7/RvwvKVLkejFC4M+FJHkKTT/x4QgTd1sTFcL3bOCM1
 q4NWATQbd3g68qLfqaXK+5jMBXMeCq4AubhkiuyHoeC5YOVIfqtUjO2PTAoLV5BtWv/+
 Q/sFpbK5ND8XEyr1ljn3YKqznr2UyB7B+6t0LvhvINfp9u47oFtsKzDM3XrsyJg6yGVY
 Wvtk+BN5Y46x/bqVcUHUt9aGdZJqxhzOBC1jhDMn6Uv9MB3ybLwIwE2d1zVFKRI/34iA
 5i2g==
X-Gm-Message-State: AOAM531GJ+w/ABpj33UxphtalMPzzJoRBgGK/k6aYYS9+FxtS4TdkKX8
 ml+81qX6gKFnvCud9pZjYA==
X-Google-Smtp-Source: ABdhPJzhi4uQOX9O9kvx3kgG70SzZYn5g9JOrkWV8J385lKTQ8Qbnf+hYiD4swGjoh9lC2WmCJMqxg==
X-Received: by 2002:a05:6870:f809:: with SMTP id
 fr9mr1433761oab.88.1644445878946; 
 Wed, 09 Feb 2022 14:31:18 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id t21sm7139033otj.26.2022.02.09.14.31.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:31:18 -0800 (PST)
Received: (nullmailer pid 1059554 invoked by uid 1000);
 Wed, 09 Feb 2022 22:31:17 -0000
Date: Wed, 9 Feb 2022 16:31:17 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Guenter Roeck <linux@roeck-us.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 8/8] dt-bindings: phy: samsung,usb3-drd-phy: convert to
 dtschema
Message-ID: <YgRAterZZUpvF3UT@robh.at.kernel.org>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
 <20220129193646.372481-8-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220129193646.372481-8-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_143120_312225_827BCE20 
X-CRM114-Status: GOOD (  11.73  )
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

On Sat, 29 Jan 2022 20:36:46 +0100, Krzysztof Kozlowski wrote:
> Convert the Samsung Exynos USB 3.0 DRD PHY bindings to DT schema format.
> 
> Except the conversion, add also vbus-supply and vbus-boost-supply
> properties which were already used by the driver and DTS.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/phy/samsung,usb3-drd-phy.yaml    | 126 ++++++++++++++++++
>  .../devicetree/bindings/phy/samsung-phy.txt   |  53 --------
>  2 files changed, 126 insertions(+), 53 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/samsung-phy.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
