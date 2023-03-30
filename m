Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24261C77B6D
	for <linux-phy@archiver.kernel.org>; Thu, 30 Mar 2023 13:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8F5iziyeTlq1yTLF+qvfqmbohnnGtoxJg/lND01Y4c=; b=3RSnhYjXHiXaBZ
	ki0DKjqSSK7o4V90WADrfFgyJwPc1t/fHBCBIfFA1pMuuaVw8de4hvTEs7mkJtfKOZhTekaytxv19
	aj46WqsxSopbw+RUjwJ1N6XAGw0dwffhGnNI6cB+sbEGCdz8Sftar8N4kIWK/nKgEJCFbv3mfRpbJ
	S2yRj0jdRR/KC4GqzmmWRZwr2Zfd543aMx/wbVMfRhun+OoHkmqgK5loQCmLDAUJeYaAX7VNsPWEm
	90Ai7JjsMMq7ycBLpZI2kz2OeZjWdfMnQ2YlhvbM2nhCILjsSTy2uz+p/oFJ17I3iq9IljAjDtcsH
	CerxzkveKs8OShv0bhIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phsjg-003wN4-2S;
	Thu, 30 Mar 2023 13:54:40 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phsjd-003wM9-2i
	for linux-phy@lists.infradead.org;
	Thu, 30 Mar 2023 13:54:39 +0000
Received: by mail-lf1-x129.google.com with SMTP id q16so24603001lfe.10
        for <linux-phy@lists.infradead.org>; Thu, 30 Mar 2023 06:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680184475;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3bDS+NZkCHNjcglyIFTFfiCpIuz6atTUwaUlX4EZFO0=;
        b=ErhbzUuJagPIYLAc87qPWesX4OphTqSHbJlUJVBxYSuQj1F7by1TnBjfmXPMkVWe/a
         Iu3m3k0LswZfbS3vZSMywRkPsQYArihDnUmFaAlH9Mb5bDzCTXzj65gkKQEv8OjR0RaW
         tk2xX9+JDRLkNBdGasPWY23zteZ+ErxBVxkMgmShPfqCN4VTvlxDrfVRhfkIxXHpvln6
         H9nocYvLcFCWlp5ljTC3t37lWhVXndOUFUgZlKgZtImqwfm4Lyh6vXhHz85Xpc9D8Mp2
         HMrch5hd8A5/8XdkknaU0barZxVPKTAysNeuqgUcUpAqqj0ns4VD7Y0p7AhEIYB9G8Or
         uJHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680184475;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3bDS+NZkCHNjcglyIFTFfiCpIuz6atTUwaUlX4EZFO0=;
        b=vlNBJo7Whv+g863mRLXNY8a3oc6KyWk2MwbNx1XVkPTBm8f/OR7TIZzrn7MF5ZlF5w
         fZHnTHtovFthWVJ1for79Tv/2VobajAfwcU0s0ZyTzAt0nL80NQ5OKpS+Ue14OLeKdFD
         mb6excwobpu2DJqzI07M3U7kRvZgYtMXed3VuaN/GejvGCXC7XiTv+sFNl5LQ4uareac
         EHGFMDHEaJN5N+ju0tKj8VhMY2C7gz6o7x8ULKLelWAf0rcdKf35MGs60NfWvfFc9poD
         Fp9FZLXuyluTx3LNE9SJxvPLYsUDYCTN0Fyvccci4RggW+LpPmTZhbl3vlk0c3QLOThL
         YttA==
X-Gm-Message-State: AAQBX9fDfIdohQ1mdv5pHZae844NKTZBTN0w8z578wL7g7BzsAMuG4DL
	KGUX0yaQKQ0sl4Afd0FxRZhFoA==
X-Google-Smtp-Source: AKy350bscyofmdfis+7MYVvAX6/F+FXHo4829Gg5E4cWInBN+17SyFn1NzTYtImeQD2Xg1dAOF4b9w==
X-Received: by 2002:a05:6512:985:b0:4e9:605e:b470 with SMTP id w5-20020a056512098500b004e9605eb470mr1821024lft.26.1680184474901;
        Thu, 30 Mar 2023 06:54:34 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q28-20020ac2529c000000b004eaf8613bc3sm3525907lfm.284.2023.03.30.06.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 06:54:34 -0700 (PDT)
Message-ID: <7c4af740-1cf5-6b20-4642-8657ef31c9d8@linaro.org>
Date: Thu, 30 Mar 2023 15:54:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 2/8] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
 PHY
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
References: <cover.1679909245.git.quic_varada@quicinc.com>
 <4a21defe3320eb11d0e43bc7f02b3168ecefd458.1679909245.git.quic_varada@quicinc.com>
 <3d49b4b0-587c-f7e5-4122-65b3e9f11583@linaro.org>
 <20230330071016.GB13508@varda-linux.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330071016.GB13508@varda-linux.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_065437_882509_379B97E4 
X-CRM114-Status: GOOD (  13.02  )
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

On 30/03/2023 09:10, Varadarajan Narayanan wrote:
> On Mon, Mar 27, 2023 at 01:02:52PM +0300, Dmitry Baryshkov wrote:
>> On 27/03/2023 12:30, Varadarajan Narayanan wrote:
>>> Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
>>>
>>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>>> ---
>>>  Changes in v4:
>>> 	- Remove constraints not applicable to IPQ9574
>>>  Changes in v3:
>>> 	- Update other mandatory fields to accomodate IPQ9574
>>>  Changes in v2:
>>> 	- Updated sections missed in previous patch
>>> ---
>>>  .../bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    | 25 ++++++++++++++++++++--
>>>  1 file changed, 23 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
>>> index e81a382..aa5b58c 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
>>> @@ -21,6 +21,7 @@ properties:
>>>      enum:
>>>        - qcom,ipq6018-qmp-usb3-phy
>>>        - qcom,ipq8074-qmp-usb3-phy
>>> +      - qcom,ipq9574-qmp-usb3-phy
>>>        - qcom,msm8996-qmp-usb3-phy
>>>        - qcom,msm8998-qmp-usb3-phy
>>>        - qcom,qcm2290-qmp-usb3-phy
>>> @@ -122,8 +123,6 @@ required:
>>>    - clock-names
>>>    - resets
>>>    - reset-names
>>> -  - vdda-phy-supply
>>> -  - vdda-pll-supply
>>
>> Same questions as for the qusb2 PHY. How is the PHY powered?
> 
> It is powered by always on regulators. Will create fixed
> regulators and assign them to these.

always-on where? in DTS? Then it is not really related to this patch...
or you meant always-on power domains? Yet still device has power supplies.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
