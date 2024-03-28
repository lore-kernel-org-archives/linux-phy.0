Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF5B9CD11DD
	for <linux-phy@archiver.kernel.org>; Thu, 28 Mar 2024 18:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VT4D2wNSNvOvr3/JVL+AYg6s04JMmUqY9rrtx42DfQo=; b=DIns1o/JFhqudM
	mO0AMIW0bcpRZNA91WDLL5qYoVzBR+gvq53lPH7xdhDmzuyp7+3Z1CzBQDx5VlpMhENG8YoQQBbrj
	HGrPKzq/oD4DqSIhzIGK8QuDUTXZ8p29d8U4g1ojtSRGVn0ZrwyDD4eCADdTEgmotXt3wSwaU9XD8
	TNHzUVPbINTZajiiTR9ZP0JMn74aOMYWuMXIWGgassFjNssiWEf9QkmxUahLVzGgFD2pIcj9T4GbV
	ppr9wur9GesDZEuH/warFUyOjf+4CV+Oz/NkEqVXbDPbDhK60r4b9/9325VSMrECorvf+PtIfEp61
	m81VilxVDzXPfkztYWmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpu5v-0000000F4sK-0UPE;
	Thu, 28 Mar 2024 18:03:19 +0000
Received: from smtp31.i.mail.ru ([95.163.41.72])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpu5s-0000000F4qL-0bH4
	for linux-phy@lists.infradead.org;
	Thu, 28 Mar 2024 18:03:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:From:Sender:Reply-To:To
	:Cc:Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
	List-Archive:X-Cloud-Ids:Disposition-Notification-To;
	bh=FYql+39635pPARFqzsyAcc+goLlZAruHhr7XISd7EkI=; t=1711648994; x=1711738994; 
	b=mMbmnCghB1wnPXrc5ALFdG6uGf8TCvpt1BcVP5j/LxaVkzp2jtvltCogX50Ja8SAOSJd8nCjirx
	DwVSUxME5+ngkMIK7KZciZR1ZpIxypkNFEgN+nieQAaO6rlKtXFuEVYG4CbBewB8kmboFbotlxx2e
	FomQr8RmLAv2pOjad+M=;
Received: by smtp31.i.mail.ru with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1rpu5m-000000004xW-365E; Thu, 28 Mar 2024 21:03:11 +0300
Message-ID: <d09c9486-d2ac-48d7-b5d3-49b9e1a8cc0a@jiaxyga.com>
Date: Thu, 28 Mar 2024 21:02:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for
 SM8475
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: krzysztof.kozlowski+dt@linaro.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, danila@jiaxyga.com
References: <20240327180642.20146-1-danila@jiaxyga.com>
 <20240327180642.20146-2-danila@jiaxyga.com>
 <b73034c3-a512-46b6-a9e8-4d43fd3b39e6@linaro.org>
Content-Language: en-US
From: Danila Tikhonov <danila@jiaxyga.com>
In-Reply-To: <b73034c3-a512-46b6-a9e8-4d43fd3b39e6@linaro.org>
Authentication-Results: smtp31.i.mail.ru; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-4EC0790: 10
X-7564579A: 78E4E2B564C1792B
X-77F55803: 4F1203BC0FB41BD9D135BF24EC7C3B84E409907A6D735ECBA16617DF397FAF7E182A05F538085040B1B33BF6701735563DE06ABAFEAF6705B366187E7E3861AF07D04E831C9623BE8DBD743D6B298C11
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7D8156D3FCB551F18EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637367CCE42412B8BE38638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D84C5534149A20A4B7446EA6E450E85CBC755BFB8BE591E624CC7F00164DA146DAFE8445B8C89999728AA50765F79006374F09588CB15B21E6389733CBF5DBD5E9C8A9BA7A39EFB766F5D81C698A659EA7CC7F00164DA146DA9985D098DBDEAEC821E93C0F2A571C7BF6B57BC7E6449061A352F6E88A58FB86F5D81C698A659EA73AA81AA40904B5D9A18204E546F3947C2A336C651863509103F1AB874ED890284AD6D5ED66289B523666184CF4C3C14F6136E347CC761E07725E5C173C3A84C3D22EEC73CD09A32ABA3038C0950A5D36B5C8C57E37DE458B330BD67F2E7D9AF16D1867E19FE14079C09775C1D3CA48CF4964A708C60C975A1DD303D21008E298D5E8D9A59859A8B6B372FE9A2E580EFC725E5C173C3A84C3517C622C16A6DF10089D37D7C0E48F6C5571747095F342E88FB05168BE4CE3AF
X-C1DE0DAB: 0D63561A33F958A54473C4F97DF469BD5002B1117B3ED6964977B22DC1AF9A35E772F934B9BCD185823CB91A9FED034534781492E4B8EEADF7ED4D6813B5CA04BDAD6C7F3747799A
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF3FED46C3ACD6F73ED3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CFD31074B2C43677369B79855EFF73DB34C16B764B336C4F303F3A723C889166802219C82DFA2AC3F2F212F37558E7246644842C3A0C1AF31872A5BA0A6CCFD3F3BB2CC9B78C32E292E4FDFA4A036B0C3902C26D483E81D6BE72B480F99247062FEE42F474E8A1C6FD34D382445848F2F3
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojc7pp9Ls8Ei4jbyEctUVI/w==
X-Mailru-Sender: 9EB879F2C80682A09F26F806C739498132BB97676BEE5F834825860F061DF214C1251D50B147D3F0C27B3BED2743912F2C62728BC403A049225EC17F3711B6CF1A6F2E8989E84EC137BFB0221605B344978139F6FA5A77F05FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_110316_598380_5A78B50D 
X-CRM114-Status: UNSURE (   6.70  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 3/28/24 11:42, Krzysztof Kozlowski wrote:
> On 27/03/2024 19:06, Danila Tikhonov wrote:
>> Document the QMP UFS PHY compatible for SM8475.
>>
>> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
>> ---
>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
>>   1 file changed, 2 insertions(+)
>>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> (not reviewed, please provide link to DTS)
>
> Best regards,
> Krzysztof
>
Yes, sure.
SM8475 and Nothing Phone 2 (nothing-pong) on which I tested:
https://github.com/mainlining/linux/blob/danila/sm8475-test/arch/arm64/boot/dts/qcom/sm8475.dtsi
https://github.com/mainlining/linux/blob/danila/sm8475-test/arch/arm64/boot/dts/qcom/sm8475-nothing-pong.dts

---
Best wishes
Danila

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
