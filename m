Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09E54C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qT9FoqcZj92vz93dEeI3Mcd7KNmTUhylkEWi8pYebMc=; b=07q4HVK7LpFlAW
	COdI07Yb85KJ6l9gGrLSIyPEyGIu3DHKXCSpijLhT65ogp0viJ6tPuVPAIN7K5Oc0Qm19rOdc/FWx
	gKGJOrazaA9IM0Ap4SyXeKzH+2g/yCTpTpkp2IAMutdQOXTRUIPIQ/Jc/j250+CxosQDCFAgEoiGP
	arc0rFmxMnDO6TvKkO837svX9gWhZVHINiSfpStvp70DPA7Ml2NbJY+Mwida/94vzY+FSnVkQ3H1Z
	1+04seXwQNPlyfnRIYV59tbENAnC9ZGj1g5lP/lp0ICFCayF9C+mntO1Y6fzanrP2vbIgQOeolcvb
	40qFy4MRhYyjsAo5zeJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuv9-00ChoW-2y; Thu, 14 Jul 2022 09:14:07 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuv5-00ChkK-21
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:14:05 +0000
Received: by mail-lf1-x12b.google.com with SMTP id t25so1768834lfg.7
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nwvO67pthvU0zeevtyCnNAZLdAsSKLX1m6E7/kckD6Q=;
        b=irMu+nRCb0Rz/A2vhiztdaS3OmLQs2bfGkWAjeW6sNsjgO4suKz4rVku+vivyJo8P+
         T2IfYYFCRP2pALyqJyXcloCeYsHys2hO7N/XXRERSvwDrnIQSvQmWNOgcJJ+CVQAWb6P
         x+3SypgDDjIH6k63vCI9zMkoyE5OmLPbhkLnfwkKKbXDDjD5xadgwk4X1tWs7+ckG41X
         mZJgPnjZ7Zgpvvvdh7hjkwm3sRGQuLbB6WFCbzVH0d7ehKXqsUp0+3LCWWUlV8VdMLU7
         zyRbmtBois5WXzrdGKM2Knjnh2qPW339D4WChQaFYg52L27LffRcrz713AuxVS6PE/v4
         qhlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nwvO67pthvU0zeevtyCnNAZLdAsSKLX1m6E7/kckD6Q=;
        b=yaUzLu9SGRdGEtr/WPSZr5+BAcgUdXumDV7Wp78NtYrrBsGaL/mBrpkuxd5ofIX/mC
         19FC1BSDB7kQYKgAa1rR3risnQAdyXUQAQRS9zvOzsrVY6iyY94jVKI6RzLe6KXJNrG2
         CnLSn2KqUD6cXv0TUv6utfF54DJZCRUnAPquibL6ZKZ6QRe2360+kDmjKe0N9yOX8bch
         lCMZXTKoko8gMR+RBu9793yfxDzBE4RbJvl3BsONK9C9dRNABfu+XmiOG7xicBvVWe+t
         NotROZne367k6CVhlgHGOOLgNXxYFuYLwHN2CTtdbxvs9aqvsVW2wu42k6a/55Lhogm4
         YPHg==
X-Gm-Message-State: AJIora9umKpjxDxcIPC87RlIsQ6L3lnt2IHcH+C9CqE1YY1bNDtDocPK
	/4F2UpCBymSpYA7zxzklBaMs2A==
X-Google-Smtp-Source: AGRyM1uN44hG70+tSGODvdTF3iQbM3VjrcEY73XGjgx+6lSHhPIzcLJyF97ltAfGRZzDy0lqVrT2QQ==
X-Received: by 2002:ac2:5213:0:b0:48a:1082:b8e3 with SMTP id a19-20020ac25213000000b0048a1082b8e3mr3222399lfl.141.1657790041468;
        Thu, 14 Jul 2022 02:14:01 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id r16-20020ac25c10000000b0047f7c897b61sm253776lfp.129.2022.07.14.02.13.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:14:00 -0700 (PDT)
Message-ID: <4790173f-86b0-a079-dac8-282fe1d46755@linaro.org>
Date: Thu, 14 Jul 2022 11:13:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 11/30] dt-bindings: phy: qcom,msm8996-qmp-pcie:
 deprecate reset names
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
 <20220707134725.3512-12-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_021403_131410_4B79FFAB 
X-CRM114-Status: UNSURE (   6.98  )
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
> Deprecate the PHY node 'reset-names' property which specified that the
> reset name should have an unnecessary "lane" suffix.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
