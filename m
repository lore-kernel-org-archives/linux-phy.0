Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10F57C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 12 Apr 2022 09:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIsh7XNjwOgkytJjzF+GAeyh84vBYguJIcGHVdX44rA=; b=lKqp4FFYB1805Z
	vW3r3As4ISLxgEV/1wi/pCtbBqCt0Kvq+3lR0WVz68eGNRFMl/Ghk/HTSO2PKoZYMqjqwOwSI1MlV
	535frbxDOQfMBLiOCBP85uaZ9s2BhcLREc4Zbuuboy20slr4ina9lcuNzNiRX1eFO94XwrPLTqNwE
	m+msiTWTaAMdpA1jyrHprtpJQmROPQKNfZVWsGPAzTqyyQH6yJB5gUYDplM5nLWybekOrvcLYJjhd
	IFnBfnZxKiqJ2/jzrIuHpPqRp7QaDhjpoidlQZehUz5YVUqdXgvot2GipzKXN6JPEtwWIDhwpbW0F
	Xfb7tL+LGK8Dmp2oJScg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neCiQ-00Ct6H-Es; Tue, 12 Apr 2022 09:21:38 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neCiL-00Ct2p-4e
 for linux-phy@lists.infradead.org; Tue, 12 Apr 2022 09:21:36 +0000
Received: by mail-ed1-x531.google.com with SMTP id b15so21608980edn.4
 for <linux-phy@lists.infradead.org>; Tue, 12 Apr 2022 02:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=JaTsKAtJSNi54rHJhG+hyScjwgHDH7ka4b7b1ta/ySE=;
 b=iJelTY48iYoGFyhaVFKLSxyokhQc4j93X9lAO5VhyZM9gCgpC+PF7tZeerg9RneIfw
 Eb70dzcx4VMDRiJEbpiXy+8uVTAXBY4jhu2+7BeoSYso4U5tRiab2Gj1RA3qgIUUyhl1
 mvn5o+J92QpBLV223Feml/8T2wb9WuAYrl9wiGwC6fL/hU8FsDjTbSSLWc36Jp6oaVHy
 EvfxX6ySNbJzY4TAoWCpUnP3I1iU5aUbqERMjyiRfzpGxWBBLlv6zs1sRXdREAHlFj7A
 Q9b8ze2DYdv3O4yZ+CMXhYuNm4K8ZmJptFpggymArTWdcckk5aCVuDck954SAUZ6JpuF
 UsSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=JaTsKAtJSNi54rHJhG+hyScjwgHDH7ka4b7b1ta/ySE=;
 b=QGsvVpHYxfD1uQzsWctVKqMNdoyX15s/mOF1mvTN3x9FVKJ3Hjq7zkBd30wYBt58F/
 dolzE4s5OqL2j9yEuOy/nnKeLRrwLXwMJa1ihyD0FDixpOJ0nNAHq9KUcPzHJJHh5G3e
 CgNOoV+kipd5j7yQCn0bGYukFqV/CLzGio/j+/jdQyQ/wzpgQDFNSFNc1bLtPHN3IB0H
 q51FX85UN+ZvLM83BQr5S+hPD02KAczwNYikAmodYjvwqCYyNKjMyZhJ9qPbUAhRct0D
 J4NoDxLcUscfxRfoOmYHWMwggpF3s3MI06Rz+1izu5MfY9M/FXEUfq8P/J1mktea84zA
 ROAw==
X-Gm-Message-State: AOAM532pV6WoyN2T9qNsDBntejnoEe9Azv5QqaZhSdqWIU+DrsXu/VMa
 qUbIok2aApLqtZ4gVFdRs4ewRg==
X-Google-Smtp-Source: ABdhPJw5C5ynAEjOGwr/Emmjbh1RB5R+OcYH/bF0ZPE6x+rHILFMQ21c/S2l6KrpC8SuS8oQX3VIXQ==
X-Received: by 2002:a05:6402:3713:b0:41d:96f6:8a09 with SMTP id
 ek19-20020a056402371300b0041d96f68a09mr1070881edb.136.1649755286201; 
 Tue, 12 Apr 2022 02:21:26 -0700 (PDT)
Received: from [192.168.0.194] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 dd6-20020a1709069b8600b006df08710d00sm13200550ejc.85.2022.04.12.02.21.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Apr 2022 02:21:25 -0700 (PDT)
Message-ID: <2853deaa-324a-6c54-2fe3-3f4b78d110bb@linaro.org>
Date: Tue, 12 Apr 2022 11:21:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom, qmp: Add SDX65 USB PHY binding
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 bjorn.andersson@linaro.org, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, krzk+dt@kernel.org
Cc: manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1649740652-17515-1-git-send-email-quic_rohiagar@quicinc.com>
 <1649740652-17515-2-git-send-email-quic_rohiagar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1649740652-17515-2-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_022133_262869_10C1CDEC 
X-CRM114-Status: UNSURE (   6.57  )
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

On 12/04/2022 07:17, Rohit Agarwal wrote:
> Add devicetree YAML binding for Qualcomm QMP Super Speed (SS) PHY found
> in SDX65.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
