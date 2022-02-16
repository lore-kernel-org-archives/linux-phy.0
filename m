Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEBF5C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 16 Feb 2022 07:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LyeVH0W9kU3vGgxoIVLjRGKGQsSrZYFq8LftuKM30qU=; b=uJbhHJxAFOkb0T
	RASQSqY/SaLfZ8kGQI2shqkxBBfm/yZ03hbhN76YODUGB5Ad9A8HCFYdxsuvxzpVtSlRl+3nqRbyH
	Dbh8czuZRhCDz993km3NVq9mF0Y5B4af1gDQACxZ+7MJ3icv3UE34dzhpgLu31bYCSnqeU6VHcO8y
	y+uhBv7RIEfCHGhcJ16g9MCST/nuuJi0qSDkz5vLTw/Dc0NJxmsFVUfghoSfTbLD4C8+ZgGszwc6k
	haEhojZd+irayyllNmfnbQik4DP/1QXNCB/GgaabbzJC1M6nvayMoWbpI7O6yxWYZ3CA/r/51oPPY
	oPbZ5Ernn02sarZiQB6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKEvc-005sSg-BA; Wed, 16 Feb 2022 07:40:44 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKEvZ-005sS4-0O
 for linux-phy@lists.infradead.org; Wed, 16 Feb 2022 07:40:42 +0000
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B56F93F33A
 for <linux-phy@lists.infradead.org>; Wed, 16 Feb 2022 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644997233;
 bh=HjjHm0MmfHZpWjZVsNkyG9pg4Z1MpYcDRR0vQD2wdMo=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=a2KaBIHPQvJdihYd5dURbHihwGN3kZlQtN/74ueslO41ooR8Y6wo/hVlzo4VBXqZE
 PGEvyibhAFhbaUW+9A6UdDsZd6JRjZrMN9+TMYv8mXmJrTAhkvDtyGnfcfpdhdC4Rn
 tfUVr6C2XCrilixKvtMIIGvfmeRAHD+Nf6SLRBZRDhIwNC8NrFl+aW2PyOGiidtone
 ApaFaHn+RmKwCBDbLBXtk+rxlR2rImfJnfCzkYHsGIF7VqgcxcIlghXhuxSft3zHb+
 L5Vd8P7z6lwFTwapmw3oNcYvFEtr5BJbPtkNUdO3qu+oLV0srqWIas8Uba+ieiOsx6
 PuaXtuI5OaAOg==
Received: by mail-wr1-f71.google.com with SMTP id
 v17-20020adfc5d1000000b001e6405c2b56so710265wrg.7
 for <linux-phy@lists.infradead.org>; Tue, 15 Feb 2022 23:40:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=HjjHm0MmfHZpWjZVsNkyG9pg4Z1MpYcDRR0vQD2wdMo=;
 b=mPuTrIfafqcJZv46G/BiofRiUQAnemCl+eQsnZJo8+/yqgV9bu1laKZ/7bnQ6kora/
 EczJ79Tip7CcNXrtvmhfibti2vSursGMcxZ0eWwlfxitr1bH+1b7ZspawNbG/5a2/OLw
 VVXgY3vKUIgg+fFcxmPhXUzSF41361xlaH+vPnSp3BFfefU/MIejLsIH1Geqni72NRBh
 w6vNh393fs46VJX/MkT9sIviogxHr3hUn75jsm0c+esdLP37/+l3upk10vZja5fsuW13
 McJGk826QkMBVnNc1dVqwTbY5Q8e6Wn+O50q9m9/C8GZPC3y9HbgWbxfRr860cft8Jr5
 q9/w==
X-Gm-Message-State: AOAM532+Y/qhV18Av1NwpBR9VkaWbLKKFJdScm6w0Y7X0qlNgfh0CwVq
 ewddEt/UWdgzirzqHcBdwBT4H1MdfP3d3yEKPNuNZhF5d+24zIf9XNeGI2PxUocKvmwMchIIPHo
 nVpsaf7H4thkOCLU7C+A6yo/3drFHldrEqk+5bELDNy0=
X-Received: by 2002:adf:bc14:0:b0:1e2:b035:9c46 with SMTP id
 s20-20020adfbc14000000b001e2b0359c46mr1267011wrg.386.1644997233319; 
 Tue, 15 Feb 2022 23:40:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJySOUBYFK4c+mqEex56yPck36dUfWi8o4H5ITy5kEeoNmTIL04m2GTFApT1FwNPmHkCgKfSyg==
X-Received: by 2002:adf:bc14:0:b0:1e2:b035:9c46 with SMTP id
 s20-20020adfbc14000000b001e2b0359c46mr1266999wrg.386.1644997233173; 
 Tue, 15 Feb 2022 23:40:33 -0800 (PST)
Received: from [192.168.0.110] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id p12sm17346674wmg.36.2022.02.15.23.40.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Feb 2022 23:40:32 -0800 (PST)
Message-ID: <9acf139a-16b3-598e-06b7-b17611adb359@canonical.com>
Date: Wed, 16 Feb 2022 08:40:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>
Cc: evicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com
References: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
 <1644952755-15527-2-git-send-email-quic_c_sanm@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1644952755-15527-2-git-send-email-quic_c_sanm@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_234041_351935_A3A75E68 
X-CRM114-Status: GOOD (  16.09  )
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

On 15/02/2022 20:19, Sandeep Maheswaram wrote:
> Add support for overriding SNPS phy tuning parameters in device tree
> bindings.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml  | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 0dfe691..44cf3bf 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -50,6 +50,22 @@ properties:
>    vdda33-supply:
>      description: phandle to the regulator 3.3V supply node.
>  
> +  qcom,override_x0:

Do not use underscore in properties, but hyphen. Just like everywhere in
bindings.

This does not look like description of hardware but hard-coding some
register values. Bindings should rather describe the actual hardware
parameters instead of values written into registers.

Plus what other reviewers pointed about usefulness.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
