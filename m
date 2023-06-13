Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D96ECEB64DA
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 19:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/qfKupXrkMXjCh1wXjtOd/m/PF1FxpHt3+uQDcFyvs=; b=00LSB+KCSNQ84P
	SRWJyIqbLotJAgw57EmWeMd7jRVzbdCLRvUpGoSxi/DUA2OGC8EW4+9KDoff1o1AL9GSbSJET6d8f
	5HAHZ7hq8CWnsBAakJKA/q53y361Qm+5P5+BIEnCvr0oOobR5xc4Mi4a25679MKlHpEwRAkn8aHO3
	lj4uOI0FRcofFIH/bV4x16RJntPtdOlaxfXKNtO3S/zKSq36jPucVZzmGYsF+JtKw4+4C4PabuxPE
	4+Un2br8wgsyhsHc336QK5CoTveeaKjCqmK8R3Bqf03Feo8jj46guNEtC20KQpwZV+7sdTrUulJyp
	7oCJJYMri79pA60K6A4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q99Hp-008vJB-1Z;
	Tue, 13 Jun 2023 19:02:37 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q99Hj-008vGN-0l
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 19:02:36 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b219ed9915so71573721fa.3
        for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 12:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686682947; x=1689274947;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2EVZcCPFB1GTJ+QWap3KhHJTy/gr52NKGXQAEAB4e6g=;
        b=d1DaQKWjqf0ITS2F+w4PLAzozKd3B2kVEP+nM0xGjvFWXaDuKQZ5/EBkiiIvK/g5d3
         nk37E0ZroYqpL3NOw6Jmo6h44Ub5TLb2ZtLRE5aBNmEF8tkGfpyYppmg7E/RbH1egjVM
         RrRDPmZGgVucBOsBf3vDDqLEP9HfwjfY5nIyldccS02j3inZljQJzsS3LGP6CF/0K+4C
         XYR6RxrUel3RHQ79ZDG4oa5w3twaAUZjKzjYngWvvIv3yRxhVQpGMpo99U1sQNKHcdQ6
         F1j8bxAgKZXNk55/5sf5pnSVplpGCeBIaRlFhKN+m4y73YOPLFXxip8YhQWc7vLnfnyr
         sppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686682947; x=1689274947;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2EVZcCPFB1GTJ+QWap3KhHJTy/gr52NKGXQAEAB4e6g=;
        b=BPAIppUmRjBFJzLuZfqsaDcqy9hBGWToiqkrgDB+81LPy93kd0wNG7gAd/8q3Ge+xl
         xfIgw4wld3bKLvAfpjAY7rNrumOMKX6ttMptHz5Z1BbukWWyFqxFiYgsaMzccyHDPHzL
         wmqG5uo8aiiiBf2WpU90+U2kuLAlXv0luGIdonFrS+AfkUFXnw8zpO9ObGP82iA3/rNC
         n0fEAjtlAcL7gzCZHSSkhA5VmndDrXMZuzK8y2BrgbP8FctPrXoIQd2RkvM1wzWFCF8c
         LpCprE5s5+TBdhFynDeGTME3IcqtJ59WmvkYIYwdDJOBnBicf+NnqcSG4ek33mg4DUoA
         5pRg==
X-Gm-Message-State: AC+VfDxHFaA2reB17K3slNn+sOt0LUBhWtMl+fv6KJP8RG1bWcoi6yd5
	gqKcVaZCksl6hg25QdjjNciTQw==
X-Google-Smtp-Source: ACHHUZ6DjJpRPOvESX58e85nO9sR6PlnFNzsWTps7zd03Gu0DU4gLGE7Uf0OlVChY2Jv6wdXtQcFjQ==
X-Received: by 2002:a2e:9096:0:b0:2b2:16:45e3 with SMTP id l22-20020a2e9096000000b002b2001645e3mr5023381ljg.53.1686682947178;
        Tue, 13 Jun 2023 12:02:27 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id d7-20020a2e96c7000000b002b1ad0e7357sm2258898ljj.51.2023.06.13.12.02.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 12:02:26 -0700 (PDT)
Message-ID: <0a57a9ad-67ab-cf1a-9bb7-c645de833450@linaro.org>
Date: Tue, 13 Jun 2023 21:02:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 24/26] arm64: dts: qcom: sa8775p-ride: enable the SerDes
 PHY
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Vinod Koul <vkoul@kernel.org>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-25-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230612092355.87937-25-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_120231_301778_CB421FF9 
X-CRM114-Status: GOOD (  14.89  )
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



On 12.06.2023 11:23, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Enable the internal PHY on sa8775p-ride.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

---

Bjorn, Krzysztof.. I was thinking whether we should even be disabling
such hardware by default..

Things that reside on the SoC and have no external dependencies could
be left enabled:

pros:
- less fluff
- we'd probably very quickly fix the missing PM calls
- possibly less fw_devlink woes if we fail to get rid of references to
  the disabled component?

cons:
- boot times
- slightly more memory usage

Konrad
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> index ab767cfa51ff..7754788ea775 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> @@ -355,6 +355,10 @@ &qupv3_id_2 {
>  	status = "okay";
>  };
>  
> +&serdes_phy {
> +	status = "okay";
> +};
> +
>  &sleep_clk {
>  	clock-frequency = <32764>;
>  };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
