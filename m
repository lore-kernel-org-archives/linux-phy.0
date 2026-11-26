Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EC3606A323
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 05:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=H8C44r4b;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=KeP5UHNy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=79Udjk/CqZsYecFAxwNG+OlZRuoUH1m7L1Qxp9qSpfQ=; b=H8C44r4bLuFvdyv/shn+Bmobe5
	/RuxDtM2TJfzQfJKuL97pIsZnaRHup92pF76GMl1QaVP3/15OKUOuYXR/bRNKB2kiJZskMDgEtxKd
	4W3kYTzO6KnU5iOAQ3iBn375srhep9wMfbSC/gPBRHtwBmhcbEeuGdobXbHO9v97mXHHEmxplFiBm
	Lk5dWSqf/fRM/Jjl/8LNu8mkCfbX/IQUzYuQUzcMnC/PYeSQWXZSBmg1C42b6bolM+zW1h4cFuhSc
	xUTTeGhwGc2pmYvvB+KWcO4QfQrRWj25Jza5sOpFyvdCKpCMzHR67N8OgCqSjMjH0vmUprY1Wj5o5
	9bCWHmJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWSP4-0000000C96B-3LYX;
	Thu, 26 Nov 2026 05:52:20 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWSP2-0000000C958-0Xxi
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 05:52:17 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5c00c727a21so542509e87.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 21:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795672334; x=1796277134; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=CZPWEk037QWIcnrjW4FwU0aU2BDmAlHR+95YsRtbxp0=;
        b=KeP5UHNybOtDx5wFiwJbYo6bXcHrskxu/Okq4H8RDpB+P4vWqqQAIp2axhFqiTA1m1
         zfAnS68IBIdQrIREDs9GSeb4H8yJ550RXklSpurs0vxc8SMIRGI7zS/mNBDoqPkrUaGg
         fQho6fZzPn+eD00gSiYktv56W9WNKdP2wqID5ezNCOczXQH5geDqgdhMtV8Uq+aHS+yI
         1sdyD8O8OF+aAV9oWMhZDg+KyTPcJqIeqgLz4Er171JhEjSuNOwm1DLRG5xex8KU/rIC
         AUxt6+6ko7D18v/4V5F2YBJnrVDVfvqEVfR8Qlbf7QiAWzvt8Ph1ZSKSyu7xfKj5CFJO
         k27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795672334; x=1796277134;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CZPWEk037QWIcnrjW4FwU0aU2BDmAlHR+95YsRtbxp0=;
        b=EMUcQTCYqn5X8gfkolfZg/RptsnuJIiA3BHo3rShw7pwGkGgjfHcAzVJ1H+UvKJtIG
         UmQWgZOPO3LZwN8MAaqimSHq/pkebr0QLujOKcFr+40+aayJcHNC7C7JMC5AHwZOR02w
         nnHfvSR9Kft0UDWHLlGXEaVSrUdE4JaKpNo6m8F0bIj+RwvJfXpHMlTlBWbRwaQO4rqN
         cSIDAievsOTZR7fFP6hg12A/zbOiuXuY5UFNFMriOyKomsSuZzaNhmNLO/RMl93Fg8eA
         +sZgZspwg+el9ia3KPkETC/deg55Cb8yu0EkLQqgp6py86jp+/NbZ93y2HdvCN5Bw+04
         v7Eg==
X-Forwarded-Encrypted: i=1; AL+hErEf14LJFH22KfyH8COhHMXCVwMcaFPQp4CGT2c4y0VBxF5IlvsQuZQGxj2nQa81iP59l+W4hUYYeGQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z9uUJQQtaUUdR6ol7LQ2BgfnBBYoLx9bRL5xRKyVjWOiKYRvGm/
	BjReJbWwydYSp3QV5G1KmyXcxaKOUB0dUu4nPlDpb2Cy5B1yjoSSh0qHs4pM1UqB9Y0=
X-Gm-Gg: AZFdTZcjU5r9gXZ1MMvihA0B7aCmIrDRcG06uLP7m2+fSXmTWRLBm8t1EZ8MAQR28QT
	KzzL2f7YphNObZ6X+jLGxbTmjeDoeHqQqrdcu6BTJb/QRHEHmt6F7fNcwcYv6XnsPHcpcGq8omq
	Za590VRcMrSu87JVNSGwqtsQvqvMS431AmdIaHxxA5Dk6EJwKFxj14K1CfKAPqxXy6jxMeFefk8
	v+/P2NpBdWItde35W1oLqp8WREyMhtOWoRfxE6N9R7rcp8PPwBKNdUjTkRRGz7/Y4O2QOSTUAXr
	KcqcVu2OvO8p2wwigbVaWRcz4TVkogHPCsiCTHOdUZrmovgATnT66rTm/GFTNZI8fr4WZ7y7QeS
	T3YnQ5gtHJpF1+GItwHWico32OCXcTtjqhg7mhomlz0lPJxUePQGZvBgBzwoBwt6vwPb9gMrOBL
	+polFCQNoFh9Vew3X5xvXeHEtKJ2AGEUzHltrOqFaFmVRDdy0y4vjrYJ7KxN/4muig2yV87ZsQO
	ItBc46J+3ERUlfjrk2Bp62wDffj6tTsN6y3axIwsgaSLXDFEmghIQxtfPmqsY6fyR6Q1r2Ki83+
	hO3Hz0hO2SSHluj7sS2jpR54ARlJVxw07zZ/s7LsOmCgUHvLUss6mSAEimoSs5dO3eJHx9NjQc5
	8wvE3b+0=
X-Received: by 2002:a05:6512:12c7:b0:5bf:a48b:7827 with SMTP id 2adb3069b0e04-5c1bc6bf385mr6657518e87.2.1795672333627;
        Wed, 25 Nov 2026 21:52:13 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c1bcf33a96sm5147700e87.11.2026.11.25.21.52.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 21:52:13 -0800 (PST)
Message-ID: <044783f4-29f2-4a73-8b2f-d06fe4a5ebbd@linaro.org>
Date: Thu, 26 Nov 2026 07:52:12 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Glymur compatible
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>, bod@kernel.org,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-1-d7c2983d6d7b@oss.qualcomm.com>
 <179561294019.462348.12092000419789488599.b4-reply@b4>
 <238a552a-ca4b-4997-aecb-fdaa278ca1c4@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <238a552a-ca4b-4997-aecb-fdaa278ca1c4@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_215216_212033_2D32165E 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-20.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/26/26 07:41, Nihal Kumar Gupta wrote:
> Hi Bryan, Vladimir,
> 
> On 25-11-2026 18:52, bod@kernel.org wrote:
>>> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>>> @@ -16,7 +16,11 @@ description:
>>>   
>>>   properties:
>>>     compatible:
>>> -    const: qcom,x1e80100-csi2-phy
>>> +    oneOf:
>>> +      - const: qcom,x1e80100-csi2-phy
>>> +      - items:
>>> +          - const: qcom,glymur-csi2-phy
>>> +          - const: qcom,x1e80100-csi2-phy
>>>   
>>>     reg:
>>>       maxItems: 1
>>>
>>> -- 
>>> 2.34.1
>>>
>>>
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> This series is already present in the mainline tree:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/media/qcom,glymur-camss.yaml

Likely I've picked up an old series for my review.

> I am not sure why it appeared in your review queue again.
> Can you please review the follow-up changes instead?
> 
> https://lore.kernel.org/all/20261123-glymur_camss-v4-0-d7db74f59e22@oss.qualcomm.com/

Sure, will do.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
