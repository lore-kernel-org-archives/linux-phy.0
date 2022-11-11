Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 960A2C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 15:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cTqO73jYMIgUEwLl0SP2464W+NPsUJ4qEtX5q6NFjgY=; b=A3WPhS/o/BcZuv
	poQiKZIv9vL0W1j2S78rLC0ghkkKlbhwIcBEPEcSFoUoBgk51A9Z76WPffKiiY+EJOz6QeorAlOj0
	gMoeDFEl7NqLSiSyNqlZakcqvNhiJNKkbanfvZVKMKnyswQl1hKEwoc+genXXkimdMXegRF6a36Rl
	2mrDTpsODrc095vYF7x6x6jb3ykBA0+V0aYfYv9YRcxfOHbFfiLwwMp6Sd7gXC0QjBJOsrbOzk/6w
	UN59NZve+Q6sLjZkEXjTZaq2pk9q03AZRes1iVLgYKYTfjfg+JSE7eV8cDeOMrBab3CPGFrwZ9eDD
	OSqmik736Nv/hup0rKlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otVkW-00GVeQ-S3; Fri, 11 Nov 2022 15:15:20 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otVkU-00GVZq-8n
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 15:15:19 +0000
Received: by mail-lf1-x136.google.com with SMTP id r12so8781667lfp.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 07:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aRAjIuLoncT0vEXyiExqrXHcMSWWFyEsoVTWxa7wrjQ=;
        b=VooUbudepaF45w3v4t4PxOXKNDYYJVbbA889yqHMYqDjly7l77F5QvaKC3Fe8KhnUm
         xH4DYeB4MGrss0aYVKvWR/zsLqB/UvGKI3YeL1+LRNyNdVWZYDLY3y9jlDUbA68/uDSX
         dmodidVdgpXggmbMozE/UP/aviSe8FrGmmY6p+y4JdR/FJnxjDjARGls2zUagYey8vdE
         Ddi0CoLsmw6fC9khw+48f9aWbV2bfN9q/i2ECM1h6kiGmR7q5u/Lg2NmhlDw1JoKPz/M
         SWZSeESMbBi0qouM+B5raOHCyJCUhxXyVUlnNxp1Ke7umUX/WBADgsP9DflskoGhRNU+
         lmFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aRAjIuLoncT0vEXyiExqrXHcMSWWFyEsoVTWxa7wrjQ=;
        b=jjTL9S95tofb/fzKigdirvIIEPXZalOqSvw5YuiPd08DHiJyyy997+V/f6kr7WOgd0
         vmm/Ec5+Bi6KniG+ja1Td+ekFOZKewBcV7zmFDcY2tQUPVhFnI0muYfsfP/nMCBD2g09
         W5pcRAZRFHF8gmFzjL4/ERhZ7Y5yVuTL5u6Bin1dbhjKtMSV3CPhj9FCFuITAuC3zp0t
         sk/6rTMixxibsm++HK5KCzZkx8meE+F07TWVaNJ2JzZifSQF7uph+gsJIOzuSGczfAuf
         Gq7vvPNIUsRNjQRDC6DzqypAJAV0sCB3H8Qdeu4RYc2I7/mHXEIvsPeY4AU1HSdAK1o9
         3uxw==
X-Gm-Message-State: ANoB5pmIflwA88oIAmGJAu9z1qWoIGeN1HOkTr+DjRB7gm/proMgT38Q
	t4DYZ5cSeP1MTgnaLCBVdHlmng==
X-Google-Smtp-Source: AA0mqf5eFnO/NW4E0B9uFn8MaAK6MY7CZ4uQOrf4pWm5EW76tiocHA3B99AUojMIyPzOB9CwhlyMEg==
X-Received: by 2002:a05:6512:c11:b0:4b1:b061:4815 with SMTP id z17-20020a0565120c1100b004b1b0614815mr861148lfu.18.1668179708865;
        Fri, 11 Nov 2022 07:15:08 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id z39-20020a0565120c2700b00498fbec3f8asm370379lfu.129.2022.11.11.07.15.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 07:15:08 -0800 (PST)
Message-ID: <6530db84-9bc0-91df-2719-e44fa8d6fb36@linaro.org>
Date: Fri, 11 Nov 2022 16:15:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 01/14] dt-bindings: phy: qcom,qmp-usb3-dp: rename current
 bindings
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-2-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221111092457.10546-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_071518_363370_70E7B2CB 
X-CRM114-Status: GOOD (  20.54  )
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

On 11/11/2022 10:24, Johan Hovold wrote:
> The current QMP USB3-DP PHY bindings are based on the original MSM8996
> binding which provided multiple PHYs per IP block and these in turn were
> described by child nodes.
> 
> The QMP USB3-DP PHY block provides a single multi-protocol PHY and
> even if some resources are only used by either the USB or DP part of the
> device there is no real benefit in describing these resources in child
> nodes.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 
> This is an unnecessary level of detail which has lead to problems when
> later IP blocks using different register layouts have been forced to fit
> the original mould rather than updating the binding. The bindings are
> arguable also incomplete as they only the describe register blocks used
> by the current Linux drivers (e.g. does not include the PCS_LANE
> registers).
> 
> In preparation for adding new bindings for SC8280XP which further
> bindings can be based on, rename the current schema file after SC7180,
> which was the first supported platform, and add a reference to the
> SC8280XP bindings.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  ...3-dp-phy.yaml => qcom,sc7180-qmp-usb3-dp-phy.yaml} | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>  rename Documentation/devicetree/bindings/phy/{qcom,qmp-usb3-dp-phy.yaml => qcom,sc7180-qmp-usb3-dp-phy.yaml} (92%)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
> similarity index 92%
> rename from Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
> index 97a7ecafbf85..50b1fce530d5 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
> @@ -2,10 +2,17 @@
>  
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/phy/qcom,qmp-usb3-dp-phy.yaml#"
> +$id: "http://devicetree.org/schemas/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml#"
>  $schema: "http://devicetree.org/meta-schemas/core.yaml#"

Since you are touching one line here, maybe let's drop the quotes from
both of them?

In any case:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
