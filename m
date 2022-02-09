Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFCADC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tN3u2gn8WE6cSBkPLbk1XfCTX20J3SrktGGUoDcPiHg=; b=zJP2sSQqBp1mYB
	8zieiW7J4CVkPYtyxQVi47Ge7TMZfLA7SuZ0Wr2ZtLH+91GmmlgjvEI2p4CBIbK5ZSgudErYXI9M7
	Yzlfls2OftcL/0Ni02LfbhQfbYgA67fFh0M4C+TAMaFxoXHzDQ72bork8+xBat/DkrD0YmWAh91Sv
	n79jaB8H/whw/Lhl5X6ihw4gZHUvzR9JvkjfsP0qxccXM8kYBmqcPBLMuHrhkZEWkDbhshAGc8vCn
	gfJDXVe1hAsFxiw/csx07V03FoGg8eCLFIOGaOFWKhosVsThk0QnLcOJbfH4UwU88VXfhnUhzDOPJ
	iy45a05UahVWib1kIW3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvTF-001rJu-5U; Wed, 09 Feb 2022 22:29:53 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvTC-001rIP-7z; Wed, 09 Feb 2022 22:29:51 +0000
Received: by mail-oi1-f169.google.com with SMTP id s185so4089764oie.3;
 Wed, 09 Feb 2022 14:29:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LGItSpVyO4E2kjjIY3eLoaT3e1GMgzzef9yeodLXUW4=;
 b=QIrHotLV9YFTjYwTIyJPnzloHhtPTq4yOWt6MsOcJoHDg6Pt+Q8NhTupkhrViuhQmJ
 ti0uRc62ExspYsYDmP0mx9aWgIHu6FzAN+Q9GEdPcHGYsxmYg+cyn+b6n2+uvV/ZE0ns
 9nOUdu7R0nhMvuawyknZJCbiyHk2z9ctUVy/N6Yf8BwEN0qHpKRi27ZyJRGVCCmnnQLO
 WlAIRNzSsqb/HaPpL356rWS7Agdtx+aGN3SlR0pGmMWWYkSQOhFoKQSPpQ4AJyzTJrKW
 RW+y0U2kZmEjh+57r/yGXpm8p+wJoJy7eFmcPtjbdWppOv9tCYxrvzqxrLzX51ile6dh
 0+JA==
X-Gm-Message-State: AOAM532Gc0nunw7NNueNT7eJyRU8cVmbPTClBZvVUJwbts/ZE4VWucoa
 NL9A2N33RXvI4Xatjc54kplMXeN4IHN1
X-Google-Smtp-Source: ABdhPJycLuy7p16aiiS0Lgo2CVfXP5rkqJlHcZTXDXoCeUehiDhWgN3AMjKEs0+1dZEHYtVUAFhSPg==
X-Received: by 2002:aca:1c03:: with SMTP id c3mr2129549oic.94.1644445789467;
 Wed, 09 Feb 2022 14:29:49 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id x19sm7206610otj.59.2022.02.09.14.29.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:29:48 -0800 (PST)
Received: (nullmailer pid 1056785 invoked by uid 1000);
 Wed, 09 Feb 2022 22:29:47 -0000
Date: Wed, 9 Feb 2022 16:29:47 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Alim Akhtar <alim.akhtar@samsung.com>, Vinod Koul <vkoul@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH 5/8] dt-bindings: phy: samsung,usb2-phy: convert to
 dtschema
Message-ID: <YgRAWzYYrg65Kwg+@robh.at.kernel.org>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
 <20220129193646.372481-5-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220129193646.372481-5-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_142950_313755_4AA5DE4C 
X-CRM114-Status: GOOD (  11.62  )
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

On Sat, 29 Jan 2022 20:36:43 +0100, Krzysztof Kozlowski wrote:
> Convert the Samsung SoC USB 2.0 PHY bindings to DT schema format.
> 
> Except the conversion, add also vbus-supply property which was already
> used by the driver and DTS.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/phy/samsung,usb2-phy.yaml        | 102 ++++++++++++++++++
>  .../devicetree/bindings/phy/samsung-phy.txt   |  60 -----------
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 103 insertions(+), 61 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,usb2-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
