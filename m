Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F2C0C001B0
	for <linux-phy@archiver.kernel.org>; Thu, 10 Aug 2023 13:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8UcEyCpsBbf4oIUpX/eIvfNBTCCge3rdij9IpUpEkm8=; b=4pxqk8gkbhj/3d
	4NuB/UfVHW/ULYIXm74zJuU9U0o6eZC2zFHqz1CpOt3TkQ7bO+rtgDLWQwwukWUJ2aYMQzkBIeZpG
	vewiSX7E5cAPzIUBFqRaESBpqfOlx7Bj52Wj05zNihonbH3MFqXe6YCj/DGHMwpiHohBPoh64Va+q
	zmqvhCvvJ+83uxs6USR/qlHCsUT5GlXTRTdFx4TxWqSYhr72exz0hmQhqhE9y5xPxl0qwv1+8/e4X
	hL4XUYfAiCuQIggCqFV1uBYOhIOKHLSOv+LSSLRWp7Mn/V+QTteY10AiZ6+UdB14loj23byIwOvYq
	WQVjl5X1f7r+XPoDeauA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU5Hm-007ftB-13;
	Thu, 10 Aug 2023 13:01:06 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU5Hh-007fr1-0a
	for linux-phy@lists.infradead.org;
	Thu, 10 Aug 2023 13:01:05 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b9cd6a554cso13169661fa.3
        for <linux-phy@lists.infradead.org>; Thu, 10 Aug 2023 06:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691672456; x=1692277256;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eqaq2qh+s+LndcnV3vQwifPWzpMoy4YKSrxCHAVgNTM=;
        b=LtJxCDHcud+FCX7JX/xsiIqAayB9O8LCNdsWksT4hTu/LT9PCaaugwwkKxkWTrmG0t
         /EJVnECdK3JIHGkMeywGDr8Z9MnfNAd7Cf6ELzhJzu9QvhzHmj4tC0X5s4CXsALAru0h
         8pObSCG/L9PM4DBlzfbsNLyAW3ENqnGhooqSdfCUfwZoc8LUan0pWi9uppgn2emhA8SJ
         4PWKPQtcomB9avni5FY1iDjADQKi6WpMA7FLrfHHZzRqYsUdfx/1fJP+11cdHrZ/OPag
         q6tzaBYVPSwH9GrPvan0Lf62kpKiL9IS0/dXvn9AKAslVMaT+m3Rgx57yN5zJ87kC0ow
         vwgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691672456; x=1692277256;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eqaq2qh+s+LndcnV3vQwifPWzpMoy4YKSrxCHAVgNTM=;
        b=XA/kU4kuLfT/OT4pBJ5KeTgibjB4doErfWvVuVGBpXULb9u1+rlfE1mLZGinw2KVmi
         Wl0X7I6XpQ+FaNI0T4T+Xy2DikhBLXjZrixn4dVXdX9IjZQWOvC8VrMLf+i4cFTGt2Br
         6H0dpHA+8O/+SiBPTCtJFQ4X+QbbU4ykxKBfIYh4T30oaIyizye6fXPrEwRL0d/zWHy7
         abIh01KkBKIIh9EuYrb9gpZWCHExzb0VscUVjzOwOcsibg/ZGCJgWM+b9gOa3csRRLPj
         SeTaw+5b7lRVnNgL02d2Bv/UmDYnilgai55u4eUybA9Dv52N6uCulHHLDEwrh4a9LTnb
         vWJQ==
X-Gm-Message-State: AOJu0YwX2jlcA4HJsXF/7B4RlOmHOks6hzHPC+EXUPsJFLak2Q1+y/qa
	CRih4VysJUILP8LqvmPCK7FIxQ==
X-Google-Smtp-Source: AGHT+IHVGeEHAhNupz7Y8GGIUNrg0/gXepcebg5L4eteUR6BJZyZB003DRwhW9l41F/KAzXUKNOosg==
X-Received: by 2002:a2e:9997:0:b0:2b6:e283:32cb with SMTP id w23-20020a2e9997000000b002b6e28332cbmr2003663lji.23.1691672456229;
        Thu, 10 Aug 2023 06:00:56 -0700 (PDT)
Received: from [192.168.1.101] (abxi185.neoplus.adsl.tpnet.pl. [83.9.2.185])
        by smtp.gmail.com with ESMTPSA id n12-20020a2e720c000000b002b9fdfdab75sm354562ljc.12.2023.08.10.06.00.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Aug 2023 06:00:55 -0700 (PDT)
Message-ID: <19d47ac3-ca9f-4181-b3ed-e2bba473dda8@linaro.org>
Date: Thu, 10 Aug 2023 15:00:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/5] phy: qcom-m31: Introduce qcom,m31 USB phy driver
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
 arnd@arndb.de, geert+renesas@glider.be, nfraprado@collabora.com,
 rafal@milecki.pl, peng.fan@nxp.com, quic_srichara@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1691660905.git.quic_varada@quicinc.com>
 <b17b55b2ff2277bb9bfa99acdb2f98ed420dfb6e.1691660905.git.quic_varada@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <b17b55b2ff2277bb9bfa99acdb2f98ed420dfb6e.1691660905.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_060101_219171_BAB7BE65 
X-CRM114-Status: UNSURE (   5.10  )
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

On 10.08.2023 11:56, Varadarajan Narayanan wrote:
> Add the M31 USB2 phy driver.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
[...]

> + #define FSEL				BIT(4)
> + #define RETENABLEN			BIT(3)
> + #define FREQ_24MHZ			(GENMASK(6, 6) | GENMASK(4, 4))
GENMASK(x, x) is BIT(x)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
