Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6472DC63797
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 18:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Stfyq1EdIUbgOJJgrw7xklLcm7PPDQm1VHWsHt/BmRc=; b=Ll0aZ0ahL+S+Y4
	wTmVB8z3liUvqwXnCB1qNwVibt3qwxbMWyzTh8X70GjE4nFg+yXcBjfdkA6MizYXmdDMW0I3AeSYt
	YdEB0Zd8AzVSAGQf67vBvS504sUptHQtkWjypiA9N2OmefmGQep7KIFlEV/EJozTjgEcTJlaM0ArA
	NKEwsTl9febpZboQUsdx52Xz2anf2feAfP++JQBkEqKQYySTLGy70oxVPJd1xzmC7cbC+utj51GCz
	9SQG7tPAYeJERBct3LF2QYlJsQvmrCWeQD5L5/bvHHOSnnmFtthVK6AOjcVhbdBhMKjlpcSeUBaFt
	1MIpPg1qS0dRWQC1tbNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEa3F-00Eslo-G8; Sun, 08 Jan 2023 18:05:45 +0000
Received: from mail-io1-f50.google.com ([209.85.166.50])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEa3B-00Esax-JW
	for linux-phy@lists.infradead.org; Sun, 08 Jan 2023 18:05:43 +0000
Received: by mail-io1-f50.google.com with SMTP id b192so3475172iof.8
        for <linux-phy@lists.infradead.org>; Sun, 08 Jan 2023 10:05:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E4q02u4YKJwEwJ5w235q3KP904Bt4YMYy+ECpwNFHUc=;
        b=5mh/K8iEOtfo5Pk0VADKwmIXUBeSqTI7sUKgNMeIjU1Z1RcsN8MA5UXt5p3lasKKu6
         0kAlUFkXvLo1M3iPced19rFRkTrudDSemLGW8C6kAAEnUzxFcpdG32RcWFDEGzwZSyti
         5GhSKFg5VluIUaxuYdoIVYT2LRdd0q8NtKnLR5DmidMc7RnuoEi7OGSPQQijl0A6BoiX
         CeYZmQQ4nTld8KTPCgFdI50CUi3OURx7uAbj5lqLC8qV7KUnb1UCjDQQi9uXqgOqd5ip
         9kHu+NkaKhcps769UAEsmeu9f8QF1qLyfEGRBImP0DOUe2wMH/oeyw5klyi8xnoQ9IiQ
         VALA==
X-Gm-Message-State: AFqh2kqp2oDxsrUKg+hhozBWKoiFzm8V1KJzIGHqDsPvH/oqnTeUwlLW
	wuFSD/pwfugLS4zjEh22/w==
X-Google-Smtp-Source: AMrXdXvM0xK7vfhU2j8FSpnnaWboidKMI/eUFI5FTarXacL+fP6aAg3YkqJBw8C2AeNSnn1qNexUHg==
X-Received: by 2002:a5d:840d:0:b0:6ea:6c79:d21d with SMTP id i13-20020a5d840d000000b006ea6c79d21dmr40130442ion.20.1673201137496;
        Sun, 08 Jan 2023 10:05:37 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:8069:516a:f2b0:691e:4315:7c0f])
        by smtp.gmail.com with ESMTPSA id d27-20020a02605b000000b00374fbd37c72sm2126236jaf.147.2023.01.08.10.05.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 10:05:37 -0800 (PST)
Received: (nullmailer pid 148261 invoked by uid 1000);
	Sun, 08 Jan 2023 18:05:25 -0000
Date: Sun, 8 Jan 2023 12:05:25 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Wesley Cheng <quic_wcheng@quicinc.com>, Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,qusb2: do not define properties
 in "if" block
Message-ID: <167320112477.148208.15939584193406100216.robh@kernel.org>
References: <20221224154226.43417-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221224154226.43417-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_100541_688918_1D8C4C65 
X-CRM114-Status: GOOD (  10.05  )
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


On Sat, 24 Dec 2022 16:42:26 +0100, Krzysztof Kozlowski wrote:
> It is more readable to define properties in top-level "properties:" and
> restrict them (if needed) per compatible in the "if" block.  Defining
> properties in "if" block  does not work correctly with
> additionalProperties:false:
> 
>   sc7180-trogdor-pazquel-lte-ti.dtb: phy@88e3000: 'qcom,bias-ctrl-value', 'qcom,charge-ctrl-value', 'qcom,hsdisc-trim-value',
>     'qcom,imp-res-offset-value', 'qcom,preemphasis-level', 'qcom,preemphasis-width' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/qcom,qusb2-phy.yaml          | 160 ++++++++++--------
>  1 file changed, 85 insertions(+), 75 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
