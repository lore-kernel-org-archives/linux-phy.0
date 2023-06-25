Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32947C001DB
	for <linux-phy@archiver.kernel.org>; Sun, 25 Jun 2023 15:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhiS7aRVRFeS4UBWzSmEb0AaEuFG3HIlY9Pu4Xv/m4o=; b=F+Dk0/0phBbrTf
	O9OZwPir2jtLWmCTvvfrvqrBoUJIoId7qHVdhOtyIdbDN+fIiej+5Pl62fFEMf3RDRwTV3IRLG0NY
	d95ojTD1aGGJM+FGryQuv02jYhlEtIOybykizDLez/qeUJ2u4lVakEyndt/gHrTBS0IFstn2wDnEZ
	BoKVCSJZwbBxt+o9DJOet5NvGmsZa6pPvHba6LD93DU7t/dKdnbMtAaQgV5C8mtZ+tcBgGVBm1cRF
	llpR782Mboz6ANR3uZ8hygr1C8tAJGDmXarWXrOpq302OfFDcuR3YjRq6EoMKfwqIh8zAhQ5kqEJj
	yFBlsJrzW1Kr6TlfRU2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDS6y-008Fl6-2L;
	Sun, 25 Jun 2023 15:57:12 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDS6w-008FkD-02
	for linux-phy@lists.infradead.org;
	Sun, 25 Jun 2023 15:57:11 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-98e011f45ffso87045366b.3
        for <linux-phy@lists.infradead.org>; Sun, 25 Jun 2023 08:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687708623; x=1690300623;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jk9fbLwshBtg/E+sEzUayapssg4ammGRuwqIP9brEQ0=;
        b=VN+M+c3rQZy30LPPT3g1IymOvFQRGdEOq75XNbGUaWDn1W+E0iLzbAraHQ4XqhDu61
         sjs6vJlTgZEkaVA3SuduebT3mw4+6LLcotIz/h+pylLSOvDRe6ZDY+Of70Jn6l0SouyM
         Dmm9FlAGB53ROX3x82bjgSuHUtOXBugyVw5M9agT5luPobTG8lHoxKs+c+9mfe1lFJ1M
         CqCXhXmY9Ic+2T2hh1nyYZjfYhj+/bOJeUKITb2ou5D9cAlyvioQF27fRlVj3m+4wurV
         ojsyfU7f3RjAJndN3QjS+lgxGr4NaYrxOVhuNTQ0dQ/eJE+7g3moL8daI6+jtk0r3+SF
         Qe8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687708623; x=1690300623;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jk9fbLwshBtg/E+sEzUayapssg4ammGRuwqIP9brEQ0=;
        b=AFw7ZeAwpaZV4834AyE1WiXPPANzQZbXliZk5anO88vDKYnBOpQNgVeZX6v1h3JvJC
         trHXDO/TvJPSS9y4yZMiSProOuiFklxxfXblgFy8xsuyFo+N5xP01/iCAxJaXPOxmPBU
         IEphIHSIjOvTHyeWIDaRNQQDzmYjFkymVwcfQyjpoYbpbGf/OLcHdKTqvtpUjQHJXuh1
         haOOLvU3RUOxW09MjYo0Wk7SWOuiAZrZ1CYzWO8CSQIQLxUtnDQV2YGHP2K0CDvBIyH0
         fArM0S8jyRJxc1ifqqyxqVjmxI+yUsVv4jxrtUVKXL2zDupX8cTPsoAPlLo74MDMIH4i
         iEeg==
X-Gm-Message-State: AC+VfDyeavE08y7qDo/RPxcOwb6dwgsxlVeBA265qWQHr0U0b0BccENE
	gnbygkv8tddh1W3NwbzABONjXg==
X-Google-Smtp-Source: ACHHUZ45HTe/R0DwBXjKwHzsWh7zum8mW5pgjJs/jMrjsfomfpWp97K6F9RHvgqvGe+DX0j/fpQi7A==
X-Received: by 2002:a17:907:847:b0:978:9666:2ea6 with SMTP id ww7-20020a170907084700b0097896662ea6mr18784255ejb.66.1687708623723;
        Sun, 25 Jun 2023 08:57:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id qq28-20020a17090720dc00b009891da61b1asm2194454ejb.44.2023.06.25.08.57.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jun 2023 08:57:03 -0700 (PDT)
Message-ID: <e0ef26e6-7604-222f-09dd-bdb131e8e69b@linaro.org>
Date: Sun, 25 Jun 2023 17:57:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 01/11] dt-bindings: phy: migrate QMP UFS PHY bindings
 to qcom,sc8280xp-qmp-ufs-phy.yaml
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
 <20230523140622.265692-2-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230523140622.265692-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230625_085710_057706_A4C88358 
X-CRM114-Status: UNSURE (   6.83  )
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

On 23/05/2023 16:06, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,msm8996-qmp-ufs-phy.yaml)
> to qcom,sc8280xp-qmp-ufs-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
