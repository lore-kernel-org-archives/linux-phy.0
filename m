Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D892C38A02
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 14:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3CX+lxqxywGmceGtFfNZuEeyZ8NxxTJbHCN54oiwmI=; b=xGq7UTMuX8GUFn
	WK1B/wL+ZGTlrckjTuAGbsQG6Q+jhO+4ho4zy9SXcqVIrdtWSsKxXLZXdMqwuxyUt97f5AcZ8jeEv
	S3AaUdgBFQpEiA7drn5UvOBCoo+hGEnH5T/dsV/59mGLagO7v2kKDQCDrgB70BrNmPxHYw8bseA2X
	+qa10yNLXrlxwOS7dwUwu+ObtU0W2chyoTOM9mi5QeFJpn44FLhZKFu8R7wH5PMCEjpc+dJFu5BBp
	5gNDU8Fd8QTrhn3ndi+9tEcsH2I2LVfYc3O/yyv2nPbw5BqgL7sYyqK6txPrHrLTduVaNWlVidPu3
	z/aBHrbqaKOqMb7qph4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQ8d-00HZvX-HD; Fri, 28 Oct 2022 14:15:11 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQ8V-00HZos-Pb
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 14:15:05 +0000
Received: by mail-lj1-x229.google.com with SMTP id x21so7145926ljg.10
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 07:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FLuVgFuyXtA4BjMb6aWESdb63RSek4GWqHw+eMz+VJY=;
        b=Ld/jYiac0keX/KCiIBrM9d8Ar+pGP1UFFDF+uLNY29FuWBKOhGoCPc37eifuVOLM3H
         daAxCxygSAhoz3bnoq8b+TvdSGIeeowuA5NyhXpGi1T1zNhqwUUV8jAzqS1lPP1tD2AF
         DUUD23Uue8NwuHWWElO3iIZYYBZsy3escmm0TvPFG9bq/TWu2rurUZjxpuyEvF3b2qAx
         4/b7II9c/7fbjkpEairkH62RwOjKJo+jdK06ohJJm2erilheTZDiKC6qIFD4CVEfNqWE
         rJmB8tQIlAb7f2tF9HFdXTFuwZ8f65dG9i49DsUrvNbNXhBGoG+NH2xZA4UQ2wfRVVns
         qJ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FLuVgFuyXtA4BjMb6aWESdb63RSek4GWqHw+eMz+VJY=;
        b=4F06B4XPXnDxPqJz6qPD4f0t83/9nLHqes26qb5IRlRPZOQq+GbEWTVrZKhkkMyGqr
         J+sGn0B8OvRUgLnGO1ha1OnMpwGSgXNlWf9oqWN0ejTU+vzySGPQzziG+w+XBPKC5UTD
         MjjjzvVN/yTARE/PJ7dtPa+Y9lkIamVUdI2JE3kmJMLMOSkft9dWtQQ/ov1HHs27utGd
         JKmhWzUiV9WANBFVAOQ0Q+cuuwRJ9bP2JxGNE0TK26bCo8SbO2990onA+INVy67RMb7M
         pg7731Dn2O1FhUx11+/w/AEIwxFmaWi6z1uAuuMVAEAQXbW2rbjcn01WwYvu1oIaEG3h
         B4FQ==
X-Gm-Message-State: ACrzQf1PEOPCzlp2VqJzaL5/GXM7Wg9KxoVV1jELpu05qGcEzE5EODej
	oduDgyq93E8ujbKa/nPjIwSA3Ft6V5xyZg==
X-Google-Smtp-Source: AMsMyM5WuNvDt6NgstTUOFUL5zNU81R4kQgZexWO7XdLm8DjdmYrHzLUcJYsw6pPpq5bwAziTo47+A==
X-Received: by 2002:a05:651c:98a:b0:26d:fd1f:10 with SMTP id b10-20020a05651c098a00b0026dfd1f0010mr21187718ljq.323.1666966497546;
        Fri, 28 Oct 2022 07:14:57 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id w7-20020a05651c118700b0027628240ff7sm647551ljo.135.2022.10.28.07.14.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 07:14:57 -0700 (PDT)
Message-ID: <2efc7c44-12f2-7547-6c3d-9eda5a09660d@linaro.org>
Date: Fri, 28 Oct 2022 17:14:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v4 04/16] phy: qcom-qmp-pcie: clean up device-tree parsing
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221028133603.18470-1-johan+linaro@kernel.org>
 <20221028133603.18470-5-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221028133603.18470-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_071503_932386_7F7F1651 
X-CRM114-Status: GOOD (  13.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/10/2022 16:35, Johan Hovold wrote:
> Since the QMP driver split there will be at most a single child node so
> drop the obsolete iteration construct.
> 
> While at it, drop the verbose error logging that would have been
> printed also on probe deferrals.
> 
> Note that there's no need to check if there are additional child nodes
> (the kernel is not a devicetree validator), but let's return an error if
> there are no child nodes at all for now.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 34 +++++++-----------------
>   1 file changed, 9 insertions(+), 25 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
