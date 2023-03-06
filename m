Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1397DC6FD19
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=McwHq9vD5CUNrc1getHLOHxBBxL6ltueJlo0RPepRyM=; b=Whw57x3GSrxclz
	OdVK2NZnqUCylHj8CLg89B8ruWfuHFEpRz8vuXOU30XISlc/bvvnrtPpKvU0GVwa4Y8PPj2PmYMKc
	S6SpViuAv++OcxVNlobP2XBdAX55Qb8g65pQS6ysGoeB/IqqNrU8AlV8NosVjEnVZmVt0mAw9VSwV
	2t4MFoS0SPF63lWojKo0gJ3o8lj7KobBOYNNKpsDoJ6NpnZHalQ3B2BsvosvPMe9JJ3n3q1I9UcVH
	NOwL/PuhRGszMRfigZgHBnjKFeW4P6JQfa7C3hX7CQdvAC8sWbasz8VCQVInKzZaMO/R3KyikTLZi
	jbNfprBn33vtGcWyBEcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ6Or-00BwKA-Nd; Mon, 06 Mar 2023 08:40:54 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ6Ok-00BwFC-FV
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 08:40:51 +0000
Received: by mail-ed1-x534.google.com with SMTP id a25so35428516edb.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Mar 2023 00:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qQ0kCNRvnlBPGo3zFijI80Fs5ytanhlw1wiiBbqnEfM=;
        b=Ea6pV7O954GCjZZnA876T0Bb4Qg5OupjdBek5ck1JbEIMJ4b7kEXiDEzcbL8rSTvnA
         oaIzWTe5Lw2yxeK+XboKU72Tqs/YlVcmW37a80e0z2+xz5GhiWsXwYcgIDhgn5KkZO4E
         +HlkicDKmizcb7yP8KJqos2OJ7Kzsappz6vcJeuzl3qWYb7SLiqAvrwIvtvB2yGVD14M
         MFldyS5c1rzHRBSD/oc2Ox9lLuvEvi4IrTthJjWCDFjY+VGhaumc9H7AD5TTdHzh4ZjM
         T3O3k5OVPn9FsEn4C6dqFQ6149aKjGOS1IxWx9XbqKjrNUdAoBYGDqludp806OVGOSqQ
         uFsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qQ0kCNRvnlBPGo3zFijI80Fs5ytanhlw1wiiBbqnEfM=;
        b=4FYcmUyqaI6NshNzR6lLMGytxKngK3b7Eqn0ixYEbmsTXRF6tjSFkHRNlmFVBnHepD
         bsNhQUqYQ6l+ghkh0Uo2z5/s6AOBdcq1mnYTV8qvBRTG8EPgSc0rI6VsSulolMrqxs+7
         nupL/3hB7UXR8O/Vl8UhM5Tq/Kbz1LK3JYdDh5gSWbZhfWEWLcDYoEPK/U9uuZ2T/6NQ
         lrMMoSkb0f2mdZXbQFquq893TnoTtnscqVdP1cACWysiJ03i/l/upMprGLzec2FZ559P
         MIl4it/25EQ3XtQaER3uhBoMaapxdjZQwKk47SHoyXpn7acE610g7djFUY2MZhlX1sYm
         NZ5Q==
X-Gm-Message-State: AO0yUKXA8DKXQ14Q0U5CXlUXh88rHqFwWTQBvPmcZSJaSJ+Gnc3fYhsF
	NqqvEoiQEt1hNfS6u4opCGAcMkBtw3U8g8gUbQ0zTA==
X-Google-Smtp-Source: AK7set//ASnOu0ofB+sAvHW9PfcCZXmE6A9lrbCDAjj9FiQCBEuJ8PvkwlD3i0mN6IIJvOdE0LHw3Q==
X-Received: by 2002:a17:906:3141:b0:8b1:7b10:61d5 with SMTP id e1-20020a170906314100b008b17b1061d5mr9872711eje.33.1678092041758;
        Mon, 06 Mar 2023 00:40:41 -0800 (PST)
Received: from [10.203.3.194] ([185.202.34.81])
        by smtp.gmail.com with ESMTPSA id s23-20020a50d497000000b004c8948162e8sm4370855edi.67.2023.03.06.00.40.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 00:40:40 -0800 (PST)
Message-ID: <18e507e2-4159-d2aa-1945-4c06651d91a1@linaro.org>
Date: Mon, 6 Mar 2023 10:40:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add SDX65 QMP PHY binding
Content-Language: en-GB
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 manivannan.sadhasivam@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1678079913-27945-1-git-send-email-quic_rohiagar@quicinc.com>
 <1678079913-27945-2-git-send-email-quic_rohiagar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1678079913-27945-2-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_004046_627087_6330802C 
X-CRM114-Status: GOOD (  10.30  )
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

On 06/03/2023 07:18, Rohit Agarwal wrote:
> Add devicetree YAML binding for Qualcomm QMP Super Speed (SS) PHY found
> in SDX65.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>   Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> index 62045dc..d877589 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml

Please use new PCIe bindings from qcom,sc8280xp-qmp-pcie-phy.yaml


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
