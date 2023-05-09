Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42890C77B7C
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 14:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5MR+tciAkMwfvFTcaCPIBACzVw88NJmK54Qrvgcjac=; b=sgFkouyZ9wKRjo
	oGF9y1LT3BB5rrJX5ija5y3xiqarfNTn3wE5B6gzgdA3LAmoXDMYoNyZz/I7kESnd2F2U/L8OZ/KH
	N9hMk0XrdnfynWuIHEV5ZCtzFily/1LdZP+6Lqz4FEOIRbb6GBHusws8dLpdzxlUJd+mAi51HJOGa
	VBn4hq1vGFUiyiOOGMzAoDRmpDjZ4FRPIyvl5l2cccFyu2ohr7OPpIfVeVtb+r/8v+g7kCKH6ghk0
	E372iLvDnv9ho62wiamUP1RQ9+1oqdVaCqOrQT2AwlOJrLnOrnVOPlpWxhJcP42LldpS3BDVB9eVo
	CCaox/lTfdkhlm7dc6Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwOWA-003aOp-2y;
	Tue, 09 May 2023 14:40:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwOW6-003aNm-2m
	for linux-phy@bombadil.infradead.org;
	Tue, 09 May 2023 14:40:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=alSD/LYUTqJfX0eULQ7Dos6x9QJDjuDbku/vaMMg2mM=; b=Pw17Oiz7VSSbe94XQVOgG62prg
	hz3KrhFqcBPDQi2T6w99O4I1l8pqHLPtP1qJqIl77jQPr/XNuZAKBIRvfZdCnMSTIzxYDC2menhOn
	djm78sBeUKWSN2izy1zfDLJdnZMF+yORdDNbbQVSZYHduHq03Gj4SGSSYsRXI81hV7/1Ke5aM1NDH
	7vh+TphS4TOhJVe0OEGSZeoguPXwUOZCdl/cI+Mg6MxG66wtBE6DQuAdhx3QiCTKv6T/LuQhTQj8R
	Yhrvt1/kUUZxgieRKIAFOhrO7L1GXqjECDuwPQVc8vnVOUZd7LCAhrMkOp+CaGwf9A5/KwrcgHGnt
	fxu7ZLwA==;
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwN4a-0068n2-12
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 13:08:10 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-b9a824c3a95so7522160276.1
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 06:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683637684; x=1686229684;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=alSD/LYUTqJfX0eULQ7Dos6x9QJDjuDbku/vaMMg2mM=;
        b=eSRY/H9cGw+xOv99Rkt9fVU+GIk/nTmztiI7WoSbsTTf/eDvBNBdRblaLuHP9Dumis
         CnqmkXrk83jWJIezxiE3JuCtLIokdpZnOdKkqTsCDSFr/huG19nMF7ZqCW2UIS3F7Ejy
         Fq9cpUtgkD6BJnLlFt6aCCM0ik1dikFPhdzOnsixORrJsEyUqewgnoyy51Pa1A3UXggW
         9EVrEJHHBIXbp0A5YLcOQcb7Vnnzgmx9U7uPTAPZbCUVLT51BTvRRll2zJ7n/gEBP3go
         MxNccG06M8zNnVZfqVyzOr6J7+TJQASrDX6ZsO3lJT4yhvtcqKaENJq7ozY+w1URHyf2
         RRGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683637684; x=1686229684;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=alSD/LYUTqJfX0eULQ7Dos6x9QJDjuDbku/vaMMg2mM=;
        b=UDY6XQ1Ofm/hzYHCX8uf1ngPtl44ZHON/Cmm7TPkuTU8gRDKxgAIEquhvfxILCUvDd
         cw3z+7KHfn5Skqg5TUeXz2B8juvnlGYjYwAqViOjzo79tu68Y8kity/rhRa9NpM9vvM1
         1Qtwebcpxihurcdf9v38NTcnd8kIjB/lTlBVJLBP4edKmH0kk1vaYOSYJ8Vzlhxe84xH
         ps3x6zWZTVFbkKbyVoyRV0IjppFAbn8NcIAgXKXZ0wflkPmIGBrvGYXob9gpoBNhpplR
         UfKGPjK6IvLbnhur8/KJIo+H8qMAO/vfn8zyn4y8pnbrDVJKMZGSPnPilR6q5onhdHaa
         UsYg==
X-Gm-Message-State: AC+VfDxi6t/W2Rh7lSFCk8nnwM/S6tFPVMrQpWyTJpa6VnqVGB85Rw7P
	ocowrqmiN0KepWvQTlqRF5oWhXn2wQJM5vpUlU6CTQ==
X-Google-Smtp-Source: ACHHUZ7eHh7oUs55p4PsRymZEwkOfiBBPgxu/ifd0C50xzBovPjQu9PPhdwLcNa1wVqEsXJ8GAAB1RYUv4jPFo6R1HI=
X-Received: by 2002:a25:6943:0:b0:b9d:853e:5cef with SMTP id
 e64-20020a256943000000b00b9d853e5cefmr17476795ybc.37.1683637684177; Tue, 09
 May 2023 06:08:04 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1683630932.git.quic_varada@quicinc.com> <1691872a83758cb65053dce7001e96e88dbeed2a.1683630932.git.quic_varada@quicinc.com>
In-Reply-To: <1691872a83758cb65053dce7001e96e88dbeed2a.1683630932.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 9 May 2023 16:07:53 +0300
Message-ID: <CAA8EJppDtY=Q5oOvXG+pE_+KAk59TPauabUav1f0=eggmLULYA@mail.gmail.com>
Subject: Re: [PATCH v11 9/9] arm64: dts: qcom: ipq9574: Enable USB
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org, 
	quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_140808_519534_2A49DED2 
X-CRM114-Status: GOOD (  10.08  )
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

On Tue, 9 May 2023 at 14:56, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Turn on USB related nodes
> Provide vdd info
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v11:
>         - Rename dwc_0 -> usb_0_dwc3
>         - Maintain sorted order for the usb nodes
>
>  Changes in v10:
>         - Provide vdd info
>
>  Changes in v5:
>         - Move "host" mode specification to board dts
>         - Due to dependency with earlier patches board dts
>           filename changed ipq9574-al02-c7.dts -> ipq9574-rdp433.dts
>
>  Changes in v2:
>         - Fix node placement and coding style
>         - "ok" -> "okay"
> ---
>  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
