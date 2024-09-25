Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 002A6C369B4
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 09:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2fT+WVrsXGKreW053TqjGq2kaTJhuMVLQodDIKuWnc=; b=2d2HqWfmo23ZbS
	oZrzvk7x54WJnePWdj8K9xAJnPcilvRhncppPTQkVxp/85pVeJd4G0jEKaNpOeLOusfIjGLks51ne
	iXhvEVjY4TThHarZUDYNOM37Ppwpw9r8LdSB3aSerCMM9N1qN3Enshmf0jEZatWavsFMs57k6dJUl
	I/Inznhudy1+59E7yQw09AGXKNHfHJk+NLPXjvvrgXk0J1YdcZX3giEyyDjiKfguRIjoAgZJ0azu9
	1ic24H87v1LFewJVjQ++GEF8Zf45vNvc/IrjhomnBMMdU+ECW47Sw79hXHOBOcZaCmqT5oYX9+iUp
	suMqHamyMS6HJedPrQuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stON1-00000004cUc-19M7;
	Wed, 25 Sep 2024 09:31:39 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stOMW-00000004cPw-2RyR
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 09:31:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B9099A43DF2;
	Wed, 25 Sep 2024 09:30:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D58CC4CEC3;
	Wed, 25 Sep 2024 09:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727256667;
	bh=x2JF9xWznc10DmqXgd7CuRvcJk+8ONpVG+QxkOmFgQI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tgJL/c0eI0Pzf2B14LODbJDI0p7Z1IRoiFIPHVUhJmHt29pRVg44j0S6NJ1wu7U+I
	 efHRQyL5Sv494fYPtYfE69s8ypF1aujlHoaBRg0p7w5t903YIkVuKDWp1GxP65ojzj
	 RWtRattmI7qzgQPuwXiYIniC0A5ACI+FZBbRfUiwF2Fx9WHMjvPlSCobdvPNlUZBVF
	 KrGo5EfOPUdKPJhsOVEP/59fecriOcNb5m31bn8CuTbdLXp4XZroRS2m5AF5ByDsmT
	 W0dJJHcjOzgcIY1j63WcVxDr1syWtU9eTvzqiOeytfvuwfmd48Q+dz3o9np34mzgCA
	 26OMZh5GnUnCA==
Message-ID: <4ee4d016-9d68-4925-9f49-e73a4e7fa794@kernel.org>
Date: Wed, 25 Sep 2024 11:30:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Johan Hovold <johan+linaro@kernel.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, andersson@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 abel.vesa@linaro.org, quic_msarkar@quicinc.com, quic_devipriy@quicinc.com,
 dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
 neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
 <9a692c98-eb0a-4d86-b642-ea655981ff53@kernel.org>
 <20240925080522.qwjeyrpjtz64pccx@thinkpad>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240925080522.qwjeyrpjtz64pccx@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_023108_720039_C1DF01FE 
X-CRM114-Status: GOOD (  17.87  )
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

On 25.09.2024 10:05 AM, Manivannan Sadhasivam wrote:
> On Tue, Sep 24, 2024 at 04:26:34PM +0200, Konrad Dybcio wrote:
>> On 24.09.2024 12:14 PM, Qiang Yu wrote:
>>> Describe PCIe3 controller and PHY. Also add required system resources like
>>> regulators, clocks, interrupts and registers configuration for PCIe3.
>>>
>>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>>
>> Qiang, Mani
>>
>> I have a RTS5261 mmc chip on PCIe3 on the Surface Laptop.
> 
> Is it based on x1e80100?

You would think so :P

> 
>> Adding the global irq breaks sdcard detection (the chip still comes
>> up fine) somehow. Removing the irq makes it work again :|
>>
>> I've confirmed that the irq number is correct
>>
> 
> Yeah, I did see some issues with MSI on SM8250 (RB5) when global interrupts are
> enabled and I'm working with the hw folks to understand what is going on. But
> I didn't see the same issues on newer platforms (sa8775p etc...).
> 
> Can you please confirm if the issue is due to MSI not being received from the
> device? Checking the /proc/interrutps is enough.

There's no msi-map for PCIe3. I recall +Johan talking about some sort of
a bug that prevents us from adding it?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
