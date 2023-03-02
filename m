Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31848C6FA8E
	for <linux-phy@archiver.kernel.org>; Thu,  2 Mar 2023 16:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wgu9t/AtLRs87YjMnG9FFZJHMaqM1tW9X10BtxExbvM=; b=x4ZM1etVa88jJf
	Yp3BuWzlemh/juMCu+Igr2j8lBdbftbSBB4GVer+GOq7qBF51b6E73T4DUC7uCyQ060Wz5WdfiEr4
	X5N1VT9Kn3jbPcnlZ5yRZDD6R+A2OiRWeljFJDhgk755DZlaWlhxTVdhly+OesqjxzA27PUmwgHRn
	qw2NEeK8tFESHsPuHwsmqj7lo5Lw4ZVPCNUQa7YsL9uyvcKsSzqlyRoDvf6F56KN6P2/jZVXAVS3v
	NVJrrOHpYyoWpfhCppZ39lwb7dikc2aHoOSOC6UMh3lNCeIpD5Gmxlck7HgM44qi5CzVZrSdpbwhu
	YbeRDRF7Gj2jgnRDcffg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXlij-002oNW-Fk; Thu, 02 Mar 2023 16:23:53 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXlig-002oMI-05
	for linux-phy@lists.infradead.org; Thu, 02 Mar 2023 16:23:51 +0000
Received: by mail-yb1-xb36.google.com with SMTP id e194so4095416ybf.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Mar 2023 08:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jAXUc+7igsVtJKU/EXqB4y9E7c4M7owmalEpng7fGGs=;
        b=t6gIv8PG8O2JCb4Pja+OY1bAmy+QfmXrfFtERdyeosrITN34js2EPockt2g180hHYL
         pWe1W6HXqOiwIu3072C5tKjIbRE/MQ1j7xJ4TsJHFq1YK0c/PGV8NNn2Gdb8F/kPyiKB
         DZPNzj0Hy2QWF9GyHk814k/ytH4LbE+co0vOT3J8Aywg0nPGBBqJTU62HPyJmSQbwyGH
         d0IfJXkkx/0sg4YTUmf3FaAYlryUzM+3+GqTUBgISA5CljcZCwHVbDNbJ2/pdkGjb/94
         UVsGjY2qnEbneGUKY/ru2PhJ7HCHT0cbF61rjlWtfTDEbd6FobedpulmtiwrsvBjVhPf
         PcGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jAXUc+7igsVtJKU/EXqB4y9E7c4M7owmalEpng7fGGs=;
        b=I7nWJpNKzzN/6G8aXoSqB+XuPQXFrA390zbWr50WO9UnHLvIF3Ow9XmQ1b5oUHkHOM
         i5JMSPaDNErYsSEnOfpaug0YemTqx/SKX7+IwkVVhgprFE9RH+BLCGwkiGsDTMNNhnpM
         lvZA+HLgApgqeLcitBc3V1ott3nmfurj5GcIpltbZS5Xk30a5sLgzw6FA9dLa2qAGKJA
         wLwqORZoKpSELgFXp1tkLBKmG+WLTsSpB6+KVBCg1mMQvNvok022hkbwVhrIcPC96TJ2
         qts2sOE6fetzLC5HI6n1ATXUfLpwdTZL+93MLCzCIPSSAy1y+V72C3QDGaIQoGeseKfn
         9N3w==
X-Gm-Message-State: AO0yUKVnwpwzLef3EQThqGeBLr830VKFkSQHfggyDRYxF3/HbTUHwatm
	es42xjAlaeXObt69voC2gaodIbAk6Mam3cW+S64cfw==
X-Google-Smtp-Source: AK7set+RUYz2RLJUmCKAuN80E5C6LRyBdQu+UgKzzLI5prKcrosXVpbyJaqYOEnoLm71zPuAGfkUyepJH8UuFtbQ+Cg=
X-Received: by 2002:a25:9983:0:b0:9f2:a18c:90ed with SMTP id
 p3-20020a259983000000b009f2a18c90edmr4846033ybo.10.1677774227956; Thu, 02 Mar
 2023 08:23:47 -0800 (PST)
MIME-Version: 1.0
References: <cover.1677749625.git.quic_varada@quicinc.com> <70beab86eb21d1130e61f52753f514cfb433a4f2.1677749625.git.quic_varada@quicinc.com>
In-Reply-To: <70beab86eb21d1130e61f52753f514cfb433a4f2.1677749625.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 2 Mar 2023 18:23:37 +0200
Message-ID: <CAA8EJpq_B_f90W6ULk1q+ot8ACj68U0M8Yc8yXL-BGuF906xGA@mail.gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: phy: qcom,qusb2: Document IPQ9574 compatible
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_082350_081101_4046B121 
X-CRM114-Status: GOOD (  13.33  )
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

On Thu, 2 Mar 2023 at 11:56, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Document the compatible string used for the qusb2 phy in IPQ9574.
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> index 7f403e7..c426f78 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> @@ -25,6 +25,7 @@ properties:
>                - qcom,qcm2290-qusb2-phy
>                - qcom,sdm660-qusb2-phy
>                - qcom,ipq6018-qusb2-phy

Please movef ipq6018 to the proper place and then put ipq9574 next to it.

> +              - qcom,ipq9574-qusb2-phy
>                - qcom,sm4250-qusb2-phy
>                - qcom,sm6115-qusb2-phy
>        - items:
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
