Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4924EC77B62
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 06:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5fWXeOTYZIXRlTutBvxPnwgozF0ZuZJL4jSgE7n3Rg=; b=lbT+Lx5cO/U32T
	eXdEnmfP1CyOghMCanxCXFtDFB3mQre773dlyl+WnC6NjmWPEyKvG75edbuY225iA5A0Ksb3vZ0iW
	dIZmgIVWbtihXY2kqSKMLLcNSGfsE2LRq+lsZDtqlxAKTQvIvYWVRpDh8FQvb6Mb0beJYJHHxRW43
	3udbkcQcghJpcaOw9tBAuJMdZZZgTcRWJ3lcUNcbXQ6utCc4cDT7rWn7wqW8e622MxkTZL492hkC5
	Kvt/4NDs7VDWy+d3ARalIynYjODqAHFsA0xS0ZZTvdKL1VSKwwhZXnLnGOeksCSqd6NcW70Q0FTWK
	LQ5tGkgTqabLAPGArtDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjx6k-003ZNn-2z;
	Wed, 05 Apr 2023 06:59:02 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjx6i-003ZNJ-1I
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 06:59:01 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-92fcb45a2cdso23801766b.0
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 23:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680677938;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ge5tZ9KDzAcz+JwWlyHU3EWycDUOLBemzfQQA19mRWg=;
        b=YMIQo8YkmwBb6P+OGjuYO1WXzdBweIi2Y9+BX+C+/kXe5iH+V896NMvfco3//uos7u
         C0/JpSV7XK5y4nPJ+JxPoukF9kEzF3vdSOimcaYrQp7mUnAqVGq/mt8QK9ThSQ2Ek/3r
         7PRU3fe4tjLaf3TDqObZ7PIAzNhvyMSaRh12rCGkQVecARcZLyhrDF6lrXUEtVYJZ41f
         zW+qqYnRd6hC059vdRuhFmClVxvyynzjeOXzagE4JByU8Vn3wG3DP4tsQAlySbTZGKCC
         TsbSk7neQooFmn/m39OR9NoohtRFaeBPP9uQ19SfNJo5jCwvkUuO13BUDO//8/9wqjkM
         FPbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680677938;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ge5tZ9KDzAcz+JwWlyHU3EWycDUOLBemzfQQA19mRWg=;
        b=53GLqaq34tRMuDOJrwMIe7JYSpnKYkSVHyd5pKupMZ1/5JxQYomdNLuec36OBmYiwc
         K8tT0ihpnlyoKC7V8w85NUAEAZBvHjfqacydKaEXN1tkBpRcpUU2vM1xJkaB1gzrlDOv
         DumPLlIa8QPGVHs34e1m9UQh9KcAE4u25jQu+JBxu0F9QKqdCYgah+oGplY7rgqiP5+X
         EeI4VHdKu+xcmxB5QmqIzHdbn8cHoaQPyyC7j1nwDTyBMDDVvC/xlSrAm4eo8LdL1wfT
         ARyODj7f7OzUOhwGFUkl+KdD47kfKbpmM+RZE7vGEd1JvxBnFxOgFSH8hqOGXsp12b25
         Au3w==
X-Gm-Message-State: AAQBX9dvznTY4axghRNkRgUW+RMVNtXeMV7t7JEk00iJ12g72+hmlQqA
	AB7jdwDtVx4HKqK4Wz8HOpu0xA==
X-Google-Smtp-Source: AKy350Z/ugZFHsOXP6wXHv4FffyN3fDhJJCINwRAzsn82Xp0UViumtoK44fbCd5Nln9hyNPOjd0iUg==
X-Received: by 2002:aa7:de07:0:b0:4fd:2675:3785 with SMTP id h7-20020aa7de07000000b004fd26753785mr962704edv.22.1680677938487;
        Tue, 04 Apr 2023 23:58:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id kd24-20020a17090798d800b00933d64cd447sm6913431ejc.121.2023.04.04.23.58.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 23:58:58 -0700 (PDT)
Message-ID: <445ed49a-9ea6-0851-b0c5-bdd1d420689e@linaro.org>
Date: Wed, 5 Apr 2023 08:58:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V2 6/9] dt-bindings: pinctrl: qcom: Add few missing
 functions
Content-Language: en-US
To: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, lpieralisi@kernel.org,
 kw@linux.com, robh@kernel.org, bhelgaas@google.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, mani@kernel.org,
 p.zabel@pengutronix.de, linus.walleij@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
 quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
 quic_arajkuma@quicinc.com, quic_anusha@quicinc.com, quic_ipkumar@quicinc.com
References: <20230404164828.8031-1-quic_devipriy@quicinc.com>
 <20230404164828.8031-7-quic_devipriy@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404164828.8031-7-quic_devipriy@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_235900_463932_12577CCC 
X-CRM114-Status: UNSURE (   8.38  )
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

On 04/04/2023 18:48, Devi Priya wrote:
> Added the missing functions cri_trng2, gpio and removed the
> duplicate entry qdss_tracedata_b
> 
> Fixes: 5b63ccb69ee8 ("dt-bindings: pinctrl: qcom: Add support for IPQ9574")

Fixes are either separate patches or sent as first in the series. This
is not really related to PCI, so it should be separate patchset.

> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V2:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
