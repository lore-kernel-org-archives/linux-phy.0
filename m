Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28FB6C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 15:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tl+ASPyEuoHUVttO8FawI6cPlDDt5aWsTFKFj+jSJjU=; b=D4px0EDxlN43A5
	HDfiVkIr+IXI65jIzCq8k0FF/fmD1h3Xlbe3wNPHwNGGcxz7wf6KIoMZfySEZNhUbVgpOenrxEfDv
	6mpYV0vydGyS/uikUo9WtIkN91aBFmwQSWV2R5BQDEYnfpmh4+CaxyWoikMyC8ZOOu6Vy9FvWRDgB
	38f/u2HFQotaGNfqQdTOlv1Omt2pGQXJeZaeqgGRCLcfr9eu0UhTJbfQpt0gu6aXr+wDI+KJLln0n
	K2u6igjDhNEUk2t5euuhMzp1mAioEKVUNgk9kyQdykpDbj79SFxookaQciOIpz7auSpAtAi3G5HxN
	FytPiw1TTJaCy/Qk7Z5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNcvo-005jLq-0Y; Fri, 25 Feb 2022 15:54:56 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNcti-005iU5-TE
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 15:52:48 +0000
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9E5E03FCA5
 for <linux-phy@lists.infradead.org>; Fri, 25 Feb 2022 15:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1645804365;
 bh=QHFF1WfMTvTAtjpAnWWRlegRHHUzrTEtJpZxW8bOnTU=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=bw8kS4MCvVlpCQGqbzBHzDhsex4scGaJHfEjMI8HoR9YLz0gQXGYla2XfqwmUcFDO
 g9mmJJmJt0sH55UvpYPOcNHrpghnyz22bwqaaKM6I8a2orM9yfOVWL62uJXjmW4Qmx
 fCWF+gGz1RlQT/qdGROxoRGumc5k1OUCFdUWXi6nWwuQ2zv64vHnGbuWRhQTAOrZcX
 ST71xP5uz6i2edqDz9tIsxRFl/ce3mls0M6Kpox0hihXY8RrdWpGjCOudFWp6hfgww
 2HiOHOkG4//p+LOssWltvhpLKr7Ee2nRqYis9Yv0/9YvJ/Bys/HC9XNgyALSOgN2PA
 p5PUP8x2dbaGA==
Received: by mail-wm1-f71.google.com with SMTP id
 r8-20020a05600c35c800b0038118108e71so1485431wmq.7
 for <linux-phy@lists.infradead.org>; Fri, 25 Feb 2022 07:52:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=QHFF1WfMTvTAtjpAnWWRlegRHHUzrTEtJpZxW8bOnTU=;
 b=FsciZXxc8xMYSDjwAZhv0OEdh48jFPyb9cpCQn6/Dqfa5X/WWY4u5v0elIXeGezmHp
 rOBENg6EUd+aF1wzhaZKlLsOwViueVeNIilr7Zv4K3NHyIMEo7p1PqRDm1JzaVqaJv41
 klKxYHH7DdhrnswIm7k4jNEAqciQVkSUzkYn6iph5kFfeEeO080zrzOT5ZIyTAVGbpjL
 ZUlLILtUrT0h1dlS+GYNfUNu9wuRkscRyzePhgVsHJkzRW00xnKW3R8Mw2aBmgwo7rwH
 eyIhZoKIJm891V2N1I3KE+T+/19jtqNtngBJMnkORB+EXW3cQBgPctx+E32rEICqVQ8+
 gmlw==
X-Gm-Message-State: AOAM532vGJyaOGVIUhnh8dbGc1AYmGfg8HPIRwdHPAb8SPbLaaMZ61Fe
 h5rZclm41S0vVK3a5RoPavGWRvFCtZshPgoJ+8HDfwJpLrSZWdy3SUgjtljWaJdSC4ulHfD14LM
 vyJ72fU0XoG8OHMGdxBdo3Nxspf0p8zkDl1WglXmbg0I=
X-Received: by 2002:a05:6000:257:b0:1ee:b98c:243c with SMTP id
 m23-20020a056000025700b001eeb98c243cmr5267565wrz.51.1645804363706; 
 Fri, 25 Feb 2022 07:52:43 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwZClTgVXWBy9RraiO8dWUTT6Evv084LD3/xmJExyAJgJi+5QIL+SZtvfW/xkcPwvhNWEwrtA==
X-Received: by 2002:a05:6000:257:b0:1ee:b98c:243c with SMTP id
 m23-20020a056000025700b001eeb98c243cmr5267548wrz.51.1645804363529; 
 Fri, 25 Feb 2022 07:52:43 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 g5-20020a5d5545000000b001ed9d3f521csm2567002wrw.113.2022.02.25.07.52.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Feb 2022 07:52:43 -0800 (PST)
Message-ID: <6561cfc7-b602-20e3-8679-0ebb99a52f16@canonical.com>
Date: Fri, 25 Feb 2022 16:52:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,qmp: add sc8180x and
 sc8280xp ufs compatibles
Content-Language: en-US
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220225035105.2294599-1-bjorn.andersson@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220225035105.2294599-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_075247_133751_D2AA3406 
X-CRM114-Status: GOOD (  10.53  )
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

On 25/02/2022 04:51, Bjorn Andersson wrote:
> Add compatible for the UFS PHY found in the Qualcomm SC8280XP platform
> and document the required clocks for this and the SC8180X UFS PHY.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> 
> Changes since v1:
> - Fixed indentation
> 
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
