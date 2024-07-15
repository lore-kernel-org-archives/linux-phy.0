Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81896C3DA4B
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 14:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUiCbOq+Ml1eNNOg05GQpAP0/H0wTkXENiG0Jrygztc=; b=SxztMOmej7Q+2T
	0erFipucmTpdDiLbBfiz1p+sIi5GlMICG4tBs2DsghQCnFp87Q8YSnH66HQLp0asyU3KpKydVVxdP
	LW9AW4Iz6EgJnLOrxBi00BzCBEwiTFfwMQt08ewrD4eu4SIYLlcLo1IsVW1bXV5f5uKrJi8pkC5B4
	7nfqoh2FldtrU7VnuNpBVaZYEWNjK/WuoyEpztrjME5mQ7r+YR84uTZsXDupc8L9NTEUt3qJ0XTlh
	7YLtP3ogeCSMkFbW2tBOplvbZc691Kwrai/mPupMYvvwxZNV5P1DEPy4/ceNPjQqcM6wP+uJ+8lSK
	JBuFLXv4ijX1o11baAOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTMef-00000007Mbx-0SH6;
	Mon, 15 Jul 2024 14:26:17 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTMeb-00000007MbJ-48NM
	for linux-phy@lists.infradead.org;
	Mon, 15 Jul 2024 14:26:15 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-58b0dddab8cso7018470a12.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jul 2024 07:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721053572; x=1721658372; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ReuplKsh2s6OUCjToStTccnLppXzOH+9gugOECnvmWs=;
        b=U8Hh3RBkYALi5uBb9EwQQp+VnX9Z+LL7ePCM1YBGq169weDuS8V5qhCsGxnRN0/EiM
         y5EkOIBpzPWmAvreMs7tv+Uk/Fd5IhuwUMCqKWGaKZrZpzmavDqQBP0BEG7RBCBbxEOQ
         PcholMmrLd6o8x+Av4PnUJDlmM5Ccu0PRUAf19lAgCfdeNpofUiAmBPtGgEvksAjc38H
         mVePp0vlRqcU4HYsbQUqkD32NV/DzlIXE+oLk4okJoNiTTmxOaBA13/lTzq19HEU3KX2
         +KM5yrkbvquM+/R1gtPolkrAf8uAl6kOsYxxCyBSbNGW8QJ6EbECwtz/jQi8vKiX46l9
         /Ipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721053572; x=1721658372;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ReuplKsh2s6OUCjToStTccnLppXzOH+9gugOECnvmWs=;
        b=fQNmdqyXq3xZn1WCe7s5QtuaMP26tTbZwTLeiGwrqDnkm5Q9Lddh+AsyidxJaufcdC
         Yj+rcEuWMNhcnwQ7DAs/88s1ee1NfI3ePL5jt1rjmhWDok8LZ8okhdjLvOizuTHLTmo1
         tTdbjhfcPvD1mHi5mui3jLIrBu8k4au7PjKyiwlRgw5/qN9M7igoOoC2wWhe0/t1+zxK
         qWYek2Tll77EdbeLYMeT9UGAxsWJ7uMHwFqxfOwq1YbBOwre913wJem3y9A5shgbLyoF
         oh75kXysUO+x7/fHH9etOq0u/nG8yauyY2HF3/lxEng63vfJME543vlsVtVtVMDfg0Am
         aoBg==
X-Forwarded-Encrypted: i=1; AJvYcCUk7QaVVkOh2NNEPNPjtDbrWJSPXQtnV7p0Citq1JHsMHPAr9PpQYFDD0RM7aOhQi3WcX6vY9tk9w3MBLwwQv7oPdweYcTNpj80MQWwyg==
X-Gm-Message-State: AOJu0Yy9yrilb05eU5iO2kEDfvhaCO+xdCIbyLqUa5YyF/UVw9XCJqkn
	SFZxcDnJaVlfo4XHffh+WCzRhfEXweu+7Mflfu9Bu1YXPKJ4UACw/cVELMV2jLA=
X-Google-Smtp-Source: AGHT+IHx+jl0YZrf1lKHWcG/xRFxLWNnBR1s0qLqbWag0UR/wqjdfunUT3uFtHohIHsFW3YVgdrNLw==
X-Received: by 2002:a50:f613:0:b0:57d:2207:a55 with SMTP id 4fb4d7f45d1cf-59e96c83e17mr49149a12.15.1721053571648;
        Mon, 15 Jul 2024 07:26:11 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-59b24a76c96sm3384764a12.18.2024.07.15.07.26.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 07:26:11 -0700 (PDT)
Message-ID: <78766304-65d6-4988-a357-4f539643827c@linaro.org>
Date: Mon, 15 Jul 2024 16:26:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: qcom: apq8064: drop reg-names on sata-phy
 node
To: Rayyan Ansari <rayyan.ansari@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
References: <20240715130854.53501-1-rayyan.ansari@linaro.org>
 <20240715130854.53501-3-rayyan.ansari@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240715130854.53501-3-rayyan.ansari@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_072614_060879_64F8DDBE 
X-CRM114-Status: UNSURE (   7.12  )
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

On 15.07.2024 3:01 PM, Rayyan Ansari wrote:
> Remove the reg-names property in the sata-phy node as it is not present
> in the bindings and is not required by the driver.
> 
> Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
