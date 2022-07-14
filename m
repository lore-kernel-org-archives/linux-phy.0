Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92D98C43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWwPxxMQyUVaDedsGFE+2bnWoYFRAJFnUO8faouAsbM=; b=h1u81RYRahVnxX
	kUM2L+TlVCSxtE88sgD9qDJRRtiBV0SauRPz+r+a6eMwWxgfjIXE+suPEEhlG/iR62xQ7NKv2R44Z
	19mJmIOzj3PrEj3mEdnwrwCDPrFKZN1+qq7wkTjCVf1N6dqrXfBx06YezT5QFZ8VsQu4ew3iq8Vog
	GEPFQtCSKydkDynbEgXAaK884c8uNhIIys8k3ZWngEXYfIcXNI4yk07ich/hcWzleWT/KwLEZYgY6
	qoU5HNRSQEpaao5TGspZV9wXPXB02mEJ5C7J7o0C93Rr83zmc60CfTZXQJqRa9FPR+VVZu1xNAoT/
	ng4Ld61DEgWtKGDfuZkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuwA-00CiVn-16; Thu, 14 Jul 2022 09:15:10 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuw7-00CiTh-RA
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:15:09 +0000
Received: by mail-lf1-x131.google.com with SMTP id bf9so1738277lfb.13
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TRFeXXTXwzOUXF1n3l5jU1GT6K4HDgLulMkCIGzGeHI=;
        b=fZsx0Aa7TgK5AluPUxwrimZsRFlg/bN/JQ3buBRmMKH7eXQ/rZgxoNJwhpcGRuT91j
         l8e8bFAkRyQe+ArrN+4WfbKUSbS8LooXkofNij6ydXL+2rMfkGtQI+xGb8WVDJYCJC4K
         YlzZxl/TytxnzYuA24vcut2uPFIb3Nr575WHIFYfMYJE204kkwMPY/b4fueAEQkLTaYk
         QaP3yQQqoRa74sszy7p5riXuwRTfe13MFlml/uEayAJH0aGFhdiODCvG2tkzCer7R28e
         0bvYEcbNex+mCmogMtlLzVZx9QrSkzNQQClf8Tn0Jaai+Ajg+WWNRXMe1lfiP9ey71pq
         Jq1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TRFeXXTXwzOUXF1n3l5jU1GT6K4HDgLulMkCIGzGeHI=;
        b=DxFiru71xso1rWRBy4VCuz+lSlL2Zu/+rfsOEiG8GrShUWeDWB0WWv5f+9BQuJ6G53
         weuRn1yiqNbhuSR/27SJylut/zSwWzavSYwiPBXuzrzScG7OOnrzz5KGnH9Hh3EwTXWV
         CLk3SEnoBTSP4l1U1YXcCRWiPxBobH2cwxsUIwzSvNY/aKThusMwEY22N1Ldx2MDh/iL
         cuSclQsVlmRUqAaq7nVDiV26TdyZG/OfVwHVSWl9hzJ6oeRmXyeGZdoWNVJYOoAHpfwf
         EJNNKuwppXk6MPKTQ187nefDTrslS/unwQkV783YJgO11h/vup2TcuDrsiVPpQ0VD497
         xprw==
X-Gm-Message-State: AJIora+MlQlu09FocWwSW1AsX2RoimLr+/T+dvjopnUN9Ss+Azoan26Y
	ssaKnCqo+8VE8rcZNS3y1iUr7g==
X-Google-Smtp-Source: AGRyM1sC2lRYbWIiCDX906wuVnasYpRy8GgAZP4DK6DJ+DK3ztwsNKcilXJ/9nV2DA3dsX1mNCXfdA==
X-Received: by 2002:a19:6d09:0:b0:481:3c54:ad52 with SMTP id i9-20020a196d09000000b004813c54ad52mr4886048lfc.393.1657790106277;
        Thu, 14 Jul 2022 02:15:06 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id s5-20020a056512214500b0047255d2111csm252203lfr.75.2022.07.14.02.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:15:05 -0700 (PDT)
Message-ID: <f9bddc6f-faec-01a2-55b7-eab2740120f8@linaro.org>
Date: Thu, 14 Jul 2022 11:15:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 12/30] dt-bindings: phy: add QMP PCIe PHY schema
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-13-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-13-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_021507_917835_930F86C7 
X-CRM114-Status: UNSURE (   7.64  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> The QMP PHY DT schema is getting unwieldy. Break out the PCIe PHY
> binding in a separate file.
> 
> Add an example node based on a cleaned up version of sm8250.dtsi.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
