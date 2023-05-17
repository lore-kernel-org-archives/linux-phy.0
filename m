Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04F2DC77B7F
	for <linux-phy@archiver.kernel.org>; Wed, 17 May 2023 08:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPt4qWtca5laABCDSsgAJwFxp0O957//3Ijiv2Etffw=; b=bupjsXVl1KhF5e
	08HBbO9+uUV17rnH9Cw32dcb/ctGygLBSBD4Q2+phLRyqbsjN2Qs4ugUOEilWSblo2Y+NoprUi06J
	10xO/65zR5qaHfHz9HOeWjvm8nRcQnhQ7MWd57B+Dnf3O3impLxLR6yRbUDvshA7Sf5smHSsMX8T5
	rMAX5/3qbhCX3vfV6sDclFJ+2gv1+7792SMWM2W638/mlO9smfFLihn48p4daeqF+xFShpBpHYhUl
	ZRgvjq+F3xV706OZREYU9CcPYRIXnixYa75DcOpZkpyh3ULsZLuaIO+jXEzq7Sf3OW8DQ+etOob3L
	MwhPqANmCqKj0JZE3RHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzCn3-008uzp-2E;
	Wed, 17 May 2023 08:45:45 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzCn1-008uxL-2B
	for linux-phy@lists.infradead.org;
	Wed, 17 May 2023 08:45:44 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-966400ee79aso85021566b.0
        for <linux-phy@lists.infradead.org>; Wed, 17 May 2023 01:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684313137; x=1686905137;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bkpEoV4fvWHofZFJGs95rC2ymcCgXT2vPbv2LelJ68Y=;
        b=fm0dTYeX7uD6iREM9mwljE+pR5Rz59+fdb7opWly/irSuhYwLr0ehAsz8+HlxQ843H
         uRQ66mXeouWe9DVEHD1VjZ0LbRRS6tJpK8nO6pXaH1ohMguXqLYJ0JVIm38TlatoR3ai
         CjBPw43NbhfDVUURDxyRas9VPVOTxPilDzZdFIqiHYgKRQvkg1WEQb1Sk09L+YgFItNz
         +5h9EgBHZ4P2hN07YBM6Jm5pHDb+B846KOawiU22l2SryJNnFbcirSTZkLCn/oSQQ0fi
         OvpipVR+yZeYNN55F8hhP6mUlv9/PBgMQNuE/NrAtPWUeqATxtx+RNUMPvduwuVksclt
         A9/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684313137; x=1686905137;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bkpEoV4fvWHofZFJGs95rC2ymcCgXT2vPbv2LelJ68Y=;
        b=lpuC9HSLE33y61oRJpj1QgbyRKbbD4tc63F9ZVMktDN9bqqBJ5o6GT5DBWaX2vsD4u
         P4run1Z6VN1mI1z1WEdWkZ0ga8IIjDCVUqcDpBykEL1d2N7OzJc3pToxVZusvWAsNGsd
         lZd4XcCcH8eeAv460tbp40ed7YTayXxAck4Y+6v0QShHahXKf1eyNzxgrvtCWukG5cGS
         0y8DxrE0uV1VbiR4Alz4xTA5Hvi0vowiqyKrd+yKSD5wtta3kqnzXPo2QBqnJGWdp/ko
         wgeKs/DRrPfhF0TDr4jr5WCDouIwqxT3IOqezL/lgHVGyK7z0deqZhPOZmLXkFmwVhia
         DWEA==
X-Gm-Message-State: AC+VfDxAea0d8zYWsb+Q7vuxBYWxm5SjIsclfyaiRZ5lvoSTFiSGEXwu
	TpA46o067CvtTAZcWPKRtSXkiQ==
X-Google-Smtp-Source: ACHHUZ5ptAWs3fEV6gNFAegVFJwj5kBSck0Xwq9/93ooM6PFOumf0BMKlFXgtZOhD7YpZRRWaDaHrw==
X-Received: by 2002:a17:907:2daa:b0:94e:dbf7:2dfe with SMTP id gt42-20020a1709072daa00b0094edbf72dfemr40456838ejc.11.1684313137392;
        Wed, 17 May 2023 01:45:37 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c9ff:4c84:dd21:568d? ([2a02:810d:15c0:828:c9ff:4c84:dd21:568d])
        by smtp.gmail.com with ESMTPSA id gx9-20020a1709068a4900b00965d294e633sm11982610ejc.58.2023.05.17.01.45.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 01:45:36 -0700 (PDT)
Message-ID: <5a7b168e-6f66-f38c-3f5d-d05028fe45e1@linaro.org>
Date: Wed, 17 May 2023 10:45:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Li Jun <jun.li@nxp.com>
Cc: patchwork-jzi@pengutronix.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230516-lustige-usb-phy-dinge-v2-0-3383a0de34ac@pengutronix.de>
 <20230516-lustige-usb-phy-dinge-v2-1-3383a0de34ac@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230516-lustige-usb-phy-dinge-v2-1-3383a0de34ac@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_014543_715280_2C8F41CD 
X-CRM114-Status: UNSURE (   9.14  )
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

On 16/05/2023 18:20, Johannes Zink wrote:
> Add optional properties for tuning of usb phy.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml           | 47 ++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
