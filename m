Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2D9FC43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50TpV6RWxFQ3X0Tt93WCu84ViB0PqeNT7a3r4SEmAmg=; b=vnQzfruf5vNP/H
	xNcjaioYrHlvpbpcGnRpxTbkiZJb9/vxFDWsq7B8ObHm0QRYjHYWsTop0eMnqVwYn7RL9zEaupqQj
	teaJ7X23cQXnSBCuMTMXGRlo+4Hjh2aw5yOVuEWCBGdp+ojQMn7rhWV3FDemdk1DmCU73seg4uPk1
	L/DRFOHjexrvoWAhOExkVaTRlvkQowkMPwoljAR9TGm+fihepXRNqO3GGVQSFyU2l+IMIzVqjWMtr
	fz35AW+Z+q2ctnpBS08vpJ2biw+yUwdBAPihsotyFR+xbUxkfXLXw6QV5oPpqEwnLTmQEKpoVcGub
	RpoxiBjv2Q1qLS4t+ERg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv25-00Clit-DD; Thu, 14 Jul 2022 09:21:17 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv21-00Clfw-Ou
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:21:15 +0000
Received: by mail-lf1-x136.google.com with SMTP id bu42so1871425lfb.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=v0i4BngGplk2bTz5VXLIN5dpkH5AFH1r2D74LwVjm8s=;
        b=jCSulb4PNhhMOOHOK64bq0VGtIugX35G0HT6umEYVhg4o+/YukaEyCGAZPpQGm3Wqf
         tKMJG6SeuHbL6/bJ0LJNtv86K2ZLUfy+2ILmPd659lTyivaISjnucq07oyLV/a1juUw3
         baoTd0rXkQPJjmuXBZlVR/Pz7F/JompiUprlhPovMoexLOfo+SAyukhy+mNdNX2gb5b6
         H2FtDCJ6ZyoYLzjGVmH1xi6AtjHQ1I17Jzre76yZ7G/0uqjgAqHugKFi/tOBVy6Lufop
         P1h5lAxM0Et0nIbS/JiT++Cq0YlLkT+h+jduefBiDpkkDLTrGog5NhcH8Me4Rgnl+sYp
         N4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=v0i4BngGplk2bTz5VXLIN5dpkH5AFH1r2D74LwVjm8s=;
        b=muPXgnaJWqTkOapqA6O/AN9zWsuDaYRhvLEx4MiXbgusRpk305ohxbpk9URQwEO2eu
         HTFQp4DLHW0zxwoEfWWNvlyMbhXb+Dzei/8z/J9+x6fh7LeSVESiwq//2vwu3uIRHwhG
         Gy54/iMv+bBwH645nsGSEWKuT50aw64+tMzZDr5BTW2fPBUUM8RceKcAAap3ee4XL9oz
         US5Fr0w3qogLtE16gQ9i1rt3pXrSgQ7vm0TS7X+a5F9wpA9FG9Y+OpQlbI2jUHBmDuWY
         f9GIKlKCsNIJeCOcZuR9nkwkuZAnJNRe2SAkNlziQosqQD/RnTi8wzru3IQXxkP+dT+o
         jmpw==
X-Gm-Message-State: AJIora9W5IZ45Q/xPRQo56POgb5Ah+KpLz2F//vnm//fDj5YZ7bw03DY
	64oYcDWrgtj4tqPOptqybdjnnkknV7cOfQ==
X-Google-Smtp-Source: AGRyM1vxTtNgElDgbwPA+GE0uhFmw4LJzUGrKZx0hrScAXEFpRG1xcl/p/HL08v+eRQEDHNJqQS9YQ==
X-Received: by 2002:a05:6512:b9f:b0:489:e00c:b226 with SMTP id b31-20020a0565120b9f00b00489e00cb226mr4713100lfv.498.1657790472211;
        Thu, 14 Jul 2022 02:21:12 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id o25-20020ac24359000000b00478fc420ea6sm254440lfl.244.2022.07.14.02.21.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:21:11 -0700 (PDT)
Message-ID: <d9b97a47-c938-b8d4-b056-bdac3e04aa16@linaro.org>
Date: Thu, 14 Jul 2022 11:21:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 09/30] dt-bindings: phy: qcom,msm8996-qmp-pcie: add
 missing child node schema
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-10-johan+linaro@kernel.org>
 <1b13f115-381d-9d50-d3da-590cebf68ca4@linaro.org>
In-Reply-To: <1b13f115-381d-9d50-d3da-590cebf68ca4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022113_849577_0AB984AB 
X-CRM114-Status: UNSURE (   9.59  )
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

On 14/07/2022 11:10, Krzysztof Kozlowski wrote:
> On 07/07/2022 15:47, Johan Hovold wrote:
>> Add the missing the description of the PHY-provider child nodes which
>> were ignored when converting to DT schema.
>>
>> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> 
> To ease the backport all of fixes should either be independent
> (preferred by some maintainers) or go to the beginning of the patchset.
> I am fine with both.

Ah, I see why it cannot be moved upfront or to separate patchset. Ignore
my comment.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
