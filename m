Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C96EC38A02
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 21:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gHxl2Ki4NDBbGHz3gaP+whJaiqiHGSJgqpbSlCQX0dA=; b=cJclRRI3uORvfk
	ZC4mIPxNe+SXkjUeSwlKSTrAFCtavIY5aSSyS8+sqk5lJh1WXtRZxxOLrFYf6J/86Ct+HUdj0gNmL
	bCWy75eObIbECkuDo5E9L46hzHk4CS9sxJ1HS6qcSyMmm3evLKbz7gnLnvM2DtFsNcggODLLvlc1V
	SA4xDNWpRcenM5CLwT1HYc/szpYj0p9Nlx69eRn9a89Ct88T66BFweKvhEgcP1Ft0njsir2+DE/s0
	qVTN1bmrESQNJ64VsLGk9hUspXCRGSwB0wHlCMSg71QZ4JBk2poe4XIZVuKPOgsuLbp8QgpBVBmU7
	Cvr86sIYALbnRJBb8IHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooXLq-002cxU-J3; Fri, 28 Oct 2022 21:57:18 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooXLo-002bVq-NR
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 21:57:18 +0000
Received: by mail-qv1-xf32.google.com with SMTP id u7so4921862qvn.13
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 14:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MUWbiScYvPNDPAH5SO6hLMvIWSq0j/aSTl7hAdbp+eM=;
        b=ofpXCdMGwrvsDSFzvhpHRIVKl/C/xGzCwEox1ACQea24YUKHeNANtX6oZHhnkz61Yu
         kiRBDW1FMJ3q8PwC//hCzVbshy1h4Q9fnCZVCNUZybN6AjkFwcxz/Q9654OwMkQDaQgB
         fFxgJ1SyhlPnKZr64mn3o11dZ0cItCBz3OQfY5+1XnHK+w9EocXXIWaBEVWYGka5mKfH
         xbSU5My4+mGBqaoeD60+WA60dcv34uGucVzx2VQ/Km6P55IibVKB9OEV44VMsKgYGdYO
         WHP23Beb0Yd4iZ4dVqL4ArUz8iKd0cbSBMaMsys0aIaxdqk/1yQlKT5CPJv0kY0nW4Wi
         dWhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MUWbiScYvPNDPAH5SO6hLMvIWSq0j/aSTl7hAdbp+eM=;
        b=2L1aPsjZlSOBDycpw0LqrZc74rF/k+TK2BMLcqD062x/G1IVHoUe7eU7lw7RBPBtm6
         aqUW3bJgsHx9xNzEeT7Vqh+l3BeQN598oc5JAukWsauZC4sYj7YuXET6Qg+0LSs+dTdP
         aZoM8DF18NQoQ6y+kVqppYb9coDvnUPbsOAzF9CsLAYD9auUfHALQyMQqQuX96EWktxJ
         uGG88rBOzRshqyR9AVZaL+K5nxAjQ59kMGHDvn0DXxSZF7b/a5UenYD4HpkbvDRsavr0
         mUOkNP2f7OyvyvZVBeXOYTgf9kDJLPNDKzE1a9AHfqCE8YtEy1muzxS4F+48cfSCJoSa
         e/VA==
X-Gm-Message-State: ACrzQf0zvaHwnH//JseWXmd2uZoulOyAQ45qSDDTrBEqFEPv39FmS5TB
	S201rYaa3PuWNDtwKLjtoqB6HA==
X-Google-Smtp-Source: AMsMyM5o6391rBXXM8kVVIWRdZrhrUEKL+CGQRbHz2sDc/uL5JAsZCXZZnC5JtkC+TJV2J1iW9FVdg==
X-Received: by 2002:a05:6214:1cc2:b0:4af:891b:4e75 with SMTP id g2-20020a0562141cc200b004af891b4e75mr1408505qvd.30.1666994223399;
        Fri, 28 Oct 2022 14:57:03 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id t18-20020a37ea12000000b006af0ce13499sm3681335qkj.115.2022.10.28.14.57.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 14:57:02 -0700 (PDT)
Message-ID: <33b13789-33d6-a22f-82c9-4c5691d0737d@linaro.org>
Date: Fri, 28 Oct 2022 17:57:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v4 10/16] dt-bindings: phy: qcom,qmp-pcie: rename current
 bindings
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221028133603.18470-1-johan+linaro@kernel.org>
 <20221028133603.18470-11-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221028133603.18470-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_145716_805711_4701A688 
X-CRM114-Status: GOOD (  15.06  )
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

On 28/10/2022 09:35, Johan Hovold wrote:
> The current QMP PCIe PHY bindings are based on the original MSM8996
> binding which provided multiple PHYs per IP block and these in turn were
> described by child nodes.
> 
> Later QMP PCIe PHY blocks only provide a single PHY and the remnant
> child node does not really reflect the hardware.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 
> This is an unnecessary level of detail which has lead to problems when
> later IP blocks using different register layouts have been forced to fit
> the original mould rather than updating the binding. The bindings are
> arguable also incomplete as they only the describe register blocks used
> by the current Linux drivers (e.g. does not include the per lane PCS
> registers).
> 
> In preparation for adding new bindings for SC8280XP which further
> bindings can be based on, rename the current schema file after IPQ8074,
> which was the first SoC added to the bindings after MSM8996 (which has
> already been split out), and add a reference to the SC8280XP bindings.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Also missing cc devicetree list.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
