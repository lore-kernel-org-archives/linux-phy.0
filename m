Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B0A5C00528
	for <linux-phy@archiver.kernel.org>; Mon,  7 Aug 2023 13:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PY/b0pv9GW5eZxwsoLJaSfforWsciuQl2271/cXkdTU=; b=liIfW7q0cEmnFp
	TBurumKMHv4Zmh3Z8BeWT9uehjspv/CmtT9+SWnSA5t0aDya9wQNaYQpLjhgUtGDF3LATxRJeViwA
	tF+PcbkSpETivPaEFfauITTFCvsKNblSKj1T1EhxzWtGYz2RjE7s+9dR/YXD6pkASE97lg8uSViRg
	mXg9qgVexYGK/6HiKjs24zgdnHMkLEsxIwGexPoGmMkxw+aIFP3xDULTdwhVkX93AAdHceX/avIG3
	IMfcA6o5tAcYV/Gp0iDLjx0x8rEE+gEuc6+Qn2g2ZVqtq0cY7a4UnTzL7lsEyfnnj5ZlF5ZTk0sqt
	y4CmjdM7gz9uDxgsDJeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qT0Ut-00HQeY-0L;
	Mon, 07 Aug 2023 13:42:11 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qT0Uq-00HQd7-1G
	for linux-phy@lists.infradead.org;
	Mon, 07 Aug 2023 13:42:09 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4fe3b86cec1so6967184e87.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Aug 2023 06:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691415727; x=1692020527;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V04ndsVhoFiqAg3Lhb8LrdRgU/oX4pxSCs5ufHEudSg=;
        b=SgDxkkJDC/x3Dx15oNWgi9K85Bzuf1GU9HXJhXxgisqUDDzo2/+q/Zu3KZN2hDhho6
         lr3P6d9D4SwqE0MZk4GNdihmNpjF7HfhTmAanfDNL66ypzk9Vk+TF7MzKRv7MvliuHDz
         5h//+CO36OFrNIrAfr3h5tr70nGfvSRv3Xfg7jB9GCEVmixCLs7PfMU5MdbVa1nZf4FL
         pprrnLg/gKJEosTi4VBKXaRBQ3KnZ64knwdO5oja4wbFkSuT5JAsAt9goR5D9kjUD+Qt
         pJs8QT1RWzl1lon1fe2W3IYUfihZY27Kuk3hSC1PbeEzvIKy3eNcj4BQ/rPFtBMEjRuP
         hYrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691415727; x=1692020527;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V04ndsVhoFiqAg3Lhb8LrdRgU/oX4pxSCs5ufHEudSg=;
        b=MimWYzkI3/YNIqa8+x/KS0Q4NYzOedJdcydfDO63t8vxklpTmwq5z9cjVU1tUbVN4c
         1bxgp2tfguQw1vAZ4naQEIsSxTwLZf/MyzfDPwXOfSER5J/EgNuhpA3yJtw8DtbDLSb6
         8X4NZdOXmbKyzs6yVCCAsj5dP9n2pRg6Q7rI86TT0Ue1xCN7UUJOJNsZInrI7KpUZoBQ
         E/J2Vj1jHLiKq5Vvjl7IWbzn37F/0z6ZVjWVj3SYEiKp28fPjauLwjxgXSbkOBItcjvj
         5irMk4ASfzL24tmnWIMGGkCFsqIiKmLeiz3OwJ7+qduwapGoerM0PyT5IVMrzWDKCymW
         4Pgw==
X-Gm-Message-State: AOJu0YxIJulYylHzDzlpfndThyHRsxd1kE+iiR4QsNNWNx3nE9Bio9Up
	g1gECQiv97LULXE0HH6Nt3utpg==
X-Google-Smtp-Source: AGHT+IHk8LGGZw94v3BwkhV4WFkWrir/bs8fhRQO48wncnxBr0QqHzk6ECzv2auRG1H0zE9brZhuRA==
X-Received: by 2002:a19:e043:0:b0:4fd:d0d5:8771 with SMTP id g3-20020a19e043000000b004fdd0d58771mr5158476lfj.18.1691415726859;
        Mon, 07 Aug 2023 06:42:06 -0700 (PDT)
Received: from [192.168.1.101] (abxi185.neoplus.adsl.tpnet.pl. [83.9.2.185])
        by smtp.gmail.com with ESMTPSA id r6-20020a19ac46000000b004fe3a2e3952sm1511134lfc.100.2023.08.07.06.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 06:42:06 -0700 (PDT)
Message-ID: <7dfe8cda-b70a-4f67-95bf-7201469e711d@linaro.org>
Date: Mon, 7 Aug 2023 15:42:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v2 6/9] ARM: dts: qcom: sdx65-mtp: Update the pmic
 used in sdx65
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <1691415534-31820-1-git-send-email-quic_rohiagar@quicinc.com>
 <1691415534-31820-7-git-send-email-quic_rohiagar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <1691415534-31820-7-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_064208_438029_3EF1F9D6 
X-CRM114-Status: UNSURE (   5.54  )
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

On 7.08.2023 15:38, Rohit Agarwal wrote:
> Update the pmic used in sdx65 platform to pm7250b.
> 
> Fixes: 26380f298b2b (ARM: dts: qcom: sdx65-mtp: Add pmk8350b and pm8150b pmic)
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
