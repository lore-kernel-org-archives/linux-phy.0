Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88B27C77B7A
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 07:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvEOZ5eK2vfRMgihU3xg2mpVuwtIWL6S4zvs3mR73IM=; b=1bO7S1gYeflzGh
	ibEY2SOjI6JX/nUh47rlz1PIv6Tki3Ahuxt1YqnUYcAGKtsGmTUShsjn6rwv4gNHHC1gVnxtpv1E1
	4rImKGd4ipkGx9nsVMfg6JQwkrFTlXzLPvzbzvnJ9NFYGZ4hieONfAK2DLVkMk9XkoiDpBe5pzEw6
	yDRDdn72v7UZueuy4pz1mJsDXJNdPn/WvXiZnnxG6Y+sNk2zM2eccSMjoQPRYciz5L6r8I291B8Og
	0nImMR7FBGj4QsEP7IOS/02ttr/GLGjSeIs5s0lCGfNV/YUa8+cB6guWagUViytUJ/8R0cqiaWWMB
	DHjQueps8R2caFLeeT/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3XVD-009ZMv-0f;
	Mon, 29 May 2023 07:41:15 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3XV9-009ZL3-2t
	for linux-phy@lists.infradead.org;
	Mon, 29 May 2023 07:41:13 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4eed764a10cso3102727e87.0
        for <linux-phy@lists.infradead.org>; Mon, 29 May 2023 00:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685346068; x=1687938068;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zIyR1lHJkA+sNFp9J1o6uPmPADLzeJ2t6TMfApH2cO0=;
        b=G4I84p/8BXGAdQhmvw9H0kqEpMVZkOZUBt1/JCz/TZyyBkJgH/IVNGlt15swfM6pMU
         +Fz3vw2l93bpO61w3Y+E990mCaxZK0f3QXKYGJNdO1bjSIkEotzDCWZNwoa2rOVGuUNO
         EHDv7+aXWMsQyIRxe0nJszhH+zeykKrEwcn7YFUZFi3YDUVX/u46i0vk4t/34hJAfAEb
         Q6Jw/uXk9OfQkm9iNVpZfH/o+jKj+73h8eIwawuDVl9h/ElsGaqsxjDs1rrezm6RP+4j
         7FcFeOdfk+CUI/2xH+tFurLaTKS9UsTdVahpKofk0V8vY8sSEDvdS9zcOzkZO9vLPANZ
         cc0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685346068; x=1687938068;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zIyR1lHJkA+sNFp9J1o6uPmPADLzeJ2t6TMfApH2cO0=;
        b=JCAjGTwvXe2Zv+wqLO6TvXui+gyBBAwe+FwPRFvSozOHL9jH/b2vctJij6lo8ljBvX
         TjTH7lzyrr7T1Bv3hJh6SX3A8H647T9/5TLhY6esuzkZ/SYbhXNloa43dirTbvCOb8Cu
         u4iN/85wH0wrP/2V9UEG2dv97uvMhcBMYWpl4LhZQRl2jNWxthzDeX6eVYJr+Zc4YiBA
         Lkykf+sBE//eIxztmM46Bt6krQS4qzsoAZ24NOoLDsfbovHzXFiqhzN/0QR0WHjbde1p
         vDzyvWQMmuEh3rg5J5zpSPXZNEbQuAHG+NJE4d4UhZ1ec7OVHIXvnLgrntTvFkJLLEib
         f3vg==
X-Gm-Message-State: AC+VfDyZQElQ7KLY1qNgAxVR3dVrEDD/pl4GGClq1NyaqWJDZrZNhs9u
	kWtxHEuv2lPtnqsUufb3QBZR+A==
X-Google-Smtp-Source: ACHHUZ7CGoVzdq3YVY4Qh7oruPyoZkhaD7bLodOYquMFSgOk89OF+fipcK/1Q84XygMuQ4wDmXzFjQ==
X-Received: by 2002:ac2:4423:0:b0:4f3:b2a7:68ef with SMTP id w3-20020ac24423000000b004f3b2a768efmr2891357lfl.10.1685346068232;
        Mon, 29 May 2023 00:41:08 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id w25-20020a05651204d900b004cc8196a308sm1876082lfq.98.2023.05.29.00.41.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 May 2023 00:41:07 -0700 (PDT)
Message-ID: <a8d3d68d-d202-ddba-3289-65b347807538@linaro.org>
Date: Mon, 29 May 2023 09:41:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy Express
Content-Language: en-US
To: Rudraksha Gupta <guptarud@gmail.com>, Conor Dooley <conor@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-2-guptarud@gmail.com>
 <20230528-decode-creasing-f5b3996163e5@spud>
 <ad7a6ee3-cabb-6f92-a595-8791801cfe97@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ad7a6ee3-cabb-6f92-a595-8791801cfe97@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_004111_935717_506B37A9 
X-CRM114-Status: GOOD (  13.45  )
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



On 28.05.2023 15:36, Rudraksha Gupta wrote:
>> Where did the "att" come from in the compatible. Is this some carrier specific model of the phone?
> 
> This is the code name for the device. Since there are usually multiple variants of a device, using the code name differentiates between those variants. For example, if I left this as "samsung,express", it would be unclear if I am referring to the GT-I8730 (code name: expresslte) or the SGH-I437 model. This is typically done in postmarketOS: https://wiki.postmarketos.org/wiki/Devices and XDA developers. I believe it is a carrier specific model of the Samsung Galaxy Express.
> 

Please fix your email client:

- wrap each line at about 80 characters
- don't trim messages unless they're very long or
  there's some other good reason
- Don't send v(n+1) as a reply to v(n), send it in a
  separate thread.



Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
