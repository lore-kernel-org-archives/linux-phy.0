Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64EA7C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 13:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5DUAS+5edBQM+5XdRksmuNgKoqklb0Fggh+g+QwFqo=; b=XyQ6hEWQKEbraU
	if3Bw8l5yWAx4Ah7p7hmfd7qRW/YZZvv3OJ9U+ZYhW0jRlA+RG/sAp7pWFd2M3FI36wH8oKlHfIm1
	emrAo3TCyaKVgRz27MpAa/P73xpI3Rj18+YNqSjbtJsTsfjg2tH28NDBnMJMZX7bwuNoJCnWO4QqE
	NzMbmYQvLaenJMVHsnUZfKTjJe9JSUFlnPH6WokL5tl45M1v8moWoO3OsFyvGIAbwpjrjeVf9k6qY
	Pwb4fCdlgG3oYrFyvhst8iOZYKFPg1xlkg9Y0KtLabIdla/2JGQM9e4T8JCeIFkM8WHVtu1Nr+5HH
	Acq93KezQbVbIMsMASRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LiW-001Z7Z-09;
	Tue, 07 Nov 2023 13:02:04 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LiT-001Z70-2G
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 13:02:03 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5a7c95b8d14so61633497b3.3
        for <linux-phy@lists.infradead.org>; Tue, 07 Nov 2023 05:01:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699362118; x=1699966918; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vKVO9Km+ohatrlDcgogUtJ4mNCpxTTFHDSK1wMZmOyc=;
        b=POQ1AjlbMMjsW/fStaW7ruIU9RX4RFAW9+reJwrp57nfbxKPjBPK64kR1eQYdibV7V
         wYN36YZ9NYM9PqQ2qsEQQLAvXmllDuv6gvMHyJbhIB9bAWOBFJ7CPR/vzb4s5gwTJBim
         mgt3tWFZXveu5EP0PfTZAbQh9rsFiw62b3KtqAsWUmVBQxstpVDIXDKH9y5IAPR9sAmt
         Lf5oNSB1ge+utFd6RpJ7fJ6RWqBrelRG+HOjf0h9BHHp4EN9lpfYAFwICQ8/1VGuwrrL
         MHHvKu7HyD30tzym9xFcgpKOYh6JVhs5Y+j5trFbp6K8AzN84aDbDuHHuCbVtX7GRpPl
         yYGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699362118; x=1699966918;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vKVO9Km+ohatrlDcgogUtJ4mNCpxTTFHDSK1wMZmOyc=;
        b=PWmy7hvdYA11qXxDKDtxjm/o3aHkTYU77SneZU/hyBZrNQqyGMJrF1EsjZTyWthyuN
         La1pqCGz7XOYQVJmeDGF8uFfCw+/c/dQciJlsC+QWvljVJIip6uzIMaXMAOQJPTr0Yhc
         UleEAzdzOvZatTR8grsbl2rC+VzaQyL5Ci2qtDFel7ElsvHo84qzzfr+Di0havTfgA0h
         5/9FNooZBpOKyqcjhbUrecaTQb2tbiZ8iHbbJDGkSOsl9W3MDO70DL7lTr3MLPtlESUr
         H4vmg24WQGzUXHYiSehKMu9geeB++0A+l5bwGwDTsgRLRUQ0xKWEbHk20mW3qQYY5Rd7
         SXGw==
X-Gm-Message-State: AOJu0YxeW2ai+nPU3qCViXyXvrTsH0evoqDfGL0JLU1kNFPYX6W4v0+c
	X5ITyDoELCejaM/H3nkILqHs1TvTak7iXYh3D14XEA==
X-Google-Smtp-Source: AGHT+IHKQoKSsmRcg/sOieixzdu1e2l7NoB3NK+XgDvDXaMmTUjWJdL0uuTj6OuaO4uthq+8deJFWHoWrBfrpSar5O8=
X-Received: by 2002:a81:5210:0:b0:5a8:181e:8d6c with SMTP id
 g16-20020a815210000000b005a8181e8d6cmr10151699ywb.10.1699362118505; Tue, 07
 Nov 2023 05:01:58 -0800 (PST)
MIME-Version: 1.0
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com> <20231107-refclk_always_on-v2-1-de23962fc4b3@quicinc.com>
In-Reply-To: <20231107-refclk_always_on-v2-1-de23962fc4b3@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 Nov 2023 15:01:47 +0200
Message-ID: <CAA8EJpqvCJsft3Y-m2ZYORBg=6P7EhT-PsCSkuQ4xaxuf3KOwA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com, quic_parass@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_050201_745332_147F63BF 
X-CRM114-Status: GOOD (  16.57  )
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

On Tue, 7 Nov 2023 at 14:26, Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> Document qcom,refclk-always-on property which is needed in some platforms
> to supply refclk even in PCIe low power states.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml        | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 2c3d6553a7ba..263291447a5b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -93,6 +93,13 @@ properties:
>    "#phy-cells":
>      const: 0
>
> +  qcom,refclk-always-on:
> +    type: boolean
> +    description: If there is some issues in platform with clkreq signal

nit: there are some

However this still doesn't describe what kind of issues with clkreq
you observe. I mean, clkreq is just a GPIO pin.

> +      propagation to the host and due to that host will not send refclk, which
> +      results in linkdown in L1.2 or L1.1 exit initiated by EP. This property
> +      if set keeps refclk always on even in Low power states (optional).
> +
>  required:
>    - compatible
>    - reg
>
> --
> 2.42.0
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
