Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F78AC76195
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 07:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFaWRE8LFZvweTUyD5zMnVuphI4PaToWrR0T3wBVdhY=; b=Tmxu9qpuglO1rE
	9FY8+4dq95Xe3c71/2XkUb8EF2if7AaxTLZnPMJRnnzG5m7C+iRUUSw/VcSJRRBmFToX1Bet9FoZN
	z0GAc6XyS+G3g2NwYH274BiLxWIhJYWQMGSBRF0n+V5rxGEoXNOpj2Ufru/UVBl3QUsNnJETEuhA3
	27C8Ehb5yONByEM4cMzwEVud/wr7IRmxY5b5BUYJLzBhosfdR+M0FPk8qnK4Ih/1hyri1IC9EBLXP
	ma6f02hBe39ej/FeE/HTg571QON+kvYwLdkgGsK44e5xw6PH7MLt76QNQSA4h/+eo92VkWq6afFu8
	xvTnJVAZnvWxcEzbQGLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghYu-00A6UI-0k;
	Mon, 27 Mar 2023 07:46:40 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghYr-00A6TK-1P
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 07:46:38 +0000
Received: by mail-ed1-x533.google.com with SMTP id er18so20789718edb.9
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 00:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679903193;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bb4tmemzNzPfIOjPtgMNPF0CGomNiXxN8XvI9oRSmNI=;
        b=VOfYyK9i6gZs8IWKGfI37YsIXxvoNnvPus05sLgBEuQYEVjULkcjsjyFNivEOsYqvf
         FDYabVFqnS1vndkA7pAb61k2xYxFdDu2+xLecPJuE2FIXTU4bndsTakmFPrJAkt0E44c
         NTJldoufbchjv82hpKqsFaXg5TmLrDoPsY/STlri88zmsTVABenlQmfHInDPDblJE1Ks
         xgB/szC11Y2g8HBr0Fn1Q9A1/UHPMZI1v78/6S02XjYf9kgLd/WKyJFWmZ0XIbBI9FgR
         bOsJzirVpDJMdkimwZM8u7Q7Bs4mmxcerQ3hC0PcKvea6cICA28v4JaWajIg7BsoYqNm
         brMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679903193;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bb4tmemzNzPfIOjPtgMNPF0CGomNiXxN8XvI9oRSmNI=;
        b=MGyY++Ix0IXN5nrAo6HIBplIB+FMNAOe4Ulc+c8mvkITOQ5PATCLeeY6+n8LdI2tJ+
         XxrY5sxkERRBoGD97FJVABc/lZNlZT86LqxngetmSkkrSrNRvSWgkB/aiSUm9PtWIo/F
         BHh5bAR4QLs/RyLghFGG3Z0heVg+RCFR/xL6h14g1DsX19vGnHA2JY7p5g0qXK8gzZCJ
         eyBSrWo9tCCjpc7WiRzfa1M59UQWN5q1ULdHNFahjaXUv+DF7lkVIAhAFD+n1uAE0sRQ
         s1LzA7MQFA1fjgHLz8GLFX7U1v011a5gj4Zf+VsZmrxEzp1XEDl1meRoOklSk7qith3R
         jo7A==
X-Gm-Message-State: AAQBX9cU9tS12nDIB4oUeAcSz6w3LeempG6wywa/aA8cSX+c8umvD6TW
	KIeOZeFlRNxnFzB5EJPynu3Dxg==
X-Google-Smtp-Source: AKy350ZNWA0feM++fE9Wdn2rh/TytZ36eDYbHVPI+fh8qG3pqwsASZFFXhljXwAi23S7uHcsc2ijNA==
X-Received: by 2002:aa7:c646:0:b0:4a0:e305:a0de with SMTP id z6-20020aa7c646000000b004a0e305a0demr11834978edr.19.1679903193519;
        Mon, 27 Mar 2023 00:46:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:198e:c1a5:309b:d678? ([2a02:810d:15c0:828:198e:c1a5:309b:d678])
        by smtp.gmail.com with ESMTPSA id v6-20020a50d086000000b004fb00831851sm14246435edd.66.2023.03.27.00.46.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 00:46:33 -0700 (PDT)
Message-ID: <6f6be544-48da-0c22-ea54-e07e35131ec9@linaro.org>
Date: Mon, 27 Mar 2023 09:46:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 00/12] Introduce the SC8180x devices
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Georgi Djakov <djakov@kernel.org>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 linux-pci@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-phy@lists.infradead.org, Wesley Cheng <quic_wcheng@quicinc.com>,
 linux-usb@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-scsi@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>
References: <20230325122444.249507-1-vkoul@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230325122444.249507-1-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_004637_474944_86A1D509 
X-CRM114-Status: UNSURE (   9.70  )
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

On 25/03/2023 13:24, Vinod Koul wrote:
> This introduces Qualcomm SC8180x SoC which features in Lenovo Flex 5G
> laptop. This also adds support for Primus platform as well as Lenovo Flex 5G
> laptop.
> 
> I would be great if submaintainers can ack the binding patch so that
> everything can go thru qcom tree

I think Bjorn recently was rejecting taking bindings patches, so what
changed?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
