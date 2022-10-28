Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9142FFA3741
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 02:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/znarBI/PNjZqlyA5pjfUykuMEHXz8QpKq2LOhfJAAk=; b=RIW43cz+zPKPda
	zpsN92ke3aLDtyVdeU9e8kN3eDanDcH0h5HZQ6xToLyIfvxnl2wtOn8gPVBVqO3stA5IcbsqdLiT6
	zfPAY5Rf1Vt2ZwiNlucc1OlV7SVpyS+jExt9YLmqtFxrl3u1A+OSH320hYEEhSnvPfIxfAQakjVWn
	bg/gRY0Nb/OkBhRXFtb7KbMK9j3h8+lpKNyDjO3wD6wELchsQL+9bWFEmDmJQvvTq7d5ctai5l/9d
	SSjscViq8YibH+UKgMD5h2gQvLWhq0r4g6omG8tHgxIew6m7I02k0UQBwN2j71AkGRuKy3BkIdCVZ
	R+72LL6U2/JM+ejZEJNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooEoo-00FTmv-TG; Fri, 28 Oct 2022 02:09:58 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooEol-00FTmI-RP
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 02:09:57 +0000
Received: by mail-qk1-x72c.google.com with SMTP id i10so2481235qkl.12
        for <linux-phy@lists.infradead.org>; Thu, 27 Oct 2022 19:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9jNJ5gOLssvCtUC1P5RUZaaZppmGVFIyqlwWASYBtXQ=;
        b=bCtABFgHMifCesxcGWQZdPCTWQcA3y4oG4YgukH0ljbdjbLLPX7CwURykfEbBel5vE
         tF8uZubpBMW3VurhcJMKhPxXGMtCG4/qBW4ysU0fj08VQelK6YzOBaBcZthUcjBNUpWY
         oGu13YRR/IbD4ZGH1zITOWJ7SJmrJNpWOjRCzBo+cnhEis4iRo5xaEq+L4TdW/qL88Pn
         K53cApjLbrB0bAsiOxFR705sFxXeYbGIbW8QOfVpDQ9fANJw5gzzZkhG7SDri8JEYLSj
         tDnDzpgLs1MCHyi3vTk7yW3OTYhtDfONHCevq8fTtnprvvKOjgQTfiP5a3N62nhHz90v
         lKZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9jNJ5gOLssvCtUC1P5RUZaaZppmGVFIyqlwWASYBtXQ=;
        b=PLhtAF3EQeUlyYfhRZ3gl0mqbux7TJkl6bHOUwZy9WxImVfZ7jdPKwK5ExE9KsIUju
         j5WMwRmO6wk68m+7hoDaTZK35T8KSPfoImbeHeOvoiO6vlHugK40etRcmk3iFCWcmDU5
         jlWljSTLB5grzKZ+uopL1EYzDCMVG+bcUmEQWJBAs8LvUkJf9WseA1geT7d/2KM5rVQ5
         OdX7JYjn3dTLl94my8OS5cP8eidaM7pIPJBU/SMgKZHmzyVn1SFjXTKCP601kzA8bHCd
         LSJWeSFekt6ZbRaD2PpfgeKw3afuY7w+R9acWIFVgYjkQdSBv42pu0tEaykGOPbNA0xC
         PWVw==
X-Gm-Message-State: ACrzQf3g8A/A5IGw+iABeGM3v7aGYTXE/wZSSVD0uVdmhAXru9hGqTcv
	cEde2AdtUJ5eKM7pctw/RuEy/w==
X-Google-Smtp-Source: AMsMyM4qjbXnWs4itU5ETbByGpSQukQHpsIH9pz8x+xIboSz3IUDYw/PyRUwdINHbb33IsO1DKG7AA==
X-Received: by 2002:a05:620a:bc2:b0:6cf:468e:b8ce with SMTP id s2-20020a05620a0bc200b006cf468eb8cemr35944988qki.699.1666922993832;
        Thu, 27 Oct 2022 19:09:53 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id w8-20020a05620a424800b006ed30a8fb21sm2096915qko.76.2022.10.27.19.09.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 19:09:53 -0700 (PDT)
Message-ID: <be3d4533-5f4e-d93e-dfec-1eaa1c7c4c8b@linaro.org>
Date: Thu, 27 Oct 2022 22:09:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 07/10] dt-bindings: phy: qcom,qmp-ufs: rename current
 bindings
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-8-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024090041.19574-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_190955_924747_7590CB6C 
X-CRM114-Status: GOOD (  13.64  )
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

On 24/10/2022 05:00, Johan Hovold wrote:
> The current QMP UFS PHY bindings are based on the original MSM8996 PCIe
> PHY binding which provided multiple PHYs per IP block and these in turn
> were described by child nodes.
> 
> The QMP UFS PHY block only provide a single PHY and the remnant child
> node does not really reflect the hardware.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 
> This is an unnecessary level of detail which has lead to problems when
> later IP blocks using different register layouts have been forced to fit
> the original mould rather than updating the binding. The bindings are
> arguable also incomplete as they only the describe register blocks used
> by the current Linux drivers.
> 
> In preparation for adding new bindings for SC8280XP which further
> bindings can be based on, rename the current bindings after MSM8996 and
> add a reference to the SC8280XP bindings.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
