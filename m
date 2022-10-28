Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6558BFA373D
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 01:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7V40dXGB6Gu8oX2/UtIBtXgHavQ4d/bqIzi3ADY6G0=; b=WK35b+qxVjiktK
	e2UqNHoe2ZEPvgTjLJvVmt6sz+drs8uebNIULQ26KdT70WR/AokgbuAys6Ibqmd154v5M0WX0PY4C
	5trQIFbxV9MCk5qg20Y0gCFQgMT2rHWilUThicrcPSErY4ZWNulKTC52A7z5dXriBSbBhGzFES5jz
	Nv1PMN9GaUwLfdnH88hP4S5gehATC1mzv2ft/gSpw7I8UGXFFRZChjyU0yG6W6qYEavPiHXVYLrXs
	yZzHDTqAi0l2F5u1NT8edfu5TVG6AHdNMTWXy1OXolzNe4teVZz7GEJq6ELCesy91fm2RvNxBzGQ8
	L4kTm1930PQoFIKeT/VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooE5g-00FNJJ-MO; Fri, 28 Oct 2022 01:23:20 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooE5d-00FNIP-1s
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 01:23:18 +0000
Received: by mail-qt1-x82b.google.com with SMTP id a24so2665054qto.10
        for <linux-phy@lists.infradead.org>; Thu, 27 Oct 2022 18:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MLwwpYWkEwi2rHDPkaUbVmeOwiPAW2JTot7A9QwOgFQ=;
        b=bULDzAv18kVE4apmIm4uZAi8agzYX05Ri630ZKNgOkkET4E89V8wkDIdr4ukPX/4M4
         PUwrxo/hxqbWzbYLETaTJCEDPHjZlM6ln0WEguajUEGb7pTga6lpxVE3Go6Rp31Sz32t
         +8SItgQN5kx6HgPTYQOTNATR9L9WMgedEZvYihSPuZ2fy7xbjTLAwp/kPS9fmwf+jIuw
         e16GN7p7yFcI29Wy+jAfnOkKAYEW1r6mmTDl8yiIheqj/YuBNX2Gto1ElKGUipPzdyJd
         dXDI/xon6D2nzFuti530vrOSKFeMKBo9ymWkl0G2YSovv9IyqK/qLvDAM9O+BzbZ1cae
         Cdiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MLwwpYWkEwi2rHDPkaUbVmeOwiPAW2JTot7A9QwOgFQ=;
        b=W/ew8BVjrlX1PLDpbpX/zdmLG6Zc8riNkogN5AWfbt9zROpP5D8u/Puc41ZrmuiQ7C
         QofcO2XhaZe+/PRNws/DiU80HGo9J7eEjilHl0Rg4ApVlASOXLg+8mLHK/x1PYAeBHM+
         iK8UNwGnnazN0bbov6DmJ+rTVubnI9uTHndXf/MX3T0SVMit6vKRZ91iE3WCrYFFtuah
         zAQ2FYNT3f6iuAD/lN+Vl8EpMC/XgXYXEeX2nQHNpvz8LhdbFetK3nIidGNp6C125uKl
         CtLtNe/LghHhfr6OnOiTOnKSwJr4sZHnTHsS6umclnjG4617ANj6gJo8MuoeVBGUhnTe
         ByfA==
X-Gm-Message-State: ACrzQf1Mgl48OGBgUuUDrRFP8EaNpyt5tJBMxD6ZfAUR8nVyQ8U+eEGU
	YisVbhSeUOqNtj7FhXNYunlCKWJN9Krugg==
X-Google-Smtp-Source: AMsMyM78IpAs5htR3w3rRCmimnb7dVaaAMSgl2I9LDfVS26G1v7HrCoFNVHNjbSExX5U7wD9QP6gRQ==
X-Received: by 2002:ac8:5b92:0:b0:3a5:428:9210 with SMTP id a18-20020ac85b92000000b003a504289210mr1906464qta.3.1666920195577;
        Thu, 27 Oct 2022 18:23:15 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id w10-20020a05620a444a00b006f9e103260dsm2069590qkp.91.2022.10.27.18.23.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 18:23:14 -0700 (PDT)
Message-ID: <090059fd-c240-6e62-028f-e51dd98adc9a@linaro.org>
Date: Thu, 27 Oct 2022 21:23:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: renesas: Document Renesas
 Ethernet SERDES
Content-Language: en-US
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20221027132907.2342830-1-yoshihiro.shimoda.uh@renesas.com>
 <20221027132907.2342830-2-yoshihiro.shimoda.uh@renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027132907.2342830-2-yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_182317_125852_81F7A3FB 
X-CRM114-Status: UNSURE (   7.85  )
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

On 27/10/2022 09:29, Yoshihiro Shimoda wrote:
> Document Renesas Etherent SERDES for R-Car S4-8 (r8a779f0).
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  .../phy/renesas,r8a779f0-ether-serdes.yaml    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
