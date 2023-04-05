Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46734C77B70
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 06:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9e0aDZyyhecAI7LLf23TlTiVFlHuCLG3h1uUO3ncts=; b=juoyeFYpHJW3i8
	NMlIw3bGeGrdRPThQnCUQsJxnyh0Ry82HAHy/kbFiflVCDlzj9hcTNT+im9s787qAKe6FSPxhFhY3
	9t7gFpnwTkgFKc7GNLcz3zRqdV3ql+/yaVHZxOpd542xMJI9qYqVeQdtbwzOd/67T7moLtRbwjV3k
	dzNascFyB3HcWMFAvr6YeV7YcHpYkSwS/fhWaU+jndcy1lqmFpNHkVpibOXHyHTvDdz3qj8UjiZOO
	tqq/mROAQ1nKG+evRoz7uA2bPF2NYJWDO/Vbd09e0j6B8m6C+hbqN6zma+p5Ii2sqMJdG564Hg4dk
	8o0j6lyXseaVaYwHZeCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjwv5-003Xsk-2e;
	Wed, 05 Apr 2023 06:46:59 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjwv3-003Xrj-01
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 06:46:58 +0000
Received: by mail-ed1-x536.google.com with SMTP id y4so138624902edo.2
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 23:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680677213;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aFIIRnrBNKokC228F+QRUypbBbxmHo1ru9OG9LqymOk=;
        b=bZw9ufpJnzBKuImrMGDvlIZcYpkuP7trTFI1zth/LoLk5RKEEHsKUn89UYPbQy8Zql
         cQpyE5JyNsaDMEkuJE+U2waLytyUnd/msaYyNbbClT/oQBgfd2ZlqDTTh9NuawqcWu/X
         QwWKCa2jZz5ICvPgguUoxvw0fyALbAOBDNJn3G0TY9S/005blsFtzTi84wRLOnnwza6B
         5mzxEo+962RX8+UZ+mJ6VdGQ4Rx1jL1VyaTkLc+hgwYFdFGNu220LHvXr3VhWA3uer5U
         +DWgrZh2vZlZS8KER1PbZXpfamjeJ3zg/ug2OB8leUM7ULl+fbJKISnEb17Is4QkwxBP
         gSxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680677213;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aFIIRnrBNKokC228F+QRUypbBbxmHo1ru9OG9LqymOk=;
        b=7IDAbe0P0G0aSYCgBGIqjBhuZFF7feo4r5EoMaMVFOoRBZUpFMvObpRNL4cnxwIEqQ
         3kky2qe5Bp7W+v7ZEM7G/uByfwUf9cRXwv2IAYKvrweHmorRYBjk/ibItGTdoqg4bq7v
         tVsc6p/NdGXGkRSkm/M9mJhImVSFmDadwRw/OZW6T9nY8dyX2Ip8JaSYBxSFQBUbSOjR
         OpOCBbLp2cH0jH+v8rqvp05gWwbH0Jspx8WO++3uWjsg6SroHchPfC4u0YgSwuG1fuNc
         WbWuN/yhutM+x5o/gO77unwKI2JdssULK5+G+onCCc+r4kZtGi9Nqs4IeJQd+5cFw8Sh
         SoZg==
X-Gm-Message-State: AAQBX9eIOmPyJBajTovzCRFxxdk7Xnfcrhf9eh4HdZOMlUDxx6YSeYCv
	kNE6Vgrf54/dy+Kkl7/+Ead2pA==
X-Google-Smtp-Source: AKy350aA1HLQgP9Fc8eNFl7f3RG7nlo1DaAaMg6OdwCzdNf2oo2Fy3A+7OlkjujnS9dUZa9CiI0hdw==
X-Received: by 2002:a17:906:8244:b0:93d:e141:e958 with SMTP id f4-20020a170906824400b0093de141e958mr1872119ejx.15.1680677213323;
        Tue, 04 Apr 2023 23:46:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id by20-20020a170906a2d400b0093120a11a5dsm6963824ejb.92.2023.04.04.23.46.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 23:46:52 -0700 (PDT)
Message-ID: <26194da1-95ad-ad04-ae14-319d3e309c1c@linaro.org>
Date: Wed, 5 Apr 2023 08:46:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V2 3/9] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574
 bindings
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
 <20230404164828.8031-4-quic_devipriy@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404164828.8031-4-quic_devipriy@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_234657_071266_FF84CC7F 
X-CRM114-Status: UNSURE (   8.50  )
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
> Add bindings for the PCIe QMP PHYs found on IPQ9574
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V2:
> 	- Added the ipq9574 bindings here as the phy nodes in the DT
> 	  are modified to follow the latest style (without child node)
> 

The amount of changes and optionality of few properties suggests this
should be new binding.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
