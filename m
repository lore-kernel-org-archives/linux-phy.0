Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5937C05027
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 11:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAX5Ty/i0jk0zPO+5ctUWq/nCv2M33bTvDLMpXrYnus=; b=vkVCLh856lhuwU
	69kFHWqu3YsgGzwhfPskvvhIeng84HGWAEZFKPJoaYxwvvTEPnLdSzUtYwmoU4cfzkSlVZtGx8Cpd
	UK0SRfItDhUrGb8yjORmMkl2ottHZG9XN+56GOkddBCCz3KeHjYpTREWdQBwmHM+ojoXthn6Hc/6i
	LLryh/5s8SFsCP78x1OdElDtPaOZnWSIvu7xdpiD4MAm8YSA24cH2l5ZJbXVERHR2vd8GBOofOQfM
	lBdw/jjqcFEf8DXnLWFmQV79+qRj55hUpVD/akNW+zGZaG0iScd8u6+e6iCNDFhnIXTWKqqRqdHSi
	kHkAaluaEk2LpcdZQz6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL02O-00AdMe-00; Thu, 26 Jan 2023 11:03:24 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL02L-00AdLp-F0
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 11:03:22 +0000
Received: by mail-wr1-x42d.google.com with SMTP id z5so1369574wrt.6
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 03:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u7vCrE7q/VPLeTXLg6KW/8CfPxh94AhXp/Mdu/doGko=;
        b=Ocn7Y8wYq1w5CE2BQNmoD7/PgjoqMViaN5x/i/CG2nzNDplo2dw1NyjE6D8lOd20If
         XDGwpwhkiGSUsqs/HZWFJ5/TFs2RLZZT9TVl5taOHEoRGbFevexTH1RI3spP1/LIU9xK
         SNNjnEdyfGFKSylVbyWs3xZy+zZXoIPnOo/GO+WytDe45RUa2+L/+k3pzhqJquXo8/Ze
         iQP1Ci72opixlb/HHh8UKVuTvsAyPU6qHEGGQWmsSRW0K9jlMwQyVoESvuTgwT3Acww6
         NiSqVmKyy1d8zq2BnBXufJKDMvvXBtCVBYOm0E0dRT5z2RHucMuWl+7kpSbgTIIDNAx7
         +eQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u7vCrE7q/VPLeTXLg6KW/8CfPxh94AhXp/Mdu/doGko=;
        b=a2WwNGxX523cp6BtBUrZ/zqcOC5vt0P0sIVxZ2HYaZkeQWpSA5eamo4LHY1l+g4Mio
         H2ICxk0BH8ndzGEIs0E4Lvv6LuLAXpvcAp/Xv9/CSTZ12Iqoq9PmK1rCeVcXM9sbL77B
         NXzS7re8capR1aO2qcUwum3WxOgJfIZSJqq9zwOeagNOw5Vz2xqrzqcvHLMj5RPUE5VZ
         xK38ph3kPS3bI8v8ktP3Ylvi4stW/vACBRoMGfkz08VK0qAr6H4GAebL801AfnauK46L
         LGL6vBtM9S8xHu8yx6s3/GLxyY18/lgphz3rVqZ7T42eiD3yNZ9sRz6kv7BT8Sn0xwPM
         z33A==
X-Gm-Message-State: AFqh2kpqzyvhMMj+qnF0XRRsUAL4watC9F9B5haAIX9xttfx4LDNyVLe
	uLoQAu1WoDvpvOPA/7WDxI3aaQ==
X-Google-Smtp-Source: AMrXdXvqpDZOxx5pX8SxZSPMgEW0upg3chd+5e2q4Gd1AURW4q3uxbcLqtlr0+GZqZJ25qGwXEd4yw==
X-Received: by 2002:adf:edd1:0:b0:2bd:c6ce:7bfc with SMTP id v17-20020adfedd1000000b002bdc6ce7bfcmr32384945wro.42.1674730997639;
        Thu, 26 Jan 2023 03:03:17 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b14-20020adff90e000000b002be34f87a34sm1061340wrr.1.2023.01.26.03.03.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 03:03:17 -0800 (PST)
Message-ID: <184f6a3a-63a5-7247-535c-ac7a1654528e@linaro.org>
Date: Thu, 26 Jan 2023 12:03:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v5 01/12] dt-bindings: phy: Add QMP PCIe PHY comptible for
 SM8550
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
References: <20230124124714.3087948-1-abel.vesa@linaro.org>
 <20230124124714.3087948-2-abel.vesa@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230124124714.3087948-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_030321_531145_05A47D61 
X-CRM114-Status: UNSURE (   7.67  )
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

On 24/01/2023 13:47, Abel Vesa wrote:
> Document the QMP PCIe PHY compatible for SM8550.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> This patchset relies on the following patchset:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
