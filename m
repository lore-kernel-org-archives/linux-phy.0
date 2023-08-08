Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D513DC001DB
	for <linux-phy@archiver.kernel.org>; Tue,  8 Aug 2023 15:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+/YgyT/1oWejd7MSDv1OqXiLDyIml9vQKiRW0j2dJ8=; b=AqA/IDrXDINZUM
	sD9EMjNY1pzTOP2R/UgsZUC6gUtU98mzSnQlYgIivbDVY+bSpdogUcAGyQwK6HsLTejw+nXs0nNya
	oAL11nwcO9Y98hwtvzDWTEupFigg/PtpkBEpCu7sGbGcJeTXptByvViL0Vsj/gqsFY97h7yZxSVEA
	OojBejkYMtM+ypTuhZQsC3l0Td9VdcJwrkcUUIkHU369MZRMBiABuR/y7k+lAFHfs5zKVW9bU8qRN
	C+YFaRp9zxCwkTP8Z1o3efPNCZsyzJZfv0wa7gT3zKRpA9DP3+/Aolaf62gMfgNW1OxvHta5kq/aS
	Q8Rq/uwjNoC8f4XuJK6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTOeV-002ojB-1A;
	Tue, 08 Aug 2023 15:29:43 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTOeP-002oig-0S
	for linux-phy@lists.infradead.org;
	Tue, 08 Aug 2023 15:29:42 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-317f1c480eeso1328903f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 08 Aug 2023 08:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691508574; x=1692113374;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I9Dr4uBy8yn85pCqbCwYWz6mdcEZRikhyLp+nx7E5kY=;
        b=TngEboqOOoDIlIjP2etmlsUra7kGoFG3cKMB4B46wRjDSxEkP84/iMXMgdphCZn766
         CWKDcIekWnmKMWletIW1sZerTu989rE4zd8ZsQH9LhzOiRKMQhRmVkRUzyidDR+if4bV
         eopAvrlDtBR0rySN+ftQtSUnsXre+mp31VxPIUoYX9A29bJiM7drkms6ja27LT+1wFr0
         ttuXSfvci+uhpOyNTOsususC5oFOP2KzyMWQCOFcXVP/jLeBXi2n/CN2dE+g0CBsz22f
         IbciBoJOjOZqJrFpOPn0Am7tCLIO4GnZu2wSjHIpnN5k1QmR7ITlqyNOFzyG2lilpLf5
         BoRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691508574; x=1692113374;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I9Dr4uBy8yn85pCqbCwYWz6mdcEZRikhyLp+nx7E5kY=;
        b=RUSZSLXnY9EAL1pgJdGIgdTWetaPRvVxsQWT5BXTdkiucZfCc8GqSTiSinqLYy2Whl
         NKYD+kCGIRdYYearNFFmcx82TVzcsBGryt8AlbNOWtNH3GFrhBs3Ov6h6+gzS/q4OvaE
         a+VML4IZqe11PG0M6NQfOr2JGIfIP9JyzelSqFX50MgLJ1vfpjmsR1xO/FvFhqGv/Zjw
         LRV1QM8wVCx03JzhvbwA+SGmg3nmDtHKlUPjVa08iA6dvWPGHRSIZ8mxDU5xyR2T37QE
         2V8ZKl90X4mkTQ6mDP86UN/W6+QD4qqerQjzBY5yXK5paMi23EuL9X9QWOB2yN21X2Ai
         WNmA==
X-Gm-Message-State: AOJu0YxihCP6sDtEFKXkPzbAI8xM5TvoYGJ/Ws+r5uzVqkPptkH0rbL+
	jXzC4dt28BOkjYlftZCbidRJ+w==
X-Google-Smtp-Source: AGHT+IHr55DWuuJ6oQRbZHUALhVQ7SfyjKtBYdUEYQHajPEtsiHRJNUzNkHGVDxpBsOOZTISmy4vmg==
X-Received: by 2002:a5d:5651:0:b0:317:7448:6613 with SMTP id j17-20020a5d5651000000b0031774486613mr8140010wrw.55.1691508574150;
        Tue, 08 Aug 2023 08:29:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id j6-20020adfff86000000b003175f00e555sm13995888wrr.97.2023.08.08.08.29.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 08:29:33 -0700 (PDT)
Message-ID: <f199af27-0332-b01a-0f1c-63f6679eb68a@linaro.org>
Date: Tue, 8 Aug 2023 17:29:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH RESEND v2 1/9] dt-bindings: phy: qcom,snps-eusb2-repeater:
 Add compatible for PM7550BA
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <1691415534-31820-1-git-send-email-quic_rohiagar@quicinc.com>
 <1691415534-31820-2-git-send-email-quic_rohiagar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1691415534-31820-2-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_082940_873402_4D7C7749 
X-CRM114-Status: UNSURE (   6.79  )
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

On 07/08/2023 15:38, Rohit Agarwal wrote:
> Add a dt-bindings compatible string for the Qualcomm's PM7550BA PMIC.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
