Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F33210BA434
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 23:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzJOFFlgWMeDgGwZs77DCZpzpmCuRnBJ2euR5JRDKbQ=; b=iHHH09PiMjmDtr
	8kXCyDf7kg0gHgxt6nNtAiVVvoAo5b6uFOFrktFh08BYmhMUNB26Iga0iUo+DoMyuVxXEFDX1j3DW
	XW/pHyalGfsg4jAnZqCr71HROIoEjOUIERpPaSI1qiT7DYc7aEISt+O4QQf/mifd+hStYwpmP2nAf
	hFbJ8JeO8RNFhgj3guKih2Jf//WO5TyrB1qJTE/Uc23s0lzbU0V3M7Wz+L5kCnBkUiFo9lyFQmZZ3
	YIhNpCyYGTwF7d4iRAIEgrTrVeNadeHYtuo0Mnx2CBFi4XlUBAhKKIoFoqxm0XyO7VZpCu6fRgE71
	ZhlUcoOt3SkO4FUIBpgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6GnS-00000008KID-0hga;
	Fri, 27 Mar 2026 23:40:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6GnR-00000008KI6-3EM7
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 23:40:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B936E6011F;
	Fri, 27 Mar 2026 23:40:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7826DC19423;
	Fri, 27 Mar 2026 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774654856;
	bh=sByxVQRXRO33XAc5dfOqJ5M+BSrugSeygBYgV/aa6II=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iUdkJeZIC/EPizOX4gTS5UdxRRAMfuT5H1Lnb7bOWM3FkLLzFc1hZELrB9U/+uXFU
	 in9WNNykZWSU0dDg16nEdiXIWyxZuDgAtpTBs9GKjGhYB/bnT57a6D0D2Ft6+7KoWE
	 i19kVhrn+JFHFUMLHhxA9NePNl8LtnQVI+kiCFifIqhxTNMVK8lkrWeQwnQqvCfloz
	 DtkFLArCgPndN9MwE2s/h4ZHp9hpo6FZRR00CH6MvI0a/hf8iHWUUdKSOY1g4oaOB3
	 X+M4teyIFo3t2L4+MTVkTxTAKYFslMNUdmHapftc/PlHJz5ClJ5ZqUcBPk9zp5Bzs3
	 s0YVh1k/GXmIA==
Message-ID: <0322e0b3-bce8-4415-90b2-d14445986e23@kernel.org>
Date: Fri, 27 Mar 2026 23:40:51 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <72ef6c9e-feb6-4e57-b8cc-7801bd748698@linaro.org>
 <f1c8c412-1d27-4c83-8c5e-76b9369ea6e9@linaro.org>
 <VwCtoebjwHqLTucsrGruvBpedA4k-Melt7C0DA0aHSVld3PeotwZdtMUm3EFpvQyScrl6yejmLaK7bY1avT1zQ==@protonmail.internalid>
 <8ac55e5f-72ed-4331-bf42-92ccf97507dd@linaro.org>
 <5d7d5bf8-4420-4d75-b928-820bb9233e52@kernel.org>
 <CiKTMNVmEm3LXForJ4o-DjuXFxbKkiaLtqbFPYyA0rC-Ij0hJPmCw_LUixA-dZe2douOwy2Jxizna8qBRvUjPw==@protonmail.internalid>
 <2houacfdkozzk35ky5xtwe3utkvyx4lroyrhvibb5lg6lad2g6@56akvtqigaep>
 <556a6736-472d-4551-b5df-15e809e7e20e@kernel.org>
 <a44a0f58-11cd-4aa4-962f-a5b153e24d82@linaro.org>
 <vcj9b-49PycEnk8KeGcgXAaN09KfYZnW7g0LayiEPie9p-4krmMDfNO6Nx4DLgwoKHdKJughl7zoxvmKVkqOag==@protonmail.internalid>
 <qr6ubhjlzxenx7rswwkfu2nkc7ci5hw5tynpipa76bqsibbd3d@rw5d55vjnkbe>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <qr6ubhjlzxenx7rswwkfu2nkc7ci5hw5tynpipa76bqsibbd3d@rw5d55vjnkbe>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 27/03/2026 23:23, Dmitry Baryshkov wrote:
> On Sat, Mar 28, 2026 at 01:12:22AM +0200, Vladimir Zapolskiy wrote:
>> On 3/28/26 00:29, Bryan O'Donoghue wrote:
>>> On 27/03/2026 20:51, Dmitry Baryshkov wrote:
>>>>> That's just not true. If you read the camx source code you can see
>>>>> split/combo mode 2+1 1+1 data/clock mode requires special programming of the
>>>>> PHY to support.
>>>> This needs to be identified from the data-lanes / clock-lanes topology.
>>>> And once you do that, there would be (probably) no difference in the
>>>> hardware definition.
>>>>
>>>>
>>>> In other words, I'd also ask to drop this mode from the DT. This
>>>> infromation can and should be deduced from other, already-defined
>>>> properties.
>>>
>>> It still needs to be communicated to the PHY from the controller,
>>> however that is not a problem I am trying to solve now.
>>>
>>> If I can't get consensus for PHY_QCOM_CSI2_MODE_SPLIT_DPHY then so be it.
>>>
>>> I'll aim for DPHY only and we can come back to this topic when someone
>>> actually tries to enable it.
>>>
>>
>> DPHY may be the only supported phy type in the driver, it does not matter
>> at this point, however it's totally essential to cover the called by you
>> 'split mode' right from the beginning in the renewed device tree binding
>> descriptions of CAMSS IPs to progress further.
> 
> Okay. How would we describe that there are two sensors connected to the
> single PHY anyway? How would it be described with the current bindings?
> 
> --
> With best wishes
> Dmitry

Assuming you add endpoints to the PHY i.e. that is what Neil appears to 
be asking for and I personally am _fine_ with that, then it should just be

port@0
port@1

if port@1 exists, you know you are in split-phy mode.

Its actually straight forward enough, really. To be clear though I can 
write that yaml - the _most_ support I'm willing to put into the PHY 
code is to detect the port@1 and say "nope not supported yet", since 
like CPHY its not.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
