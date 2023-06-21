Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99FD1EB64D8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 08:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1NY2hmMuOzqQfMhjYcfHcArCpb5x33Y/n1JMXNV7tA=; b=YQHJAQlkEB9Ufz
	Y0adbRnkDSEyA8JDT/qH1CODGK9b0GaSxoU2JcyuR29FUjeq/P5XapWxVfVRQON89X9alnqcg5Bsk
	YHkv2hWiziHwsH5p/pMumjaLx04FCcptFG99dUTDl4iWbjkX0dan2CzvP7HTd4z5N1M1rQt4WKxrp
	FA/JfNsPoHwcQMM2x1RcXRKTeoyZL6lLTSdUDuISjnoFLh10P72ftyFBYE6n5kRDhvwa3bS5fXdZg
	cRsEvfIpo2VnLLNupJXqayWGRTc3d0++jhLTxuAnnJVvwkBxbBtVxO8+jyQXJk5RNrCy8JjFEmZWh
	v+Z090sFAYVjmgw7wCaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBszC-00DfUU-0r;
	Wed, 21 Jun 2023 08:14:42 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsz9-00DfTf-1v
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 08:14:40 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5196a728d90so7353573a12.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Jun 2023 01:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687335278; x=1689927278;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wFzwm0k+gSaYbrmuFD+Ct/zQgWpL6tZz+YLkGnIfg6I=;
        b=a76tJNOALkltAqWqgtPCU0wkn5mbUJV2rsmN+PBeKjidPCp+KRcctMQIsbMnOFXqL/
         XER5GsRnI7gZFjKcMcHgU3I+/zpLLnKSlHODP2Rss0DWWOHR8uYHMkkC3CCRZ7NCPX1F
         52d5DkJEg8COvAfOVtYEL/WcdEHsV5qzr9k+utruZmLC/aqazzNlQqonr6t44o+X4EtV
         Ooz+L2BbiADCJVa9bx3lCwsrppzQuF3aG/tb2G/E+2f//0aGeTmSV03uM8q6wblwg4j8
         1FZqvXCB6lTayJCICqlwWiL15Nz2wSWsYJV5VvKzuiWikRWEwTF8vaVYXzb1t24exUqF
         kjSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687335278; x=1689927278;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wFzwm0k+gSaYbrmuFD+Ct/zQgWpL6tZz+YLkGnIfg6I=;
        b=k9bVfH+S3y3CAuDwvZg3ku3BFTAvWC82Eh2MZfCVwtnpiuV/hZH4JRpBjLvwFwWYbm
         u2byeFUzh7viYVAzDRHIa2nEmDNyukmP19rq2zd0qXYVzR45djPSbm/QP7G+w4NrIsCs
         VPbQy5iXWURZ7pDjtZeXCsMOI41Rt/heTfelQc+GFlBASyySqMDR93JwPpp0OI16yDpJ
         9vU3THbcpUPx3hrN53Y33l8ONW7rOqQjBhE3jm1gHRzFmDoHhuPo8c1nmYa6QxBZvFx8
         5oi5CTNdtVhgqUmFMfFUP2m6DMp01fjnFOzdalksI/dSx2KR5pEv6lA9drkeiJ5S8PQQ
         XAPA==
X-Gm-Message-State: AC+VfDz7Ls71cmgOb3k+rp2KACN16iCtVO20X2vzvGwkOYXm/Gmltaj9
	YVMEJLtoXLVttwkJCUTEq07mXA==
X-Google-Smtp-Source: ACHHUZ7UrcFS6J/tH2I6gNeCns11XWXlOjvCQUWbFjRheU0+56SHXKbV3CU9w/ukLC9Ee3IUJHyMhw==
X-Received: by 2002:a50:ef19:0:b0:51b:ac91:9f58 with SMTP id m25-20020a50ef19000000b0051bac919f58mr4448024eds.4.1687335277701;
        Wed, 21 Jun 2023 01:14:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id q26-20020aa7cc1a000000b005184165f1fasm2230331edt.5.2023.06.21.01.14.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 01:14:37 -0700 (PDT)
Message-ID: <d0448caf-413e-912a-93b8-d76e976259b9@linaro.org>
Date: Wed, 21 Jun 2023 10:14:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [EXT] Re: [PATCH v6 2/8] dt-bindings: display: bridge: Add
 Cadence MHDP8501 HDMI and DP
Content-Language: en-US
To: Sandor Yu <sandor.yu@nxp.com>, Rob Herring <robh@kernel.org>
Cc: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "robert.foss@linaro.org" <robert.foss@linaro.org>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>,
 "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
 "airlied@gmail.com" <airlied@gmail.com>, "daniel@ffwll.ch"
 <daniel@ffwll.ch>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, Oliver Brown <oliver.brown@nxp.com>
References: <cover.1686729444.git.Sandor.yu@nxp.com>
 <8687f2221299b120e12f29fdccf264e120227bd7.1686729444.git.Sandor.yu@nxp.com>
 <20230620154856.GB3637514-robh@kernel.org>
 <PAXPR04MB94485F6E2DC5CDDBECED425FF45DA@PAXPR04MB9448.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <PAXPR04MB94485F6E2DC5CDDBECED425FF45DA@PAXPR04MB9448.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_011439_661610_3246D2F3 
X-CRM114-Status: GOOD (  12.00  )
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

On 21/06/2023 04:23, Sandor Yu wrote:
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - cdns,mhdp8501-dp
>>> +      - cdns,mhdp8501-hdmi
>>> +      - fsl,imx8mq-mhdp8501-dp
>>> +      - fsl,imx8mq-mhdp8501-hdmi
>>
>> Is DP vs. HDMI fixed for a particular SoC implementation or it's a board level
>> decision. In the latter case, the type of connector should determine the mode,
>> not compatible.
> DP or HDMI is bord level decision. 

Then it's a connector, not compatible.

> Because DP and HDMI have different initialize process and less functions could be reuse, so they have different drivers.

How do you organize drivers is independent of bindings.

> Please check it in patch
> [PATCH v6 3/8] drm: bridge: Cadence: Add MHDP8501 DP driver
> [PATCH v6 5/8] drm: bridge: Cadence: Add MHDP8501 HDMI driver
> 
> If use the type of connector to determine the mode, hdmi and DP driver have to combine into one driver.
> So the compatible may the better choice.

Why? Because one driver implementation tells you to do that? Bindings
are for hardware, not for driver, so whatever you have to do in drivers
is not convincing argument.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
