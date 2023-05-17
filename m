Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BB88C77B75
	for <linux-phy@archiver.kernel.org>; Wed, 17 May 2023 18:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9K2wnxmFPIvwG6vuF2vPOyIQo4qD8QUdyVroJNWi5w=; b=bER2pmYuxteHh2
	xRXqvyhuMzNDLYz6TODU4I4PSrsw2Jk4n3SjtHK6sqMuyzi9YENNaf6FuECzNK7P/VTL8D0Idy0rH
	B4VVgKGenGVtdTWO7VT47dEtmr20ibwEbs2tKUJeRmrbPQXJKs8rNzNPYikLFNUsSxv0dRNaTNeJh
	yvuR87mniaMGfg2cOVm4KyYlu+i9Qf7w4d5cwQXZKxskSbNuis5BNTSB8Khx1Rlq0z4sxF3+b7cyb
	/PUzg7foNfaXZXJM+vE+A06nlLZ0ddhe1BsGJFcQHBBx/0/ztZVPwupicFlUw2rsSPiL+ZkGm3jTT
	+vgHvUBqYtvRI5OQeDZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzLSi-00AgOG-08;
	Wed, 17 May 2023 18:01:20 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzLSf-00AgMn-0o
	for linux-phy@lists.infradead.org;
	Wed, 17 May 2023 18:01:18 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-96adcb66f37so203731466b.1
        for <linux-phy@lists.infradead.org>; Wed, 17 May 2023 11:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684346469; x=1686938469;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VPjH+AyIlGHtcYsMCoD8SjkZqBgLcEDJmRre38IR4fs=;
        b=m45d4S0F3TH37O+Gj63MF73tYqlxMelat9CME2f4e/lla5QOkzkmD+fq8tvAnDj1/f
         5fIMbxuuygLE5OscAlgwVZbh7O8cWmg3d1j+40whh7jeEsLyPjX+X8E8gHc4EGczfnVk
         3MLQmxr5+6nmnuEdbmgFu262RZcoGA1iaOtWpebAtB+0NakFNNCGw0IqGrHETxpAkRQm
         gqgom7gHtbjw6TmjEmbWw+4cMR3SOrKD1c++tSZYivqmteixmS7LmevAFoP4HV9AZW6z
         lb7+cOT+qV/+mbqDliGaKgo84Mh7lvja/WxWddTKcn2GVtp7B8DmazUjNQ8Z7cHRja+O
         zAqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684346469; x=1686938469;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VPjH+AyIlGHtcYsMCoD8SjkZqBgLcEDJmRre38IR4fs=;
        b=F8AvpFbjbwBPlWpo8Oe251yAJutOv17s39AEtyqTxvupDCScZmBQ59dxjQF8n4+1rX
         wp2rYYazRhA1FoXY0SpsAI8qqcN8MKpoCD9aVwpzzqnyhgN27P7Ov9kP7W+mg6pVrFaL
         qvH1m4NonLE8L9BEZhwIlM74l0T78TUWWAzV7KiNR8YqsEc8cI+at14znrqYepkVsCZv
         scQf0AbmKknlOgj/z0eN4LImeaAppcehk3PZkhxoe3/djsIYu4IWgTO9v7hfw9I+xBqD
         12piM3g8f5u/K+IiyvbkJi4gIUFyWfdTrFFu2HvZMssopXnwbSRdrL/KaFW1XSGAFWeU
         DaUQ==
X-Gm-Message-State: AC+VfDxVxF/Z9pExEHtuL1zWINfNioJY2MQxu04CouXoE3ihc4cjOs/7
	bAiGCv45o0ugL4Z+9R95bBNVNQ==
X-Google-Smtp-Source: ACHHUZ4g2WtZ5hlvOmXPEF17atv8bVoLgjz7HOHZ3CGenXQf5HRVcvc35O4CYw6HgWqI7/aDgDBmYQ==
X-Received: by 2002:a17:907:2da9:b0:94f:247d:44d2 with SMTP id gt41-20020a1709072da900b0094f247d44d2mr38652805ejc.5.1684346469404;
        Wed, 17 May 2023 11:01:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c9ff:4c84:dd21:568d? ([2a02:810d:15c0:828:c9ff:4c84:dd21:568d])
        by smtp.gmail.com with ESMTPSA id d21-20020a170906c21500b00965fdb90801sm12672206ejz.153.2023.05.17.11.01.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 11:01:08 -0700 (PDT)
Message-ID: <904b0fad-16ec-6633-fee9-60c24e9daf14@linaro.org>
Date: Wed, 17 May 2023 20:01:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v11 1/4] dt-bindings: phy: qcom,qmp-usb: Drop legacy
 bindings and move to newer one (SM6115 & QCM2290)
Content-Language: en-US
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, robh+dt@kernel.org, konrad.dybcio@linaro.org,
 kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 dmitry.baryshkov@linaro.org
References: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
 <20230516150511.2346357-2-bhupesh.sharma@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230516150511.2346357-2-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_110117_315618_03D27F84 
X-CRM114-Status: UNSURE (   8.72  )
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

On 16/05/2023 17:05, Bhupesh Sharma wrote:
> 'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
> which predate USB -> USB+DP migration. Since SM6115 and QCM2290
> nodes for USB QMP phy are being added to dtsi files by followup patches,
> move these bindings instead to the newer style
> 'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.
> 
> Since no device trees use these bindings presently, so we have no ABI breakages
> with this patch.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
