Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33541C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 15:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+8t6lFer4ZHfy9G0ydBKD51u/G2bVYuadZRwvT7UM8=; b=gPv4iUYR8z+bFb
	T4E5lu8aSnOtjiyuN6dcF3ioItyx4k5jLeyfM6lm5JvI82+ejsSR7W569X8UZLNnQdVkgiTIxp8if
	UGMwEhtLQzv55mvRKH/4t5UzHPsZysDPADM7uPsjEVhdQATc65u4h4Z1KZp7vMPxrzpQhXDVCf5IW
	edtGPeXJZPXlpqSGbvH7K2rBciOInU2kkUiPZ8GahlabpFwW2yd6uVUtjCwf76jqImtGndqO9ozGX
	fPl9IO9SDV55gPjnlYpdB/6TxjT/TFL4C37/Y44OfzOVrF5QRGs6WXdWOwkIIj709xh3BLuUaPYZf
	qQPGkXcTMLIigO3tkA/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okoQv-007ZX4-IA; Tue, 18 Oct 2022 15:23:09 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okoQ5-007YtD-Nx
	for linux-phy@lists.infradead.org; Tue, 18 Oct 2022 15:22:20 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id de14so9498934qvb.5
        for <linux-phy@lists.infradead.org>; Tue, 18 Oct 2022 08:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lv8WBr1FNWwiPSantujB2q1YWU9vZjg1PUxZfiq8E+E=;
        b=Y4jkCbYLflIwRtB6tQSvzHC9hCTgoxtJ9qJiwbAx+1BFzveaeElyQQRStj1+sBjMUr
         95iwr/wsNZiECpU+Z0BtMlqxmtsPzdbArvYhUL891k1ejFLiOxwzH665e/lQMSU7EFmU
         uwYdOQRX7sB6SP3nTlXYSEvouHzmG3fqV5SJ5YLKMnXrPcm/E06pbYp0Ym+mnP7t2WJ4
         C+0fi+TvJhVKWk0K+8armXEBms1snrgCxDSlDgVneMJW3jqOEeUuXH8cTcmUii+Ig+jk
         2GGUsgo0LUP8EmC+bVY/4hDrdyiFFEZnKrPWTn/GtX6ZfQneyebYwMxSoEXtU9p64d71
         d6aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lv8WBr1FNWwiPSantujB2q1YWU9vZjg1PUxZfiq8E+E=;
        b=2DpBUhogoPTiZisRdnG8xa2nnzOGTPnjbvngbSHfxcnTB7fyufQJumlIHB7CXXbxWh
         vJEgo/96XcqTQ+eEQcNm4Q3H7nXPemCthTdPTYZvn/IvfNV3W1Ay6dCkHo3Ita4XU8xO
         rl0WKSlbebuesPjgWO6yWy6y4kBRGfj93lk6ObO+nzYYDbPDsmwoaw0c6Vm/jqaNQ1EK
         DYESZ+Gl9tTReoypdR9/4spggQsnr4el3UuKrf5VGOM+AITqXxPpFeMwTPVDpHZ6lStD
         srWlJtcD4N1AwD/FGX//Ry8/dnZmm8Nz+IkdkjpqrZpoY2Vq2poUbTc1x/4aCT7srz+l
         awDQ==
X-Gm-Message-State: ACrzQf3OdIOacUdTOqCxDlR73dZT4UobF+RuAf++E6cUqI59ZH8Mid/8
	HMB2l/CSUeBHzvwVsv1LQCdgKA==
X-Google-Smtp-Source: AMsMyM44obpzH0jsTyh/TW1xASYKTSf82eL3jRxtnD2rspTO5E09JiUI1qoHppormvOcoXFYQ9LJQQ==
X-Received: by 2002:a05:6214:27c5:b0:4b1:7b3b:4098 with SMTP id ge5-20020a05621427c500b004b17b3b4098mr2568272qvb.27.1666106535182;
        Tue, 18 Oct 2022 08:22:15 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id p12-20020ae9f30c000000b006eec09eed39sm2524367qkg.40.2022.10.18.08.22.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 08:22:14 -0700 (PDT)
Message-ID: <7a2b1617-5e57-994e-a246-2e6f9fd69262@linaro.org>
Date: Tue, 18 Oct 2022 11:22:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 10/15] dt-bindings: phy: qcom,qmp-pcie: add sc8280xp
 bindings
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221017145328.22090-1-johan+linaro@kernel.org>
 <20221017145328.22090-11-johan+linaro@kernel.org>
 <d6642028-3fb9-4e39-a349-666625dabb9d@linaro.org>
 <Y050nxCaFXIgczrA@hovoldconsulting.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y050nxCaFXIgczrA@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_082217_861174_E2BA7166 
X-CRM114-Status: GOOD (  20.78  )
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

On 18/10/2022 05:40, Johan Hovold wrote:
> On Mon, Oct 17, 2022 at 01:20:49PM -0400, Krzysztof Kozlowski wrote:
>> On 17/10/2022 10:53, Johan Hovold wrote:
>>> Add bindings for the PCIe QMP PHYs found on SC8280XP.
>>>
>>> The PCIe2 and PCIe3 controllers and PHYs on SC8280XP can be used in
>>> 4-lane mode or as separate controllers and PHYs in 2-lane mode (e.g. as
>>> PCIe2A and PCIe2B).
>>>
>>> The configuration for a specific system can be read from a TCSR register.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 163 ++++++++++++++++++
>>>  1 file changed, 163 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
>>> new file mode 100644
>>> index 000000000000..82da95eaa9d6
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
>>
>> Filename based on compatible, so for example:
>>
>> qcom,sc8280xp-qmp-pcie-phy.yaml
> 
> Ok, but as I mentioned in my reply to the previous patch, this file is
> the one that is expected to be extended with new bindings.

I would still propose to use compatible of this series and treat it as a
family name of compatible or similar devices. What other choice we have?

If new (third) PHY bindings appear, then rename older to "-legacies" and
this one to "-legacy"?

> 
> I can't seem to find where this naming scheme is documented now even if
> I'm quite sure I've seen it before. Do you have a pointer?

If you need the source of authority, then:
https://lore.kernel.org/linux-devicetree/YlhkwvGdcf4ozTzG@robh.at.kernel.org/

If you need unofficial documentation, then slides here:
https://osseu2022.sched.com/event/15z0W

If you need something official, that's on TODO list. :)

> 
> And does this imply that the file name should also include the gen infix
> of one of the original compatibles (e.g.
> "qcom,sc8280xp-qmp-gen3x4-pcie-phy.yaml")?

Since you already have here three compatibles, you cannot have one
filename matching exactly all of them, so we already accept something
generic. Therefore I proposed the common part - matching SoC component.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
