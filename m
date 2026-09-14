Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02E05C88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 11:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/dk3Y9DlrgMiPOrEX0DmLB8gJPrW3sC/5g3B6S+NC8=; b=v2qVHhumZeYmHY
	GdpVMNNf2Rueya94cF8FmkzNiFX+vuEs4Q6TSdTFii3A1tEEvTiTNsPxRl9mTn3e2cHEVbOkm7IHU
	5cQ9vjYCX1mBPpFLgtIthcaPkYU6FWChLRX+kyTF51cYG3Qs4POH7NZ4Cx23KxXZMa9/mlyvgA/Az
	QWopdnna1JwHuxzfWrjCgLpXlElxBAJPg1emWwSM3jdDAnuJraYO+KoMJtyLSoNyislZZ6xTf8hlK
	chOYVYLRVLner56Ysy/ImoR1M2KUwPKyAPBt22kpfCctgnwXRVE0945qmvJj5fzBMr914zU0apSuS
	b+wLO9tiyuhm5B1MbuJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x64T9-00000003CaY-21AZ;
	Mon, 14 Sep 2026 11:03:27 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x64T7-00000003Ca8-2VGR
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 11:03:26 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-c2946aa0d5aso425568366b.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 04:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789383803; x=1789988603; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Xbly740beuemqSo1bscqb84tM6a/tiFHYniiF7SfuVo=;
        b=sQiBxEZ4itgVtt8+FH2qk5XcWlgMrsvtMZdNKSYuPA40GJkhUFkpCJrcdGr9clDPlH
         yYRShbs60NwLObucA9QqOlVgDE9336qAVk75PiVrC3keNKPnKJwFObnyUAec0qVEF9+n
         xNBhQUOR+IegONHXKcjoMjedZlzkOwDlsabQy5kJnUPYk8/Gzfk+NUwSuZQ84DUTx7wv
         xOoyLgisVTeqeAd/CVo88m0EAfHTpsedgL7fwqv0/sABb5lSPwCjmv2oaGqbbjQPytBb
         77hNSp1K2Gp0CFwoV7wmEDSqCDz0Z06wL31K+pIscAF8T0BgzHcJhfBpOVSv1NWwIxbI
         yVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789383803; x=1789988603;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Xbly740beuemqSo1bscqb84tM6a/tiFHYniiF7SfuVo=;
        b=m8+1MuIYWVW0ilt0s1ZmrzllqdYcaz6VPxGStppkdTxCjHr4dSc2HhKLICOeygHu7h
         GyD7+ORHzNxiJ2B1SJuOJpxbpy4nTQKzfqa6fXxICr5W3GD+esEztnQqXXwlXbldMipc
         bEhuhYS8WFJz5bFIHTd5Gxga8ey2mRjHlhQbGYFmFnJuvt+9+eI2y6fCq6R+J71Rurvr
         KM0bxjAPsmFM82TFTDQhMPtQryJYhszyXf4nO18HXnTnK0ZOnSCLJALpSe921lrw3lYh
         EhMOwI8xx4dkSdI+xUtCSsmPj2SXfuJFhEkyTwwjrTUvhJrWy1RcBsaOFTMKn2yzVAHo
         Yqsw==
X-Forwarded-Encrypted: i=1; AKwUvBw2MNUq1olgL6zGbpEf/LTAJKd7D7+Kyj0GXqiT2mR2dvCd/MAY807cRYLIAdEh0IkdXIwNxdiCPmY=@lists.infradead.org
X-Gm-Message-State: AFuF++mWVRX+L1bcp83TFtTK6ZyHMwR/HiD+Ng3FKCjliTDElbp6oBX5
	0Ffp5ghDiDFvjmiy+db0iHxa+6ckbtPlOxpnRwxIeJsTIt4ChJKYw+9m/KQjmSVB1Qo=
X-Gm-Gg: AYBFou0KXUesFeYzOqO3M/SzlHOssrMSNQV78ktoBL6YZQl15s+sxV+gYpyh4FJkDKF
	Ro9MSqZuCaVnsemV75xVoXbjk348z0zxUGoCU3Kjqku833K59tRoi30uPTA3ppwV8GgbMjM9Fkf
	if2CuBNVn7r+qPagFnMkQYZH4ZMsQdXi/SXa8mzpk6cDoH/4ZwRwZuKvrTCZCHEr4J0hrUJamCp
	L7rRdASDgyN8eenXsZBDPhVdxJvsRaWl9Sy0samzAXS7WMWslDgZAtkddyiHt+MVw+K1ae0L3Sr
	v7lmMx/1LSA/HIyXd9eBIalVEOXYKUosxDeYEy4KnnArpd9dnAsw28YPRJAWEfaKtCpid/5aroE
	STOoD7D3VSUMLTTOVOFz/bcxNB0Jvs86bJDEY2Nr7QdSHpxxqcdvagia6tjvSFAH3cpKAiqIEQS
	NQv4SLGpNBdMqrCkRUUCYEOuQe6EWPCqtBigiQfhi9/uFdfZyOhOmxkB4U7lv5m72aa+vmZ8eUy
	LEkRty7zKI1gauZk0Cg
X-Received: by 2002:a17:906:c156:b0:c25:833d:3839 with SMTP id a640c23a62f3a-c29a437c67amr329463066b.15.1789383803122;
        Mon, 14 Sep 2026 04:03:23 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.248.34])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29852497b0sm286364666b.38.2026.09.14.04.03.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2026 04:03:22 -0700 (PDT)
Message-ID: <ceca8547-ff15-4f5a-8844-8ec9061a5e6c@linaro.org>
Date: Mon, 14 Sep 2026 12:03:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v16 3/5] phy: core: Add devm_phy_get_by_of_node()
To: Frank Li <Frank.li@oss.nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-0-f7bd68b5369f@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-3-f7bd68b5369f@linaro.org>
 <aqRuCfmgPqa5h0y4@lizhi-Precision-Tower-5810>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <aqRuCfmgPqa5h0y4@lizhi-Precision-Tower-5810>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_040325_666568_8CF0FCC7 
X-CRM114-Status: UNSURE (   7.09  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/09/2026 22:09, Frank Li wrote:
>> +	if (!link)
>> +		dev_dbg(dev, "failed to create device link to %s\n",
>> +			dev_name(phy->dev.parent));
> Is it okay to print dbg message()? suppose return NULL or some error?

This should be dev_err() for sure thx

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
