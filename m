Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5D33CCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/hC/zTpqF9e/Ml8Z0l09GthWbx9W/NURm8nXJEdYBQ=; b=ZMNa4XHzusiNWj
	VIeMH95GrMOSCyTUEM9Jeb4vjpPpAZzQAC8giuzDzkzy3bceAphDwFUoKxP4mrvPU+xVEcpqjuSCl
	RUzDmdyu9Z/UgC13s085v4KZpRU5gt/sgTrCF2GYNncQUaTSAdDGNHjA0nS8z9AKTDiSRneoQWoyQ
	Cy4iuao4SGspIUHdq2w3QM/a92faHcNOJF8fwce9ZeoRjQ8cOc6F4f2VaQc3l1HKBUBmIjJNs+Ibw
	NMT7WySujpZqhiJ9gdlt2VP75LNagv5iQrMUeYSo60aUYfYwlZncSwZIY56VHnK4B51774BBBn2DH
	T1kOVqlNmK5s1DGyZ3dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fVs-00H5SV-9E; Tue, 05 Jul 2022 10:10:36 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fVp-00H5Qc-RP
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:10:35 +0000
Received: by mail-lj1-x233.google.com with SMTP id j13so697349ljo.7
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MW//Y+wR/vSY0K3bV7bnkLXMyA5kq1WLa4rsDsrZzYM=;
        b=LXGG6cVx9PTAR+eVRqh4QX/8xcZ0yH8Zqyf46z9wtK/bNWSZHtYWyBUga41j5N+399
         fOITRMf4Yg4P2krytBwY7D7JCRXtuOzvhUrhL8bh8MrcwztzThAecyHpNQiv2xh17L9i
         d08HqxxH0m34frisD8IrNwo6gr4BcQuLxsre3oALeYQ9Yw/7+yg4TNGdbvTyjLjluiEu
         cSHJPG9u8MfqC83GoIw2GftOJJDc4uCrMlubpn/tVByeCKTCmPXm0ZEF6uK9JaAwpXd5
         C8+o5VwXPrbPOO2dcPsp/xLlslf5mF+E2yce02RyoENwJKK9DtPatgMD4B8OnjOZ6A0P
         YVVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MW//Y+wR/vSY0K3bV7bnkLXMyA5kq1WLa4rsDsrZzYM=;
        b=eaydC6ysq8RfjPD68yOpM78qXowTkCxc7eSUPRJwqM5YK2vDjPH/zvCXy3nX7/oS6X
         jGBG52twBKB67IXI003nnw9IMpIRgF2lT+xqQzcdfxkMYGYMpRjHYCbame1mOQHys5Tv
         5kGefwiYLF0CnZgQtAMTJ6VFH3TuJ4k46zm4ACgHD19ZTyLacdDrp4+ZoY6oBPUkQuIg
         Iwpdz+rpPfBMdVngaZuRr6GMoTMAFS6ebHroC0vWBgHfh9imEMh+d0IVhkb207R95kEo
         fqHI/86+Ck36/TrFi1JSxv5482wsa0raq5acRge0hOF+muvup/vN7G0+xsHRbQpElCrX
         1emA==
X-Gm-Message-State: AJIora/YTmfNHRdCrpt4kbZ7G+Wev+E+n10SO0PHrBGhpzLq0XLPSvY2
	/7VOr1ntjw0qWGsinv41o4Z0fA==
X-Google-Smtp-Source: AGRyM1su7snhFPRmmJMJWWGbBcIcFnm05JIMB0vnAYIPVE/AHQPavbtIl+GOGWg63aBZXWDf7ILiPg==
X-Received: by 2002:a2e:818a:0:b0:25d:2bc4:491f with SMTP id e10-20020a2e818a000000b0025d2bc4491fmr3240288ljg.133.1657015831938;
        Tue, 05 Jul 2022 03:10:31 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id y18-20020a05651c107200b0025a8963946csm5452184ljm.135.2022.07.05.03.10.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:10:31 -0700 (PDT)
Message-ID: <8271f4d5-e12e-ddf0-46ab-86a39577755a@linaro.org>
Date: Tue, 5 Jul 2022 12:10:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 09/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: add
 example node
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-10-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031033_970070_21793E13 
X-CRM114-Status: UNSURE (   6.45  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> Add an example node based on a cleaned up version of msm8996.dtsi.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Squash it, please.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
