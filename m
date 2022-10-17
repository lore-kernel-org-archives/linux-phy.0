Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35065C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 17:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C80RJLkE49OyYWhBOxOprXBhIL+0RX84M7nbmDgefbo=; b=mSNyzirHbUDDKp
	yp6HbEUNxYoThxJiGFFDKX55wRhT4lD9zvDKObKPOp2Zi7DLpXgdXF5Fg5eDFc5X0w0fSOrtz29nx
	cpOusgVbq5Sv9s1iq6fgkH4qwOEOA5/zNRuDSqFWugrXLB20mZ4s1SPhCsYtteJSmDb9oBWTY9RIz
	OiWbD6io51lWK+dwL1JnOl5NaIB3iIluZ3HBqmYWVv66/yb6Bb82pjXX2XuTxp8aApSfylh4GMsLu
	R8L1mT49uyAiEkRH9CPYSA6sWfh4FMflv1TJhQQwSBN5JbWd4VOeNtuyX5Gzkx1yES4FpHm+MnqB4
	s40PeWgZqdDFQ1rmlMLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okTik-00DwUy-AW; Mon, 17 Oct 2022 17:16:10 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okTic-00DwQ2-Ij
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 17:16:07 +0000
Received: by mail-qk1-x72c.google.com with SMTP id 8so7066248qka.1
        for <linux-phy@lists.infradead.org>; Mon, 17 Oct 2022 10:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4ZecDoFZ2FP/kx+KdceBdgeFczEPpStIKFSrAh+N6jU=;
        b=LXDJSdcdeLuJYxtyhdZsAI0SNOP4m46trXhDeGqAl1V4CXsnADHkT0hIDME8MnMKpI
         XBRruyzZYQU82Ll4/zEH84hcvRlJ5p0pM24FEdi5Trj7CTeEI1d8RPsKNT7QdSC9Kk7j
         FUS7JzlCBQn62wGI4XV7Zpvnrd+X8g6r3HyWyrjajvVTkywCowHWSf0/u/g+UB71GKVG
         ZpVr4VlhfALLqJaTazVk01O8UnzXNlTtBo5yQ3Tsze986io4/+j+sr6ysWbXSR/GHd6b
         NJNjvUQnYN1Nh7QE2Hx/xz1HWrS+egDBtsPwtlDO59O0zmebeJERkOTe9SqTbp4xeFXd
         dXoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4ZecDoFZ2FP/kx+KdceBdgeFczEPpStIKFSrAh+N6jU=;
        b=6mc7HUUMUIMzyKdAfgJNhHun7mFfSs76IbS52nswVz07+z6laE9/jXMrxXAki6rDZj
         2Mbr5Io5JyzIONf909/aPexF85d+gfj0vyVRSoYueNSeIiNERh7Iso1R/AmsvuL7rxB0
         pymo1qj5w2jok78Pl9ZjeNFSNfwn5rjTRtqUt5KhDrj9wrQy/sHlenfhP9bYkA6z0HxF
         9n3lWrgA61GQSPuIAnoJNyLxSXmOpItwZLV5ov53t/OPEOklpw83+HWgyMh3h6iOFC2V
         ggYCzTLAMdc8oDiO5hx9xJP9rCzp/sRAHuNLA/T2V3qjJmqEZtxjEgzmpyb2pAdiP/ic
         VqSg==
X-Gm-Message-State: ACrzQf2QCRdxNL9H6/1359qEBrDRm2T3tCzSV4KyfWuVcyPmQsJNFSX0
	29JhtXb2mBJ92BdMiUDTFOYWrA==
X-Google-Smtp-Source: AMsMyM78cEACn7q29/KOCzKKbKrK66y2E/xmtRkYp6XmajqupdFIvn1kcwfKZf54KpEbLcIXuiHOEQ==
X-Received: by 2002:a05:620a:46a7:b0:6ee:dea7:cc1c with SMTP id bq39-20020a05620a46a700b006eedea7cc1cmr6200325qkb.506.1666026958537;
        Mon, 17 Oct 2022 10:15:58 -0700 (PDT)
Received: from [10.101.5.247] ([148.59.24.28])
        by smtp.gmail.com with ESMTPSA id c25-20020ac81119000000b003996aa171b9sm169442qtj.97.2022.10.17.10.15.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 10:15:57 -0700 (PDT)
Message-ID: <5e153119-f853-ff57-8277-2d782e255be2@linaro.org>
Date: Mon, 17 Oct 2022 13:15:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 09/15] dt-bindings: phy: qcom,qmp-pcie: mark current
 bindings as legacy
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221017145328.22090-1-johan+linaro@kernel.org>
 <20221017145328.22090-10-johan+linaro@kernel.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221017145328.22090-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_101602_697703_8B1D7143 
X-CRM114-Status: GOOD (  15.01  )
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

On 17/10/2022 10:53, Johan Hovold wrote:
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
> bindings can be based on, mark the current bindings as "legacy".
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../{qcom,qmp-pcie-phy.yaml => qcom,qmp-pcie-phy-legacy.yaml} | 4 ++--

I don't think we should rename anything as legacy. These are "normal"
platforms, not legacy ones. SM8450 is not even that old.

The recommendation is to keep names matching the compatibles, not adding
some legacy/newer/newest suffixes.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
