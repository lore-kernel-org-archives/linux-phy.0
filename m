Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8075EE49A5
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 12:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hyVzJJOenl73AY6UXq0TF1NPHLkzQ6wI6Ex1HBgKvAg=; b=GgZJU/ElLwI5mw
	LrhwlbA56TX6/QUw+22kkdmHZFJatcvuuO5fTBgs7tDkf+27nNAUAEJhCtB8pNVQFIlnqgLQR861Z
	bR4zv2VbLXI1dDg6kk5lcHGjN7LgokXG58n0VMQwWl3muR0ipay5UPx6R+DaaGsZrno1PHPQQmM1Q
	3ig//Oms3/J5TXMlnZjcvdUqKoakdu1zUSrQ+Gm2A+UIhlpm4OrUClQ2aHqKnzAlW+KXJISIOF26M
	7q85Y5sD2exXHoegWHwT3RQXYwzPljffeHazKXo2xY2y5+X2pW87WTcH68cvOQLU9jjBfX+p3lzjA
	EQG5fn6VQv2whHys458g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXLK0-00AtzF-0y;
	Sat, 19 Aug 2023 12:44:52 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXLJx-00AtyF-0G
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 12:44:50 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-977e0fbd742so223155566b.2
        for <linux-phy@lists.infradead.org>; Sat, 19 Aug 2023 05:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692449085; x=1693053885;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=arWBzm2lSdJvcDhKXyDgEJyaUTijpzfIgfzXmJq3v2w=;
        b=p7EnsZFpG52j+1WRRl9BIRh2jZnUOl76vfLXvHboqubqktoMbw+UTeI8iw3aw8mKB5
         6+YCifIMP4/MkOJQufRZD/pcxD91aHFeZ6BrXGCLRvfQJP/5e/JXQe0CvRy34txS8ONN
         jHs601wKZjOU1dU5376JVZMDgil2zTHKkNeIkP4m3mqoFKMckOAJVTxueB6788vVlekq
         2GkbmtMuqOZ4FzfcymRwHuhX5uv+EqcHgxC4FP5qiWp6CDLt3x7ZnIvUa9vKu38jKqTI
         6vxRrjR606adboSfiHdsjjq3lo/Uo5EC6zdeVEo5PHHfC6srBR4QclTJU7fuifqZTl1k
         P68g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692449085; x=1693053885;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=arWBzm2lSdJvcDhKXyDgEJyaUTijpzfIgfzXmJq3v2w=;
        b=DIcf4ZpzjG8MIHucZmrv7HcMSjk0QQHQ+F0o5xFwdgdBfWQ7olGFJAeHg7OrRA9OcY
         yQp7wF7/5pcSIL8pCXW07Wwc5KExs0pqoM6PbC3bmSe43XlCW9SRETVTldoqPU8Gmg8w
         ulBI4jQ1arwLVmqcbCavovrUBYWSyUVoxSpoSdvxr9Q+3OvpEf2K8MUZiLu+5xIdtAD0
         c0EkVa80M3JC2T1tsORI/4cmzu0s+VLHHlS/j+LHQ3X7E4TKPPBj8fO5S5KvHgd0SMqk
         OD4pfJmtK02xIrikDsLMLvL9bnoHxfg35YIEtQZ3UIT1KfQsHSYjYab4SbcXfttUcVlz
         jHww==
X-Gm-Message-State: AOJu0YyZ8yViw4Ja0/mGMJ0evmR8IKyPlh60rBcLFLAcRKPmj/Qrb6kM
	wGXAOGiCTq/iHZJAZiNNhcvCztwaqhHyC36WPcM=
X-Google-Smtp-Source: AGHT+IHvQxA4hlWFTt4BSzB1BqWX/6SlPVXie6wgDpgyFB25IZIfLMOVL9alTMwQyByQwYauGfVdiw==
X-Received: by 2002:a17:906:23e1:b0:99b:f3d1:7735 with SMTP id j1-20020a17090623e100b0099bf3d17735mr1204090ejg.29.1692449084419;
        Sat, 19 Aug 2023 05:44:44 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id c17-20020a170906695100b00992a8a54f32sm2635367ejs.139.2023.08.19.05.44.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 05:44:43 -0700 (PDT)
Message-ID: <481ac6b3-1dda-1e9e-7339-e39a17d2eed9@linaro.org>
Date: Sat, 19 Aug 2023 14:44:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH V2 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for
 SC7280
Content-Language: en-US
To: Nitin Rawat <quic_nitirawa@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230819115223.9479-1-quic_nitirawa@quicinc.com>
 <20230819115223.9479-2-quic_nitirawa@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819115223.9479-2-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_054449_188684_EEEA54B9 
X-CRM114-Status: UNSURE (   6.50  )
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

On 19/08/2023 13:52, Nitin Rawat wrote:
> Document the QMP UFS PHY compatible for SC7280.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
