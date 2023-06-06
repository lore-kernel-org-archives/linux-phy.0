Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C690AC77B73
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 06:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Ab2ULxxW6JM53qHW6CW+Xdkhq59RmUhA1ZiZY79pGE=; b=rTwifKrmQSeTkV
	RznbcMZPoK5fyUp2PC2+32HEZz/NT4/lBfYLy7z7mL5a0dgRjV5CvfK2tnWJCAfTAZSkmXyxutlFA
	w0TJF1SpBa5qPoOk/j/Fb/qeAN9urZ1gJ+jC0a3mp/asZcY3k/p4G1LenoRgEhRHXNPeYQZLdSCYS
	NTX7Zi1tne7GoQWfzcSpqaZDlxgE8YggqMbpkMOegV2ecRLJcM4vka8BytVr8ZsDeg82SfzEewrX0
	dr9/XeMvwfE6w+CN2R0eWCpN1JOYsM6VXknX9Ej1+mj0fKj1nzB3C+pZrFmH09R8rW5myUOv0O8nx
	9ObFCf6JxMLN13CK8zFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Q44-000MCt-1O;
	Tue, 06 Jun 2023 06:21:08 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Q3z-000MAw-1k
	for linux-phy@lists.infradead.org;
	Tue, 06 Jun 2023 06:21:06 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51491b87565so8580213a12.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Jun 2023 23:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686032462; x=1688624462;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ghjbsto09XqPnsXCUmUZKd24RXiWGjP2OfhheXx+RZE=;
        b=TupcBBlW5YEsh9v8j0nYCbVHO7kh1ulyfMEcAnHSvqrsAxbcWEijEqcLa3NoDkrLNC
         VZ5CLdNHUWr4YbJo1wXbRo6ScBX1r4AqA6CpiILcBP0d8KyHdJS/h5JH5fcbSimOV3TF
         CoQRcqjIH5RKYiXQLZf0jRjIsFnNiyqbFvMvbfIh1sSwe/RwpK0D57LcVg3u7Je4g9Xo
         5flyiey/WV3vroipsE+6eGIp8rgRrH2WAub63Rc3eUdapbw9iH5Ws3qdjT55fpvu+Kmc
         Nq0FzgL743GFM8WbmcVJ7QQn51V/xseA2jDS8D3WILlA9ZC7UJh4W0TwxA2wMN6qzXny
         cm/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686032462; x=1688624462;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ghjbsto09XqPnsXCUmUZKd24RXiWGjP2OfhheXx+RZE=;
        b=Zx8ek39PBJn9I3FmEnE83pw/fKdPcD12et3MNSiMUQyLW4SfAeHYFPI6wrHxPtlO84
         SosvrRdcRIlUJ2FMBbooTgnhhsJfp8+uXu0D+ozopDO3BF4J1EvKhM2u3YRew3xajP9e
         OjLVZN6NSFrF94v2diIb5HG3rPY0j53wKVyZWuY8RSAsolhEoFx9SGSNyMgzLl/mJMwQ
         QnbjUvTpLJFpNtocVbR8hGrMFZ3EFV9/dA9509m+Fp64Gvkui08i7zJ5LiKmvkQ+siBI
         grdFGmTuzhhsaqcqeKwaN0xYYWS16EXvlCqXR7Z2Vnk6V2oRyAUoltcUQaCCu13lwYdj
         L6Ug==
X-Gm-Message-State: AC+VfDwrPFu/ANtxF/P5wn+DTlyY9HHiasiLbnG1OITaJUQUgtQdxwDU
	77uCchK1XvfU7RvCJh2YUXXPSg==
X-Google-Smtp-Source: ACHHUZ5BBOuUVEcj0d9nizDVIPtOnYGoIXZ8X7BWvAVGbZl4oKgdIvd4Behhvjfjmvzv3MOC84YPMQ==
X-Received: by 2002:aa7:c507:0:b0:50c:3dc:2262 with SMTP id o7-20020aa7c507000000b0050c03dc2262mr990172edq.39.1686032461745;
        Mon, 05 Jun 2023 23:21:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id q22-20020aa7d456000000b0051631518aabsm4613727edr.93.2023.06.05.23.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 23:21:01 -0700 (PDT)
Message-ID: <ee60f6ff-42bc-d30e-8465-39d00320d48b@linaro.org>
Date: Tue, 6 Jun 2023 08:20:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Content-Language: en-US
To: Rudraksha Gupta <guptarud@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20230604063032.365775-1-guptarud@gmail.com>
 <20230604063032.365775-3-guptarud@gmail.com>
 <3c781ae6-4a45-1d6d-840c-d25f33684b00@linaro.org>
 <CT583OP69XTU.3E141NE263OR3@Latitude-E6420>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CT583OP69XTU.3E141NE263OR3@Latitude-E6420>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_232103_585072_EEF2EEA6 
X-CRM114-Status: UNSURE (   9.59  )
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

On 06/06/2023 04:48, Rudraksha Gupta wrote:
ted patch soon that addresses this.
> 
>>
>> It does not look like you tested the bindings, at least after quick
>> look. Please run `make dt_binding_check` (see
>> Documentation/devicetree/bindings/writing-schema.rst for instructions).
>> Maybe you need to update your dtschema and yamllint.
>>
>> Best regards,
>> Krzysztof
> Sorry. I was only looking for expressatt errors/warnings and failed to
> see the other errors/warnings in the sea of text.

https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
